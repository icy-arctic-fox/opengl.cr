{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum EnableCap : ::UInt32
    Texture2D = 0xde1

    CullFace = 0xb44

    Blend = 0xbe2

    Dither = 0xbd0

    StencilTest = 0xb90

    DepthTest = 0xb71

    ScissorTest = 0xc11

    PolygonOffsetFill = 0x8037

    SampleAlphaToCoverage = 0x809e

    SampleCoverage = 0x80a0

    RasterizerDiscard = 0x8c89

    PrimitiveRestartFixedIndex = 0x8d69

    SampleMask = 0x8e51

    DebugOutputSynchronous = 0x8242

    VertexArray = 0x8074

    DebugOutput = 0x92e0

    SampleShading = 0x8c36
  end
end
