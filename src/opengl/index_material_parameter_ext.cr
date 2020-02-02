{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum IndexMaterialParameterEXT : ::Int32
    IndexOffset = 0xd13
  end
end
