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
end
