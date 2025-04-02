#tag Module
Protected Module mFolderItem
	#tag Method, Flags = &h1
		Protected Sub CreateSettingsFileInApplicationFolder(FileName as string, FileData as JSONItem)
		  // Create a file in the application folder and store settings in json
		  Try
		    // Get the application folder
		    Var appFolder As FolderItem = SpecialFolder.ApplicationData
		    
		    If appFolder = Nil Or Not appFolder.Exists Then
		      Raise New RuntimeException
		      
		    End If
		    
		    // Create the settings file name based on the application name
		    Var settingsFile As FolderItem = appFolder.Child(App.ExecutableFile.Name + ".settings")
		    
		    // If the file exists, delete it first
		    If settingsFile.Exists Then
		      settingsFile.Remove
		      
		    End If
		    
		    // Convert JSONItem to string
		    Var jsonString As String = FileData.ToString
		    
		    // Write data to the file
		    Var outputStream As TextOutputStream = TextOutputStream.Create(settingsFile)
		    outputStream.Write(jsonString)
		    outputStream.Close
		    
		  Catch e As RuntimeException
		    MessageBox("Error saving settings file: " + e.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoadSettingsFileInApplicationFolder(FileName As String) As JSONItem
		  //Load the app settings file and return the JSON content
		  Try
		    // Get the application folder
		    Var appFolder As FolderItem = SpecialFolder.ApplicationData
		    
		    If appFolder = Nil Or Not appFolder.Exists Then
		      Raise New RuntimeException
		      
		    End If
		    
		    // Construct the settings file path based on the application name
		    Var settingsFile As FolderItem = appFolder.Child(App.ExecutableFile.Name + ".settings")
		    
		    // Ensure the file exists before reading
		    If settingsFile = Nil Or Not settingsFile.Exists Then
		      Return New JSONItem // Return an empty JSONItem if the file does not exist
		      
		    End If
		    
		    // Read file contents
		    Var inputStream As TextInputStream = TextInputStream.Open(settingsFile)
		    Var jsonString As String = inputStream.ReadAll
		    inputStream.Close
		    
		    // Convert string to JSONItem
		    Return New JSONItem(jsonString)
		    
		  Catch e As RuntimeException
		    MessageBox("Error loading settings file: " + e.Message)
		    Return New JSONItem // Return an empty JSONItem in case of an error
		    
		  End Try
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
End Module
#tag EndModule
