@[Link("gl")]
lib LibGL
  enum EnableCap : ::UInt32
    LineSmooth = 0xb20

    PolygonSmooth = 0xb41

    CullFace = 0xb44

    DepthTest = 0xb71

    StencilTest = 0xb90

    Dither = 0xbd0

    Blend = 0xbe2

    ScissorTest = 0xc11

    Texture1D = 0xde0

    Texture2D = 0xde1

    ColorLogicOp = 0xbf2

    PolygonOffsetPoint = 0x2a01

    PolygonOffsetLine = 0x2a02

    PolygonOffsetFill = 0x8037

    Multisample = 0x809d

    SampleAlphaToCoverage = 0x809e

    SampleAlphaToOne = 0x809f

    SampleCoverage = 0x80a0

    RasterizerDiscard = 0x8c89

    FramebufferSrGB = 0x8db9

    PrimitiveRestart = 0x8f9d

    ProgramPointSize = 0x8642

    VertexProgramPointSize = 0x8642

    DepthClamp = 0x864f

    TextureCubeMapSeamless = 0x884f

    SampleMask = 0x8e51

    SampleShading = 0x8c36
  end
end
