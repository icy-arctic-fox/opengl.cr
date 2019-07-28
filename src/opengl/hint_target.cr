{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum HintTarget : ::UInt32
    GenerateMipmapHint = 0x8192

    FragmentShaderDerivativeHint = 0x8b8b

    ProgramBinaryRetrievableHint = 0x8257
  end
end
