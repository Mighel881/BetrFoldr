ARCHS := armv7 armv7s arm64
include theos/makefiles/common.mk

TWEAK_NAME = BetrFoldr
BetrFoldr_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += betrfoldrs
ARCHS = armv7 arm64
include $(THEOS_MAKE_PATH)/aggregate.mk
