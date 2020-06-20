SOURCE="https://github.com/notepadqq/notepadqq/releases/download/continuous/notepadqq-.glibc2.14-x86_64.AppImage"
OUTPUT="Notepadqq.AppImage"


all:
	echo "Building: $(OUTPUT)"
	rm -f ./$(OUTPUT)
	wget --output-document=$(OUTPUT) --continue $(SOURCE)
	chmod +x $(OUTPUT)
	rm -rf ./AppDir
	xorriso -indev $(OUTPUT) -osirrox on -extract / ./AppDir
	rm -f ./AppDir/usr/share/metainfo/notepadqq.appdata.xml
	rm -f $(OUTPUT)
	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)
	chmod +x $(OUTPUT)
	rm -rf ./AppDir