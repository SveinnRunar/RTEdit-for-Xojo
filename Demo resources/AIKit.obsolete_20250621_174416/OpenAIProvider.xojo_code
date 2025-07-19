#tag Class
Protected Class OpenAIProvider
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
		  mThinkingTokenCount = 0
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
		  
		  // The system prompt is injected as the first message to the model.
		  If mOwner.SystemPrompt <> "" Then
		    Var systemMessage As New Dictionary("role" : "developer", "content" : mOwner.SystemPrompt)
		    messages.AddAt(0, systemMessage)
		  End If
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mowner.ModelName
		  payload.Value("messages") = messages
		  
		  If Not mOwner.UnlimitedResponse Then
		    payload.Value("max_completion_tokens") = mOwner.MaxTokens
		  End If
		  
		  // Temperature.
		  Var tempValue As Double
		  If mOwner.ShouldThink Then
		    // Thinking models should use a temperature of 1.0.
		    tempValue = 1.0
		  ElseIf mOwner.UseDefaultTemperature Then
		    tempValue = 1.0
		  Else
		    // OpenAI uses a temperature of between 0 - 2.
		    tempValue = Clamp(mOwner.Temperature, 0, 2)
		  End If
		  payload.Value("temperature") = tempValue
		  
		  payload.Value("stream") = True
		  payload.Value("stream_options") = New Dictionary("include_usage" : True)
		  
		  // Send the request asynchronously to the Anthropic API.
		  Try
		    ConfigureNewConnection
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    mConnection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    
		    If mOwner.MessageStartedDelegate <> Nil Then
		      mOwner.MessageStartedDelegate.Invoke(mOwner, "", 0)
		    End If
		    
		    mConnection.Send("POST", API_ENDPOINT_COMPLETIONS)
		    
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
		  mThinkingTokenCount = 0
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
		  
		  // The system prompt is injected as the first message to the model.
		  If mOwner.SystemPrompt <> "" Then
		    Var systemMessage As New Dictionary("role" : "developer", "content" : mOwner.SystemPrompt)
		    messages.AddAt(0, systemMessage)
		  End If
		  
		  // Create the request payload.
		  Var payload As New Dictionary
		  payload.Value("model") = mowner.ModelName
		  payload.Value("messages") = messages
		  
		  If Not mOwner.UnlimitedResponse Then
		    payload.Value("max_completion_tokens") = mOwner.MaxTokens
		  End If
		  
		  // Temperature.
		  Var tempValue As Double
		  If mOwner.ShouldThink Then
		    // Thinking models should use a temperature of 1.0.
		    tempValue = 1.0
		  ElseIf mOwner.UseDefaultTemperature Then
		    tempValue = 1.0
		  Else
		    // OpenAI uses a temperature of between 0 - 2.
		    tempValue = Clamp(mOwner.Temperature, 0, 2)
		  End If
		  payload.Value("temperature") = tempValue
		  
		  payload.Value("stream") = False
		  
		  // Send the request synchronously to the Anthropic API.
		  Try
		    Var connection As New URLConnection
		    
		    // Build the headers.
		    connection.RequestHeader("Content-Type") = "application/json"
		    connection.RequestHeader("Authorization") = "Bearer " + mAPIKey
		    
		    // Create the JSON payload.
		    Var jsonPayload As String = GenerateJSON(payload)
		    
		    // Set the content of the request.
		    connection.SetRequestContent(jsonPayload, "application/json")
		    
		    // Send it.
		    mIsAwaitingResponse = True
		    Var responseJSON As String
		    Try
		      responseJSON = connection.SendSync("POST", API_ENDPOINT_COMPLETIONS, timeout)
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
		  mConnection.RequestHeader("Content-Type") = "application/json"
		  mConnection.RequestHeader("Authorization") = "Bearer " + mAPIKey
		  
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

	#tag Method, Flags = &h21, Description = 52657475726E732061206E6577204D6F64656C4465736372697074696F6E2066726F6D207468652064696374696F6E6172792072657475726E656420627920746865204F70656E414920415049207768656E207175657279696E672074686520606D6F64656C736020656E64706F696E742E
		Private Function DictionaryToModelDescription(d As Dictionary) As ModelDescription
		  /// Returns a new ModelDescription from the dictionary returned by the OpenAI API when querying the
		  /// `models` endpoint.
		  
		  Var id As String = d.Value("id")
		  Var name As String = id
		  
		  // The OpenAI API returns the creation date as a Unix timestamp in seconds
		  Var created As New DateTime(d.Value("created").IntegerValue)
		  
		  Return New ModelDescription(id, name, created, "", "", 0, 0)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620606B65796020697320612076616C6964204F70656E414920415049206B6579206F722046616C73652069662069742069736E27742E
		Function IsValidAPIKey(apiKey As String) As Boolean
		  /// Returns True if `key` is a valid OpenAI API key or False if it isn't.
		  
		  Var connection As New URLConnection
		  
		  // Set up the connection.
		  connection.RequestHeader("Content-Type") = "application/json"
		  connection.RequestHeader("Authorization") = "Bearer " + apiKey
		  
		  // Send the request synchronously.
		  Call connection.SendSync("GET", API_ENDPOINT_MODELS, 5)
		  
		  // Check if the response code indicates success (200 OK).
		  Return connection.HTTPStatusCode = 200
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416C776179732072657475726E73205472756520626563617573652074686520726571756972656420656E64706F696E7420666F7220746865204F70656E4149204150492069732073746F72656420696E7465726E616C6C792E
		Function IsValidEndpoint(endpoint As String) As Boolean
		  /// Always returns True because the required endpoint for the OpenAI API is stored internally.
		  
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
		      Var imageContent As New Dictionary("type" : "image_url")
		      Var resizedPic As Picture = ResizePicture(p)
		      Var encoded As String = EncodeBase64(resizedPic.ToData(Picture.Formats.JPEG, Picture.QualityHigh), 0)
		      Var imageURL As New Dictionary( _
		      "url" : "data:image/jpeg;base64," + encoded)
		      imageContent.Value("image_url") = imageURL
		      contents.Add(imageContent)
		    Next p
		    contents.Add(New Dictionary("type" : "text", "text" : m.Content))
		    
		    d.Value("content") = contents
		  End If
		  
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MessageStop()
		  /// Handle the finishing of a message.
		  
		  // Add the assistant's response to the conversation history.
		  mOwner.Messages.Add(New AIKit.ChatMessage("assistant", String.FromArray(mLastResponse, "")))
		  
		  mMessageTimeStop = DateTime.Now
		  mIsAwaitingResponse = False
		  
		  Var responseContent As String = If(mLastResponse.Count > 0, String.FromArray(mLastResponse, ""), "")
		  
		  // OpenAI doesn't return the thinking tokens.
		  Var thinkingContent As String = ""
		  
		  Var response As New AIKit.ChatResponse(responseContent, thinkingContent, mMessageTimeStart, _
		  mMessageTimeStop, mInputTokenCount, mOutputTokenCount, mThinkingTimeStart, mThinkingTimeStop)
		  
		  If mOwner.MessageFinishedDelegate <> Nil Then
		    mOwner.MessageFinishedDelegate.Invoke(mOwner, response)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620616C6C20617661696C61626C65206D6F64656C7320666F7220746869732070726F76696465722E204D617920726169736520616E20415049457863657074696F6E2E
		Function Models() As AIKit.ModelDescription()
		  /// Returns an array of all available models for this provider.
		  /// May raise an APIException.
		  
		  Var request As New URLConnection
		  Var models() As ModelDescription
		  
		  // Set headers.
		  request.RequestHeader("Content-Type") = "application/json"
		  request.RequestHeader("Authorization") = "Bearer " + mAPIKey
		  
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
		        
		        // Sort the array alphabetically by model ID.
		        models.Sort(AddressOf SortModelsAlphabetically)
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
		  
		  Return "OpenAI"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320612073747265616D696E672064617461206368756E6B2E
		Private Sub ProcessData(data As Dictionary)
		  /// Processes a streaming data chunk.
		  ///
		  /// https://platform.openai.com/docs/api-reference/chat/object
		  
		  // The final streaming chunk will contain a `usage` object that is not Nil.
		  // We will process this differently than the message response objects.
		  If data.HasKey("usage") Then
		    Var usage As Dictionary = data.Value("usage")
		    If usage <> Nil Then
		      ProcessUsageAndFinish(usage)
		      Return
		    End If
		  End If
		  
		  // We expect a `choices` array.
		  If Not data.HasKey("choices") Then Return
		  Var choicesObjs() As Object = data.Value("choices")
		  
		  For Each choiceObj As Object In choicesObjs
		    Var choice As Dictionary = Dictionary(choiceObj)
		    If Not choice.HasKey("delta") Then Continue
		    Var delta As Dictionary = choice.Value("delta")
		    If delta.HasKey("content") Then
		      Var theText As String = delta.Value("content")
		      If theText <> "" Then
		        mLastResponse.Add(theText)
		        If mOwner.ContentReceivedDelegate <> Nil Then
		          mOwner.ContentReceivedDelegate.Invoke(mOwner, theText)
		        End If
		      End If
		    End If
		    
		    If delta.HasKey("tool_calls") Then
		      // Handle tool/function calls. Ignore for now.
		    End If
		  Next choiceObj
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320616E206572726F72206F626A6563742066726F6D207468652073747265616D696E6720726573706F6E73652E
		Private Sub ProcessError(errObject As Dictionary)
		  /// Processes an error object from the streaming response.
		  
		  Try
		    
		    Var message As String = errObject.Lookup("message", "An unknown API error occurred.")
		    
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, message)
		    Else
		      Raise New AIKit.APIException(message)
		    End If
		    
		  Catch e As JSONException
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, "Unable to pass API error JSON: " + e.Message)
		    Else
		      Raise New AIKit.APIException("Unable to pass API error JSON: " + e.Message)
		    End If
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F63657373657320746865204A534F4E2072657475726E65642066726F6D20746865204F70656E41492041504920666F7220612073796E6368726F6E6F7573206D65737361676520726571756573742E2052657475726E732061206043686174526573706F6E736560206F626A6563742E
		Private Function ProcessSynchronousResponse(responseJSON As String) As AIKit.ChatResponse
		  /// Processes the JSON returned from the OpenAI API for a synchronous message request.
		  /// Returns a `ChatResponse` object.
		  ///
		  /// {
		  ///  "id": "chatcmpl-B9MBs8CjcvOU2jLn4n570S5qMJKcT",
		  ///  "object": "chat.completion",
		  ///  "created": 1741569952,
		  ///  "model": "gpt-4o-2024-08-06",
		  ///      "choices": [
		  ///    {
		  ///      "index": 0,
		  ///      "message": {
		  ///        "role": "assistant",
		  ///        "content": "Hello! How can I assist you today?",
		  ///        "refusal": null,
		  ///        "annotations": []
		  ///      },
		  ///      "logprobs": null,
		  ///      "finish_reason": "stop"
		  ///    }
		  ///  ],
		  ///  "usage": {
		  ///    "prompt_tokens": 19,
		  ///    "completion_tokens": 10,
		  ///    "total_tokens": 29,
		  ///    "prompt_tokens_details": {
		  ///      "cached_tokens": 0,
		  ///      "audio_tokens": 0
		  ///    },
		  ///    "completion_tokens_details": {
		  ///      "reasoning_tokens": 0,
		  ///      "audio_tokens": 0,
		  ///      "accepted_prediction_tokens": 0,
		  ///      "rejected_prediction_tokens": 0
		  ///    }
		  ///  },
		  ///  "service_tier": "default"
		  /// }
		  
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
		  
		  // Did an error occur?
		  If data.HasKey("error") Then
		    Var errObj As Dictionary = data.Value("error")
		    If mOwner.APIErrorDelegate <> Nil Then
		      mOwner.APIErrorDelegate.Invoke(mOwner, errObj.Value("message"))
		      Return AIKit.ChatResponse.Empty
		    Else
		      Raise New AIKit.APIException(errObj.Value("message"))
		    End If
		  End If
		  
		  Var choicesObjs() As Object = data.Value("choices")
		  For Each choicesObj As Object In choicesObjs
		    Var choice As Dictionary = Dictionary(choicesObj)
		    Var messageObj As Dictionary = choice.Value("message")
		    Var content As String = messageObj.Value("content")
		    If content <> "" Then mLastResponse.Add(content)
		    If choice.Value("finish_reason") = "stop" Then Exit
		  Next choicesObj
		  
		  mIncomingMessageID = data.Lookup("id", "")
		  
		  Var usage As Dictionary = data.Value("usage")
		  
		  mInputTokenCount = usage.Lookup("prompt_tokens", 0)
		  mOutputTokenCount = usage.Lookup("completion_tokens", 0)
		  
		  Var completionDetails As Dictionary = usage.Lookup("completion_tokens_details", Nil)
		  If completionDetails <> Nil Then
		    mThinkingTokenCount = completionDetails.Lookup("reasoning_tokens", 0)
		  End If
		  
		  // Add the assistant's response to the conversation history.
		  mOwner.Messages.Add(New AIKit.ChatMessage("assistant", String.FromArray(mLastResponse, "")))
		  
		  mMessageTimeStop = DateTime.Now
		  mIsAwaitingResponse = False
		  
		  Var responseContent As String = If(mLastResponse.Count > 0, String.FromArray(mLastResponse, ""), "")
		  
		  // OpenAI doesn't return the thinking tokens.
		  Var thinkingContent As String = ""
		  
		  Var response As New AIKit.ChatResponse(responseContent, thinkingContent, mMessageTimeStart, _
		  mMessageTimeStop, mInputTokenCount, mOutputTokenCount, mThinkingTimeStart, mThinkingTimeStop)
		  
		  Return response
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 50726F6365737365732061206E6F6E2D4E696C20607573616765602064696374696F6E6172792066726F6D20746865206368617420726573706F6E736520616E64206D61726B7320746865206D6573736167652061732066696E69736865642E
		Private Sub ProcessUsageAndFinish(usage As Dictionary)
		  /// Processes a non-Nil `usage` dictionary from the chat response and marks the message as finished.
		  ///
		  /// https://platform.openai.com/docs/api-reference/chat/object
		  
		  mInputTokenCount = usage.Lookup("prompt_tokens", 0)
		  mOutputTokenCount = usage.Lookup("completion_tokens", 0)
		  
		  Var completionDetails As Dictionary = usage.Lookup("completion_tokens_details", Nil)
		  If completionDetails <> Nil Then
		    mThinkingTokenCount = completionDetails.Lookup("reasoning_tokens", 0)
		  End If
		  
		  MessageStop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 48616E646C657320746865206172726976616C206F66206E657720646174612066726F6D20616E2061637469766520416E7468726F7069632041504920636F6E6E656374696F6E2E
		Private Sub ReceivingProgressedDelegate(sender As URLConnection, bytesRecieved As Int64, totalBytes As Int64, newData As String)
		  /// Handles the arrival of new data from an active Anthropic API connection.
		  ///
		  /// E.g:
		  ///  data:
		  ///   {
		  ///    "id":"chatcmpl-BFj6Yy27J6GUYHh8PqAwSwFOJRUlb",
		  ///    "object":"chat.completion.chunk",
		  ///    "created":1743088002,
		  ///    "model":"gpt-4o-2024-08-06",
		  ///    "service_tier":"default",
		  ///    "system_fingerprint":"fp_de57b65c90",
		  ///    "choices":[
		  ///      {
		  ///        "index":0,
		  ///        "delta":{
		  ///          "content":"!"
		  ///        },
		  ///        "logprobs":null,
		  ///        "finish_reason":null
		  ///      }
		  ///    ]
		  ///   }
		  
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
		    
		    If ev = "" Then Continue
		    
		    Try
		      If ev.BeginsWith("error: ") Then
		        ev = ev.Replace("error: ", "")
		        ProcessError(ParseJSON(ev))
		      ElseIf ev.BeginsWith("data: ") Then
		        ev = ev.Replace("data: ", "")
		        
		        If ev = "[DONE]" Then Return
		        
		        Var data As Dictionary = ParseJSON(ev)
		        ProcessData(data)
		      Else
		        Raise New AIKit.APIException("Unexpected API data returned: " + ev)
		      End If
		    Catch error As RuntimeException
		      Raise New AIKit.APIException(error.Message)
		    End Try
		  Next ev
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F766964657220726571756972657320616E20415049206B65792E
		Function RequiresAPIKey() As Boolean
		  // A valid API is required to use the OpenAI API.
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F766964657220726571756972657320616E20656E64706F696E7420746F206265207370656369666965642E
		Function RequiresEndpoint() As Boolean
		  // The user doesn't need to specify an endpoint for the OpenAI API.
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ResizePicture(p As Picture) As Picture
		  /// Resizes a Picture to fit within the constraints of the OpenAI API.
		  ///
		  /// The OpenAI API limits pictures to 768 x 2000 px.
		  
		  // Squares.
		  If p.Width = p.Height Then
		    If p.Width <= 768 Then
		      Return p
		    Else
		      // Too big. Resize to 768 x 768
		      Var newPic As New Picture(768, 768, 32)
		      newPic.Graphics.DrawPicture(p, 0, 0, 768, 768, 0, 0, p.Width, p.Height)
		    End If
		  End If
		  
		  // Rectangles.
		  If p.Width > p.Height Then
		    If p.Width <= 2000 And p.Height <= 768 Then Return p
		    
		    // Cap height at 768.
		    Return ResizeToFit(p, 2000, 768)
		    
		  Else // h > w
		    If p.Height <= 2000 And p.Width <= 768 Then Return p
		    
		    // Cap height at 2000.
		    Return ResizeToFit(p, 768, 2000)
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E732061206E65772070696374757265207468617420697320616E206173706563742D726174696F2D707265736572766564207265706C696361206F662074686520706173736564207069637475726520636F6E747261696E656420746F207468652073706563696669656420776964746820616E64206865696768742E
		Protected Function ResizeToFit(p As Picture, maxWidth As Integer, maxHeight As Integer) As Picture
		  /// Returns a new picture that is an aspect-ratio-preserved replica of the passed picture contrained to the
		  /// specified width and height.
		  ///
		  /// See: https://forum.xojo.com/t/proportionally-resizing-a-picture/16732/3
		  
		  // Calculate the scale ratio.
		  Var ratio As Double = Min(maxHeight / p.Height, maxWidth / p.Width)
		  
		  /// Calculate new size.
		  Var w As Integer = p.Width * ratio
		  Var h As Integer = p.Height * ratio
		  
		  /// Create a new picture To return.
		  Var newPic As New Picture(w, h, 32)
		  
		  /// Draw picture in the new size.
		  newPic.Graphics.DrawPicture(p, 0, 0, w, h, 0, 0, p.Width, p.Height)
		  
		  Return newPic
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 44656C656761746520666F7220736F7274696E6720616E206172726179206F66206D6F64656C732062792074686569722049442E
		Private Function SortModelsAlphabetically(model1 As AIKit.ModelDescription, model2 As AIKit.ModelDescription) As Integer
		  /// Delegate for sorting an array of models by their ID.
		  
		  If model1.ID = model2.ID Then Return 0
		  
		  If model1.ID < model2.ID Then Return -1
		  
		  Return 1
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
		  
		  // As of March 2025, OpenAI don't provide a way to query a model's support for images so we need to 
		  // hard code the data.
		  
		  Select Case mOwner.ModelName
		  Case "o1-mini", "gpt-4-0125-preview", "gpt-4.5-preview", _
		    "gpt-4o", "gpt-4o-2024-05-13", "gpt-4o-2024-08-06", "gpt-4o-mini", "gpt-4o-mini-2024-07-18", _
		    "gpt-4-turbo-preview", "gpt-4-turbo-2024-04-09", "gpt-4-turbo"
		    Return True
		  Else
		    Return False
		  End Select
		  
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

	#tag Property, Flags = &h1
		Protected mThinkingTokenCount As Integer = 0
	#tag EndProperty


	#tag Constant, Name = API_ENDPOINT_COMPLETIONS, Type = String, Dynamic = False, Default = \"https://api.openai.com/v1/chat/completions", Scope = Protected, Description = 5468652041504920656E64706F696E7420666F72206368617420636F6D706C6574696F6E732E
	#tag EndConstant

	#tag Constant, Name = API_ENDPOINT_MODELS, Type = String, Dynamic = False, Default = \"https://api.openai.com/v1/models", Scope = Protected, Description = 5468652041504920656E64706F696E7420746F20726574726965766520617661696C61626C65206D6F64656C732E
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
