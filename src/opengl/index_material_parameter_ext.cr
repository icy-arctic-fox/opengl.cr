{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum IndexMaterialParameterEXT : ::Int32
    IndexOffset = 0xd13
  end
end
