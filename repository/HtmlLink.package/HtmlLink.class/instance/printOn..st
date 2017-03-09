printing
printOn: aStream
	| template string |
	template := '<a href="{url}">{title}</a>'.
	string := template format: { 
		#url -> self destination asString.
		#title -> self text } asDictionary.
	aStream nextPutAll: string