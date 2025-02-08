# RTEdit-for-Xojo
 standalone class that offers a highly flexible rich text editing experience with HTML support. Below is a list of some of the main properties, methods and events.
<p>Start the control with a pre-loaded document.</p><pre data-language="plain">
REditor.Document = &quot;&lt;b&gt;Bold Text Here&lt;/b&gt;&quot;
REditor.Initialize
</pre><h2></h2><h2>Properties</h2><h3>Formatting &amp; Toolbar buttons</h3><pre data-language="plain">
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
AllowUnderline
</pre><p></p><h3>Colors</h3><pre data-language="plain">
ColorBackground
ColorBackgroundSelection
Colorlink
ColorMention
ColorMentionBackground
ColorPlaceholder
ColorQuote
ColorScrollbar
ColorScrollbarHover
ColorText
ColorTextItalic
ColorTextSelection
ColorToolbar
ColorToolbarHover
</pre><h3>Other</h3><pre data-language="plain">
Document
ColorScheme
EditMode
FontSize
PlaceHolder
Toolbar
ToolbarAlignment
ToolbarBackground
UserGuide
Version
</pre><p></p><h2>Methods</h2><p><strong>Getting document data</strong></p><pre data-language="plain">
AutoInitialize
getDocumentHTML
getDocumentLength
getDocumentMentions
getDocumentText
NewDocument
RemoveFocus
SaveColorsAsScheme
</pre><h3>Other</h3><pre data-language="plain">
AddMention
ClipboardPaste
Close
CopySelectionToClipboard
PrintDocument
RetrieveValue
ScrollToTop
StoreValue
UpdateMentionValue
</pre><p></p><h2>Events</h2><p><strong>Some customized events include</strong></p><pre data-language="plain">
ClipbordPaste
ContextualMenuItemSelected
DebugCSSData
DocumentChanged
EditorReady
FocusReceived
MouseLeftClick
MouseRightClick
UserSelectedURL
</pre><p></p><h3>Initialize the control and it's defined settings</h3><pre data-language="plain">
Initialize
</pre><p></p>
