{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum HintTarget : ::UInt32
    LineSmoothHint = 0xc52

    PolygonSmoothHint = 0xc53

    TextureCompressionHint = 0x84ef

    FragmentShaderDerivativeHint = 0x8b8b

    ProgramBinaryRetrievableHint = 0x8257
  end
end
