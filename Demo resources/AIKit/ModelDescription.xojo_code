#tag Class
Protected Class ModelDescription
	#tag Method, Flags = &h0
		Sub Constructor(id As String, name As String, created As DateTime, parameterSize As String, quantisationLevel As String, size As Integer, sizeVRAM As Integer)
		  Self.ID = id
		  Self.Name = name
		  Self.Created = created
		  Self.ParameterSize = parameterSize
		  Self.QuantisationLevel = quantisationLevel
		  Self.Size = size
		  Self.SizeVRAM = sizeVRAM
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		Contains descriptive data about a model. Not all properties apply to all models.
		
		
		
	#tag EndNote


	#tag Property, Flags = &h0, Description = 54686973206D6F64656C2773206372656174696F6E20646174652E
		Created As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 49662074686973206D6F64656C206973206C6F6164656420696E746F206D656D6F72792C2074686973206973207768656E206974206973207363686564756C656420746F20626520756E6C6F616465642E
		ExpiresAt As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 54686520494420666F722074686973206D6F64656C20746861742073686F756C64206265207573656420666F72204150492063616C6C732E
		ID As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652068756D616E2D7265616461626C65206E616D65206F662074686973206D6F64656C2E
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 576865726520617661696C61626C652C2074686973206973206120737472696E672064657363726962696E6720746865206E756D626572206F6620706172616D65746572732028652E673A202237306222292E
		ParameterSize As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 576865726520617661696C61626C652C207468697320697320746865207175616E7469736174696F6E206C6576656C206F6620746865206D6F64656C2028652E673A202251345F3022292E
		QuantisationLevel As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5468652073697A65206F6620746865206D6F64656C20696E2062797465732E
		Size As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 546865206E756D626572206F662062797465732074686973206D6F64656C2069732070726573656E746C79206F6363757079696E6720696E205652414D2E
		SizeVRAM As Integer = 0
	#tag EndProperty


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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ParameterSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="QuantisationLevel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Size"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SizeVRAM"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
