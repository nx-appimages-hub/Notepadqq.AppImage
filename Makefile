SOURCE="https://github.com/notepadqq/notepadqq/releases/download/continuous/notepadqq-.glibc2.14-x86_64.AppImage"
OUTPUT="Notepadqq.AppImage"


all:
	echo "Building: $(OUTPUT)"
	rm -f ./$(OUTPUT)
	wget --output-document=$(OUTPUT) --continue $(SOURCE)
	chmod +x $(OUTPUT)

