#tag DesktopWindow
Begin DesktopWindow windowRTEditDemo
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
   Height          =   800
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1563234303
   MenuBarVisible  =   False
   MinimumHeight   =   800
   MinimumWidth    =   1296
   Resizeable      =   True
   Title           =   "RTEdit"
   Type            =   0
   Visible         =   True
   Width           =   1296
   Begin DesktopCheckBox chkEditMode
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Edit mode"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1030
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   82
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   107
   End
   Begin DesktopCheckBox chkToolbar
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Toolbar"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1030
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   42
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   153
   End
   Begin DesktopButton btnGetTextValue
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Get Document As Text"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   691
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin DesktopButton btnShowDocument
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Get Document As HTML"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   716
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   237
   End
   Begin DesktopCheckBox chkToolbarBorder
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Divider"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1165
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   111
   End
   Begin DesktopCheckBox chkAlignToolbarCenter
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Center align"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   110
   End
   Begin DesktopLabel lblColors
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1030
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Theme"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   130
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   54
   End
   Begin DesktopPopupMenu pTheme
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   "(None)\nVanilla Licorice\nBlueberry\nBanana\nLime"
      Italic          =   False
      Left            =   1090
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   130
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   186
   End
   Begin DesktopTextArea tDebugCSS
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   121
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
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
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   665
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   997
   End
   Begin DesktopColorPicker cPick
      HasAlpha        =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopRectangle rcBackground
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   158
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblBackground
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorBackground"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   156
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   191
   End
   Begin DesktopRectangle rcBackgroundSelected
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   178
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblBackgroundSelected
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorBackgroundSelection"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   176
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopRectangle rcText
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   338
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblText
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorText"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   336
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopRectangle rcTextSelected
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   378
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblTextSelected
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorTextSelected"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   376
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopButton btnLoadUserGuide
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Load userguide"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   666
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin DesktopButton btnTags
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Save and load tags"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   616
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin DesktopButton btnLoadDocument
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Load document"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   641
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin RTEdit REdit
      AllowAlignment  =   True
      AllowAutoDeactivate=   True
      AllowBold       =   True
      AllowBulletins  =   True
      AllowCleanFormatting=   False
      AllowCode       =   False
      AllowFocus      =   True
      AllowFocusRing  =   False
      AllowFontSelection=   False
      AllowHeaders    =   True
      AllowImage      =   False
      AllowIndentation=   False
      AllowItalic     =   True
      AllowLinks      =   True
      AllowList       =   True
      AllowMentions   =   False
      AllowQuote      =   False
      AllowStrikeThrough=   False
      AllowSubscript  =   False
      AllowSuperscript=   False
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
      Height          =   653
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
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Theme           =   1
      Toolbar         =   False
      ToolbarAlignment=   ""
      ToolbarBorder   =   False
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Visible         =   True
      Width           =   1017
   End
   Begin DesktopButton btnNewDocument
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "New document"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   591
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin DesktopRectangle rcTextItalic
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   38
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   358
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblTextItalic
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorTextItalic"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   356
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopButton btnSaveColorsAsScheme
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Save colors as scheme"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1039
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   400
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin DesktopRectangle rcMentionBackground
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   41
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   258
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblMentionBackground
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorMentionBackground"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   256
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopRectangle rcLinks
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   43
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   218
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblLinks
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorLink"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   216
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopLabel lblThemes
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1030
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   45
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Theme"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   10
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   152
   End
   BeginDesktopSegmentedButton DesktopSegmentedButton segThemes
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      Left            =   1096
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      Segments        =   "Bubble\n\nTrue\rSnow\n\nFalse"
      SelectionStyle  =   0
      TabIndex        =   46
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   10
      Transparent     =   False
      Visible         =   True
      Width           =   179
   End
   Begin DesktopCheckBox chkBold
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Bold"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   47
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   423
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopCheckBox chkItalic
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Italic"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   48
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   423
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopCheckBox chkUnderline
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Underline"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   49
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   423
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   85
   End
   Begin DesktopCheckBox chkHeadings
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "H1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   50
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Headers"
      Top             =   443
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopCheckBox chkLinks
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Link"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   51
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Allow URL"
      Top             =   443
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopCheckBox chkBulletin
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Bullets"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Allow bulletins (List and Numericals)"
      Top             =   443
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   85
   End
   Begin DesktopCheckBox chkImage
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Image"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   53
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable Image upload"
      Top             =   463
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkKeyboardBinding
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "KeyBinding"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1165
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   54
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "If true, you can use Command+1 2 3 4 to change header styles"
      Top             =   82
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   107
   End
   Begin DesktopCheckBox chkQuote
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Quote"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   55
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable Image upload"
      Top             =   463
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopRectangle rcScrollbar
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   56
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   298
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblScrollbar
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   57
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorScrollbar"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   296
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopRectangle rcScrollbarHover
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   58
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   318
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblScrollbarHover
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   59
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorScrollbarHover"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   316
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopCheckBox chkSubscript
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Sub"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   60
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable subscript"
      Top             =   483
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkSuperscript
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Super"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   61
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable superscript"
      Top             =   483
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkCode
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Code"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   62
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable code"
      Top             =   463
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopRectangle rcMention
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   65
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   238
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblMention
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   66
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorMention"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   236
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopRectangle rcPlaceholder
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   67
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   278
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblPlaceholder
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   68
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorPlaceholder"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   276
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopButton btnGetDocumentVariables
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Get Document Variables"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   69
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   741
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   237
   End
   Begin DesktopRectangle rcBlockQuote
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &cFFFFFF
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1259
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   70
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   198
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin DesktopLabel lblBlockQuote
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   71
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "ColorBlockQuote"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   196
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin DesktopCheckBox chkFont
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Font"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   72
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Allow font selection"
      Top             =   483
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopCheckBox chkClean
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Clean"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   73
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Clean code"
      Top             =   503
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkIndentation
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Indent"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   74
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable Indentation"
      Top             =   503
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkList
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "List"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   75
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable bulletin list"
      Top             =   503
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkStrike
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Strike"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   76
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Allow strike through"
      Top             =   523
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopCheckBox chkTextColor
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "ColorT"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   77
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable text color selection"
      Top             =   523
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
   Begin DesktopCheckBox chkTextBackgroundColor
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "ColorB"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   78
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Enable background color for text"
      Top             =   523
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   67
   End
   Begin DesktopButton btnExportDocumentAsJSON
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Export as JSON"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1038
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   80
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   766
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   115
   End
   Begin DesktopCheckBox chkEnableRightClick
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Enable Right click"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1030
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   81
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   102
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   131
   End
   Begin DesktopButton btnExportDocumentAsJSON1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Import JSON"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1160
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   82
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   766
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton btnApplyStyling
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Apply styling changes"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   1038
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   83
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   565
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   236
   End
   Begin DesktopCheckBox chkTable
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Table"
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   1050
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   84
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Allow strike through"
      Top             =   543
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   1
      Width           =   67
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  Quit
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  // customize the control (fired before EditorReady event)
		  self.Title = "RTEdit v" + REdit.Version
		  
		  DisplayThemeColors
		  
		  //REdit.
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileQuit() As Boolean Handles FileQuit.Action
		  Quit
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuAboutRTEdit() As Boolean Handles mnuAboutRTEdit.Action
		  messagebox "RTEdit v" + RTEdit.Version
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuChatBotExample() As Boolean Handles mnuChatBotExample.Action
		  // RTEdit AppendText demo (using OpenAI)
		  
		  if App.HasOpenAIKey then
		    windowChatBotExample.Show
		    
		  else
		    windowOpenAIKey.ShowModal(self)
		    if app.HasOpenAIKey then
		      windowChatBotExample.Show
		      
		    else
		      messagebox "An OpenAI APIKEY is required to run the AppendText demo"
		      
		    end if
		    
		  end if
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuTableExample() As Boolean Handles mnuTableExample.Action
		  windowTableExample.Show
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ApplyProperties()
		  // Reset color scheme
		  pTheme.SelectedRowIndex = 0
		  DisplayThemeColors
		  
		  // Toolbar features (note, the clipboard will behave and allow paste of content, depending on which features are enabled)
		  REdit.AllowBold = chkBold.Value
		  REdit.AllowBulletins = chkBulletin.Value
		  REdit.AllowCleanFormatting = chkClean.Value
		  REdit.AllowCode = chkCode.Value
		  REdit.AllowFontSelection = chkFont.Value
		  REdit.AllowHeaders = chkHeadings.Value
		  REdit.AllowImage = chkImage.value
		  REdit.AllowIndentation = chkIndentation.value
		  REdit.AllowItalic = chkItalic.Value
		  REdit.AllowLinks = chkLinks.Value
		  REdit.AllowList = chkList.value
		  REdit.AllowQuote = chkQuote.Value
		  REdit.AllowStrikeThrough = chkStrike.Value
		  REdit.AllowSubscript = chkSubscript.Value
		  REdit.AllowSuperscript = chkSuperscript.Value
		  REdit.AllowTables = chkTable.Value
		  REdit.AllowTextColor = chkTextColor.Value
		  REdit.AllowTextBackgroundColor = chkTextBackgroundColor.Value
		  REdit.AllowUnderline = chkUnderline.Value
		  
		  // Keyboard bindings
		  REdit.KeyboardBindStyles = chkKeyboardBinding.Value
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisplayThemeColors()
		  rCBackground.FillColor = REdit.ColorBackground
		  rCBackgroundSelected.FillColor = REdit.ColorBackgroundSelection
		  rCBlockQuote.FillColor = REdit.ColorQuote
		  rCLinks.FillColor = REdit.ColorLink
		  rCMention.FillColor = REdit.ColorMention
		  rCMentionBackground.FillColor = REdit.ColorMentionBackground
		  rCPlaceholder.FillColor = REdit.ColorPlaceholder
		  rCText.FillColor = REdit.ColorText
		  rCTextItalic.FillColor = REdit.ColorTextItalic
		  rCTextSelected.FillColor = REdit.ColorTextSelection
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableSnowProperties(Optional Enable As Boolean = true)
		  chkAlignToolbarCenter.Enabled = Enable
		  chkTable.Enabled = Enable
		  chkToolbar.Enabled = Enable
		  chkToolbarBorder.Enabled = Enable
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HelloWorld()
		  REdit.Document =  "Hello world!"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize()
		  
		  // Initialize Rich Text control, called from REdit.Opening event (processed before EditorReady event
		  // -------------------------------------------------------------------------------------------------
		  
		  // Note, almost all of these properties can be defined with no code from the IDE.
		  
		  // Apply basic theme
		  if segThemes.SelectedSegmentIndex = 0 then REdit.Theme = RTEdit.Themes.Bubble else REdit.Theme = RTEdit.Themes.Snow
		  
		  // Apply properties, settings, colors etc. in the opening event (self.opening fires AFTER)
		  REdit.ColorScheme = RTEdit.ColorSchemes.None
		  
		  // Do we start in edit mode or read-only mode
		  REdit.EditMode = chkEditMode.Value
		  
		  // Let's define a placeholder
		  REdit.PlaceHolder = "Start typing here to create a new document..."
		  
		  // The following settings only apply to theme 'snow'
		  SetSnowProperties
		  
		  // Define toolbar buttons, Default are : bold, italic, underline, headings, bulletins, links
		  REdit.AllowAlignment = False
		  REdit.AllowBold = True
		  REdit.AllowBulletins = True
		  REdit.AllowCode = False
		  REdit.AllowFontSelection = true
		  REdit.AllowHeaders = True
		  REdit.AllowIndentation = False
		  REdit.AllowItalic = True
		  REdit.AllowImage = False
		  REdit.AllowLinks = True
		  REdit.AllowList = True
		  REdit.AllowQuote = True
		  REdit.AllowStrikeThrough = False
		  REdit.AllowSubscript = False
		  REdit.AllowSuperscript = False
		  REdit.AllowTables = True // By default, tables are allowed, only enabled when using theme 'Snow'
		  REdit.AllowTextBackgroundColor = False
		  REdit.AllowUnderline = True
		  REdit.AllowTextColor = True
		  REdit.AllowMentions = False
		  
		  // Allow text to be dragged & dropped into the control, either from within or outside
		  REdit.AllowTextDragDrop = False // True by default
		  
		  // Keyboard Binding Styles is true by default, it enables Command+1/2/3/4 for styling
		  REdit.KeyboardBindStyles = False
		  
		  // Toolbar, note that Bubble theme does not support a toolbar
		  if segThemes.SelectedSegmentIndex = 0 then
		    EnableSnowProperties(False)
		    
		    // Snow has toolbar
		  else
		    // Default alignment is left
		    if chkAlignToolbarCenter.Value = True then REdit.ToolbarAlignment = RTEdit.ToolBarAlignments.Center
		    
		  end if
		  
		  // AutoFormat links / e-mail addresses
		  REdit.AutoFormatLinks = true // True by default, Redit converts emails and urls to clickable elements on the fly
		  
		  // Mentions
		  // ----------
		  
		  // Let's enable Mentions
		  REdit.AllowMentions = true
		  
		  // I want to style mentions with bold font-weight
		  REdit.MentionTextBold = true
		  
		  // We want to allow mentions, let's feed in some bracket variables
		  REdit.VariablesBrackets = Array("Patient", "SSID", "Address", "Phone", "Gender","Age", "Birthyear")
		  
		  // And some brace variables
		  REdit.VariablesBraces = Array("Full name", "Title", "Profession", "Workplace", "Phone")
		  
		  // Add some @ variables
		  REdit.VariablesPercent = Array("TSH","T4","B12","D-Vitamin","ESR","LEU","Krea","Na","K","Ca","P","Crp")
		  
		  // Add some # variables
		  REdit.VariablesHash = Array("General advice", "Paracetamol 1g for fever", "Visit again if symptoms worsen","Doxylin 100mg, 2 tablets the first day, then one a day","Doxylin 1 tablet 2x a day for 2 weeks", "Azithromycin 500mg 1 tablet 1x a day for 3 days","Vitals every 4 hours","Vitals once per shift", "Vitals every 8 hours", "Blood culturing if fever > 38.5°")
		  
		  // Add some $ variables
		  REdit.VariablesDollar = Array("SaO2","T","P","Bp","Kg","RR")
		  
		  // Note, if you want to postbone the RTEdit.Initialize event and do it manually, you set:
		  // REdit.AutoInitialize = False
		  // This means that after setting your properties and settings, you need to fire the Initialize event manually:
		  // REdit.Initialize
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetColorPicker(ColorElement as DesktopRectangle)
		  if cPick.IsVisible = false then
		    SelectedColorElement = ColorElement
		    cPick.Show(ColorElement.FillColor,"Select color")
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetColorScheme()
		  
		  select case pTheme.SelectedRowIndex
		    
		  case 1
		    REdit.ColorScheme = RTEdit.ColorSchemes.Vanilla
		    
		  case 2 
		    REdit.ColorScheme = RTEdit.ColorSchemes.Blueberry
		    
		  case 3
		    REdit.ColorScheme = RTEdit.ColorSchemes.Banana
		    
		  case 4
		    REdit.ColorScheme = RTEdit.ColorSchemes.Lime
		    
		  else
		    REdit.ColorScheme = RTEdit.ColorSchemes.None
		    
		  end Select
		  
		  DisplayThemeColors
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetSnowProperties()
		  REdit.Toolbar = chkToolbar.Value
		  REdit.ToolbarBorder = chkToolbarBorder.Value
		  if chkAlignToolbarCenter.Value = true then REdit.ToolbarAlignment = RTEdit.ToolBarAlignments.Center
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateStyling(ThemeID as integer)
		  if blockControlUpdates then exit
		  
		  // Bubble
		  if ThemeID = 0 then 
		    REdit.Theme = RTEdit.Themes.Bubble
		    EnableSnowProperties(False)
		    
		    // Snow
		  else 
		    REdit.Theme = RTEdit.Themes.Snow
		    EnableSnowProperties
		    SetSnowProperties
		    
		  end if
		  
		  ApplyProperties
		  
		  // Re-Initialize the control
		  REdit.Initialize
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			// Only used in the demo, set to True when importing a JSON document, the demo interface is updated to reflect the settings
			// in the JSON document. We don't want each change to trigger a live update to our control, so we use this boolean to block
			// updates.
		#tag EndNote
		blockControlUpdates As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedColorElement As DesktopRectangle
	#tag EndProperty


	#tag Constant, Name = K_TEST_DOC, Type = String, Dynamic = False, Default = \"<h2>What Is Dynamic Programming\?</h2><p><strong>Dynamic programming is a computer programming technique where an algorithmic problem is first broken down into sub-problems\x2C the results are saved\x2C and then the sub-problems are optimized to find the overall solution \xE2\x80\x94 which usually has to do with finding the maximum and minimum range of the algorithmic query.&nbsp;</strong></p><p>Richard Bellman was the one who came up with the idea for dynamic programming in the 1950s. It is a method of mathematical optimization as well as a methodology for computer programming. It applies to issues one can break down into either overlapping subproblems or optimum substructures.</p><p><br></p><p>When a more extensive set of equations is broken down into smaller groups of equations\x2C overlapping subproblems are referred to as equations that reuse portions of the smaller equations several times to arrive at a solution.</p><p><br></p><p>On the other hand\x2C optimum substructures locate the best solution to an issue\x2C then build the solution that provides the best results overall. This is how they solve problems. When a vast issue is split down into its constituent parts\x2C a computer will apply a mathematical algorithm to determine which elements have the most desirable solution. Then\x2C it takes the solutions to the more minor problems and utilizes them to get the optimal solution to the initial\x2C more involved issue.</p><p><br></p><p>This technique solves problems by breaking them into smaller\x2C overlapping subproblems. The results are then stored in a table to be reused so the same problem will not have to be computed again.&nbsp;</p><p><br></p><p>For example\x2C when using the dynamic programming technique to figure out all possible results from a set of numbers\x2C the first time the results are calculated\x2C they are saved and put into the equation later instead of being calculated again. So\x2C when dealing with long\x2C complicated equations and processes\x2C it saves time and makes solutions faster by doing less work.</p><p><br></p><p>The dynamic programming algorithm tries to find the shortest way to a solution when solving a problem. It does this by going from the top down or the bottom up. The top-down method solves equations by breaking them into smaller ones and reusing the answers when needed. The bottom-up approach solves equations by breaking them up into smaller ones\x2C then tries to solve the equation with the smallest mathematical value\x2C and then works its way up to the equation with the biggest value.</p><p><br></p><p>Using dynamic programming to solve problems is more effective than just trying things until they work. But it only helps with problems that one can break up into smaller equations that will be used again at some point.</p><p><br></p><p><strong>See More:&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/what-is-serverless/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">What Is Serverless\? Definition\x2C Architecture\x2C Examples\x2C and Applications</a></strong></p><p><br></p><h3>Recursion vs. dynamic programming</h3><p>In computer science\x2C recursion is a crucial concept in which the solution to a problem depends on solutions to its smaller subproblems.&nbsp;</p><p><br></p><p>Meanwhile\x2C dynamic programming is an optimization technique for recursive solutions. It is the preferred technique for solving recursive functions that make repeated calls to the same inputs. A function is known as recursive if it calls itself during execution. This process can repeat itself several times before the solution is computed and can repeat forever if it lacks a base case to enable it to fulfill its computation and stop the execution.&nbsp;</p><p><br></p><p>However\x2C not all problems that use recursion can be solved by dynamic programming. Unless solutions to the subproblems overlap\x2C a recursion solution can only be arrived at using a divide-and-conquer method.</p><p><br></p><p>For example\x2C problems like merge\x2C sort\x2C and quick sort are not considered dynamic programming problems. This is because they involve putting together the best answers to subproblems that don\xE2\x80\x99t overlap.</p><p><br></p><p><strong>Drawbacks of recursion</strong></p><p>Recursion uses memory space less efficiently. Repeated function calls create entries for all the variables and constants in the function stack. As the values are kept there until the function returns\x2C there is always a limited amount of stack space in the system\x2C thus making less efficient use of memory space. Additionally\x2C a stack overflow error occurs if the recursive function requires more memory than is available in the stack.&nbsp;</p><p><br></p><p>Recursion is also relatively slow in comparison to iteration\x2C which uses loops. When a function is called\x2C there is an overhead of allocating space for the function and all its data in the function stack in recursion. This causes a slight delay in recursive functions.&nbsp;</p><p><br></p><h3>Where should dynamic programming be used\?</h3><p>Dynamic programming is used when one can break a problem into more minor issues that they can break down even further\x2C into even more minor problems. Additionally\x2C these subproblems have overlapped. That is\x2C they require previously calculated values to be recomputed. With dynamic programming\x2C the computed values are stored\x2C thus reducing the need for repeated calculations and saving time and providing faster solutions.&nbsp;</p><p><br></p><h2>How Does Dynamic Programming Work\?</h2><p>Dynamic programming works by breaking down complex problems into simpler subproblems. Then\x2C finding optimal solutions to these subproblems. Memorization is a method that saves the outcomes of these processes so that the corresponding answers do not need to be computed when they are later needed. Saving solutions save time on the computation of subproblems that have already been encountered.&nbsp;</p><p><br></p><p>Dynamic programming can be achieved using two approaches:</p><p><br></p><h3>1. Top-down approach</h3><p>In computer science\x2C problems are resolved by recursively formulating solutions\x2C employing the answers to the problems\xE2\x80\x99 subproblems. If the answers to the subproblems overlap\x2C they may be memoized or kept in a table for later use. The top-down approach follows the strategy of memorization. The memoization process is equivalent to adding the recursion and caching steps. The difference between recursion and caching is that recursion requires calling the function directly\x2C whereas caching requires preserving the intermediate results.</p><p><br></p><p>The top-down strategy has many benefits\x2C including the following:</p><p><br></p><p>The top-down approach is easy to understand and implement. In this approach\x2C problems are broken down into smaller parts\x2C which help users identify what needs to be done. With each step\x2C more significant\x2C more complex problems become smaller\x2C less complicated\x2C and\x2C therefore\x2C easier to solve. Some parts may even be reusable for the same problem.</p><p>It allows for subproblems to be solved upon request. The top-down approach will enable problems to be broken down into smaller parts and their solutions stored for reuse. Users can then query solutions for each part.&nbsp;</p><p>It is also easier to debug. Segmenting problems into small parts allows users to follow the solution quickly and determine where an error might have occurred.&nbsp;</p><p><br></p><p>Disadvantages of the top-down approach include:</p><p><br></p><p>The top-down approach uses the recursion technique\x2C which occupies more memory in the call stack. This leads to reduced overall performance. Additionally\x2C when the recursion is too deep\x2C a stack overflow occurs.&nbsp;</p><p><br></p><h3>2. Bottom-up approach</h3><p>In the bottom-up method\x2C once a solution to a problem is written in terms of its subproblems in a way that loops back on itself\x2C users can rewrite the problem by solving the smaller subproblems first and then using their solutions to solve the larger subproblems.&nbsp;</p><p>Unlike the top-down approach\x2C the bottom-up approach removes the recursion. Thus\x2C there is neither stack overflow nor overhead from the recursive functions. It also allows for saving memory space. Removing recursion decreases the time complexity of recursion due to recalculating the same values.&nbsp;</p><p><br></p><p>The advantages of the bottom-up approach include the following:</p><p><br></p><p>It makes decisions about small reusable subproblems and then decides how they will be put together to create a large problem.&nbsp;</p><p>It removes recursion\x2C thus promoting the efficient use of memory space. Additionally\x2C this also leads to a reduction in timing complexity.&nbsp;</p><p><br></p><p><strong>See More:&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/devops-roadmap-guide/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">DevOps Roadmap: 7-Step Complete Guide</a></strong></p><p><br></p><h3>Signs of dynamic programming suitability</h3><p>Dynamic programming solves complex problems by breaking them up into smaller ones using recursion and storing the answers so they don\xE2\x80\x99t have to be worked out again. It isn\xE2\x80\x99t practical when there aren\xE2\x80\x99t any problems that overlap because it doesn\xE2\x80\x99t make sense to store solutions to the issues that won\xE2\x80\x99t be needed again.</p><p>Two main signs are that one can solve a problem with dynamic programming: subproblems that overlap and the best possible substructure.</p><p><br></p><p><strong>Overlapping subproblems</strong></p><p>When the answers to the same subproblem are needed more than once to solve the main problem\x2C we say that the subproblems overlap. In overlapping issues\x2C solutions are put into a table so developers can use them repeatedly instead of recalculating them. The recursive program for the Fibonacci numbers has several subproblems that overlap\x2C but a binary search doesn\xE2\x80\x99t have any subproblems that overlap.</p><p><br></p><p>A binary search is solved using the divide and conquer technique. Every time\x2C the subproblems have a unique array to find the value. Thus\x2C binary search lacks the overlapping property.&nbsp;</p><p><br></p><p>For example\x2C when finding the nth Fibonacci number\x2C the problem F(n) is broken down into finding F(n-1) and F. (n-2). You can break down F(n-1) even further into a subproblem that has to do with F. (n-2).In this scenario\x2C F(n-2) is reused\x2C and thus\x2C the Fibonacci sequence can be said to exhibit overlapping properties.&nbsp;</p><p><br></p><p><strong>Optimal substructure</strong></p><p>The optimal substructure property of a problem says that you can find the best answer to the problem by taking the best solutions to its subproblems and putting them together. Most of the time\x2C recursion explains how these optimal substructures work.</p><p>This property is not exclusive to dynamic programming alone\x2C as several problems consist of optimal substructures. However\x2C most of them lack overlapping issues. So\x2C they can\xE2\x80\x99t be called problems with dynamic programming.</p><p><br></p><p>You can use it to find the shortest route between two points. For example\x2C if a node p is on the shortest path from a source node t to a destination node w\x2C then the shortest path from t to w is the sum of the shortest paths from t to p and from p to w.</p><p><br></p><p>Examples of problems with optimal substructures include the longest increasing subsequence\x2C longest palindromic substring\x2C and longest common subsequence problem. Examples of problems without optimal substructures include the most extended path problem and the addition-chain exponentiation.&nbsp;</p><p><br></p><h3>Understanding the Longest Common Subsequence concept in dynamic programming</h3><p>In dynamic programming\x2C the phrase \xE2\x80\x9Clargest common subsequence\xE2\x80\x9D (LCS) refers to the subsequence that is shared by all of the supplied sequences and is the one that is the longest. It is different from the challenge of finding the longest common substring in that the components of the LCS do not need to occupy consecutive locations within the original sequences to be considered part of that problem.</p><p><br></p><p>The LCS is characterized by an optimal substructure and overlapping subproblem properties. This indicates that the issue may be split into many less complex sub-issues and worked on individually until a solution is found. The solutions to higher-level subproblems are often reused in lower-level subproblems\x2C thus\x2C overlapping subproblems.&nbsp;</p><p><br></p><p>Therefore\x2C when solving an LCS problem\x2C it is more efficient to use a dynamic algorithm than a recursive algorithm. Dynamic programming stores the results of each function call so that it can be used in future calls\x2C thus minimizing the need for redundant calls.&nbsp;</p><p>For instance\x2C consider the sequences (MNOP) and (MONMP). They have five length-2 common subsequences (MN)\x2C (MO)\x2C (MP)\x2C (NP)\x2C and (OP); two length-3 common subsequences (MNP) and (MOP); MNP and no longer frequent subsequences (MOP). Consequently\x2C (MNP) and (MOP) are the largest shared subsequences. LCS can be applied in bioinformatics to the process of genome sequencing.</p><p><br></p><p><strong>See More:&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/what-is-jenkins/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">What Is Jenkins\? Working\x2C Uses\x2C Pipelines\x2C and Features</a></strong></p><p><br></p><h2>Dynamic Programming Algorithms</h2><p>When dynamic programming algorithms are executed\x2C they solve a problem by segmenting it into smaller parts until a solution arrives. They perform these tasks by finding the shortest path. Some of the primary dynamic programming algorithms in use are:</p><h3><br></h3><h3>1. Greedy algorithms</h3><p>An example of dynamic programming algorithms\x2C greedy algorithms are also optimization tools. The method solves a challenge by searching for optimum solutions to the subproblems and combining the findings of these subproblems to get the most optimal answer.&nbsp;</p><p>Conversely\x2C when greedy algorithms solve a problem\x2C they look for a locally optimum solution to find a global optimum. They make a guess that looks optimum at the time but does not guarantee a globally optimum solution. This could end up becoming costly down the road.&nbsp;</p><p><br></p><h3>2. Floyd-Warshall algorithm</h3><p>The Floyd-Warshall method uses a technique of dynamic programming to locate the shortest pathways. It determines the shortest route across all pairings of vertices in a graph with weights. Both directed and undirected weighted graphs can use it.</p><p>This program compares each pair of vertices\xE2\x80\x99 potential routes through the graph. It gradually optimizes an estimate of the shortest route between two vertices to determine the shortest distance between two vertices in a chart. With simple modifications to it\x2C one can reconstruct the paths.&nbsp;</p><p><br></p><p>This method for dynamic programming contains two subtypes:&nbsp;</p><p><br></p><p><strong>Behavior with negative cycles:&nbsp;</strong>Users can use the Floyd-Warshall algorithm to find negative cycles. You can do this by inspecting the diagonal path matrix for a negative number that would indicate the graph contains one negative cycle. In a negative cycle\x2C the sum of the edges is a negative value; thus\x2C there cannot be a shortest path between any pair of vertices. Exponentially huge numbers are generated if a negative cycle occurs during algorithm execution.</p><p><br></p><p><strong>Time complexity:&nbsp;</strong>The Floyd-Warshall algorithm has three loops\x2C each with constant complexity. As a result\x2C the Floyd-Warshall complexity has a time complexity of O(n3). Wherein n represents the number of network nodes.&nbsp;</p><p><br></p><h3>3. Bellman Ford algorithm</h3><p>The Bellman-Ford Algorithm determines the shortest route from a particular source vertex to every other weighted digraph vertices. The Bellman-Ford algorithm can handle graphs where some of the edge weights are negative numbers and produce a correct answer\x2C unlike Dijkstra\xE2\x80\x99s algorithm\x2C which does not confirm whether it makes the correct answer. However\x2C it is much slower than Dijkstra\xE2\x80\x99s algorithm.&nbsp;</p><p><br></p><p>The Bellman-Ford algorithm works by relaxation; that is\x2C it gives approximate distances that better ones continuously replace until a solution is reached. The approximate distances are usually overestimated compared to the distance between the vertices. The replacement values reflect the minimum old value and the length of a newly found path.&nbsp;</p><p>This algorithm terminates upon finding a negative cycle and thus can be applied to cycle-canceling techniques in network flow analysis.&nbsp;</p><p><br></p><p><strong>See More:&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/devops-automation-tools/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">Top 10 DevOps Automation Tools in 2021</a></strong></p><p><br></p><h2>Examples of Dynamic Programming&nbsp;</h2><p>Here are a few examples of how one may use dynamic programming:</p><p><br></p><h3>1. Identifying the number of ways to cover a distance</h3><p>Some recursive functions are invoked three times in the recursion technique\x2C indicating the overlapping subproblem characteristic required to calculate issues that use the dynamic programming methodology.</p><p>Using the top-down technique\x2C just store the value in a HashMap while retaining the recursive structure\x2C then return the value store without calculating each time the function is invoked. Utilize an extra space of dimension n when employing the bottom-up method and compute the values of states beginning with 1\x2C 2\x2C\xE2\x80\xA6\x2C n\x2C i.e.\x2C compute the values of I i+1 and i+2 and then apply them to determine the value of i+3.&nbsp;</p><p><br></p><h3>2. Identifying the optimal strategy of a game</h3><p>To identify the optimal strategy of a game or&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/what-is-gamification/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">gamified experience\x2C</a>&nbsp;let\xE2\x80\x99s consider the \xE2\x80\x9Ccoins in a line\xE2\x80\x9D game. The memoization technique is used to compute the maximum value of coins taken by player A for coins numbered h to k\x2C assuming player B plays optimally (Mh\x2Ck). To find out each player\xE2\x80\x99s strategy\x2C assign values to the coin they pick and the value of the opponent\xE2\x80\x99s coin. After computation\x2C the optimal design for the game is determined by observing the Mh\x2Ck&nbsp;value for both players if player A chooses coin h or k.&nbsp;</p><p><br></p><h3>3. Counting the number of possible outcomes of a particular die roll&nbsp;</h3><p>With an integer M\x2C the aim is to determine the number of approaches to obtain the sum M by tossing dice repeatedly. The partial recursion tree\x2C where M\x3D8\x2C provides overlapping subproblems when using the recursion method. By using dynamic programming\x2C one can optimize the recursive method. One can use an array to store values after computation for reuse. In this way\x2C the algorithm takes significantly less time to run with time complex:&nbsp;O(t * n * m)\x2C with t being the number of faces\x2C n being the number of dice\x2C and m being the given sum.</p><p><br></p><p><strong>See More:&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/devops-vs-agile/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">DevOps vs. Agile Methodology: Key Differences and Similarities&nbsp;</a></strong></p><p><br></p><h3>Takeaway</h3><p>Dynamic programming is among the more advanced skills one must learn as a programmer or&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/devops/articles/devops-engineer/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">DevOps engineer</a>\x2C mainly if you specialize in&nbsp;<a href\x3D\"https://www.spiceworks.com/tech/artificial-intelligence/articles/top-python-machine-learning-libraries/\" rel\x3D\"noopener noreferrer\" target\x3D\"_blank\">Python</a>. It is a relatively simple way to solve complex algorithmic problems and a skill you can apply to virtually any language or use case. For example\x2C the viral game\x2C Wordle\x2C follows dynamic programming principles\x2C and users can train an algorithm to resolve it by finding the most optimal combination of alphabets. In other words\x2C the skill has versatile applications and must be part of every DevOps learning kit.&nbsp;</p>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = K_TEST_IMPORT_JSON, Type = String, Dynamic = False, Default = \"{\"settings\":{\"EditMode\":true\x2C\"ToolbarBorder\":false\x2C\"Toolbar\":true\x2C\"EditorReady\":true\x2C\"AllowAlignment\":false\x2C\"AllowAutoDeactivate\":true\x2C\"AllowBold\":true\x2C\"AllowBulletins\":true\x2C\"AllowCleanFormatting\":false\x2C\"AllowCode\":false\x2C\"AllowFontSelection\":true\x2C\"AllowHeaders\":true\x2C\"AllowImage\":false\x2C\"AllowIndentation\":false\x2C\"AllowItalic\":true\x2C\"AllowLinks\":true\x2C\"AllowList\":false\x2C\"AllowQuote\":true\x2C\"AllowStrikeThrough\":false\x2C\"AllowSubscript\":false\x2C\"AllowTextBackgroundColor\":false\x2C\"AllowTextColor\":true\x2C\"AllowTextDirection\":false\x2C\"AllowTextDragDrop\":false\x2C\"AllowUnderline\":true\x2C\"AutoFormatLinks\":true\x2C\"BlockquoteIndentation\":0\x2C\"EnableRightClick\":false\x2C\"FontSize\":16\x2C\"KeyboardBindStyles\":true\x2C\"PlaceHolder\":\"Start typing here to create a new document...\"\x2C\"QuoteTextBold\":false\x2C\"QuoteTextItalic\":true\x2C\"Tooltip\":\"\"}\x2C\"properties\":{\"bold\":\"true\"\x2C\"italic\":\"true\"\x2C\"link\":\"true\"\x2C\"underline\":\"true\"}\x2C\"css\":{\"body|background-color\":\"#FFFFFF\"\x2C\".ql-snow .ql-picker-options|background-color\":\"#FFFFFF\"\x2C\".ql-toolbar.ql-snow|background-color\":\"#FFFFFF\"\x2C\".ql-container|color\":\"#000000 !important\"\x2C\".ql-editor|color\":\"#000000\"\x2C\".ql-editor.ql-blank::before|color\":\"#808080 !important\"\x2C\".ql-editor em|color\":\"#919191\"\x2C\"::selection|background-color\":\"#FDE9BF\"\x2C\"::selection|color\":\"#000000\"\x2C\".ql-editor a|color\":\"#FF8000\"\x2C\".ql-editor blockquote|border-left\":\"4px solid #FFFFFF !important\"\x2C\".ql-bubble .ql-editor blockquote |border-left\":\"4px solid #FFFFFF !important\"\x2C\".ql-mention-list-item.selected|background-color\":\"#808080\"\x2C\".ql-mention-list-container|background-color\":\"#FFFFFF\"\x2C\".ql-mention-list-item|color\":\"#555555\"\x2C\".ql-mention-list-container|border\":\"1px solid #808080\"\x2C\".ql-mention-list-item:hover|color\":\"#000000\"\x2C\".ql-editor blockquote|font-weight\":\"normal\"\x2C\".ql-editor blockquote|font-style\":\"italic\"\x2C\".ql-editor blockquote|color\":\"#919191\"\x2C\".mention|color\":\"#000000 !important\"\x2C\".mention|font-weight\":\"bold\"\x2C\".mention|font-style\":\"normal\"\x2C\".ql-editor em|font-weight\":\"normal\"\x2C\".ql-toolbar.ql-snow|display\":\"block\"\x2C\".ql-container|height\":\"calc(100%-42px)\"\x2C\".ql-toolbar.ql-snow|border\":\"0px\"\x2C\".ql-toolbar.ql-snow|bordor-bottom\":\"none\"\x2C\".ql-toolbar.ql-snow|text-align\":\"left\"\x2C\".ql-container|font-size\":\"16px !important\"\x2C\"blockquote|margin-left\":\"0px\"}\x2C\"tags\":{\"ToolbarAlignment\":1}\x2C\"colorScheme\":{\"Background\":\"&h00E4FBBD\"\x2C\"BackgroundSelection\":\"&hFF7BAE37\"\x2C\"Link\":\"&h000000FF\"\x2C\"Mention\":\"&h00FFFFFF\"\x2C\"MentionBackground\":\"&h00FFFFFF\"\x2C\"MentionItemText\":\"&h00FFFFFF\"\x2C\"Placeholder\":\"&hFF35374E\"\x2C\"Scrollbar\":\"&h00000000\"\x2C\"ScrollbarHover\":\"&h00000000\"\x2C\"Text\":\"&hFF35374E\"\x2C\"TextItalic\":\"&hFF35374E\"\x2C\"TextSelection\":\"&hFFF1F1F1\"\x2C\"Toolbar\":\"&hFF35374E\"\x2C\"ToolbarHover\":\"&hFF010101\"}\x2C\"mentions\":{\"braces\":[\"Full name\"\x2C\"Phone\"\x2C\"Profession\"\x2C\"Title\"\x2C\"Workplace\"]\x2C\"brackets\":[\"Address\"\x2C\"Age\"\x2C\"Birthyear\"\x2C\"Gender\"\x2C\"Patient\"\x2C\"Phone\"\x2C\"SSID\"]\x2C\"hash\":[\"Azithromycin 500mg 1 tablet 1x a day for 3 days\"\x2C\"Blood culturing if fever > 38.5\xC2\xB0\"\x2C\"Doxylin 1 tablet 2x a day for 2 weeks\"\x2C\"Doxylin 100mg\x2C 2 tablets the first day\x2C then one a day\"\x2C\"General advice\"\x2C\"Paracetamol 1g for fever\"\x2C\"Visit again if symptoms worsen\"\x2C\"Vitals every 4 hours\"\x2C\"Vitals every 8 hours\"\x2C\"Vitals once per shift\"]\x2C\"dollar\":[\"Bp\"\x2C\"Kg\"\x2C\"P\"\x2C\"RR\"\x2C\"SaO2\"\x2C\"T\"]\x2C\"percent\":[\"B12\"\x2C\"Ca\"\x2C\"Crp\"\x2C\"D-Vitamin\"\x2C\"ESR\"\x2C\"K\"\x2C\"Krea\"\x2C\"LEU\"\x2C\"Na\"\x2C\"P\"\x2C\"T4\"\x2C\"TSH\"]}\x2C\"document\":{\"title\":\"RTEdit.debug\"\x2C\"data\":\"<p>This\xC2\xA0is\xC2\xA0a\xC2\xA0demo\xC2\xA0when\xC2\xA0data\xC2\xA0is\xC2\xA0imported\xC2\xA0to\xC2\xA0the\xC2\xA0control\xC2\xA0using\xC2\xA0<strong>ImportDocumentFromJSON.\xC2\xA0</strong>The\xC2\xA0function\xC2\xA0allows\xC2\xA0you\xC2\xA0to\xC2\xA0save\xC2\xA0/\xC2\xA0load\xC2\xA0your\xC2\xA0data\x2C\xC2\xA0mention\xC2\xA0values\xC2\xA0/\xC2\xA0color\xC2\xA0scheme\xC2\xA0and\xC2\xA0all\xC2\xA0document\xC2\xA0settings\xC2\xA0with\xC2\xA0a\xC2\xA0single\xC2\xA0import\xC2\xA0/\xC2\xA0export\xC2\xA0function.</p><p></p><table style\x3D\\\"width: 571px;\\\" class\x3D\\\"ql-table-better\\\"><temporary class\x3D\\\"ql-table-temporary\\\" style\x3D\\\"width: 571px;\\\" data-class\x3D\\\"ql-table-better\\\"></temporary><tbody><tr><td data-row\x3D\\\"row-9bdx\\\" width\x3D\\\"72\\\" height\x3D\\\"39\\\" style\x3D\\\"height: 39px; border-color: #008000; background-color: #99e64d; \\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-b41n\\\"><strong style\x3D\\\"background-color: rgb(153\x2C 230\x2C 77);\\\">Version</strong></p></td><td data-row\x3D\\\"row-9bdx\\\" width\x3D\\\"72\\\" height\x3D\\\"39\\\" style\x3D\\\"height: 39px; border-color: #008000; background-color: #99e64d; \\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-8oi5\\\"><strong style\x3D\\\"background-color: rgb(153\x2C 230\x2C 77);\\\">Feature</strong></p></td><td data-row\x3D\\\"row-9bdx\\\" width\x3D\\\"343\\\" height\x3D\\\"39\\\" style\x3D\\\"height: 39px; border-color: rgb(0\x2C 128\x2C 0); background-color: rgb(153\x2C 230\x2C 77); width: 343px;\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-cy1w\\\"><strong style\x3D\\\"background-color: rgb(153\x2C 230\x2C 77);\\\">Description</strong></p></td></tr><tr><td data-row\x3D\\\"row-mqmw\\\" width\x3D\\\"72\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-12ac\\\">1.7</p></td><td data-row\x3D\\\"row-mqmw\\\" width\x3D\\\"72\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-lzht\\\">AllowFontSelection</p></td><td data-row\x3D\\\"row-mqmw\\\" width\x3D\\\"343\\\" style\x3D\\\"width: 343px;\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-mg1x\\\"><em>Is now True by default</em></p></td></tr><tr><td data-row\x3D\\\"row-719f\\\" height\x3D\\\"24\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-vigw\\\">1.7</p></td><td data-row\x3D\\\"row-719f\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-a7lb\\\">More Fonts</p></td><td data-row\x3D\\\"row-719f\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-l4l2\\\"><em>RTEdit now shipw with 15 fonts\x2C instead of 3.</em></p></td></tr><tr><td data-row\x3D\\\"row-n4q7\\\" height\x3D\\\"24\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-s1ym\\\">1.7</p></td><td data-row\x3D\\\"row-n4q7\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-mcjb\\\">Faster loading</p></td><td data-row\x3D\\\"row-n4q7\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-e4ab\\\"><em>Initialize process (and function\x2C is now 50% faster with improved Javascript processing.</em></p></td></tr><tr><td data-row\x3D\\\"row-830y\\\" height\x3D\\\"24\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-24vq\\\">1.7</p></td><td data-row\x3D\\\"row-830y\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-4oul\\\">TableInsert</p></td><td data-row\x3D\\\"row-830y\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-y5qt\\\"><em>RTEdit.TableInsert(Rows\x2CColumns)</em></p></td></tr><tr><td data-row\x3D\\\"row-nr5v\\\" height\x3D\\\"24\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-2avj\\\">1.7</p></td><td data-row\x3D\\\"row-nr5v\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-unlm\\\">Tabledelete</p></td><td data-row\x3D\\\"row-nr5v\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-k61r\\\"><em>Deletes the selected table</em></p></td></tr><tr><td data-row\x3D\\\"row-br5r\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-309f\\\">1.7</p></td><td data-row\x3D\\\"row-br5r\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-6non\\\">MouseRightClick</p></td><td data-row\x3D\\\"row-br5r\\\" height\x3D\\\"24\\\" class\x3D\\\"\\\"><p class\x3D\\\"ql-table-block\\\" data-cell\x3D\\\"cell-e44k\\\"><em>Now contains two arguments\x2C event and parameters() which allow you to detect what the selected element is\x2C for example a table.</em></p></td></tr></tbody></table><p></p><p><strong>RTEdit\xC2\xA0on\xC2\xA0<a href\x3D\\\"https://github.com/SveinnRunar/RTEdit-for-Xojo\\\" rel\x3D\\\"noopener noreferrer\\\" target\x3D\\\"_blank\\\">GitHub</a></strong></p><table style\x3D\\\"width: 681px;\\\" class\x3D\\\"ql-table-better\\\"><temporary class\x3D\\\"ql-table-temporary\\\" style\x3D\\\"width: 681px;\\\" data-class\x3D\\\"ql-table-better\\\">L</temporary></table><p></p>\"}}", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events chkEditMode
	#tag Event
		Sub ValueChanged()
		  REdit.EditMode = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkToolbar
	#tag Event
		Sub ValueChanged()
		  REdit.Toolbar = me.Value
		  chkToolbarBorder.Enabled = me.Value
		  chkAlignToolbarCenter.Enabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGetTextValue
	#tag Event
		Sub Pressed()
		  // Please note, that you can return mentions as text by setting the optional parameter IncludeMentions = true
		  tDebugCSS.Text = REdit.getDocumentText(True, True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnShowDocument
	#tag Event
		Sub Pressed()
		  tDebugCSS.Text = REdit.Document
		  var c as new Clipboard
		  c.Text = REdit.Document
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkToolbarBorder
	#tag Event
		Sub ValueChanged()
		  REdit.ToolbarBorder= me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkAlignToolbarCenter
	#tag Event
		Sub ValueChanged()
		  if me.Value = true then 
		    REdit.ToolbarAlignment = RTEdit.ToolBarAlignments.Center
		    
		  else
		    REdit.ToolbarAlignment = RTEdit.ToolBarAlignments.Left
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pTheme
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  SetColorScheme
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cPick
	#tag Event
		Sub ColorSelected(selectedColor As Color)
		  SelectedColorElement.FillColor = selectedColor
		  
		  select case SelectedColorElement.Name
		  case "rCBackground" 
		    REdit.ColorBackground = selectedColor
		    
		  case "rCBackgroundSelected" 
		    REdit.ColorBackgroundSelection = selectedColor
		    
		  case "rCBlockQuote"
		    REdit.ColorQuote = selectedColor
		    
		  case "rCEditorPlaceholder"
		    REdit.ColorPlaceholder = selectedColor
		    
		  case "rCLinks"
		    REdit.ColorLink = selectedColor
		    
		  case "rCMention"
		    REdit.ColorMention = selectedColor
		    
		  case "rCMentionBackground"
		    REdit.ColorMentionBackground = selectedColor
		    
		  case "rCPlaceholder" 
		    REdit.ColorPlaceholder = selectedColor
		    
		  case "rcText" 
		    REdit.ColorText = selectedColor
		    
		  case "rCScrollbar"
		    REdit.ColorScrollbar = selectedColor
		    
		  case "rCScrollbarHover"
		    REdit.ColorScrollbarHover = selectedColor
		    
		  case "rCTextItalic" 
		    REdit.ColorTextItalic = selectedColor
		    
		  case "rCTextSelected" 
		    REdit.ColorTextSelection = selectedColor
		    
		  end select
		  
		  REdit.SetColors
		  REdit.SetCustomCSS
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rcBackground
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rcBackgroundSelected
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rcText
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rcTextSelected
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadUserGuide
	#tag Event
		Sub Pressed()
		  REdit.Document = REdit.UserGuide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnTags
	#tag Event
		Sub Pressed()
		  // Easily store tags and data within the editor instance
		  REdit.SaveTag("FileOnDisk","mydatafile.txt")
		  REdit.SaveTag("FileID",1849)
		  REdit.SaveTag("Author","Sveinn Runar")
		  
		  messagebox REdit.LoadTag("FileOnDisk").StringValue + " - " + REdit.LoadTag("FileID").StringValue + " - " + REdit.LoadTag("Author")
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLoadDocument
	#tag Event
		Sub Pressed()
		  REdit.Document = K_TEST_DOC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events REdit
	#tag Event
		Sub MouseclickRight(Method As String, Parameters() As Variant)
		  // Create the menu structure for our REdit popupmenu
		  
		  // Represents a single menu item
		  var m as DesktopMenuItem
		  
		  // Edit menu
		  Var popMenu As new DesktopMenuItem
		  
		  ///m =  new DesktopMenuItem(EditPaste)
		  ///m.Text = "Pasta"///
		  ///popMenu.AddMenu(m)
		  
		  m = new DesktopMenuItem("Select all")
		  m.Tag = "ALL"
		  popMenu.AddMenu(m)
		  
		  m = new DesktopMenuItem("Copy")
		  m.tag = "COPY"
		  popMenu.AddMenu(m)
		  
		  m = new DesktopMenuItem("Paste")
		  m.Tag = "PASTE" 
		  popMenu.AddMenu(m)
		  
		  // Custom menu
		  m = new DesktopMenuItem("Custom contextual item #1")
		  popmenu.AddMenu(m)
		  
		  m =  new DesktopMenuItem("Custom contextual item #2")
		  popMenu.AddMenu(m)
		  
		  m = new DesktopMenuItem("Custom contextual item #3")
		  popmenu.AddMenu(m)
		  
		  m = new DesktopMenuItem("Custom contextual item #4")
		  m.tag = "ShowTexts"
		  popMenu.AddMenu(m)
		  
		  var mSelected as DesktopMenuItem
		  mSelected =  popMenu.PopUp(system.MouseX, system.MouseY)
		  
		  if mSelected <> nil then
		    if mSelected.tag = "COPY" then
		      REdit.CopySelectionToClipboard
		      
		    elseif mSelected.Tag = "ALL" then
		      me.SelectAll
		      
		    elseif mSelected.Tag = "PASTE" then
		      var c as new Clipboard
		      var s as string
		      s = c.Text
		      REdit.ClipboardPaste(s)
		      //REdit.ClipboardPasteSelection("Text to be pasted over the selected text")
		      
		    elseif mSelected.Tag <> nil then 
		      if mSelected.Tag.StringValue.Left(1) = "[" then
		        var sTag as string = mSelected.tag.StringValue
		        sTag = sTag.ReplaceAll("[","")
		        sTag = sTag.ReplaceAll("]","")
		        REdit.AddMention("[",sTag + "]")
		        
		      end if
		    else
		      //REdit.AddMention(mSelected.Text)
		      
		    end if
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub DocumentChanged()
		  tDebugCSS.Text = DateTime.Now.ToString + " Document updated" + EndOfLine + tDebugCSS.Text
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserSelectedURL(url as string)
		  messagebox "Url clicked: " + url
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  // Recommended use is to apply all desired settings for RTEdit, in the opening event of the control.
		  // Once the editor has initialized, the EditReady event is fired
		  
		  Initialize
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub EditorReady()
		  // This event is fired after the opening event
		End Sub
	#tag EndEvent
	#tag Event
		Sub ClipboardPaste()
		  tDebugCSS.Text = DateTime.Now.ToString + " Clipboard content pasted into document" + EndOfLine + tDebugCSS.Text
		End Sub
	#tag EndEvent
	#tag Event
		Sub ErrorMessage(Error As String)
		  messagebox Error
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNewDocument
	#tag Event
		Sub Pressed()
		  REdit.NewDocument
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rcTextItalic
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnSaveColorsAsScheme
	#tag Event
		Sub Pressed()
		  tDebugCSS.Text = REdit.SaveColorsAsScheme.ToString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rcMentionBackground
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rcLinks
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events segThemes
	#tag Event
		Sub Pressed(segmentIndex As Integer)
		  UpdateStyling(segmentIndex)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkBold
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkItalic
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkUnderline
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkHeadings
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkLinks
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkBulletin
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkImage
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkKeyboardBinding
	#tag Event
		Sub ValueChanged()
		  UpdateStyling(segThemes.SelectedSegmentIndex)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkQuote
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rcScrollbar
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rcScrollbarHover
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events chkSubscript
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkSuperscript
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkCode
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rcMention
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rcPlaceholder
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnGetDocumentVariables
	#tag Event
		Sub Pressed()
		  var sArray() as string = REdit.getDocumentMentions
		  
		  tDebugCSS.Text = ""
		  
		  for i as integer = 0 to sArray.LastIndex
		    tDebugCSS.Text = tDebugCSS.Text + sArray(i) + EndOfLine
		    
		  next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rcBlockQuote
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  SetColorPicker(me)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events chkFont
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkClean
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkIndentation
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkList
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkStrike
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkTextColor
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkTextBackgroundColor
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnExportDocumentAsJSON
	#tag Event
		Sub Pressed()
		  tDebugCSS.Text = REdit.ExportDocumentAsJSON(true, true, true, true, true, true)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkEnableRightClick
	#tag Event
		Sub ValueChanged()
		  REdit.EnableRightClick = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnExportDocumentAsJSON1
	#tag Event
		Sub Pressed()
		  REdit.ImportDocumentFromJSON(K_TEST_IMPORT_JSON, true, true, true, true, true, true)
		  
		  blockControlUpdates = true
		  
		  // Show the scheme colors
		  DisplayThemeColors
		  
		  // Load the properties 
		  chkBold.Value = REdit.AllowBold
		  chkBulletin.Value = REdit.AllowBulletins
		  chkClean.Value = REdit.AllowCleanFormatting
		  chkCode.Value = REdit.AllowCode
		  chkEnableRightClick.Value = REdit.EnableRightClick
		  chkFont.Value = REdit.AllowFontSelection
		  chkHeadings.Value = REdit.AllowHeaders
		  chkImage.Value = REdit.AllowImage
		  chkIndentation.Value = REdit.AllowIndentation
		  chkItalic.Value = REdit.AllowItalic
		  chkLinks.Value = REdit.AllowLinks
		  chkList.Value = REdit.AllowList
		  chkQuote.Value = REdit.AllowQuote
		  chkStrike.Value = REdit.AllowStrikeThrough
		  chkSubscript.Value = REdit.AllowSubscript
		  chkSuperscript.Value = REdit.AllowSuperscript
		  chkUnderline.Value = REdit.AllowUnderline
		  
		  // Toolbar
		  chkToolbar.Value = REdit.Toolbar
		  chkToolbarBorder.Value = REdit.ToolbarBorder
		  
		  // Keyboard binding / Editmode
		  chkKeyboardBinding.Value = REdit.KeyboardBindStyles
		  chkEditMode.Value = REdit.EditMode
		  
		  blockControlUpdates = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnApplyStyling
	#tag Event
		Sub Pressed()
		  UpdateStyling(segThemes.SelectedSegmentIndex)
		  me.Enabled = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkTable
	#tag Event
		Sub ValueChanged()
		  btnApplyStyling.Enabled = True
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
		Name="blockControlUpdates"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
