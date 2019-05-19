@[Link("gl")]
lib LibGL
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

    TextureBindingCubeMap = 0x8514

    MaxCubeMapTextureSize = 0x851c

    ActiveTexture = 0x84e0

    ImplementationColorReadType = 0x8b9a

    ImplementationColorReadFormat = 0x8b9b

    ShaderCompiler = 0x8dfa

    NumShaderBinaryFormats = 0x8df9

    RenderbufferBinding = 0x8ca7

    MaxRenderbufferSize = 0x84e8

    ReadBuffer = 0xc02

    UnpackRowLength = 0xcf2

    UnpackSkipRows = 0xcf3

    UnpackSkipPixels = 0xcf4

    PackRowLength = 0xd02

    PackSkipRows = 0xd03

    PackSkipPixels = 0xd04

    TextureBinding3D = 0x806a

    UnpackSkipImages = 0x806d

    UnpackImageHeight = 0x806e

    Max3DTextureSize = 0x8073

    MaxElementsVertices = 0x80e8

    MaxElementsIndices = 0x80e9

    MaxTextureLodBias = 0x84fd

    MaxDrawBuffers = 0x8824

    MaxFragmentUniformComponents = 0x8b49

    MaxVertexUniformComponents = 0x8b4a

    FragmentShaderDerivativeHint = 0x8b8b

    PixelPackBufferBinding = 0x88ed

    PixelUnpackBufferBinding = 0x88ef

    MajorVersion = 0x821b

    MinorVersion = 0x821c

    NumExtensions = 0x821d

    MaxArrayTextureLayers = 0x88ff

    MinProgramTexelOffset = 0x8904

    MaxProgramTexelOffset = 0x8905

    MaxVaryingComponents = 0x8b4b

    MaxVaryingFloats = 0x8b4b

    TextureBinding2DArray = 0x8c1d

    TransformFeedbackBufferStart = 0x8c84

    TransformFeedbackBufferSize = 0x8c85

    TransformFeedbackBufferBinding = 0x8c8f

    DrawFramebufferBinding = 0x8ca6

    ReadFramebufferBinding = 0x8caa

    VertexArrayBinding = 0x85b5

    UniformBufferBinding = 0x8a28

    UniformBufferStart = 0x8a29

    UniformBufferSize = 0x8a2a

    MaxVertexUniformBlocks = 0x8a2b

    MaxFragmentUniformBlocks = 0x8a2d

    MaxCombinedUniformBlocks = 0x8a2e

    MaxUniformBufferBindings = 0x8a2f

    MaxUniformBlockSize = 0x8a30

    MaxCombinedVertexUniformComponents = 0x8a31

    MaxCombinedFragmentUniformComponents = 0x8a33

    UniformBufferOffsetAlignment = 0x8a34

    MaxVertexOutputComponents = 0x9122

    MaxFragmentInputComponents = 0x9125

    MaxServerWaitTimeout = 0x9111

    SamplerBinding = 0x8919

    NumProgramBinaryFormats = 0x87fe

    ProgramBinaryFormats = 0x87ff

    MaxElementIndex = 0x8d6b
  end
end
