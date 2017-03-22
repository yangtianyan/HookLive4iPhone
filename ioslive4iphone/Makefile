THEOS_DEVICE_IP = 192.168.199.124
ARCHS = arm64
TARGET = iphone:latest:8.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iosLive4iPhone
iosLive4iPhone_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 live4iphone"
