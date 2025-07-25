# RTEdit-for-Xojo
A standalone class that provides a highly flexible rich text editing experience with HTML support.
<p>Built on Quill 2.0.2 for XOJO users, RTEdit extends its capabilities by processing pasted clipboard data according to defined styling settings using a custom markup parser. It offers enhanced event handling and full access to all CSS and JavaScript elements—all within a single class instance with no dependencies.</p>
<pre data-language="plain">
REditor.Document = &quot;&lt;b&gt;Bold Text Here&lt;/b&gt;&quot;
REditor.Initialize
</pre>
<p>Introduction & showcase video https://www.youtube.com/watch?v=j4tDSoc2MWk</p>
<p>Below is a list of its main properties, methods, and events.</p>
<h2></h2><h2>Properties</h2>
<h3>Modules</h3><pre data-language="plain">
AllowTables
AllowTextDragDrop
AllowVariables
AutoFormatLinks
KeyboardBindStyles
</pre>
<h3>Formatting &amp; Toolbar buttons</h3><pre data-language="plain">
AllowAlignment
AllowBold
AllowBulletins
AllowCleanFormatting
AllowCode
AllowFontSelection
AllowHeaders
AllowIndentation
AllowItalic
AllowLinks
AllowList
AllowQuote
AllowStrikeThrough
AllowSubscript
AllowSuperscript
AllowTextBackgroundColor
AllowTextColor
AllowTextDirection
AllowTextDragDrop
AllowUnderline
AllowVideo
</pre><p></p><h3>Colors</h3><pre data-language="plain">
ColorBackground
ColorBackgroundSelection
ColorBlockQuote
ColorBlockQuoteLine
ColorCodeBlock
ColorCodeBlockBackground
Colorlink
ColorPlaceholder
ColorScrollbar
ColorScrollbarHover
ColorText
ColorTextItalic
ColorTextSelection
ColorToolbar
ColorToolbarDisabled
ColorToolbarHover
ColorVariablesPopupBackground
ColorVariablesPopupBackgroundSelected
ColorVariablesPopupScrollbarBackground
ColorVariablesPopupScrollbarThumb
ColorVariablesPopupScrollbarThumbHover
ColorVariablesPopupText
ColorVariablesPopupTextHover
ColorVariablesText
</pre><h3>Other</h3><pre data-language="plain">
Document
EnableRightClick
ColorScheme
EditMode
FontSize
PlaceHolder
Toolbar
ToolbarAlignment
ToolbarBackground
UserGuide
VariablesTextBold
VariablesTextItalic
Version
</pre><p></p><h2>Methods</h2><p><strong>Getting document data</strong></p><pre data-language="plain">
AutoInitialize
ExportDocumentAsJSON
getDocumentHTML
getDocumentLength
getDocumentMentions
getDocumentText
ImportDocumentFromJSON
InsertVariable
NewDocument
RemoveFocus
SaveColorsAsScheme
SelectAll
</pre><h3>Other</h3><pre data-language="plain">
AppendText
ClipboardPaste
Close
CopySelectionToClipboard
PrintDocument
RetrieveValue
ScrollToBottom
ScrollToTop
StoreValue
VariablesAt
VariablesBraces
VariablesBrackets
VariablesDollar
VariablesHash
VariablesPercent
UpdateVariableValue
</pre><p></p><h2>Events</h2><p><strong>Some customized events include</strong></p><pre data-language="plain">
ClipboardPaste
ContextualMenuItemSelected
DebugCSSData
DocumentChanged
EditorReady
ErrorMessage
FocusReceived
MouseLeftClick
MouseRightClick
UserSelectedURL
</pre><p></p><h3>Initialize the control and it's defined settings</h3><pre data-language="plain">
Initialize
</pre>
<p>Acknowledgement and license</p>
This control is free to use, but requires proper acknowledgment in any derived work or application. You must mention the original author and provide a link to this repository in your documentation or credits.
A part of this control is based on Quill 2.0+  https://github.com/slab/quill/blob/main/LICENSE
<p></p>
<p>Terms</p>
Free to Use: You are allowed to use this control in your projects without charge.
Acknowledgment Required: You must provide proper attribution in any work that uses this control. 
No Decryption or Modification: You are not allowed to decrypt, reverse-engineer, or modify the control in any way.
