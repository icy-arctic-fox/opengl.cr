{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  VERTEX_ARRAY_BUFFER_BINDING = 34966

  NORMAL_ARRAY_BUFFER_BINDING = 34967

  COLOR_ARRAY_BUFFER_BINDING = 34968

  TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970
end
