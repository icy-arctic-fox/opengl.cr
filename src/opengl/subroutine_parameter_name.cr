{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum SubroutineParameterName : ::Int32
    UniformSize = 0x8a38

    UniformNameLength = 0x8a39
  end
end
