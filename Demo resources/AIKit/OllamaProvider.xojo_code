#tag Class
Protected Class OllamaProvider
Implements AIKit.ChatProvider
	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792073656E64732061206D65737361676520746F207468652063757272656E746C7920737065636966696564204F6C6C616D61206D6F64656C2E20496D706C6963746C792068616E646C657320636F6E766572736174696F6E20686973746F72792E
		Sub Ask(what As String)
		  /// Asynchronously sends a message to the currently specified Ollama model.
		  /// Implictly handles conversation history.
		  ///
		  /// As of March 2025, Ollama doesn't provide an API call to specify if a model should think or not.
		  /// To enable thinking, use a reasoning model. Currently modules tend to output their 
		  /// thinking in a `<think></think>` block.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  // Create a new user message.
		  Var userMessage As New AIKit.ChatMessage("user", what)
		  
		  AskWithMessage(userMessage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B7320746865206D6F64656C20612071756572792E206074696D656F75746020697320746865206E756D626572206F66207365636F6E647320746F207761697420666F72206120726573706F6E73652E20412076616C7565206F66206030602077696C6C207761697420696E646566696E6974656C792E
		Function Ask(what As String, timeout As Integer = 0) As AIKit.ChatResponse
		  /// Synchronously asks the model a query.
		  /// `timeout` is the number of seconds to wait for a response. A value of `0` will wait indefinitely.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  // Create a new user message.
		  Var userMessage As New AIKit.ChatMessage("user", what)
		  
		  // Add it to the conversation history.
		  mOwner.Messages.Add(userMessage)
		  
		  // Reset.
		  mLastResponse.ResizeTo(-1)
		  mLastThinking.ResizeTo(-1)
		  mCurrentlyThinking = False
		  mIsAwaitingResponse = False
		  mMessageStarted = False
		  
		  // Reset timing.
		  mMessageTimeStart = DateTime.Now
		  mMessageTimeStop = Nil
		  mThinkingTimeStart = Nil
		  mThinkingTimeStop = Nil
		  
		  // Prepare all messages for the API call.
		  Var messages() As Dictionary
		  For Each msg As AIKit.ChatMessage In mOwner.Messages
		    messages.Add(MessageAsDictionary(msg))
		  Next msg
		  
		  // The system prompt is injected as the first message to the model.
		  If mOwner.SystemPrompt <> "" Then
		    Var systemMessage As New Dictionary("role" : "system", "content" : mOwner.SystemPrompt)
		    messages.AddAt(0, systemMessage)
		  End If
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mOwner.ModelName
		  payload.Value("messages") = messages
		  payload.Value("stream") = False
		  If mOwner.KeepAlive Then
		    payload.Value("keep_alive") = "-1"
		  Else
		    payload.Value("keep_alive") = mOwner.KeepAliveMinutes.ToString + "m"
		  End If
		  
		  // Additional payload options.
		  Var options As New Dictionary
		  options.Value("temperature") = mOwner.Temperature
		  If mOwner.UnlimitedResponse Then
		    options.Value("num_predict") = -1
		  Else
		    options.Value("num_predict") = mOwner.MaxTokens
		  End If
		  payload.Value("options") = options
		  
		  // Send the request synchronously to the Ollama API.
		  Try
		    Var connection As New URLConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    connection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    Var responseJSON As String
		    Try
		      responseJSON = connection.SendSync("POST", mEndPoint + ENDPOINT_CHAT, timeout)
		      Return ProcessSynchronousResponse(responseJSON)
		    Catch e As NetworkException
		      If mOwner.APIErrorDelegate <> Nil Then
		        mOwner.APIErrorDelegate.Invoke(mOwner, e.Message)
		      Else
		        Raise New AIKit.APIException(e.Message)
		      End If
		    End Try
		    
		  Catch e As RuntimeException
		    e.Message = "API request error: " + e.Message
		    Raise e
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C2068656C70657220666F72206173796E6368726F6E6F75736C792061736B696E6720746865206D6F64656C206120717565727920776974682061207072652D63726561746564206D6573736167652E
		Private Sub AskWithMessage(message As AIKit.ChatMessage)
		  /// Internal helper for asynchronously asking the model a query with a pre-created message.
		  
		  // Add the message to the conversation history.
		  mOwner.AddMessage(message)
		  
		  // Reset.
		  mLastResponse.ResizeTo(-1)
		  mLastThinking.ResizeTo(-1)
		  mCurrentlyThinking = False
		  mIsAwaitingResponse = False
		  mMessageStarted = False
		  
		  // Reset timing.
		  mMessageTimeStart = DateTime.Now
		  mMessageTimeStop = Nil
		  mThinkingTimeStart = Nil
		  mThinkingTimeStop = Nil
		  
		  // Prepare all messages for the API call.
		  Var messages() As Dictionary
		  For Each msg As AIKit.ChatMessage In mOwner.Messages
		    messages.Add(MessageAsDictionary(msg))
		  Next msg
		  
		  // The system prompt is injected as the first message to the model.
		  If mOwner.SystemPrompt <> "" Then
		    Var systemMessage As New Dictionary("role" : "system", "content" : mOwner.SystemPrompt)
		    messages.AddAt(0, systemMessage)
		  End If
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mOwner.ModelName
		  payload.Value("messages") = messages
		  payload.Value("stream") = True
		  If mOwner.KeepAlive Then
		    payload.Value("keep_alive") = "-1"
		  Else
		    payload.Value("keep_alive") = mOwner.KeepAliveMinutes.ToString + "m"
		  End If
		  
		  // Additional payload options.
		  Var options As New Dictionary
		  
		  // Temperature.
		  Var tempValue As Double
		  If mOwner.ShouldThink Then
		    // Thinking models should use a temperature of 1.0.
		    tempValue = 1.0
		  ElseIf mOwner.UseDefaultTemperature Then
		    tempValue = 0.7
		  Else
		    tempValue = Clamp(mOwner.Temperature, 0, 1)
		  End If
		  options.Value("temperature") = tempValue
		  
		  If mOwner.UnlimitedResponse Then
		    options.Value("num_predict") = -1
		  Else
		    options.Value("num_predict") = mOwner.MaxTokens
		  End If
		  payload.Value("options") = options
		  
		  // Send the request asynchronously to the Ollama API.
		  Try
		    ConfigureNewConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    mConnection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    mConnection.Send("POST", mEndPoint + ENDPOINT_CHAT)
		    
		  Catch e As RuntimeException
		    e.Message = "API request error: " + e.Message
		    Raise e
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C2068656C70657220666F722073796E6368726F6E6F75736C792061736B696E6720746865206D6F64656C206120717565727920776974682061207072652D63726561746564206D6573736167652E
		Private Function AskWithMessage(message As AIKit.ChatMessage, timeout As Integer) As AIKit.ChatResponse
		  /// Internal helper for synchronously asking the model a query with a pre-created message.
		  
		  // Add the message to the conversation history.
		  mOwner.AddMessage(message)
		  
		  // Reset.
		  mLastResponse.ResizeTo(-1)
		  mLastThinking.ResizeTo(-1)
		  mCurrentlyThinking = False
		  mIsAwaitingResponse = False
		  mMessageStarted = False
		  
		  // Reset timing.
		  mMessageTimeStart = DateTime.Now
		  mMessageTimeStop = Nil
		  mThinkingTimeStart = Nil
		  mThinkingTimeStop = Nil
		  
		  // Prepare all messages for the API call.
		  Var messages() As Dictionary
		  For Each msg As AIKit.ChatMessage In mOwner.Messages
		    messages.Add(MessageAsDictionary(msg))
		  Next msg
		  
		  // The system prompt is injected as the first message to the model.
		  If mOwner.SystemPrompt <> "" Then
		    Var systemMessage As New Dictionary("role" : "system", "content" : mOwner.SystemPrompt)
		    messages.AddAt(0, systemMessage)
		  End If
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mOwner.ModelName
		  payload.Value("messages") = messages
		  payload.Value("stream") = False
		  If mOwner.KeepAlive Then
		    payload.Value("keep_alive") = "-1"
		  Else
		    payload.Value("keep_alive") = mOwner.KeepAliveMinutes.ToString + "m"
		  End If
		  
		  // Additional payload options.
		  Var options As New Dictionary
		  
		  // Temperature.
		  Var tempValue As Double
		  If mOwner.ShouldThink Then
		    // Thinking models should use a temperature of 1.0.
		    tempValue = 1.0
		  ElseIf mOwner.UseDefaultTemperature Then
		    tempValue = 0.7
		  Else
		    tempValue = Clamp(mOwner.Temperature, 0, 1)
		  End If
		  options.Value("temperature") = tempValue
		  
		  If mOwner.UnlimitedResponse Then
		    options.Value("num_predict") = -1
		  Else
		    options.Value("num_predict") = mOwner.MaxTokens
		  End If
		  payload.Value("options") = options
		  
		  // Send the request synchronously to the Ollama API.
		  Try
		    Var connection As New URLConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    connection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    Var responseJSON As String
		    Try
		      responseJSON = connection.SendSync("POST", mEndPoint + ENDPOINT_CHAT, timeout)
		      Return ProcessSynchronousResponse(responseJSON)
		    Catch e As NetworkException
		      If mOwner.APIErrorDelegate <> Nil Then
		        mOwner.APIErrorDelegate.Invoke(mOwner, e.Message)
		      Else
		        Raise New AIKit.APIException(e.Message)
		      End If
		    End Try
		    
		  Catch e As RuntimeException
		    e.Message = "API request error: " + e.Message
		    Raise e
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206174206C65617374206F6E6520696D6167652E
		Function AskWithPicture(what As String, timeout As Integer, ParamArray pics As Picture) As AIKit.ChatResponse
		  /// Synchronously asks the currently selected model a query and provides at least one image.
		  
		  If pics.Count = 0 Then
		    Raise New AIKit.APIException("At least one picture must be supplied to the " + _
		    "`AskWithPicture()` method.")
		  End If
		  
		  Var m As New AIKit.ChatMessage("user", what)
		  
		  For Each p As Picture In pics
		    m.Pictures.Add(p)
		  Next p
		  
		  Return AskWithMessage(m, timeout)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206174206C65617374206F6E6520696D6167652E
		Sub AskWithPicture(what As String, ParamArray pics As Picture)
		  /// Asynchronously asks the currently selected model a query and provides at least one image.
		  
		  If pics.Count = 0 Then
		    Raise New AIKit.APIException("At least one picture must be supplied to the " + _
		    "`AskWithPicture()` method.")
		  End If
		  
		  Var m As New AIKit.ChatMessage("user", what)
		  
		  For Each p As Picture In pics
		    m.Pictures.Add(p)
		  Next p
		  
		  AskWithMessage(m)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E73206076616C75656020636C616D706564206265747765656E20606D696E696D756D6020616E6420606D6178696D756D602E
		Protected Function Clamp(value As Double, minimum As Double, maximum As Double) As Double
		  /// Returns `value` clamped between `minimum` and `maximum`.
		  
		  If value < minimum Then Return minimum
		  If value > maximum Then Return maximum
		  Return value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 436F6E666967757265732061206E65772055524C436F6E6E656374696F6E2C20686F6F6B696E67207570206576656E742068616E646C65727320616E642072656D6F76696E67206F6C64206576656E742068616E646C657273206173206E65656465642E
		Private Sub ConfigureNewConnection()
		  /// Configures a new URLConnection, hooking up event handlers and removing old event handlers as needed.
		  
		  // Remove old handlers?
		  If mConnection <> Nil Then
		    RemoveHandler mConnection.ReceivingProgressed, AddressOf ReceivingProgressedDelegate
		  End If
		  
		  mConnection = New URLConnection
		  
		  AddHandler mConnection.ReceivingProgressed, AddressOf ReceivingProgressedDelegate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(owner As AIKit.Chat, apiKey As String = "", endpoint As String = "")
		  #Pragma Unused apiKey
		  
		  mOwner = owner
		  mEndPoint = endpoint
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 52657475726E732061204E657720604D6F64656C4465736372697074696F6E602066726F6D207468652064696374696F6E6172792072657475726E656420627920746865204F6C6C616D6120415049207768656E207175657279696E672074686520607461677360206F72206070736020656E64706F696E74732E
		Private Function DictionaryToModelDescription(d As Dictionary) As ModelDescription
		  /// Returns a New `ModelDescription` from the dictionary returned by the Ollama API when 
		  /// querying the `tags` or `ps` endpoints.
		  
		  Var id As String = d.Value("name")
		  Var name As String = d.Value("name")
		  
		  // Since the Ollama API returns the creation date in RFC 3339 format, we just need the first 
		  // 10 characters (YYYY-MM-DD).
		  Var created As DateTime = Nil
		  If d.HasKey("modified_at") Then
		    created = DateTime.FromString(d.Value("modified_at").StringValue.Left(10))
		  End If
		  
		  // The parameter size and quantisation level are within the `details` dictionary.
		  Var paramSize, quant As String
		  If d.HasKey("details") Then
		    Var details As Dictionary = d.Value("details")
		    paramSize = details.Lookup("parameter_size", "")
		    quant = details.Lookup("quantization_level", "")
		  End If
		  
		  Var size As Integer = d.Lookup("size", 0)
		  Var sizeVRAM As Integer = d.Lookup("size_vram", 0)
		  
		  Return New ModelDescription(id, name, created, paramSize, quant, size, sizeVRAM)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValidAPIKey(apiKey As String) As Boolean
		  /// Part of the AIKit.ChatProvider interface.
		  
		  #Pragma Unused apiKey
		  
		  // API keys aren't needed for the Ollama provided so we'll just return true.
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValidEndpoint(url As String) As Boolean
		  /// Returns True if `url` is an accessible Ollama API endpoint.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  If url = "" Then Return False
		  If url.Right(1) <> "/" Then Return False
		  
		  Var connection As New URLConnection
		  
		  // Send the request synchronously.
		  Call connection.SendSync("GET", url + "version", 5)
		  
		  // Check if the response code indicates success (200 OK).
		  Return connection.HTTPStatusCode = 200
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620606D6F64656C4E616D65602069732061206C6F63616C6C7920617661696C61626C65206D6F64656C206E616D65206F722046616C73652069662069742069736E27742E20526571756972657320612076616C696420415049206B65792E
		Function IsValidModel(modelName As String) As Boolean
		  /// Returns True if `modelName` is a locally available model name or False if it isn't.
		  /// Requires a valid API key.
		  ///
		  /// Assumes mEndpoint has been set and is valid.
		  /// Part of the AIKit.ChatProvider interface.
		  
		  For Each model As ModelDescription In Models
		    If model.Name = modelName Then Return True
		  Next model
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MessageAsDictionary(m As AIKit.ChatMessage) As Dictionary
		  /// Returns this message as a Dictionary for encoding as JSON.
		  
		  Var d As New Dictionary("role" : m.Role, "content" : m.Content)
		  
		  If m.Pictures.Count > 0 Then
		    Var encodedImages() As String
		    For Each p As Picture In m.Pictures
		      encodedImages.Add(EncodeBase64(p.ToData(Picture.Formats.JPEG, Picture.QualityHigh), 0))
		    Next p
		    d.Value("images") = encodedImages
		  End If
		  
		  Return d
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Models() As AIKit.ModelDescription()
		  /// Returns an array of *local* models that can be used with this API.
		  /// These are all models that have been installed on the Ollama machine.
		  /// Assumes `endpoint` is valid and ends with a forward slash.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Var request As New URLConnection
		  Var theModels() As ModelDescription
		  
		  // Set headers.
		  request.RequestHeader("Content-Type") = "application/json"
		  
		  // Send the request.
		  Var response As String = request.SendSync("GET", mEndpoint + ENDPOINT_LIST_LOCAL_MODELS, 5)
		  
		  // Check if the request was successful.
		  If request.HTTPStatusCode >= 200 And request.HTTPStatusCode < 300 Then
		    // Parse the JSON response.
		    Try
		      Var json As Dictionary = ParseJSON(response)
		      
		      // The API returns a "data" array with model objects.
		      If json.HasKey("models") Then
		        Var modelsArray() As Object = json.Value("models")
		        
		        For Each modelDict As Object In modelsArray
		          theModels.Add(DictionaryToModelDescription(Dictionary(modelDict)))
		        Next modelDict
		      End If
		      
		    Catch e As RuntimeException
		      // Handle JSON parsing errors.
		      If mOwner.APIErrorDelegate <> Nil Then
		        mOwner.APIErrorDelegate.Invoke(mOwner, "Error parsing models response: " + e.Message)
		      Else
		        Raise New AIKit.APIException("Error parsing models response: " + e.Message)
		      End If
		    End Try
		  Else
		    // Handle HTTP errors.
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "HTTP Error: " + Str(request.HTTPStatusCode) + " - " + response)
		    Else
		      Raise New AIKit.APIException("HTTP Error: " + Str(request.HTTPStatusCode) + " - " + response)
		    End If
		  End If
		  
		  Return theModels
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Return "Ollama"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320646174612066726F6D20746865204F6C6C616D61204150492E
		Private Sub ProcessData(data As Dictionary)
		  /// Processes data from the Ollama API.
		  
		  // Is this the end of the message?
		  If data.HasKey("done") And data.Value("done").BooleanValue Then
		    ProcessMessageDone(data)
		    Return
		  End If
		  
		  If Not mMessageStarted Then
		    // This must be the first part of a response.
		    If mOwner.MessageStartedDelegate <> Nil Then
		      mOwner.MessageStartedDelegate.Invoke(mOwner, "", 0)
		    End If
		  End If
		  
		  If data.HasKey("message") Then
		    mMessageStarted = True
		    Var messageDict As Dictionary = data.Value("message")
		    Var theText As String = messageDict.Lookup("content", "")
		    
		    If theText = "<think>" Then
		      mCurrentlyThinking = True
		      mThinkingTimeStart = DateTime.Now
		      
		    ElseIf theText = "</think>" Then
		      mCurrentlyThinking = False
		      mThinkingTimeStop = DateTime.Now
		      mMessageTimeStart = DateTime.Now
		      
		    ElseIf theText <> "" Then
		      If mCurrentlyThinking Then
		        If mLastThinking.Count = 0 And theText.Trim = "" Then Return
		        mLastThinking.Add(theText)
		        
		        If mOwner.ThinkingReceivedDelegate <> Nil Then
		          mOwner.ThinkingReceivedDelegate.Invoke(mOwner, theText)
		        End If
		        Return
		        
		      Else
		        If mLastResponse.Count = 0 And theText.Trim = "" Then Return
		        mLastResponse.Add(theText)
		        
		        If mOwner.ContentReceivedDelegate <> Nil Then
		          mOwner.ContentReceivedDelegate.Invoke(mOwner, theText)
		        End If
		        Return
		      End If
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320616E20415049206572726F722E
		Private Sub ProcessError(jsonData As String)
		  /// Processes an API error.
		  
		  #Pragma BreakOnExceptions False
		  
		  If mOwner.APIErrorDelegate <> Nil Then
		    mOwner.APIErrorDelegate.Invoke(mOwner, "An API error occurred: " + jsonData)
		  Else
		    Raise New AIKit.APIException("An API error occurred: " + jsonData)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 48616E646C6573207468652066696E616C20726573706F6E73652066726F6D20746865204F6C6C616D61204150492E
		Private Sub ProcessMessageDone(data As Dictionary)
		  /// Handles the final response from the Ollama API.
		  ///
		  /// Example structure:
		  /// {
		  ///   "model": "llama3.2",
		  ///   "created_at": "2023-08-04T19:22:45.499127Z",
		  ///   "done": True,
		  ///   "total_duration": 4883583458,
		  ///   "load_duration": 1334875,
		  ///   "prompt_eval_count": 26,
		  ///   "prompt_eval_duration": 342546000,
		  ///   "eval_count": 282,
		  ///   "eval_duration": 4535599000
		  /// }
		  
		  // Add the assistant's response to the conversation history.
		  mOwner.Messages.Add(New AIKit.ChatMessage("assistant", String.FromArray(mLastResponse, "")))
		  
		  mMessageTimeStop = DateTime.Now
		  
		  Var inputTokenCount As Integer = data.Lookup("prompt_eval_count", 0)
		  Var outputTokenCount As Integer = data.Lookup("eval_count", 0)
		  
		  Var finalContent As String = String.FromArray(mLastResponse, "").Trim
		  Var thinkingContent As String = If(mLastThinking.Count > 0, String.FromArray(mLastThinking, "").Trim, "")
		  
		  Var response As New AIKit.ChatResponse(finalContent, thinkingContent, mMessageTimeStart, _
		  mMessageTimeStop, inputTokenCount, outputTokenCount, mThinkingTimeStart, mThinkingTimeStop)
		  
		  If mOwner.MessageFinishedDelegate <> Nil Then
		    mOwner.MessageFinishedDelegate.Invoke(mOwner, response)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320746865204A534F4E2072657475726E65642066726F6D20746865204F6C6C616D612041504920666F7220612073796E6368726F6E6F7573206D65737361676520726571756573742E2052657475726E732061206043686174526573706F6E736560206F626A6563742E
		Private Function ProcessSynchronousResponse(responseJSON As String) As AIKit.ChatResponse
		  /// Processes the JSON returned from the Ollama API for a synchronous message request.
		  /// Returns a `ChatResponse` object.
		  
		  // Parse the JSON to a dictionary.
		  Var data As Dictionary
		  Try
		    data = ParseJSON(responseJSON)
		  Catch e As JSONException
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Invalid JSON received.")
		    Else
		      Raise New AIKit.APIException(e.Message)
		    End If
		  End Try
		  
		  // Get the content.
		  Var messageDict As Dictionary = data.Lookup("message", Nil)
		  Var thinkingContent As String
		  Var messageContent As String
		  If messageDict <> Nil Then
		    If messageDict.HasKey("content") Then
		      messageContent = messageDict.Value("content").StringValue.Trim
		      // Thinking content?
		      If messageContent.BeginsWith("<think>") Then
		        Var thinkEnd As Integer = messageContent.IndexOf("</think>")
		        Var rawThinking As String
		        If thinkEnd <> -1 Then
		          rawThinking = messageContent.Left(thinkEnd + 9) // +9 accounts for </think>
		          messageContent = messageContent.Replace(rawThinking, "").Trim
		          thinkingContent = rawThinking.Right(rawThinking.Length - 7) // Remove leading <think>
		          thinkingContent = thinkingContent.Left(thinkingContent.Length - 9).Trim // Remove trailing </think>
		        End If
		      End If
		    End If
		  End If
		  
		  // The Ollama API doesn't provide a way to determine how long the model spent thinking
		  // when making a synchronous call. We will therefore set the thinking time to 0 and the message
		  // time will reflect both thinking and the actual message.
		  mThinkingTimeStop = Nil
		  mMessageTimeStop = DateTime.Now
		  
		  Var inputTokens As Integer = data.Lookup("prompt_eval_count", 0)
		  Var outputTokens As Integer = data.Lookup("eval_count", 0)
		  
		  Return New AIKit.ChatResponse(messageContent, thinkingContent, mMessageTimeStart, mMessageTimeStop, _
		  inputTokens, outputTokens, mThinkingTimeStart, mThinkingTimeStop)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 48616E646C657320746865206172726976616C206F66206E657720646174612066726F6D20616E20616374697665204F6C6C616D612041504920636F6E6E656374696F6E2E
		Private Sub ReceivingProgressedDelegate(sender As URLConnection, bytesRecieved As Int64, totalBytes As Int64, newData As String)
		  /// Handles the arrival of new data from an active Ollama API connection.
		  
		  #Pragma Unused sender
		  #Pragma Unused bytesRecieved
		  #Pragma Unused totalBytes
		  
		  // The data should be in UTF-8.
		  Var rawData As String = newData.DefineEncoding(Encodings.UTF8).Trim
		  
		  // Split the raw data into JSON objects as multiple may arrive at once.
		  Const DELIMITER = &u0A
		  Var events() As String = rawData.Split(DELIMITER)
		  
		  // Process each event in order.
		  For Each ev As String In events
		    ev = ev.Trim
		    Try
		      Var data As Dictionary = ParseJSON(ev)
		      ProcessData(data)
		    Catch error As RuntimeException
		      ProcessError(ev)
		    End Try
		  Next ev
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequiresAPIKey() As Boolean
		  /// Part of the AIKit.ChatProvider interface.
		  
		  // An API key isn't required for Ollama.
		  Return False
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 50617274206F66207468652041494B69742E4368617450726F766964657220696E746572666163652E
		Function RequiresEndpoint() As Boolean
		  /// Part of the AIKit.ChatProvider interface.
		  
		  // We need to know the endpoint for the Ollama server in order to talk to any models.
		  Return True
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 49662061206D65737361676520726571756573742069732063757272656E746C79206265696E672068616E646C65642C2077652063616E63656C2069742E205072657365727665732074686520636F6E766572736174696F6E20686973746F72792E
		Sub Stop()
		  /// If a message request is currently being handled, we cancel it.
		  /// Preserves the conversation history.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  If mConnection <> Nil Then
		    mConnection.Disconnect
		  End If
		  
		  mConnection = Nil
		  
		  // Get rid of the message sent so the model doesn't repeat it's last response.
		  If mOwner.Messages.Count > 0 Then
		    Call mOwner.Messages.Pop
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F72747320696E74657270726574696E6720696D616765732E
		Function SupportsImages() As Boolean
		  /// True if the current model supports interpreting images.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  #Pragma BreakOnExceptions False
		  
		  Var connection As New URLConnection
		  
		  // Create the JSON payload.
		  Var payload As New Dictionary("model" : mOwner.ModelName)
		  Var jsonPayload As String = GenerateJSON(payload)
		  
		  // Set the content of the request.
		  connection.SetRequestContent(jsonPayload, "application/json")
		  
		  // Send it.
		  Var responseJSON As String
		  Try
		    responseJSON = connection.SendSync("POST", mEndPoint + ENDPOINT_SHOW, 5)
		    Var data As Dictionary
		    Try
		      data = ParseJSON(responseJSON)
		      If data.HasKey("projector_info") Then
		        Var projectorInfo As Dictionary = data.Value("projector_info")
		        For Each entry As DictionaryEntry In projectorInfo
		          If entry.Key.StringValue.Contains("vision") Then Return True
		        Next entry
		      ElseIf data.HasKey("model_info") Then
		        Var modelInfo As Dictionary = data.Value("model_info")
		        For Each entry As DictionaryEntry In modelInfo
		          If entry.Key.StringValue.Contains("vision") Then Return True
		        Next entry
		      End If
		    Catch e As JSONException
		      Return False
		    End Try
		  Catch e As NetworkException
		    Return False
		  End Try
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F727473206E6F206C696D6974206F6E20746865206E756D626572206F6620746F6B656E732072657475726E656420696E2074686520726573706F6E73652E
		Function SupportsUnlimitedTokens() As Boolean
		  /// True if the current model supports no limit on the number of tokens returned in the response.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Return True
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mConnection As URLConnection
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5472756520696620746865206D6F64656C2069732063757272656E746C79207468696E6B696E6720616E64206F757470757474696E672074686F75676874732077697468696E206120603C7468696E6B3E3C2F7468696E6B3E6020626C6F636B2E
		Protected mCurrentlyThinking As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5468652041504920656E64706F696E7420746F207573652028652E673A2022687474703A2F2F6C6F63616C686F73743A31313433342F6170692F22292E204E6F74652074686520696E636C7573696F6E206F662074686520706F727420616E642074686520747261696C696E6720666F727761726420736C6173682E
		Protected mEndpoint As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 547275652069662077652772652077616974696E67206F6E207468652041504920746F2066696E697368696E672072657475726E696E67206120726573706F6E73652E
		Protected mIsAwaitingResponse As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206C61737420726573706F6E73652066726F6D20436C617564652E
		Protected mLastResponse() As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206C617374207468696E6B696E6720636F6E74656E742066726F6D20436C617564652E
		Protected mLastThinking() As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mMessageStarted As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5768656E20746865206C617374206D65737361676520626567616E2E2057696C6C206265204E696C206966206E6F206D6573736167696E672068617665206265656E2073656E742E
		Protected mMessageTimeStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5768656E20746865206C617374206D6573736167652066696E69736865642E204D6179206265204E696C206966206E6F206D6573736167696E6720686173206F63637572726564206F722069662061206D65737361676520697320696E20666C696768742E
		Protected mMessageTimeStop As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206368617420696E7374616E636520746869732070726F76696465722062656C6F6E677320746F2E
		Protected mOwner As AIKit.Chat
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 496620746865206D6F64656C206973207468696E6B696E672C2074686973206973207468652074696D65206973207374617274656420646F696E6720736F2E2057696C6C206265204E696C20696620746865206D6F64656C20686173206E657665722074686F756768742E
		Protected mThinkingTimeStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 496620746865206D6F64656C20776173207468696E6B696E672C2074686973206973207468652074696D652069732073746F7070656420646F696E6720736F2E2057696C6C206265204E696C20696620746865206D6F64656C20686173206E657665722074686F75676874206F7220696620746865206D6F64656C2069732063757272656E746C79207468696E6B696E672E
		Protected mThinkingTimeStop As DateTime
	#tag EndProperty


	#tag Constant, Name = ENDPOINT_CHAT, Type = String, Dynamic = False, Default = \"chat", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ENDPOINT_LIST_LOCAL_MODELS, Type = String, Dynamic = False, Default = \"tags", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ENDPOINT_SHOW, Type = String, Dynamic = False, Default = \"show", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
