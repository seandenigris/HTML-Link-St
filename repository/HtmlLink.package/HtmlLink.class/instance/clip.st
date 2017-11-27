printing
clip
	| tempFile command |
	[ 
		tempFile := FileReference newTempFilePrefix: 'htmllink' suffix: 'txt'.
		tempFile writeStreamDo: [ :s | s nextPutAll: self asString ].
		command := '/usr/bin/textutil -format html -convert rtf -stdout ' , (tempFile fullName surroundedBy: '"') , ' | /usr/bin/pbcopy'.
		LibC system: command
	] ensure: [ tempFile delete ]

	"Implementation note: the first attempt was to pass the input via a HEREDOC, but that didn't seem to work with LibC"