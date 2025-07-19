#tag DesktopWindow
Begin DesktopWindow windowEditVariables
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
   Title           =   "Edit variables"
   Type            =   1
   Visible         =   True
   Width           =   600
   Begin DesktopListBox listVariables
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "60, 100%"
      DefaultRowHeight=   28
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   3
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   304
      Index           =   -2147483648
      InitialValue    =   "Type	Value"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   True
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   44
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   560
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopButton buttonClose
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   500
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   363
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopLabel labelAddVariable
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Add Variable"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopPopupMenu popupVariableType
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   "Choose type...\nAt @\nBraces {\nBrackets [\nDollar $\nHash #\nPercent %"
      Italic          =   False
      Left            =   119
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   142
   End
   Begin DesktopTextField textfieldVariableValue
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   "Enter value"
      Index           =   -2147483648
      Italic          =   False
      Left            =   273
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   215
   End
   Begin DesktopButton buttonAddVariable
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   500
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopLabel labelInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   40
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "The variables defined here, will be available to use, immediately when you close the window, without having to initialize the RTEdit instance. Click DEL or Backspace to delete a selected variable."
      TextAlignment   =   1
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   360
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   468
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddVariable()
		  select case popupVariableType.SelectedRowIndex
		  case 1 // At
		    RTEditInstance.VariablesAt.Add(textfieldVariableValue.Text.Trim)
		    
		  case 2 // Braces
		    RTEditInstance.VariablesBraces.Add(textfieldVariableValue.Text.Trim)
		    
		  case 3 // Brackets
		    RTEditInstance.VariablesBrackets.Add(textfieldVariableValue.Text.Trim)
		    
		  case 4 // Dollar
		    RTEditInstance.VariablesDollar.Add(textfieldVariableValue.Text.Trim)
		    
		  case 5 // Hash
		    RTEditInstance.VariablesHash.Add(textfieldVariableValue.Text.Trim)
		    
		  case 6 // Percent
		    RTEditInstance.VariablesPercent.Add(textfieldVariableValue.Text.Trim)
		    
		  end select
		  
		  // Add to the grid
		  listVariables.AddRowAt(0, popupVariableType.SelectedRowText.Trim.Right(1))
		  listVariables.CellAlignmentAt(0,0) = DesktopListBox.Alignments.Center
		  listVariables.CellBoldAt(0,0) = True
		  listVariables.CellTextAt(0,1) =  textfieldVariableValue.Text.Trim
		  
		  // Reset form fields.
		  popupVariableType.SelectedRowIndex = 0
		  textfieldVariableValue.Text = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ConstructVariableStringArray(VariableType As RTEdit.VariableTypes) As String()
		  
		  var variableArray() as string
		  var variableCharacter As String
		  
		  if variableType = RTEdit.VariableTypes.At then
		    variableCharacter = "@"
		    
		  elseif variableType = RTEdit.VariableTypes.Braces then
		    variableCharacter = "{"
		    
		  elseif variableType = RTEdit.VariableTypes.Brackets then
		    variableCharacter = "["
		    
		  elseif variableType = RTEdit.VariableTypes.Dollar then
		    variableCharacter = "$"
		    
		  elseif variableType = RTEdit.VariableTypes.Hash then
		    variableCharacter = "#"
		    
		  elseif variableType = RTEdit.VariableTypes.Percent then
		    variableCharacter = "%"
		    
		  end if
		  
		  var listLastIndex As Integer = listVariables.LastRowIndex
		  for i as integer = 0 to listLastIndex
		    if listVariables.CellTextAt(i,0) = variableCharacter then 
		      variableArray.Add(listVariables.CellTextAt(i,1).Trim)
		      
		    end if
		    
		  next
		  
		  
		  variableArray.Sort
		  
		  return variableArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadExistingVariables()
		  
		  // Load existing variables 
		  LoadVariableArray(RTEditInstance.VariablesAt,"@")
		  LoadVariableArray(RTEditInstance.VariablesBraces,"{")
		  LoadVariableArray(RTEditInstance.VariablesBrackets,"[")
		  LoadVariableArray(RTEditInstance.VariablesDollar,"$")
		  LoadVariableArray(RTEditInstance.VariablesHash,"#")
		  LoadVariableArray(RTEditInstance.VariablesPercent,"%")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadVariableArray(StringArray() As String, VariableCharacter As String)
		  if StringArray.LastIndex <> -1 then 
		    var lastArrayIndex As Integer = StringArray.LastIndex
		    
		    for i as integer = 0 to lastArrayIndex
		      listVariables.AddRowAt(0,VariableCharacter)
		      listVariables.CellTextAt(0,1) = StringArray(i)
		      listVariables.CellAlignmentAt(0,0) = DesktopListBox.Alignments.Center
		      
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ValidateIfCanAdd()
		  if popupVariableType.SelectedRowIndex > 0 and textfieldVariableValue.Text.Length > 3 then
		    buttonAddVariable.Enabled = true
		    
		  else
		    buttonAddVariable.Enabled = False
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			// A handle to the RTEdit instance to which we will add variables.
		#tag EndNote
		RTEditInstance As RTEdit
	#tag EndProperty


#tag EndWindowCode

#tag Events listVariables
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  // Note if the columns are more than 1, then we don't paint rounded borders
		  if row <= me.LastRowIndex then
		    if column = 0 then
		      g.DrawingColor =  color.White
		      g.FillRectangle(0,0,g.Width,g.Height)
		      
		      select case me.CellTextAt(row,column)
		      case  "@" 
		        g.DrawingColor = Color.Orange
		        
		      case "#"
		        g.DrawingColor = Color.Cyan
		        
		      case "$"
		        g.DrawingColor = Color.Green
		        
		      case "%"
		        g.DrawingColor = Color.Red
		        
		      case "{"
		        g.DrawingColor = Color.Magenta
		        
		      case "["
		        g.DrawingColor = Color.Teal
		        
		      end select
		      
		      g.FillRoundRectangle(20,4,g.Width-40,g.Height-8,24,24)
		      
		    end if 
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  if key = chr(127) or key = chr(8) then
		    if me.SelectedRowIndex <> -1 then 
		      me.RemoveRowAt(me.SelectedRowIndex)
		      
		    end if
		    
		    return true // Avoid the beep
		    
		  end if
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events buttonClose
	#tag Event
		Sub Pressed()
		  // Pass the updated lists of variables to the instance
		  var variableArray() As String
		  
		  variableArray = ConstructVariableStringArray(RTEdit.VariableTypes.At)//
		  RTEditInstance.UpdateVariableValues(variableArray,RTEdit.VariableTypes.At)
		  
		  variableArray = ConstructVariableStringArray(RTEdit.VariableTypes.Braces)
		  RTEditInstance.UpdateVariableValues(variableArray,RTEdit.VariableTypes.Braces)
		  
		  variableArray = ConstructVariableStringArray(RTEdit.VariableTypes.Brackets)
		  RTEditInstance.UpdateVariableValues(variableArray,RTEdit.VariableTypes.Brackets)
		  
		  variableArray = ConstructVariableStringArray(RTEdit.VariableTypes.Dollar)
		  RTEditInstance.UpdateVariableValues(variableArray,RTEdit.VariableTypes.Dollar)
		  
		  variableArray = ConstructVariableStringArray(RTEdit.VariableTypes.Hash)
		  RTEditInstance.UpdateVariableValues(variableArray,RTEdit.VariableTypes.Hash)
		  
		  variableArray = ConstructVariableStringArray(RTEdit.VariableTypes.Percent)
		  RTEditInstance.UpdateVariableValues(variableArray,RTEdit.VariableTypes.Percent)
		  
		  self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupVariableType
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  ValidateIfCanAdd
		  if me.SelectedRowIndex > 0 then textfieldVariableValue.SetFocus // Pass focus
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events textfieldVariableValue
	#tag Event
		Sub TextChanged()
		  ValidateIfCanAdd
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events buttonAddVariable
	#tag Event
		Sub Pressed()
		  AddVariable
		  
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
