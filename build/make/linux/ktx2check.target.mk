# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := ktx2check
### Rules for action "mkversion":
quiet_cmd_ktxtools_gyp_ktx2check_target_mkversion = ACTION ktxtools_gyp_ktx2check_target_mkversion $@
cmd_ktxtools_gyp_ktx2check_target_mkversion = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p tools/ktx2check; ./mkversion -o version.h tools/ktx2check

tools/ktx2check/version.h: obj := $(abs_obj)
tools/ktx2check/version.h: builddir := $(abs_builddir)
tools/ktx2check/version.h: TOOLSET := $(TOOLSET)
tools/ktx2check/version.h: $(srcdir)/mkversion $(srcdir)/.git FORCE_DO_CMD
	$(call do_cmd,ktxtools_gyp_ktx2check_target_mkversion)

all_deps += tools/ktx2check/version.h
action_ktxtools_gyp_ktx2check_target_mkversion_outputs := tools/ktx2check/version.h


DEFS_Debug := \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wpedantic \
	-Og \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-std=c99

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=c++11

INCS_Debug := \
	-I$(srcdir)/lib \
	-I$(srcdir)/utils \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

DEFS_Release := \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wpedantic \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release := \
	-std=c99

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=c++11

INCS_Release := \
	-I$(srcdir)/lib \
	-I$(srcdir)/utils \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include

OBJS := \
	$(obj).target/$(TARGET)/utils/argparser.o \
	$(obj).target/$(TARGET)/tools/ktx2check/ktx2check.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/lib.target/libktx.so $(obj).target/libktx.so

# Make sure our actions/rules run before any of us.
$(OBJS): | $(action_ktxtools_gyp_ktx2check_target_mkversion_outputs)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(builddir)/ktx2check: | $(action_ktxtools_gyp_ktx2check_target_mkversion_outputs)

# Preserve order dependency of special output on deps.
$(action_ktxtools_gyp_ktx2check_target_mkversion_outputs): | $(builddir)/lib.target/libktx.so $(obj).target/libktx.so

LDFLAGS_Debug := \
	-g \
	-Wl,-rpath=\$$ORIGIN/lib.target/ \
	-Wl,-rpath-link=\$(builddir)/lib.target/

LDFLAGS_Release := \
	-Wl,-rpath=\$$ORIGIN/lib.target/ \
	-Wl,-rpath-link=\$(builddir)/lib.target/

LIBS := \
	-ldl \
	-lpthread

$(builddir)/ktx2check: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/ktx2check: LIBS := $(LIBS)
$(builddir)/ktx2check: LD_INPUTS := $(OBJS) $(obj).target/libktx.so
$(builddir)/ktx2check: TOOLSET := $(TOOLSET)
$(builddir)/ktx2check: $(OBJS) $(obj).target/libktx.so FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/ktx2check
# Add target alias
.PHONY: ktx2check
ktx2check: $(builddir)/ktx2check

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/ktx2check

