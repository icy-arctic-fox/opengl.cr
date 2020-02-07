{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Range released by MS on 2002/9/16

  enum ProgramParameterPName : ::UInt32
    ProgramBinaryRetrievableHint = 0x8257
  end
end
