LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := cocos_webp_static
LOCAL_MODULE_FILENAME := webp
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libwebp.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../include/android

LOCAL_WHOLE_STATIC_LIBRARIES := cpufeatures

include $(PREBUILT_STATIC_LIBRARY)

$(call import-module, android/cpufeatures)
