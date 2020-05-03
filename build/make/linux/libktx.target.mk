# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libktx
DEFS_Debug := \
	'-DLIBKTX=1' \
	'-DBASISD_SUPPORT_FXT1=0' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wpedantic \
	-Og \
	-g \
	-fPIC

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-std=c99

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=c++11 \
	-Wno-pedantic

INCS_Debug := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include \
	-I$(srcdir)/../other_include \
	-I$(VULKAN_SDK)/include

DEFS_Release := \
	'-DLIBKTX=1' \
	'-DBASISD_SUPPORT_FXT1=0' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wpedantic \
	-O3 \
	-fPIC

# Flags passed to only C files.
CFLAGS_C_Release := \
	-std=c99

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=c++11 \
	-Wno-pedantic

INCS_Release := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include \
	-I$(srcdir)/../other_include \
	-I$(VULKAN_SDK)/include

OBJS := \
	$(obj).target/$(TARGET)/lib/basisu/apg_bmp.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_astc_decomp.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_backend.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_basis_file.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_bc7enc.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_comp.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_enc.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_etc.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_frontend.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_global_selector_palette_helpers.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_gpu_texture.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_pvrtc1_4.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_resampler.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_resample_filters.o \
	$(obj).target/$(TARGET)/lib/basisu/jpgd.o \
	$(obj).target/$(TARGET)/lib/basisu/lodepng.o \
	$(obj).target/$(TARGET)/lib/basisu/transcoder/basisu_transcoder.o \
	$(obj).target/$(TARGET)/lib/basisu/basisu_uastc_enc.o \
	$(obj).target/$(TARGET)/lib/basis_encode.o \
	$(obj).target/$(TARGET)/lib/basis_transcode.o \
	$(obj).target/$(TARGET)/lib/basisu_image_transcoders.o \
	$(obj).target/$(TARGET)/lib/checkheader.o \
	$(obj).target/$(TARGET)/lib/dfdutils/createdfd.o \
	$(obj).target/$(TARGET)/lib/dfdutils/dfd2vk.o \
	$(obj).target/$(TARGET)/lib/dfdutils/interpretdfd.o \
	$(obj).target/$(TARGET)/lib/dfdutils/printdfd.o \
	$(obj).target/$(TARGET)/lib/dfdutils/queries.o \
	$(obj).target/$(TARGET)/lib/dfdutils/vk2dfd.o \
	$(obj).target/$(TARGET)/lib/etcdec.o \
	$(obj).target/$(TARGET)/lib/etcunpack.o \
	$(obj).target/$(TARGET)/lib/filestream.o \
	$(obj).target/$(TARGET)/lib/gl_funcs.o \
	$(obj).target/$(TARGET)/lib/glloader.o \
	$(obj).target/$(TARGET)/lib/hashlist.o \
	$(obj).target/$(TARGET)/lib/info.o \
	$(obj).target/$(TARGET)/lib/memstream.o \
	$(obj).target/$(TARGET)/lib/strings.o \
	$(obj).target/$(TARGET)/lib/swap.o \
	$(obj).target/$(TARGET)/lib/texture.o \
	$(obj).target/$(TARGET)/lib/texture1.o \
	$(obj).target/$(TARGET)/lib/texture2.o \
	$(obj).target/$(TARGET)/lib/vkformat_check.o \
	$(obj).target/$(TARGET)/lib/vkformat_str.o \
	$(obj).target/$(TARGET)/lib/writer1.o \
	$(obj).target/$(TARGET)/lib/writer2.o \
	$(obj).target/$(TARGET)/lib/vkloader.o \
	$(obj).target/$(TARGET)/lib/vk_funcs.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libzstd.stamp $(obj).target/vulkan_headers.stamp $(obj).target/version.h.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-g \
	-L$(srcdir)/other_lib/linux/Release-x64

LDFLAGS_Release := \
	-L$(srcdir)/other_lib/linux/Release-x64

LIBS := \
	-ldl \
	-lpthread \
	-lzstd

$(obj).target/libktx.so: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libktx.so: LIBS := $(LIBS)
$(obj).target/libktx.so: LD_INPUTS := $(OBJS)
$(obj).target/libktx.so: TOOLSET := $(TOOLSET)
$(obj).target/libktx.so: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink)

all_deps += $(obj).target/libktx.so
# Add target alias
.PHONY: libktx
libktx: $(builddir)/lib.target/libktx.so

# Copy this to the shared library output path.
$(builddir)/lib.target/libktx.so: TOOLSET := $(TOOLSET)
$(builddir)/lib.target/libktx.so: $(obj).target/libktx.so FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/lib.target/libktx.so
# Short alias for building this shared library.
.PHONY: libktx.so
libktx.so: $(obj).target/libktx.so $(builddir)/lib.target/libktx.so

# Add shared library to "all" target.
.PHONY: all
all: $(builddir)/lib.target/libktx.so

