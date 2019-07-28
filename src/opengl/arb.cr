{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  BLEND_EQUATION = 32777

  CONTEXT_LOST = 1287

  TEXTURE_IMMUTABLE_FORMAT = 37167

  STENCIL_INDEX8 = 36168

  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048

  STENCIL_ATTACHMENT = 36128

  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057

  FRAMEBUFFER_BINDING = 36006

  RESET_NOTIFICATION_STRATEGY = 33366

  LOSE_CONTEXT_ON_RESET = 33362
end
