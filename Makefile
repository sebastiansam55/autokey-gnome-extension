version=`gnome-shell --version`


all: publish

publish:
	zip "autokey-gnome-extension@sebastiansam55.44.shell-extension.zip" 44/extension.js 44/metadata.json
	zip "autokey-gnome-extension@sebastiansam55.shell-extension.zip" 46/extension.js 46/metadata.json

version:
	echo $(version)
