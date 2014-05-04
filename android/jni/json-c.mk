#json-c

LIB_VERSION:=json-c

LOCAL_PATH:= $(call my-dir)
LIB_ROOT_REL:= ../../$(LIB_VERSION)
LIB_ROOT_ABS:= $(LOCAL_PATH)/../../$(LIB_VERSION)


include $(CLEAR_VARS)

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_SRC_FILES := \
 $(LIB_ROOT_REL)/arraylist.c \
 $(LIB_ROOT_REL)/debug.c \
 $(LIB_ROOT_REL)/json_c_version.c \
 $(LIB_ROOT_REL)/json_object.c \
 $(LIB_ROOT_REL)/json_object_iterator.c \
 $(LIB_ROOT_REL)/json_tokener.c \
 $(LIB_ROOT_REL)/json_util.c \
 $(LIB_ROOT_REL)/linkhash.c \
 $(LIB_ROOT_REL)/printbuf.c \
 $(LIB_ROOT_REL)/random_seed.c

LOCAL_C_INCLUDES += \
 $(LIB_ROOT_ABS) \

LOCAL_LDLIBS := 

LOCAL_MODULE := json-c

include $(BUILD_STATIC_LIBRARY)
