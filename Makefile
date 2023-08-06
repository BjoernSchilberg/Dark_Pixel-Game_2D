# Variables
APPDIR = AppDir/
BINDIR = $(APPDIR)usr/bin/
ASSETDIR = Codigo_do_jogo/assets/
DESKTOPFILE = appimage/darkpixel.desktop
ICONFILE = appimage/icon.png
BINARY = Codigo_do_jogo/darkpixel
BINARY_SRC = Codigo_do_jogo/darkpixel.c
APPRUN = appimage/AppRun

# Flags for GCC
CFLAGS = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

# Target for building the AppImage
all: appimage

# Build the binary
darkpixel: $(BINARY_SRC)
	gcc $(BINARY_SRC) $(CFLAGS) -o $(BINARY)

# Create necessary directories
$(BINDIR):
	mkdir -p $(BINDIR)

# Copy binary and assets
$(BINDIR)darkpixel: darkpixel $(ASSETDIR) | $(BINDIR)
	cp $(BINARY) $(BINDIR)
	cp -r $(ASSETDIR) $(BINDIR)

# Build the AppImage
appimage: $(BINDIR)darkpixel $(DESKTOPFILE) $(ICONFILE) $(APPRUN)
	linuxdeploy-x86_64.AppImage --appdir $(APPDIR) --output appimage -d $(DESKTOPFILE) -i $(ICONFILE) -e $(BINDIR)darkpixel --custom-apprun=$(APPRUN)

clean:
	rm -rf $(APPDIR)
	rm -f *.AppImage
	rm -f $(BINARY)

.PHONY: all appimage clean darkpixel

