{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ProgramParameterPName : ::UInt32
    ProgramBinaryRetrievableHint = 0x8257
  end
end
