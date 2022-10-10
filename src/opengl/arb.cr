{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057

  FRAMEBUFFER_BINDING = 36006

  FRAMEBUFFER_DEFAULT = 33304

  MAX_SAMPLES = 36183

  SIGNED_NORMALIZED = 36764

  SYNC_FENCE = 37142

  UNSIGNALED = 37144

  SIGNALED = 37145

  TEXTURE_IMMUTABLE_FORMAT = 37167

  TEXTURE_IMMUTABLE_LEVELS = 33503

  MAX_COMPUTE_SHARED_MEMORY_SIZE = 33378

  TEXTURE_SAMPLES = 37126

  TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127

  TEXTURE_DEPTH = 32881

  TEXTURE_DEPTH_SIZE = 34890

  MAX_VERTEX_ATTRIB_STRIDE = 33509

  MULTISAMPLE_LINE_WIDTH_RANGE = 37761

  MULTISAMPLE_LINE_WIDTH_GRANULARITY = 37762

  DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 33347

  UNDEFINED_VERTEX = 33376

  LOSE_CONTEXT_ON_RESET = 33362

  RESET_NOTIFICATION_STRATEGY = 33366

  NO_RESET_NOTIFICATION = 33377

  CONTEXT_LOST = 1287

  PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 33313
end
