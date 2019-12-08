{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexShaderWriteMaskEXT : ::Int32
    False = 0x0

    True = 0x1
  end
end
