LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libvorbis_pulse
LOCAL_MODULE_TAGS := optional

OGG_DIR         := external/libogg_pulse
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include $(LOCAL_PATH)/lib $(OGG_DIR)/include $(OGG_DIR)/android

LOCAL_SRC_FILES := lib/analysis.c \
                   lib/barkmel.c \
                   lib/bitrate.c \
                   lib/block.c \
                   lib/codebook.c \
                   lib/envelope.c \
                   lib/floor0.c \
                   lib/floor1.c \
                   lib/info.c \
                   lib/lookup.c \
                   lib/lpc.c \
                   lib/lsp.c \
                   lib/mapping0.c \
                   lib/mdct.c \
                   lib/psy.c \
                   lib/registry.c \
                   lib/res0.c \
                   lib/sharedbook.c \
                   lib/smallft.c \
                   lib/synthesis.c \
                   lib/vorbisenc.c \
                   lib/vorbisfile.c \
                   lib/window.c

LOCAL_STATIC_LIBRARIES := libogg_pulse
LOCAL_MULTILIB := 32
include $(BUILD_STATIC_LIBRARY)
