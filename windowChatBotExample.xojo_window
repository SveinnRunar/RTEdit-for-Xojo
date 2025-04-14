#tag DesktopWindow
Begin DesktopWindow windowChatBotExample
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   300
   MinimumWidth    =   400
   Resizeable      =   True
   Title           =   "RTEdit Append Text Demo"
   Type            =   0
   Visible         =   True
   Width           =   714
   Begin DesktopButton btnGetStyledResponse
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Get a styled response"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   542
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   314
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   159
   End
   Begin RTEdit REdit
      AllowAlignment  =   True
      AllowAutoDeactivate=   True
      AllowBold       =   True
      AllowBulletins  =   True
      AllowCleanFormatting=   True
      AllowCode       =   True
      AllowFocus      =   True
      AllowFocusRing  =   False
      AllowFontSelection=   True
      AllowHeaders    =   True
      AllowImage      =   False
      AllowIndentation=   True
      AllowItalic     =   True
      AllowLinks      =   True
      AllowList       =   True
      AllowMentions   =   False
      AllowQuote      =   True
      AllowStrikeThrough=   True
      AllowSubscript  =   True
      AllowSuperscript=   True
      AllowTables     =   True
      AllowTabs       =   False
      AllowTextBackgroundColor=   True
      AllowTextColor  =   True
      AllowTextDirection=   False
      AllowTextDragDrop=   True
      AllowUnderline  =   True
      AutoFormatLinks =   True
      AutoInitialize  =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      BlockquoteIndentation=   0
      ColorBackground =   &cFFFFFF00
      ColorBackgroundSelection=   &c00000000
      ColorBlockQuoteLine=   &cFFFFFF00
      ColorLink       =   &cFFFFFF00
      ColorMention    =   &c00000000
      ColorMentionBackground=   &c00000000
      ColorMentionPopupBackground=   &cFFFFFF00
      ColorMentionPopupBackgroundSelected=   &c31334300
      ColorMentionPopupText=   &c00000000
      ColorMentionPopupTextHover=   &c00000000
      ColorPlaceholder=   &c00000000
      ColorQuote      =   &c00000000
      ColorScheme     =   0
      ColorScrollbar  =   &c00000000
      ColorScrollbarHover=   &c00000000
      ColorText       =   &c00000000
      ColorTextItalic =   &cFFFFFF00
      ColorTextSelection=   &cFFFFFF00
      ColorToolbar    =   &c00000000
      ColorToolbarHover=   &c00000000
      Composited      =   False
      DebugHTML       =   ""
      Document        =   ""
      DocumentTitle   =   ""
      EditMode        =   False
      Enabled         =   True
      EnableRightClick=   False
      FontSize        =   16
      HasBackgroundColor=   False
      Height          =   302
      Index           =   -2147483648
      InitialParent   =   ""
      KeyboardBindStyles=   True
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MentionTextBold =   False
      MentionTextItalic=   False
      pauseDocumentEvents=   False
      PlaceHolder     =   "Type here to create a new document..."
      PreferenceName  =   ""
      QuoteTextBold   =   False
      QuoteTextItalic =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Theme           =   0.0
      Toolbar         =   False
      ToolbarAlignment=   ""
      ToolbarBorder   =   False
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Visible         =   True
      Width           =   714
   End
   Begin DesktopLabel labelAsk
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Ask"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   314
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   41
   End
   Begin DesktopTextArea txtPrompt
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowStyledText =   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   52
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   58
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   314
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   472
   End
   Begin DesktopButton btnAsk
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Ask"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   542
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   346
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   159
   End
   Begin DesktopLabel lblInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   371
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   681
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  chat.Stop
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  SetupChat
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1, Description = 416E20415049206572726F72206F636375727265642E
		Protected Sub APIError(sender As AIKit.Chat, errorMessage As String)
		  /// An API error occurred.
		  
		  #Pragma Unused sender
		  
		  MessageBox(errorMessage)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AskChatBot()
		  REdit.AppendText(EndOfLine + EndOfLine + "You : " + txtPrompt.Text.Trim  + EndOfLine + EndOfLine)
		  
		  If Chat = Nil Then Return
		  
		  Chat.MaxTokens = 4096
		  Chat.UnlimitedResponse = True
		  Chat.MaxThinkingBudget = 1024
		  Chat.ShouldThink = False
		  Chat.SystemPrompt = "You are an intelligent assistant to a Xojo programmer."
		  Chat.Temperature = 0.7
		  
		  Chat.Ask(txtPrompt.Text)
		  
		  txtPrompt.Text = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearConversation()
		  /// Clears the current conversation.
		  
		  If Chat <> Nil Then
		    Chat.ClearHistory
		    Chat.Stop
		  End If
		  
		  REdit.document = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 4D65737361676520636F6E74656E74206973206265696E672072656365697665642E
		Protected Sub ContentReceived(sender As AIKit.Chat, content As String)
		  /// Message content is being received.
		  #Pragma Unused sender
		  
		  REdit.AppendText(content)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 44656C656761746520666F722074686520636861742773206D6178696D756D20746F6B656E2072656163686564206576656E742E
		Protected Sub MaxTokensReached(sender As AIKit.Chat)
		  /// Delegate for the chat's maximum token reached event.
		  
		  #Pragma Unused sender
		  
		  MessageBox("The maximum number of tokens was reached.")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 44656C656761746520666F7220746865206D6F64656C2773204D65737361676546696E6973686564206576656E742E
		Protected Sub MessageFinished(sender As AIKit.Chat, response As AIKit.ChatResponse)
		  /// Delegate for the model's MessageFinished event.
		  
		  #Pragma Unused sender
		  #Pragma Unused response
		  
		  AwaitingResponse = False
		  
		  lblInfo.Text = response.TokensPerSecond.ToString + " tokens/second"
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MessageStarted(sender As AIKit.Chat, messageID As String, inputTokenCount As Integer)
		  /// A new message has begun.
		  
		  #Pragma Unused sender
		  #Pragma Unused messageID
		  #Pragma Unused inputTokenCount
		  
		  AwaitingResponse = True
		  REdit.ScrollToBottom // Force a scroll to the bottom, at the beginning of the response 
		  REdit.AppendText("AI: ")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetupChat()
		  // In this demo, we use Garry Petter's AI kit to connect to OpenAI
		  Chat = New AIKit.Chat("gpt-4o",AIKit.Providers.OpenAI, App.OpenAIKey, "https://api.openai.com/v1/chat/completions")
		  
		  // Create events for ChatGPT
		  Chat.APIErrorDelegate = AddressOf APIError
		  Chat.ContentReceivedDelegate = AddressOf ContentReceived
		  Chat.MaxTokensReachedDelegate = AddressOf MaxTokensReached
		  Chat.MessageStartedDelegate = AddressOf MessageStarted
		  Chat.MessageFinishedDelegate = AddressOf MessageFinished
		  Chat.ThinkingReceivedDelegate = AddressOf ThinkingReceived
		  
		  // Chat ready
		  REdit.AppendText("AI: I am an assistant to a XOJO developer. How can I be of an assistance today?")
		  btnAsk.Enabled = True
		  btnGetStyledResponse.Enabled = True
		  txtPrompt.Enabled = True
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 5468696E6B696E6720636F6E74656E74206973206265696E672072656365697665642E
		Protected Sub ThinkingReceived(sender As AIKit.Chat, content As String)
		  /// Thinking content is being received.
		  
		  #Pragma Unused sender
		  
		  REdit.AppendText(content)
		  
		  // Scroll the textarea.
		  //Var lastLine As Integer = Output.LineNumber(Output.Text.Length)
		  
		  //
		  //Output.VerticalScrollPosition = lastLine
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0, Description = 547275652069662077652772652077616974696E6720666F72206120726573706F6E73652066726F6D20746865206D6F64656C20746F20636F6D706C6574652E
		AwaitingResponse As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Chat As AIKit.Chat
	#tag EndProperty


#tag EndWindowCode

#tag Events btnGetStyledResponse
	#tag Event
		Sub Pressed()
		  txtPrompt.Text = "Write a small lorum ipsum text, that showcase all the different font styling that a chatgpt response can contain, including Bold, Italic, Code, Strike-through, Bulletin, Numbered list, Heading 1, Heading 2, Heading 3  and blockquote."
		  AskChatBot
		  
		  AwaitingResponse = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events REdit
	#tag Event
		Sub UserSelectedURL(url as string)
		  messagebox "Url clicked: " + url
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  REdit.PlaceHolder = "" // We don't want any placeholder
		  REdit.ColorText = color.Black
		  REdit.ColorTextItalic = color.DarkGray
		  REdit.AllowAlignment = True
		  REdit.AllowBold = True
		  REdit.AllowBulletins = True
		  REdit.AllowCode = True
		  REdit.AllowHeaders = True
		  REdit.AllowIndentation = True
		  REdit.AllowItalic = True
		  REdit.AllowImage = True
		  REdit.AllowLinks = True
		  REdit.AllowList = True
		  REdit.AllowQuote = True
		  REdit.AllowStrikeThrough = True
		  REdit.AllowSubscript = True
		  REdit.AllowSuperscript = True
		  REdit.AllowTextBackgroundColor = True
		  REdit.AllowUnderline = True
		  REdit.AllowTextColor = True
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub EditorReady()
		  me.EditMode = False // We only want to use the control as a viewer for the AI data stream
		  me.RemoveFocus
		  me.Document = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtPrompt
	#tag Event
		Sub KeyUp(key As String)
		  if key = chr(13) then AskChatBot // Ask ChatBot on Enter
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAsk
	#tag Event
		Sub Pressed()
		  AskChatBot
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AwaitingResponse"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
