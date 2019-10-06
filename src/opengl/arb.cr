{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  BLEND_EQUATION = 32777

  STENCIL_ATTACHMENT = 36128

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
end
