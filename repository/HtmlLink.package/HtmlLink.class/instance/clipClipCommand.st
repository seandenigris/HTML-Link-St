printing
clipClipCommand
	"Didn't work with LibC system: so just copy to the clipboard to be run in a terminal"
	
	| command |
	command := '/usr/bin/textutil -stdin -format html -convert rtf -stdout <<EOF | /usr/bin/pbcopy', String crlf, self asString, String crlf, 'EOF', String crlf.
	Clipboard clipboardText: command.