@[Link("gl")]
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
  end
end
