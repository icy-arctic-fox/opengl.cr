{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ProgramParameterPName : ::UInt32
    ProgramBinaryRetrievableHint = 0x8257

    ProgramSeparable = 0x8258
  end
end
