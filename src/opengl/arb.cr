{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  CONTEXT_LOST = 1287

  TEXTURE_IMMUTABLE_FORMAT = 37167

  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057

  FRAMEBUFFER_BINDING = 36006

  RESET_NOTIFICATION_STRATEGY = 33366

  LOSE_CONTEXT_ON_RESET = 33362
end
