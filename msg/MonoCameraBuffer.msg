# --- Pixel formats ---
uint8 PIXEL_FORMAT_GRAY8 = 0
uint8 PIXEL_FORMAT_NV12  = 1
uint8 PIXEL_FORMAT_YUYV  = 2
uint8 PIXEL_FORMAT_RGB8  = 3

# --- Memory types ---
uint8 MEMORY_TYPE_NVMM   = 0
uint8 MEMORY_TYPE_DMABUF = 1
uint8 MEMORY_TYPE_CUDA   = 2
uint8 MEMORY_TYPE_CPU    = 3

# --- Identity ---
uint32 sensor_id
string frame_id
builtin_interfaces/Time stamp

# --- Image geometry ---
uint32 width
uint32 height
uint32 stride   # bytes per row

# --- Format ---
uint8 pixel_format
uint8 memory_type

# --- Buffer handle ---
int32 dmabuf_fd        # valid if memory_type == DMABUF or NVMM
uint64 cuda_ptr        # valid if memory_type == CUDA
uint32 buffer_index    # optional: index inside NvBufSurface pool

# --- Metadata ---
uint64 sequence
