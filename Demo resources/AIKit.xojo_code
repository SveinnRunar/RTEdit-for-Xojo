#tag Module
Protected Module AIKit
	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub APIError(sender As AIKit . Chat, errorMessage As String)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub ContentReceived(sender As AIKit . Chat, content As String)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub MaxTokensReached(sender As AIKit . Chat)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub MessageFinished(sender As AIKit . Chat, response As AIKit . ChatResponse)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub MessageStarted(sender As AIKit . Chat, messageID As String, inputTokenCount As Integer)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h1, Description = 52657475726E7320616E206172726179206F6620616C6C20617661696C61626C65206D6F64656C7320666F7220746865207370656369666965642070726F76696465722E
		Protected Function ModelsForProvider(provider As AIKit.Providers, apiKey As String, endpoint As String) As AIKit.ModelDescription()
		  /// Returns an array of all available models for the specified provider.
		  
		  Var models() As AIKit.ModelDescription
		  
		  Select Case provider
		  Case AIKit.Providers.Anthropic
		    Var anthropic As New AnthropicProvider(Nil, apiKey, endpoint)
		    If anthropic.IsValidAPIKey(apiKey) Then
		      Return anthropic.Models
		    Else
		      Return models
		    End If
		    
		  Case AIKit.Providers.Ollama
		    Var ollama As New OllamaProvider(Nil, apiKey, endpoint)
		    If ollama.IsValidEndpoint(endpoint) Then
		      Return ollama.Models
		    Else
		      Return models
		    End If
		    
		  Case AIKit.Providers.OpenAI
		    Var oai As New OpenAIProvider(Nil, apiKey, endpoint)
		    If oai.IsValidAPIKey(apiKey) Then
		      Return oai.Models
		    Else
		      Return models
		    End If
		    
		  Else
		    Raise New InvalidArgumentException("Unsupported provider.")
		  End Select
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub ThinkingReceived(sender As AIKit . Chat, content As String)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0, Description = 52657475726E73206120737472696E6720726570726573656E746174696F6E206F6620616E2041494B697420726F6C652E
		Function ToString(Extends role As AIKit.Roles) As String
		  /// Returns a string representation of an AIKit role.
		  
		  Select Case role
		  Case AIKit.Roles.Assistant
		    Return "assistant"
		    
		  Case AIKit.Roles.System
		    Return "system"
		    
		  Case AIKit.Roles.User
		    Return "user"
		    
		  Else
		    Raise New InvalidArgumentException("Unknown AIKit Role.")
		  End Select
		End Function
	#tag EndMethod


	#tag Note, Name = Images
		Some LLMs support the analysis of images. Chatting with these models is done through the
		`AskWithPicture()` methods. 
		
		Some `ChatProviders` (such as the `AnthropicProvider`) will automatically resize Xojo pictures to fit 
		within the constraints of the models provided by that provider, others will not. 
		
		For example, the `OllamaProvider` expects the end user (i.e. you!) to resize Xojo pictures before 
		submitting them to the API. The reason the `OllamaProvider` can't effectively do this for you 
		is because there are many vision-enabled open source models and they all support images of 
		different sizes.
		
		
	#tag EndNote


	#tag Enum, Name = Providers, Flags = &h0
		Anthropic
		  Ollama
		OpenAI
	#tag EndEnum

	#tag Enum, Name = Roles, Type = Integer, Flags = &h1
		Assistant
		  System
		User
	#tag EndEnum


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
End Module
#tag EndModule
