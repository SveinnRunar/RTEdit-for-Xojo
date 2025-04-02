#tag Class
Protected Class Chat
	#tag Method, Flags = &h0, Description = 416464732061206D65737361676520746F2074686520636F6E766572736174696F6E20686973746F72792E
		Sub AddMessage(message As AIKit.ChatMessage)
		  /// Adds a message to the conversation history.
		  
		  If message = Nil Then
		    Raise New InvalidArgumentException("Cannot add a Nil message.")
		  End If
		  
		  Messages.Add(message)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732061206D65737361676520746F2074686520636F6E766572736174696F6E20686973746F72792E
		Sub AddMessage(role As AIKit.Roles, content As String)
		  /// Adds a message to the conversation history.
		  
		  // Create a new user message.
		  Var message As New AIKit.ChatMessage(role.ToString, content)
		  
		  // Add it to the conversation history.
		  Messages.Add(message)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B7320746865206D6F64656C20612071756572792E
		Sub Ask(what As String)
		  /// Asynchronously asks the model a query.
		  
		  If MyProvider <> Nil Then MyProvider.Ask(what)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B7320746865206D6F64656C20612071756572792E206074696D656F75746020697320746865206E756D626572206F66207365636F6E647320746F207761697420666F72206120726573706F6E73652E20412076616C7565206F66206030602077696C6C207761697420696E646566696E6974656C792E
		Function Ask(what As String, timeout As Integer = 0) As AIKit.ChatResponse
		  /// Synchronously asks the model a query.
		  /// `timeout` is the number of seconds to wait for a response. A value of `0` will wait indefinitely.
		  
		  If MyProvider <> Nil Then
		    Return MyProvider.Ask(what, timeout)
		  Else
		    Return AIKit.ChatResponse.Empty
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F766964657320616E20696D6167652E
		Function AskWithPicture(what As String, timeout As Integer, p As Picture) As AIKit.ChatResponse
		  /// Synchronously asks the currently selected model a query and provides an image.
		  
		  If MyProvider <> Nil Then Return MyProvider.AskWithPicture(what, timeout, p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F766964657320616E20696D6167652E
		Sub AskWithPicture(what As String, p As Picture)
		  /// Asynchronously asks the currently selected model a query and provides an image.
		  
		  If MyProvider <> Nil Then MyProvider.AskWithPicture(what, p)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C656172732074686520636F6E766572736174696F6E20686973746F72792E
		Sub ClearHistory()
		  /// Clears the conversation history.
		  
		  Messages.ResizeTo(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(modelName As String, provider As AIKit.Providers, apiKey As String = "", endpoint As String = "")
		  // Set the provider.
		  Select Case provider
		  Case AIKit.Providers.Anthropic
		    MyProvider = New AnthropicProvider(Self, apiKey, endpoint)
		    
		  Case AIKit.Providers.Ollama
		    MyProvider = New OllamaProvider(Self, apiKey, endpoint)
		    
		  Case AIKit.Providers.OpenAI
		    MyProvider = New OpenAIProvider(Self, apiKey, endpoint)
		    
		  Else
		    Raise New InvalidArgumentException("Unsupported provider.")
		  End Select
		  
		  // Has a valid API key been set for this provider?
		  If MyProvider.RequiresAPIKey And Not MyProvider.IsValidAPIKey(apiKey) Then
		    Raise New AIKit.APIException(MyProvider.Name + " requires an API key but the provided key " + _
		    "is invalid.")
		  End If
		  // Has a valid endpoint been specified if required?
		  If MyProvider.RequiresEndpoint And Not _
		    MyProvider.IsValidEndpoint(endpoint) Then
		    Raise New AIKit.APIException(MyProvider.Name + " requires an endpoint but the one specified " + _
		    "is invalid.")
		  End If
		  
		  // Has a valid name for this provider been specified?
		  If Not MyProvider.IsValidModel(modelName) Then
		    Raise New AIKit.APIException("The " + MyProvider.Name + " provider does not have a " + _
		    "model named `" + modelName + "`.")
		  Else
		    mModelName = modelName
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620616C6C20617661696C61626C65206D6F64656C7320666F72207468652063757272656E742070726F76696465722E
		Function Models() As AIKit.ModelDescription()
		  /// Returns an array of all available models for the current provider.
		  
		  Var allModels() As ModelDescription
		  
		  If MyProvider = Nil Then
		    Return allModels // Empty array.
		  Else
		    Return MyProvider.Models
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 49662061206D65737361676520726571756573742069732063757272656E746C79206265696E672068616E646C65642C2077652063616E63656C2069742E205072657365727665732074686520636F6E766572736174696F6E20686973746F72792E
		Sub Stop()
		  /// If a message request is currently being handled, we cancel it.
		  /// Preserves the conversation history.
		  
		  If MyProvider <> Nil Then MyProvider.Stop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F72747320696E74657270726574696E6720696D616765732E
		Function SupportsImages() As Boolean
		  /// True if the current model supports interpreting images.
		  
		  If MyProvider = Nil Then
		    Return False
		  Else
		    Return MyProvider.SupportsImages
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D6F64656C20746F206368617420776974682E2050726573657276657320616E79206578697374696E6720636F6E766572736174696F6E20686973746F72792E204D617920726169736520616E20415049457863657074696F6E2E
		Sub WithModel(model As String, provider As AIKit.Providers, apiKey As String = "", endpoint As String = "")
		  /// Sets the model to chat with. 
		  /// Preserves any existing conversation history.
		  /// May raise an APIException.
		  
		  Stop
		  
		  Constructor(model, provider, apiKey, endpoint)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0, Description = 5468652064656C656761746520746F20696E766F6B65207768656E20616E20415049206572726F72206F63637572732E204966204E696C207468656E20616E206041494B69742E415049457863657074696F6E602077696C6C206265207468726F776E20696E73746561642E
		APIErrorDelegate As AIKit.APIError
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652064656C656761746520746F20696E766F6B65207768656E206E6577206D65737361676520636F6E74656E742069732072656365697665642E204D6179206265204E696C2E
		ContentReceivedDelegate As AIKit.ContentReceived
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662054727565207468656E20746865206D6F64656C2077696C6C206265206B657074206C6F6164656420696E206D656D6F727920696E646566696E6974656C79206F74686572776973652069742077696C6C20626520756E6C6F6164656420616674657220604B656570416C6976654D696E75746573602E204F6E6C79206170706C69657320746F206C6F63616C206D6F64656C732E
		KeepAlive As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206E756D626572206F66206D696E7574657320746F206B65657020746865206D6F64656C20616C69766520666F7220696620604B656570416C697665602069732046616C73652E20496620604B656570416C697665602069732054727565207468656E20746865206D6F64656C2077696C6C2072656D61696E206C6F6164656420696E646566696E6974656C792E204F6E6C79206170706C69657320746F206C6F63616C206D6F64656C732E
		KeepAliveMinutes As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F6620746F6B656E7320746861742073686F756C642062652064656469636174656420746F207468696E6B696E672E204E6F7420616C6C206D6F64656C7320737570706F727420746869732E2049742073686F756C6420757375616C6C79206265206C657373207468616E20604D6178546F6B656E73602E
		MaxThinkingBudget As Integer = DEFAULT_THINKING_BUDGET
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F6620746F6B656E7320746865206D6F64656C2073686F756C642072657475726E2E20536F6D652070726F7669646572732028652E672E204F6C6C616D612920616C6C6F7720602D316020617320612076616C756520746F20696E64696361746520756E6C696D6974656420746F6B656E732E
		MaxTokens As Integer = DEFAULT_MAX_TOKENS
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652064656C656761746520746F20696E766F6B65207768656E20746865206D6178696D756D206E756D626572206F6620746F6B656E7320686173206265656E20726561636865642E204D6179206265204E696C2E
		MaxTokensReachedDelegate As AIKit.MaxTokensReached
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652064656C656761746520746F20696E766F6B65207768656E2061206D657373616765206861732066696E6973686564206265696E672072656365697665642E204D6179206265204E696C2E
		MessageFinishedDelegate As AIKit.MessageFinished
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206D6573736167657320696E207468697320636F6E766572736174696F6E2E
		Messages() As AIKit.ChatMessage
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652064656C656761746520746F20696E766F6B65207768656E2061206E6577206D65737361676520626567696E732E204D6179206265204E696C2E204E6F7420616C6C206D6F64656C732070726F76696465206461746120666F7220616C6C20706172616D65746572732E
		MessageStartedDelegate As AIKit.MessageStarted
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mModelName As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865206D6F64656C2063757272656E746C7920696E207573652E
		#tag Getter
			Get
			  Return mModelName
			End Get
		#tag EndGetter
		ModelName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected MyProvider As AIKit.ChatProvider
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662054727565207468656E20746865206D6F64656C2073686F756C64207468696E6B206265666F726520616E73776572696E672E204E6F7420616C6C206D6F64656C7320737570706F727420746869732E
		ShouldThink As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F727473206E6F206C696D6974206F6E20746865206E756D626572206F6620746F6B656E732072657475726E656420696E2074686520726573706F6E73652E204C6F63616C206D6F64656C732074656E6420746F20737570706F72742074686973206275742070726F7072696574617279206F6E65732074656E64206E6F7420746F2E
		#tag Getter
			Get
			  If MyProvider = Nil Then
			    Return False
			  Else
			    Return MyProvider.SupportsUnlimitedTokens
			  End If
			  
			End Get
		#tag EndGetter
		SupportsUnlimitedTokens As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 5468652073797374656D2070726F6D707420746F2075736520666F7220636F6E766572736174696F6E732E
		SystemPrompt As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652074656D706572617475726520746F2075736520666F7220726573706F6E7365732E205468652076616C756520726571756972656420766172696573206265747765656E206D6F64656C732E20557375616C6C79206265747765656E20302D312E20412076616C7565206F66202D312077696C6C2075736520746865206D6F64656C27732064656661756C7420776865726520706F737369626C652E
		Temperature As Double = 0.5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652064656C656761746520746F20696E766F6B65207768656E207468696E6B696E6720636F6E74656E742069732072656365697665642E204D6179206265204E696C2E
		ThinkingReceivedDelegate As AIKit.ThinkingReceived
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662054727565207468656E20604D6178546F6B656E73602069732069676E6F72656420616E6420746865206D6F64656C206973206672656520746F20726573706F6E642077697468206173206D616E7920746F6B656E732061732072657175697265642E204E6F7420616C6C204150497320737570706F727420746869732E20576865726520616E2041504920646F6573206E6F7420737570706F72742069742C20604D6178546F6B656E736020697320757365642E
		UnlimitedResponse As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662054727565207468656E207468652076616C756520737065636966696564206279206054656D7065726174757265602077696C6C2062652069676E6F72656420616E6420746865206D6F64656C27732064656661756C742028757375616C6C792060312E3060292077696C6C20626520757365642E
		UseDefaultTemperature As Boolean = True
	#tag EndProperty


	#tag Constant, Name = DEFAULT_MAX_TOKENS, Type = Double, Dynamic = False, Default = \"4096", Scope = Public, Description = 5468652064656661756C74206D6178696D756D206E756D626572206F6620746F6B656E7320746865206D6F64656C2073686F756C642072657475726E2E20
	#tag EndConstant

	#tag Constant, Name = DEFAULT_TEMPERATURE, Type = Double, Dynamic = False, Default = \"0.7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULT_THINKING_BUDGET, Type = Double, Dynamic = False, Default = \"1024", Scope = Public, Description = 5468652064656661756C74206D6178696D756D206E756D626572206F6620746F6B656E7320746861742073686F756C642062652064656469636174656420746F207468696E6B696E672E204E6F7420616C6C206D6F64656C7320737570706F727420746869732E
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
		#tag ViewProperty
			Name="ModelName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeepAlive"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeepAliveMinutes"
			Visible=false
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxThinkingBudget"
			Visible=false
			Group="Behavior"
			InitialValue="DEFAULT_THINKING_BUDGET"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxTokens"
			Visible=false
			Group="Behavior"
			InitialValue="DEFAULT_MAX_TOKENS"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShouldThink"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SystemPrompt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SupportsUnlimitedTokens"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UnlimitedResponse"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Temperature"
			Visible=false
			Group="Behavior"
			InitialValue="0.5"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseDefaultTemperature"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
