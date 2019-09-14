{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  SHADER_BINARY_FORMATS = 36344

  RGB565 = 36194
end
