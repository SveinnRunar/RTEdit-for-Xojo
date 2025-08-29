#tag DesktopWindow
Begin DesktopWindow windowIDEDEmo
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
   HasTitleBar     =   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "RTEdit - IDE Configuration"
   Type            =   0
   Visible         =   True
   Width           =   764
   Begin RTEdit RTEdit1
      AllowAlignment  =   True
      AllowAutoDeactivate=   True
      AllowBold       =   True
      AllowBulletins  =   True
      AllowCleanFormatting=   False
      AllowCode       =   True
      AllowFocus      =   True
      AllowFocusRing  =   False
      AllowFontSelection=   True
      AllowHeaders    =   True
      AllowImage      =   False
      AllowIndentation=   False
      AllowItalic     =   True
      AllowLinks      =   True
      AllowList       =   True
      AllowQuote      =   True
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
      AllowVariables  =   False
      AllowVideo      =   False
      AutoFormatLinks =   True
      AutoInitialize  =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      BlockQuoteIndentation=   0
      ColorBackground =   &cFFFFFF00
      ColorBackgroundSelection=   &cFFFC7900
      ColorBlockQuote =   &c00000000
      ColorBlockQuoteLine=   &cFFFFFF00
      ColorCodeBlock  =   &c5D5D5E00
      ColorCodeBlockBackground=   &cF8F9F900
      ColorLink       =   &c85BBFA00
      ColorPlaceholder=   &cC0C0C000
      ColorScheme     =   2
      ColorScrollbar  =   &c00000000
      ColorScrollbarHover=   &c00000000
      ColorText       =   &c00000000
      ColorTextItalic =   &c00000000
      ColorTextSelection=   &c00000000
      ColorToolbar    =   &c00000000
      ColorToolbarDisabled=   &cA9A9A900
      ColorToolbarHover=   &c00000000
      ColorVariablesPopupBackground=   &c00000000
      ColorVariablesPopupBackgroundSelected=   &c31334300
      ColorVariablesPopupScrollbarBackground=   &c00000000
      ColorVariablesPopupScrollbarThumb=   &c00000000
      ColorVariablesPopupScrollbarThumbHover=   &c00000000
      ColorVariablesPopupText=   &c00000000
      ColorVariablesPopupTextHover=   &c00000000
      ColorVariablesText=   &c00000000
      Composited      =   False
      DebugHTML       =   ""
      Document        =   ""
      DocumentTitle   =   ""
      EditMode        =   True
      Enabled         =   True
      EnableRightClick=   False
      FontSize        =   16
      HasBackgroundColor=   False
      Height          =   400
      Index           =   -2147483648
      InitialParent   =   ""
      KeyboardBindStyles=   True
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PlaceHolder     =   "The IDE demo showcases how you customize RTEdit extensively, using only the exposed properties in the IDE, with no source code added."
      PreferenceName  =   ""
      QuoteTextBold   =   False
      QuoteTextItalic =   False
      Scope           =   0
      TabIndex        =   0
      TableLabelBackground=   "Background"
      TableLabelBorder=   "Border"
      TableLabelCancel=   "Cancel"
      TableLabelCellProperties=   "Cell properties"
      TableLabelCellTextAlignment=   "Cell alignment"
      TableLabelColor =   "Color"
      TableLabelDeleteColumn=   "Delete column"
      TableLabelDeleteRow=   "Delete row"
      TableLabelDimensions=   "Dimensions"
      TableLabelDimensionsAndAlignments=   "Dimensions and alignment"
      TableLabelHeight=   "Height"
      TableLabelInsertAfter=   "Insert after"
      TableLabelInsertBefore=   "Insert before"
      TableLabelInsertColumnLeft=   "Insert column left"
      TableLabelInsertColumnRight=   "Insert column right"
      TableLabelInsertRowAbove=   "Insert row above"
      TableLabelInsertRowBelow=   "Insert row below"
      TableLabelPadding=   "Padding"
      TableLabelSave  =   "Save"
      TableLabelWidth =   "Width"
      TableTooltipAlignCellTextToBottom=   "Align cell text to the bottom"
      TableTooltipAlignCellTextToMiddle=   "Align cell text to the middle"
      TableTooltipAlignCellTextToTop=   "Align cell text to top"
      TableTooltipAlignTableCenter=   "Center table"
      TableTooltipAlignTableLeft=   "Align table to left"
      TableTooltipAlignTableRight=   "Align table right"
      TableTooltipCellProperties=   "Delete table"
      TableTooltipCellTextAlignCenter=   "Center"
      TableTooltipCellTextAlignJustify=   "Justify"
      TableTooltipCellTextAlignLeft=   "Cell text align left"
      TableTooltipCellTextAlignRight=   "Right"
      TableTooltipColumn=   "Column"
      TableTooltipCopyTable=   "Copy table"
      TableTooltipDelete=   "Delete table"
      TableTooltipInsertParagraphOutside=   "Insert paragraph outside table"
      TableTooltipMergeCells=   "Merge cells"
      TableTooltipProperties=   "Table properties"
      TableTooltipRow =   "Row"
      TableTooltipSplitCell=   "Split cell"
      TabPanelIndex   =   0
      TabStop         =   True
      Theme           =   1
      Toolbar         =   True
      ToolbarAlignment=   ""
      ToolbarBorder   =   False
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      VariablesTextBold=   False
      VariablesTextItalic=   False
      Visible         =   True
      Width           =   764
   End
End
#tag EndDesktopWindow

#tag WindowCode
#tag EndWindowCode

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
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
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
#tag EndViewBehavior
