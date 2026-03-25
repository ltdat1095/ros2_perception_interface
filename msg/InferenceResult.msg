# InferenceResult.msg
# Inference results for a frame

builtin_interfaces/Time stamp
string camera_topic
uint64 sequence
int64 source_stamp_nsec
uint32 frame_number
uint32 width
uint32 height
DetectedObject[] objects
