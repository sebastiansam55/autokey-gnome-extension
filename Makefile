version=`cat metadata.json | grep version | tail --lines=1 | awk -e '{print $$2}' | tr -d ',' `


all: publish

publish: extension.js metadata.json
	zip "autokey-gnome-extension-sebastiansam55.v$(version).shell-extension.zip" extension.js metadata.json

version:
	echo $(version)
