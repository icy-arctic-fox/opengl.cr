{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  BLEND_EQUATION = 32777

  FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057

  FRAMEBUFFER_BINDING = 36006
end
