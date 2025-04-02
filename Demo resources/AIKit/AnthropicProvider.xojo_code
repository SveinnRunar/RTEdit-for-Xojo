#tag Class
Protected Class AnthropicProvider
Implements AIKit.ChatProvider
	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C20612071756572792E
		Sub Ask(what As String)
		  /// Asynchronously asks the currently selected model a query.
		  
		  AskWithMessage(New AIKit.ChatMessage("user", what))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B7320746865206D6F64656C20612071756572792E206074696D656F75746020697320746865206E756D626572206F66207365636F6E647320746F207761697420666F72206120726573706F6E73652E20412076616C7565206F66206030602077696C6C207761697420696E646566696E6974656C792E
		Function Ask(what As String, timeout As Integer = 0) As AIKit.ChatResponse
		  /// Synchronously asks the model a query.
		  /// `timeout` is the number of seconds to wait for a response. A value of `0` will wait indefinitely.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Return AskWithMessage(New AIKit.ChatMessage("user", what), timeout)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C2068656C70657220666F72206173796E6368726F6E6F75736C792061736B696E6720746865206D6F64656C206120717565727920776974682061207072652D63726561746564206D6573736167652E
		Private Sub AskWithMessage(message As AIKit.ChatMessage)
		  /// Internal helper for asynchronously asking the model a query with a pre-created message.
		  
		  #Pragma BreakOnExceptions False
		  
		  // Add the message to the conversation history.
		  mOwner.AddMessage(message)
		  
		  // Reset stuff.
		  mInputTokenCount = 0
		  mOutputTokenCount = 0
		  mLastResponse.ResizeTo(-1)
		  mLastThinking.ResizeTo(-1)
		  mIncomingMessageID = ""
		  mCurrentlyThinking = False
		  mIsAwaitingResponse = False
		  
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
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mowner.ModelName
		  payload.Value("messages") = messages
		  payload.Value("max_tokens") = mOwner.MaxTokens
		  
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
		  payload.Value("temperature") = tempValue
		  
		  payload.Value("stream") = True
		  If mOwner.ShouldThink Then
		    payload.Value("thinking") = _
		    New Dictionary("type" : "enabled", "budget_tokens": mOwner.MaxThinkingBudget)
		  End If
		  If mOwner.SystemPrompt <> "" Then
		    payload.Value("system") = mOwner.SystemPrompt
		  End If
		  
		  // Send the request asynchronously to the Anthropic API.
		  Try
		    ConfigureNewConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    mConnection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    mConnection.Send("POST", API_ENDPOINT_MESSAGES)
		    
		  Catch e As RuntimeException
		    e.Message = "API request error: " + e.Message
		    Raise e
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 496E7465726E616C2068656C70657220666F722073796E6368726F6E6F75736C792061736B696E6720746865206D6F64656C206120717565727920776974682061207072652D63726561746564206D6573736167652E
		Private Function AskWithMessage(message As AIKit.ChatMessage, timeout As Integer) As AIKit.ChatResponse
		  /// Internal helper for synchronously asking the model a query with a pre-created message.
		  
		  #Pragma BreakOnExceptions False
		  
		  // Add the message to the conversation history.
		  mOwner.AddMessage(message)
		  
		  // Reset stuff.
		  mInputTokenCount = 0
		  mOutputTokenCount = 0
		  mLastResponse.ResizeTo(-1)
		  mLastThinking.ResizeTo(-1)
		  mIncomingMessageID = ""
		  mCurrentlyThinking = False
		  mIsAwaitingResponse = False
		  
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
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mowner.ModelName
		  payload.Value("messages") = messages
		  payload.Value("max_tokens") = mOwner.MaxTokens
		  
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
		  payload.Value("temperature") = tempValue
		  
		  payload.Value("stream") = False
		  If mOwner.ShouldThink Then
		    payload.Value("thinking") = _
		    New Dictionary("type" : "enabled", "budget_tokens": mOwner.MaxThinkingBudget)
		  End If
		  If mOwner.SystemPrompt <> "" Then
		    payload.Value("system") = mOwner.SystemPrompt
		  End If
		  
		  // Send the request synchronously to the Anthropic API.
		  Try
		    Var connection As New URLConnection
		    
		    // Build the headers.
		    connection.RequestHeader("x-api-key") = mAPIKey
		    connection.RequestHeader("anthropic-version") = ANTHROPIC_VERSION
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    connection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    Var responseJSON As String
		    Try
		      responseJSON = connection.SendSync("POST", API_ENDPOINT_MESSAGES, timeout)
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

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206F6E65206F72206D6F726520696D616765732E
		Function AskWithPicture(what As String, timeout As Integer, ParamArray pics As Picture) As AIKit.ChatResponse
		  /// Synchronously asks the currently selected model a query and provides one or more images.
		  
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
		  
		  // Build the headers.
		  mConnection.RequestHeader("x-api-key") = mAPIKey
		  mConnection.RequestHeader("anthropic-version") = ANTHROPIC_VERSION
		  
		  AddHandler mConnection.ReceivingProgressed, AddressOf ReceivingProgressedDelegate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(owner As AIKit.Chat, apiKey As String = "", endpoint As String = "")
		  #Pragma Unused endpoint
		  
		  mOwner = owner
		  mAPIKey = apiKey
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 52657475726E732061206E6577204D6F64656C4465736372697074696F6E2066726F6D207468652064696374696F6E6172792072657475726E65642062792074686520416E7468726F70696320415049207768656E207175657279696E672074686520606D6F64656C736020656E64706F696E742E
		Private Function DictionaryToModelDescription(d As Dictionary) As ModelDescription
		  /// Returns a new ModelDescription from the dictionary returned by the Anthropic API when querying the
		  /// `models` endpoint.
		  
		  Var id As String = d.Value("id")
		  Var name As String = d.Value("display_name")
		  
		  // Since the Anthropic API returns the creation date in RFC 3339 format, we just need the first 
		  // 10 characters (YYYY-MM-DD).
		  Var created As DateTime = DateTime.FromString(d.Value("created_at").StringValue.Left(10))
		  
		  Return New ModelDescription(id, name, created, "", "", 0, 0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620606B65796020697320612076616C696420416E7468726F70696320415049206B6579206F722046616C73652069662069742069736E27742E
		Function IsValidAPIKey(apiKey As String) As Boolean
		  /// Returns True if `key` is a valid Anthropic API key or False if it isn't.
		  
		  Var connection As New URLConnection
		  
		  // Set up the connection.
		  connection.RequestHeader("x-api-key") = apiKey
		  connection.RequestHeader("anthropic-version") = ANTHROPIC_VERSION
		  connection.RequestHeader("Content-Type") = "application/json"
		  
		  // Send the request synchronously.
		  Call connection.SendSync("GET", API_ENDPOINT_MODELS, 5)
		  
		  // Check if the response code indicates success (200 OK).
		  Return connection.HTTPStatusCode = 200
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416C776179732072657475726E73205472756520626563617573652074686520726571756972656420656E64706F696E7420666F722074686520416E7468726F706963204150492069732073746F72656420696E7465726E616C6C792E
		Function IsValidEndpoint(endpoint As String) As Boolean
		  /// Always returns True because the required endpoint for the Anthropic API is stored internally.
		  
		  #Pragma Unused endpoint
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F76696465722068617320616E20617661696C61626C65206D6F64656C206E616D656420606D6F64656C4E616D65602E
		Function IsValidModel(modelName As String) As Boolean
		  /// Returns True if this provider has an available model named `modelName`.
		  
		  Var models() As ModelDescription = Models
		  
		  For Each model As ModelDescription In models
		    If model.ID = modelName Then Return True
		  Next model
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MessageAsDictionary(m As AIKit.ChatMessage) As Dictionary
		  /// Returns this message as a Dictionary for encoding as JSON.
		  
		  Var d As New Dictionary("role" : m.Role)
		  
		  If m.Pictures.Count = 0 Then
		    d.Value("content") = m.Content
		  Else
		    Var contents() As Dictionary
		    For Each p As Picture In m.Pictures
		      Var imageContent As New Dictionary("type" : "image")
		      Var source As New Dictionary("type" : "base64", "media_type" : "image/jpeg")
		      // The Anthropic API places some restrictions on the size of images the API accepts:
		      // https://docs.anthropic.com/en/docs/build-with-claude/vision
		      Var resizedPic As Picture = ResizePicture(p)
		      source.Value("data") = EncodeBase64(resizedPic.ToData(Picture.Formats.JPEG, Picture.QualityHigh), 0)
		      imageContent.Value("source") = source
		      contents.Add(imageContent)
		    Next p
		    contents.Add(New Dictionary("type" : "text", "text" : m.Content))
		    
		    d.Value("content") = contents
		  End If
		  
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620616C6C20617661696C61626C65206D6F64656C7320666F7220746869732070726F76696465722E204D617920726169736520616E20415049457863657074696F6E2E
		Function Models() As AIKit.ModelDescription()
		  /// Returns an array of all available models for this provider.
		  /// May raise an APIException.
		  
		  Var request As New URLConnection
		  Var models() As ModelDescription
		  
		  // Set headers.
		  request.RequestHeader("Content-Type") = "application/json"
		  request.RequestHeader("anthropic-version") = ANTHROPIC_VERSION
		  request.RequestHeader("x-api-key") = mAPIKey
		  
		  // Send the request.
		  Var response As String = request.SendSync("GET", API_ENDPOINT_MODELS, 5)
		  
		  // Check if the request was successful.
		  If request.HTTPStatusCode >= 200 And request.HTTPStatusCode < 300 Then
		    // Parse the JSON response.
		    Try
		      Var json As Dictionary = ParseJSON(response)
		      
		      // The API returns a "data" array with model objects.
		      If json.HasKey("data") Then
		        Var modelsArray() As Object = json.Value("data")
		        
		        For Each modelDict As Object In modelsArray
		          models.Add(DictionaryToModelDescription(Dictionary(modelDict)))
		        Next modelDict
		      End If
		    Catch e As RuntimeException
		      // Handle JSON parsing errors.
		      Raise New AIKit.APIException("Error parsing models response: " + e.Message)
		    End Try
		  Else
		    // Handle HTTP errors.
		    Raise New AIKit.APIException("HTTP Error: " + Str(request.HTTPStatusCode) + " - " + response)
		  End If
		  
		  Return models
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206E616D65206F6620746869732070726F76696465722E
		Function Name() As String
		  /// The name of this provider.
		  
		  Return "Anthropic"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F636573736573206120636F6E74656E745F626C6F636B5F64656C7461206576656E742066726F6D2074686520416E7468726F706963204150492E
		Private Sub ProcessContentBlockDelta(data As Dictionary)
		  /// Processes a content_block_delta event from the Anthropic API.
		  ///
		  /// data: {
		  ///   "type": "content_block_delta"
		  ///   "index": 0
		  ///   "delta": {
		  ///     "type": "text_delta"
		  ///     "text": "Hello"
		  ///   }
		  /// }
		  
		  If Not data.HasKey("delta") Then Return
		  
		  Var delta As Dictionary = data.Value("delta")
		  Select Case delta.Lookup("type", "")
		  Case "text_delta"
		    Var theText As String = delta.Lookup("text", "")
		    If theText <> "" Then
		      mLastResponse.Add(theText)
		      If mOwner.ContentReceivedDelegate <> Nil Then
		        mOwner.ContentReceivedDelegate.Invoke(mOwner, theText)
		      End If
		    End If
		    
		  Case "thinking_delta"
		    Var thinkingText As String = delta.Lookup("thinking", "")
		    If thinkingText <> "" Then
		      mLastThinking.Add(thinkingText)
		      If mOwner.ThinkingReceivedDelegate <> Nil Then
		        mOwner.ThinkingReceivedDelegate.Invoke(mOwner, thinkingText)
		      End If
		    End If
		    
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F636573736573206120636F6E74656E745F626C6F636B5F7374617274206576656E742066726F6D2074686520416E7468726F706963204150492E
		Private Sub ProcessContentBlockStart(data As Dictionary)
		  /// Processes a content_block_start event from the Anthropic API.
		  ///
		  /// data: {
		  /// "type": "content_block_start",
		  /// "index": 0,
		  /// "content_block": {
		  ///   "type": "text", 
		  ///   "text": ""
		  ///  }
		  /// }
		  
		  If Not data.HasKey("content_block") Then Return
		  
		  Var contentBlock As Dictionary = data.Value("content_block")
		  Select Case contentBlock.Lookup("type", "")
		  Case "text"
		    mCurrentlyThinking = False
		    mMessageTimeStart = DateTime.Now
		    Var theText As String = contentBlock.Lookup("text", "")
		    If theText <> "" Then
		      mLastResponse.Add(theText)
		      If mOwner.ContentReceivedDelegate <> Nil Then
		        mOwner.ContentReceivedDelegate.Invoke(mOwner, theText)
		      End If
		    End If
		    
		  Case "thinking"
		    mCurrentlyThinking = True
		    mThinkingTimeStart = DateTime.Now
		    Var thinkingText As String = contentBlock.Lookup("thinking", "")
		    If thinkingText <> "" Then
		      mLastThinking.Add(thinkingText)
		      If mOwner.ThinkingReceivedDelegate <> Nil Then
		        mOwner.ThinkingReceivedDelegate.Invoke(mOwner, thinkingText)
		      End If
		    End If
		    
		  Case "redacted_thinking"
		    // Ignore.
		    
		  Else
		    Return
		  End Select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320616E20415049206572726F722E
		Private Sub ProcessError(jsonData As String)
		  /// Processes an API error.
		  ///
		  /// Anthropic API error structure:
		  /// {
		  ///   "type": "error",
		  ///   "error": {
		  ///     "type": "not_found_error",
		  ///     "message": "The requested resource could not be found."
		  ///    }
		  ///  }
		  
		  #Pragma BreakOnExceptions False
		  
		  Var data As Dictionary
		  Try
		    data = ParseJSON(jsonData)
		  Catch e As JSONException
		    // Bad JSON data!
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Error parsing API JSON")
		    Else
		      Raise New RuntimeException("Error parsing API JSON")
		    End If
		  End Try
		  
		  If Not data.HasKey("error") Then
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Unknown API error occurred")
		    Else
		      Raise New AIKit.APIException("Unknown API error occurred")
		    End If
		  Else
		    Var error As Dictionary = data.Value("error")
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, error.Lookup("message", "An API error occurred."))
		    Else
		      Raise New AIKit.APIException(error.Lookup("message", "An API error occurred."))
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320616E206173796E6368726F6E6F757320415049206576656E742E
		Private Sub ProcessEvent(eventString As String)
		  /// Processes an asynchronous API event.
		  ///
		  /// `eventString` is event/data string returned from the raw HTTP API request:
		  /// https://docs.anthropic.com/en/api/messages-streaming
		  
		  Var tmp() As String = eventString.Split(&u0A)
		  
		  Var eventType As String = tmp(0).Right(tmp(0).Length - 7)
		  Var dataJSON As String = tmp(1).Right(tmp(1).Length - 6)
		  
		  Var data As Dictionary
		  Try
		    data = ParseJSON(dataJSON)
		  Catch e As RuntimeException
		    Raise New UnsupportedOperationException("Invalid JSON data received: " + e.Message)
		  End Try
		  
		  Select Case eventType
		  Case "message_start"
		    ProcessMessageStart(data)
		    
		  Case "content_block_start"
		    ProcessContentBlockStart(data)
		    
		  Case "content_block_delta"
		    ProcessContentBlockDelta(data)
		    
		  Case "content_block_stop"
		    If mCurrentlyThinking Then
		      mThinkingTimeStop = DateTime.Now
		      mCurrentlyThinking = False
		    Else
		      mMessageTimeStop = DateTime.Now
		    End If
		    
		  Case "message_delta"
		    ProcessMessageDelta(data)
		    
		  Case "message_stop"
		    // Add the assistant's response to the conversation history.
		    mOwner.Messages.Add(New AIKit.ChatMessage("assistant", String.FromArray(mLastResponse, "")))
		    
		    mMessageTimeStop = DateTime.Now
		    
		    Var responseContent As String = If(mLastResponse.Count > 0, String.FromArray(mLastResponse, ""), "")
		    Var thinkingContent As String = If(mLastThinking.Count > 0, String.FromArray(mLastThinking, ""), "")
		    
		    Var response As New AIKit.ChatResponse(responseContent, thinkingContent, mMessageTimeStart, _
		    mMessageTimeStop, mInputTokenCount, mOutputTokenCount, mThinkingTimeStart, mThinkingTimeStop)
		    
		    If mOwner.MessageFinishedDelegate <> Nil Then
		      mOwner.MessageFinishedDelegate.Invoke(mOwner, response)
		    End If
		    
		  Case "ping"
		    // Ignore.
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F6365737365732061206D6573736167655F64656C7461206576656E742066726F6D2074686520416E7468726F706963204150492E
		Private Sub ProcessMessageDelta(data As Dictionary)
		  /// Processes a message_delta event from the Anthropic API.
		  ///
		  /// data: {
		  ///   "type": "message_delta"
		  ///   "delta": {
		  ///     "stop_reason": "end_turn"
		  ///     "stop_sequence": null
		  ///   },
		  ///   "usage": {
		  ///     "output_tokens": 15
		  ///   }
		  /// }
		  
		  If Not data.HasKey("delta") Then
		    Raise New UnsupportedOperationException("Expected the `message_delta` event to contain " + _
		    "a `delta` object.")
		  End If
		  
		  Var delta As Dictionary = data.Value("delta")
		  
		  // If the assistant has stopped - what was the reason?
		  Var stopReason As String = delta.Lookup("stop_reason", "")
		  Select Case stopReason
		  Case "max_tokens"
		    If mOwner.MaxTokensReachedDelegate <> Nil Then
		      mOwner.MaxTokensReachedDelegate.Invoke(mOwner)
		    End If
		    
		  Case "end_turn"
		    // Ignore.
		    
		  Else
		    Raise New UnsupportedOperationException("Unknown `stop_reason`: " + stopReason)
		  End Select
		  
		  // Update the output token count if provided.
		  If data.HasKey("usage") Then
		    Var usage As Dictionary = data.Value("usage")
		    If usage.HasKey("output_tokens") Then
		      mOutputTokenCount = usage.Value("output_tokens").IntegerValue
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373207468652064617461206173736F6369617465642077697468206120606D6573736167655F73746172746020415049206576656E742E
		Private Sub ProcessMessageStart(data As Dictionary)
		  /// Process the data associated with a `message_start` API event.
		  ///
		  /// data: {
		  ///  "type": "message_start",
		  ///  "message": {
		  ///    "id": "msg_1nZdL29xx5MUA1yADyHTEsnR8uuvGzszyY",
		  ///    "type": "message",
		  ///    "role": "assistant",
		  ///    "content": [],
		  ///    "model": "claude-3-7-sonnet-20250219",
		  ///    "stop_reason": null,
		  ///    "stop_sequence": null,
		  ///    "usage": {
		  ///      "input_tokens": 25,
		  ///      "output_tokens": 1
		  ///     }
		  ///   }
		  /// }
		  
		  If Not data.HasKey("message") Then Return
		  
		  mMessageTimeStart = DateTime.Now
		  
		  Var message As Dictionary = data.Value("message")
		  
		  // Get the input and output token usage.
		  If message.HasKey("usage") Then
		    Var usage As Dictionary = message.Value("usage")
		    mInputTokenCount = usage.Lookup("input_tokens", 0)
		    mOutputTokenCount = usage.Lookup("output_tokens", 0)
		  End If
		  
		  If mOwner.MessageStartedDelegate <> Nil Then
		    mOwner.MessageStartedDelegate.Invoke(mOwner, mIncomingMessageID, mInputTokenCount)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320746865204A534F4E2072657475726E65642066726F6D2074686520416E7468726F7069632041504920666F7220612073796E6368726F6E6F7573206D65737361676520726571756573742E2052657475726E732061206043686174526573706F6E736560206F626A6563742E
		Private Function ProcessSynchronousResponse(responseJSON As String) As AIKit.ChatResponse
		  /// Processes the JSON returned from the Anthropic API for a synchronous message request.
		  /// Returns a `ChatResponse` object.
		  
		  #Pragma BreakOnExceptions False
		  
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
		  
		  // Check for an error.
		  If data.Lookup("type", "") = "error" Then
		    Var err As Dictionary = data.Lookup("error", Nil)
		    Var errMessage As String = If(err = Nil, "", err.Lookup("type", "") + ": "+ err.Lookup("message", ""))
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, errMessage)
		      Return AIKit.ChatResponse.Empty
		    Else
		      Raise New AIKit.APIException(errMessage)
		    End If
		  End If
		  
		  // Content.
		  If Not data.HasKey("content") Then
		    Return AIKit.ChatResponse.Empty
		  End If
		  Var contents() As Object = data.Value("content")
		  For Each contentObj As Object In contents
		    If contentObj IsA Dictionary = False Then Continue
		    Var content As Dictionary = Dictionary(contentObj)
		    Select Case content.Lookup("type", "")
		    Case "thinking"
		      If content.HasKey("thinking") Then
		        mLastThinking.Add(content.Value("thinking"))
		      End If
		    Case "text"
		      If content.HasKey("text") Then
		        mLastResponse.Add(content.Value("text"))
		      End If
		    End Select
		  Next contentObj
		  Var thinkingContent As String = String.FromArray(mLastThinking, "")
		  Var messageContent As String = String.FromArray(mLastResponse, "")
		  
		  // Meta.
		  mIncomingMessageID = data.Lookup("id", "")
		  
		  // Usage.
		  If data.HasKey("usage") Then
		    Var usage As Dictionary = data.Value("usage")
		    mInputTokenCount = usage.Lookup("input_tokens", 0)
		    mOutputTokenCount = usage.Lookup("output_tokens", 0)
		  End If
		  
		  // The Anthropic API doesn't provide a way to determine how long the model spent thinking
		  // when making a synchronous call. We will therefore set the thinking time to 0 and the message
		  // time will reflect both thinking and the actual message.
		  mThinkingTimeStop = Nil
		  mMessageTimeStop = DateTime.Now
		  
		  Return New AIKit.ChatResponse(messageContent, thinkingContent, mMessageTimeStart, mMessageTimeStop, _
		  mInputTokenCount, mOutputTokenCount, mThinkingTimeStart, mThinkingTimeStop)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 48616E646C657320746865206172726976616C206F66206E657720646174612066726F6D20616E2061637469766520416E7468726F7069632041504920636F6E6E656374696F6E2E
		Private Sub ReceivingProgressedDelegate(sender As URLConnection, bytesRecieved As Int64, totalBytes As Int64, newData As String)
		  /// Handles the arrival of new data from an active Anthropic API connection.
		  
		  #Pragma Unused sender
		  #Pragma Unused bytesRecieved
		  #Pragma Unused totalBytes
		  
		  // The data should be in UTF-8.
		  Var data As String = newData.DefineEncoding(Encodings.UTF8)
		  
		  If data.BeginsWith("{""type"":""error""") Then
		    ProcessError(data)
		    Return
		  ElseIf data.BeginsWith("event: error") Then
		    data = data.Replace("event: error" + EndOfLine + "data: ", "")
		    ProcessError(data)
		    Return
		  End If
		  
		  // Split the data into events.
		  Const EVENT_DELIMITER = &u0A + &u0A
		  Var events() As String = data.Split(EVENT_DELIMITER)
		  
		  // Process each event in order.
		  For Each e As String In events
		    e = e.Trim
		    If e <> "" Then
		      ProcessEvent(e)
		    End If
		  Next e
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F766964657220726571756972657320616E20415049206B65792E
		Function RequiresAPIKey() As Boolean
		  // A valid API is required to use the Anthropic API.
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F766964657220726571756972657320616E20656E64706F696E7420746F206265207370656369666965642E
		Function RequiresEndpoint() As Boolean
		  // The user doesn't need to specify an endpoint for the Anthropic API.
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 526573697A6573206174686520706173736564207069637475726520746F20636F6D706C7920776974682074686520416E7468726F7069632041504920726571756972656D656E74732E
		Protected Function ResizePicture(p As Picture) As Picture
		  /// Resizes athe passed picture to comply with the Anthropic API requirements.
		  ///
		  /// https://docs.anthropic.com/en/docs/build-with-claude/vision
		  
		  If p = Nil Then Return p
		  
		  // Handle the easy case of square images.
		  If p.Width = p.Height Then
		    If p.Width <= 1092 Then
		      // No need to resize.
		      Return p
		    Else
		      // Too big. Resize to 1092 x 1092.
		      Var newPic As New Picture(1092, 1092, 32)
		      newPic.Graphics.DrawPicture(p, 0, 0, 1092, 1092, 0, 0, p.Width, p.Height)
		    End If
		  End If
		  
		  // In addition to square images, the Anthropic API gives 4 aspect ratios with different limits
		  // on the image size. We need to find the closes aspect ratio.
		  Var difference, smallestDifference As Double
		  Var aspect As Double = p.Width / p.Height
		  
		  // 4:3 ratio.
		  Var closestRatio As Double = 4/3
		  smallestDifference = Abs(aspect - (4/3))
		  
		  // 3:2 ratio (=1.5).
		  difference = Abs(aspect - 1.5)
		  If difference < smallestDifference Then
		    smallestDifference = difference
		    closestRatio = 1.5
		  End If
		  
		  // 16:9 ratio.
		  difference = Abs(aspect - (16/9))
		  If difference < smallestDifference Then
		    smallestDifference = difference
		    closestRatio = 16/9
		  End If
		  
		  // 2:1 ratio.
		  difference = Abs(aspect - 2)
		  If difference < smallestDifference Then
		    smallestDifference = difference
		    closestRatio = 2
		  End If
		  
		  Var w, h As Integer
		  Select Case closestRatio
		  Case 4/3
		    w = 1268
		    h = 951
		  Case 3/2
		    w = 1344
		    h = 896
		  Case 16/9
		    w = 1456
		    h = 819
		  Case 2
		    w = 1568
		    h = 784
		  End Select
		  
		  // Create a new picture to return
		  Var newPic As New Picture(w, h, 32)
		  
		  // Draw picture In the New size
		  newPic.Graphics.DrawPicture(p, 0, 0, w, h, 0, 0, p.Width, p.Height)
		  
		  Return newPic
		  
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
		  
		  // I *think* all current Anthropic models support image interpretation:
		  // https://docs.anthropic.com/en/docs/build-with-claude/vision
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F727473206E6F206C696D6974206F6E20746865206E756D626572206F6620746F6B656E732072657475726E656420696E2074686520726573706F6E73652E
		Function SupportsUnlimitedTokens() As Boolean
		  /// True if the current model supports no limit on the number of tokens returned in the response.
		  ///
		  /// Part of the AIKit.ChatProvider interface.
		  
		  Return False
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mAPIKey As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mConnection As URLConnection
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5472756520696620746865206D6F64656C2069732063757272656E746C79207468696E6B696E672E
		Protected mCurrentlyThinking As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 54686520756E69717565204944206F662074686520696E636F6D696E67206D6573736167652E2057696C6C20626520656D707479206966207468657265206973206E6F20696E636F6D696E67206D65737361676520696E2070726F67726573732E
		Protected mIncomingMessageID As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206E756D626572206F6620696E707574202870726F6D70742920746F6B656E7320666F7220746865206C6173742071756572792E
		Protected mInputTokenCount As Integer = 0
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

	#tag Property, Flags = &h1, Description = 5768656E20746865206C617374206D65737361676520626567616E2E2057696C6C206265204E696C206966206E6F206D6573736167696E672068617665206265656E2073656E742E
		Protected mMessageTimeStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 5768656E20746865206C617374206D6573736167652066696E69736865642E204D6179206265204E696C206966206E6F206D6573736167696E6720686173206F63637572726564206F722069662061206D65737361676520697320696E20666C696768742E
		Protected mMessageTimeStop As DateTime
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 546865206E756D626572206F66206F757470757420746F6B656E7320696E20746865206C61737420726573706F6E73652E
		Protected mOutputTokenCount As Integer = 0
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


	#tag Constant, Name = ANTHROPIC_VERSION, Type = String, Dynamic = False, Default = \"2023-06-01", Scope = Protected, Description = 5468652063757272656E746C7920737570706F727420416E7468726F706963204150492076657273696F6E2E
	#tag EndConstant

	#tag Constant, Name = API_ENDPOINT_MESSAGES, Type = String, Dynamic = False, Default = \"https://api.anthropic.com/v1/messages", Scope = Protected, Description = 5468652041504920656E64706F696E7420666F72206D657373616765732E
	#tag EndConstant

	#tag Constant, Name = API_ENDPOINT_MODELS, Type = String, Dynamic = False, Default = \"https://api.anthropic.com/v1/models", Scope = Protected, Description = 5468652041504920656E64706F696E7420746F20726574726965766520617661696C61626C65206D6F64656C732E
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
