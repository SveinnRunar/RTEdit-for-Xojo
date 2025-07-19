#tag Class
Protected Class ChatResponse
	#tag Method, Flags = &h0
		Sub Constructor(content As String, thinkingContent As String, messageStart As DateTime, messageEnd As DateTime, inputCount As Integer, outputCount As Integer, thinkingStart As DateTime, thinkingStop As DateTime)
		  Self.Content = content
		  Self.ThinkingContent = thinkingContent
		  Self.MessageTimeStart = messageStart
		  Self.MessageTimeStop = messageEnd
		  Self.InputTokenCount = inputCount
		  Self.OutputTokenCount = outputCount
		  Self.ThinkingTimeStart = thinkingStart
		  Self.ThinkingTimeStop = thinkingStop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320616E20656D707479206368617420726573706F6E7365207769746820616C6C204461746554696D6573206265696E67206E6F772E20546865736520617265207573656420746F20726570726573656E74206120726573706F6E7365206661696C7572652E
		Shared Function Empty() As AIKit.ChatResponse
		  /// Returns an empty chat response with all DateTimes being now.
		  /// These are used to represent a response failure.
		  
		  Return New AIKit.ChatResponse("", "", DateTime.Now, DateTime.Now, 0, 0, DateTime.Now, DateTime.Now)
		  
		End Function
	#tag EndMethod


	#tag Note, Name = About
		Contains data about a completed response from a chat model.
		
	#tag EndNote


	#tag Property, Flags = &h0, Description = 5468652066756C6C20636F6E74656E74206F6620746865206D6573736167652E
		Content As String
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 54686520746F74616C206E756D626572206F6620746F6B656E7320696E2074686520696E70757420746F20746865206D6F64656C2E
		InputTokenCount As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5768656E20746865206D65737361676520776173207375626D697474656420746F20746865206D6F64656C2E
		MessageTimeStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 5768656E2074686520726573706F6E736520746F20746865206D6F64656C2066696E69736865642E
		MessageTimeStop As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 54686520746F74616C206E756D626572206F66206F757470757420746F6B656E7320696E2074686520726573706F6E73652E
		OutputTokenCount As Integer = 0
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652074696D6520696E207365636F6E647320666F72207468652066756C6C20726573706F6E736520286D696E757320616E79207468696E6B696E67292E
		#tag Getter
			Get
			  If MessageTimeStart = Nil Or MessageTimeStop = Nil Then Return 0
			  
			  Return MessageTimeStop.SecondsFrom1970 - MessageTimeStart.SecondsFrom1970
			  
			End Get
		#tag EndGetter
		ResponseTime As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 416E79207468696E6B696E6720636F6E74656E7420696E20746865206D6573736167652E
		ThinkingContent As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If ThinkingTimeStart = Nil Or ThinkingTimeStop = Nil Then Return 0
			  If ThinkingTimeStop < ThinkingTimeStart Then Return 0
			  
			  Return ThinkingTimeStop.SecondsFrom1970 - ThinkingTimeStart.SecondsFrom1970
			End Get
		#tag EndGetter
		ThinkingTime As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 496620746865206D6F64656C2074686F7567687420647572696E67207468697320726573706F6E73652C2074686973206973207468652074696D652069742073746172746564207468696E6B696E672E204D6179206265204E696C2E
		ThinkingTimeStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 496620746865206D6F64656C2074686F7567687420647572696E67207468697320726573706F6E73652C2074686973206973207468652074696D652069742073746F70706564207468696E6B696E672E204D6179206265204E696C2E
		ThinkingTimeStop As DateTime
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206176657261676520746F6B656E7320706572207365636F6E6420666F72207468697320726573706F6E73652C20726F756E64656420646F776E20746F20746865206E65617265737420696E74656765722E20
		#tag Getter
			Get
			  If ResponseTime = 0 Then Return OutputTokenCount
			  If OutputTokenCount < 0 Then Return 0
			  
			  Var thinkingTime As Double = 0
			  If ThinkingTimeStart <> Nil And ThinkingTimeStop <> Nil Then
			    thinkingTime = ThinkingTimeStop.SecondsFrom1970 - ThinkingTimeStart.SecondsFrom1970
			  End If
			  
			  Var totalTime As Integer = thinkingTime + ResponseTime
			  
			  If totalTime = 0 Then
			    Return OutputTokenCount
			  Else
			    Return OutputTokenCount / (thinkingTime + ResponseTime)
			  End If
			  
			End Get
		#tag EndGetter
		TokensPerSecond As Integer
	#tag EndComputedProperty


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
			Name="OutputTokenCount"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputTokenCount"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TokensPerSecond"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThinkingTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ResponseTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Content"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThinkingContent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
