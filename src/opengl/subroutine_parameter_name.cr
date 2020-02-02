{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum SubroutineParameterName : ::UInt32
    UniformSize = 0x8a38

    UniformNameLength = 0x8a39

    NumCompatibleSubroutines = 0x8e4a

    CompatibleSubroutines = 0x8e4b
  end
end
