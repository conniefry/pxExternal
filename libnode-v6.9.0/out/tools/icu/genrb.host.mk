# This file is generated by gyp; do not edit.

TOOLSET := host
TARGET := genrb
DEFS_Debug := \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DUCONFIG_NO_TRANSLITERATION=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DUCONFIG_NO_REGULAR_EXPRESSIONS=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=0' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DUCONFIG_NO_LEGACY_CONVERSION=1' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/io \
	-I$(srcdir)/deps/icu-small/source/tools/toolutil

DEFS_Release := \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DUCONFIG_NO_TRANSLITERATION=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DUCONFIG_NO_REGULAR_EXPRESSIONS=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=0' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DUCONFIG_NO_LEGACY_CONVERSION=1'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/io \
	-I$(srcdir)/deps/icu-small/source/tools/toolutil

OBJS := \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/errmsg.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/genrb.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/parse.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/prscmnts.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/rbutil.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/read.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/reslist.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/rle.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/ustr.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/wrtjava.o \
	$(obj).host/$(TARGET)/deps/icu-small/source/tools/genrb/wrtxml.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).host/tools/icu/libicutools.a $(obj).host/tools/icu/icu_implementation.stamp $(obj).host/tools/icu/icu_uconfig.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LIBS :=

$(builddir)/genrb: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/genrb: LIBS := $(LIBS)
$(builddir)/genrb: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/genrb: LD_INPUTS := $(OBJS) $(obj).host/tools/icu/libicutools.a
$(builddir)/genrb: TOOLSET := $(TOOLSET)
$(builddir)/genrb: $(OBJS) $(obj).host/tools/icu/libicutools.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/genrb
# Add target alias
.PHONY: genrb
genrb: $(builddir)/genrb

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/genrb

