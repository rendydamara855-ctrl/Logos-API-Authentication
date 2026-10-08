TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = KeyChecker

KeyChecker_FILES = Tweak.x
KeyChecker_CFLAGS = -I./API -fobjc-arc
KeyChecker_LDFLAGS = -L./API -lAPIClient

include $(THEOS_MAKE_PATH)/tweak.mk
