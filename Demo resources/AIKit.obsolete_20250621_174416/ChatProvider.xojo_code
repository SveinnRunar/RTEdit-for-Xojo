#tag Interface
Protected Interface ChatProvider
	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C20612071756572792E
		Sub Ask(what As String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53796E6368726F6E6F75736C792061736B7320746865206D6F64656C20612071756572792E206074696D656F75746020697320746865206E756D626572206F66207365636F6E647320746F207761697420666F72206120726573706F6E73652E20412076616C7565206F66206030602077696C6C207761697420696E646566696E6974656C792E
		Function Ask(what As String, timeout As Integer = 0) As AIKit.ChatResponse
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206174206C65617374206F6E6520696D6167652E
		Function AskWithPicture(what As String, timeout As Integer, ParamArray pics As Picture) As AIKit.ChatResponse
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4173796E6368726F6E6F75736C792061736B73207468652063757272656E746C792073656C6563746564206D6F64656C206120717565727920616E642070726F7669646573206174206C65617374206F6E6520696D6167652E
		Sub AskWithPicture(what As String, ParamArray pics As Picture)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(owner As AIKit.Chat, apiKey As String = "", endpoint As String = "")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732054727565206966207468652073706563696669656420415049206B65792069732076616C69642E
		Function IsValidAPIKey(apiKey As String) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732054727565206966207468652073706563696669656420656E64706F696E742069732076616C69642E
		Function IsValidEndpoint(endpoint As String) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F76696465722068617320616E20617661696C61626C65206D6F64656C206E616D656420606D6F64656C4E616D65602E
		Function IsValidModel(modelName As String) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E206172726179206F6620616C6C20617661696C61626C65206D6F64656C7320666F7220746869732070726F76696465722E204D617920726169736520616E20415049457863657074696F6E2E
		Function Models() As AIKit.ModelDescription()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206E616D65206F6620746869732070726F76696465722028652E673A2022416E7468726F706963222C20224F6C6C616D61222C20657463292E
		Function Name() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F766964657220726571756972657320616E20415049206B65792E
		Function RequiresAPIKey() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73205472756520696620746869732070726F766964657220726571756972657320616E20656E64706F696E7420746F206265207370656369666965642E
		Function RequiresEndpoint() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 49662061206D65737361676520726571756573742069732063757272656E746C79206265696E672068616E646C65642C2077652063616E63656C2069742E205072657365727665732074686520636F6E766572736174696F6E20686973746F72792E
		Sub Stop()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F72747320696E74657270726574696E6720696D616765732E
		Function SupportsImages() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565206966207468652063757272656E74206D6F64656C20737570706F727473206E6F206C696D6974206F6E20746865206E756D626572206F6620746F6B656E732072657475726E656420696E2074686520726573706F6E73652E
		Function SupportsUnlimitedTokens() As Boolean
		  
		End Function
	#tag EndMethod


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
End Interface
#tag EndInterface
