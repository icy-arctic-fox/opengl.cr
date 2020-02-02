{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum GetPName : ::UInt32
    BlendEquationRGB = 0x8009

    BlendEquationAlpha = 0x883d

    BlendDstRGB = 0x80c8

    BlendSrcRGB = 0x80c9

    BlendDstAlpha = 0x80ca

    BlendSrcAlpha = 0x80cb

    BlendColor = 0x8005

    ArrayBufferBinding = 0x8894

    ElementArrayBufferBinding = 0x8895

    Texture2D = 0xde1

    CullFace = 0xb44

    Blend = 0xbe2

    Dither = 0xbd0

    StencilTest = 0xb90

    DepthTest = 0xb71

    ScissorTest = 0xc11

    PolygonOffsetFill = 0x8037

    LineWidth = 0xb21

    AliasedPointSizeRange = 0x846d

    AliasedLineWidthRange = 0x846e

    CullFaceMode = 0xb45

    FrontFace = 0xb46

    DepthRange = 0xb70

    DepthWritemask = 0xb72

    DepthClearValue = 0xb73

    DepthFunc = 0xb74

    StencilClearValue = 0xb91

    StencilFunc = 0xb92

    StencilFail = 0xb94

    StencilPassDepthFail = 0xb95

    StencilPassDepthPass = 0xb96

    StencilRef = 0xb97

    StencilValueMask = 0xb93

    StencilWritemask = 0xb98

    StencilBackFunc = 0x8800

    StencilBackFail = 0x8801

    StencilBackPassDepthFail = 0x8802

    StencilBackPassDepthPass = 0x8803

    StencilBackRef = 0x8ca3

    StencilBackValueMask = 0x8ca4

    StencilBackWritemask = 0x8ca5

    Viewport = 0xba2

    ScissorBox = 0xc10

    ColorClearValue = 0xc22

    ColorWritemask = 0xc23

    UnpackAlignment = 0xcf5

    PackAlignment = 0xd05

    MaxTextureSize = 0xd33

    MaxViewportDims = 0xd3a

    SubpixelBits = 0xd50

    RedBits = 0xd52

    GreenBits = 0xd53

    BlueBits = 0xd54

    AlphaBits = 0xd55

    DepthBits = 0xd56

    StencilBits = 0xd57

    PolygonOffsetUnits = 0x2a00

    PolygonOffsetFactor = 0x8038

    TextureBinding2D = 0x8069

    SampleBuffers = 0x80a8

    Samples = 0x80a9

    SampleCoverageValue = 0x80aa

    SampleCoverageInvert = 0x80ab

    NumCompressedTextureFormats = 0x86a2

    CompressedTextureFormats = 0x86a3

    MaxVertexAttribs = 0x8869

    MaxVertexUniformVectors = 0x8dfb

    MaxVaryingVectors = 0x8dfc

    MaxCombinedTextureImageUnits = 0x8b4d

    MaxVertexTextureImageUnits = 0x8b4c

    MaxTextureImageUnits = 0x8872

    MaxFragmentUniformVectors = 0x8dfd

    CurrentProgram = 0x8b8d

    ActiveTexture = 0x84e0

    ImplementationColorReadType = 0x8b9a

    ImplementationColorReadFormat = 0x8b9b

    NumProgramBinaryFormats = 0x87fe

    ProgramBinaryFormats = 0x87ff

    RenderbufferBinding = 0x8ca7

    MaxRenderbufferSize = 0x84e8
  end
end
