{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum GetPName : ::UInt32
    PointSize = 0xb11

    PointSizeRange = 0xb12

    PointSizeGranularity = 0xb13

    LineSmooth = 0xb20

    LineWidth = 0xb21

    LineWidthRange = 0xb22

    LineWidthGranularity = 0xb23

    PolygonMode = 0xb40

    PolygonSmooth = 0xb41

    CullFace = 0xb44

    CullFaceMode = 0xb45

    FrontFace = 0xb46

    DepthRange = 0xb70

    DepthTest = 0xb71

    DepthWritemask = 0xb72

    DepthClearValue = 0xb73

    DepthFunc = 0xb74

    StencilTest = 0xb90

    StencilClearValue = 0xb91

    StencilFunc = 0xb92

    StencilValueMask = 0xb93

    StencilFail = 0xb94

    StencilPassDepthFail = 0xb95

    StencilPassDepthPass = 0xb96

    StencilRef = 0xb97

    StencilWritemask = 0xb98

    Viewport = 0xba2

    Dither = 0xbd0

    BlendDst = 0xbe0

    BlendSrc = 0xbe1

    Blend = 0xbe2

    LogicOpMode = 0xbf0

    DrawBuffer = 0xc01

    ReadBuffer = 0xc02

    ScissorBox = 0xc10

    ScissorTest = 0xc11

    ColorClearValue = 0xc22

    ColorWritemask = 0xc23

    DoubleBuffer = 0xc32

    Stereo = 0xc33

    LineSmoothHint = 0xc52

    PolygonSmoothHint = 0xc53

    UnpackSwapBytes = 0xcf0

    UnpackLSBFirst = 0xcf1

    UnpackRowLength = 0xcf2

    UnpackSkipRows = 0xcf3

    UnpackSkipPixels = 0xcf4

    UnpackAlignment = 0xcf5

    PackSwapBytes = 0xd00

    PackLSBFirst = 0xd01

    PackRowLength = 0xd02

    PackSkipRows = 0xd03

    PackSkipPixels = 0xd04

    PackAlignment = 0xd05

    MaxTextureSize = 0xd33

    MaxViewportDims = 0xd3a

    SubpixelBits = 0xd50

    Texture1D = 0xde0

    Texture2D = 0xde1

    ColorLogicOp = 0xbf2

    PolygonOffsetUnits = 0x2a00

    PolygonOffsetPoint = 0x2a01

    PolygonOffsetLine = 0x2a02

    PolygonOffsetFill = 0x8037

    PolygonOffsetFactor = 0x8038

    TextureBinding1D = 0x8068

    TextureBinding2D = 0x8069

    TextureBinding3D = 0x806a

    PackSkipImages = 0x806b

    PackImageHeight = 0x806c

    UnpackSkipImages = 0x806d

    UnpackImageHeight = 0x806e

    Max3DTextureSize = 0x8073

    MaxElementsVertices = 0x80e8

    MaxElementsIndices = 0x80e9

    SmoothPointSizeRange = 0xb12

    SmoothPointSizeGranularity = 0xb13

    SmoothLineWidthRange = 0xb22

    SmoothLineWidthGranularity = 0xb23

    AliasedLineWidthRange = 0x846e

    ActiveTexture = 0x84e0

    SampleBuffers = 0x80a8

    Samples = 0x80a9

    SampleCoverageValue = 0x80aa

    SampleCoverageInvert = 0x80ab

    TextureBindingCubeMap = 0x8514

    MaxCubeMapTextureSize = 0x851c

    TextureCompressionHint = 0x84ef

    NumCompressedTextureFormats = 0x86a2

    CompressedTextureFormats = 0x86a3

    BlendDstRGB = 0x80c8

    BlendSrcRGB = 0x80c9

    BlendDstAlpha = 0x80ca

    BlendSrcAlpha = 0x80cb

    PointFadeThresholdSize = 0x8128

    MaxTextureLODBias = 0x84fd

    BlendColor = 0x8005

    BlendEquation = 0x8009

    ArrayBufferBinding = 0x8894

    ElementArrayBufferBinding = 0x8895

    BlendEquationRGB = 0x8009

    StencilBackFunc = 0x8800

    StencilBackFail = 0x8801

    StencilBackPassDepthFail = 0x8802

    StencilBackPassDepthPass = 0x8803

    MaxDrawBuffers = 0x8824

    BlendEquationAlpha = 0x883d

    MaxVertexAttribs = 0x8869

    MaxTextureImageUnits = 0x8872

    MaxFragmentUniformComponents = 0x8b49

    MaxVertexUniformComponents = 0x8b4a

    MaxVaryingFloats = 0x8b4b

    MaxVertexTextureImageUnits = 0x8b4c

    MaxCombinedTextureImageUnits = 0x8b4d

    FragmentShaderDerivativeHint = 0x8b8b

    CurrentProgram = 0x8b8d

    StencilBackRef = 0x8ca3

    StencilBackValueMask = 0x8ca4

    StencilBackWritemask = 0x8ca5

    PixelPackBufferBinding = 0x88ed

    PixelUnpackBufferBinding = 0x88ef

    MaxClipDistances = 0xd32

    MaxClipPlanes = 0xd32

    MajorVersion = 0x821b

    MinorVersion = 0x821c

    NumExtensions = 0x821d

    ContextFlags = 0x821e

    MaxArrayTextureLayers = 0x88ff

    MinProgramTexelOffset = 0x8904

    MaxProgramTexelOffset = 0x8905

    MaxVaryingComponents = 0x8b4b

    TextureBinding1DArray = 0x8c1c

    TextureBinding2DArray = 0x8c1d

    TransformFeedbackBufferStart = 0x8c84

    TransformFeedbackBufferSize = 0x8c85

    TransformFeedbackBufferBinding = 0x8c8f

    MaxRenderbufferSize = 0x84e8

    DrawFramebufferBinding = 0x8ca6

    RenderbufferBinding = 0x8ca7

    ReadFramebufferBinding = 0x8caa

    MaxColorAttachments = 0x8cdf

    VertexArrayBinding = 0x85b5

    MaxTextureBufferSize = 0x8c2b

    TextureBindingBuffer = 0x8c2c

    TextureBindingRectangle = 0x84f6

    MaxRectangleTextureSize = 0x84f8

    PrimitiveRestartIndex = 0x8f9e

    UniformBufferBinding = 0x8a28

    UniformBufferStart = 0x8a29

    UniformBufferSize = 0x8a2a

    MaxVertexUniformBlocks = 0x8a2b

    MaxGeometryUniformBlocks = 0x8a2c

    MaxFragmentUniformBlocks = 0x8a2d

    MaxCombinedUniformBlocks = 0x8a2e

    MaxUniformBufferBindings = 0x8a2f

    MaxUniformBlockSize = 0x8a30

    MaxCombinedVertexUniformComponents = 0x8a31

    MaxCombinedGeometryUniformComponents = 0x8a32

    MaxCombinedFragmentUniformComponents = 0x8a33

    UniformBufferOffsetAlignment = 0x8a34

    ProgramPointSize = 0x8642

    VertexProgramPointSize = 0x8642

    MaxGeometryTextureImageUnits = 0x8c29

    MaxGeometryUniformComponents = 0x8ddf

    MaxVertexOutputComponents = 0x9122

    MaxGeometryInputComponents = 0x9123

    MaxGeometryOutputComponents = 0x9124

    MaxFragmentInputComponents = 0x9125

    ContextProfileMask = 0x9126

    ProvokingVertex = 0x8e4f

    MaxServerWaitTimeout = 0x9111

    MaxSampleMaskWords = 0x8e59

    TextureBinding2DMultisample = 0x9104

    TextureBinding2DMultisampleArray = 0x9105

    MaxColorTextureSamples = 0x910e

    MaxDepthTextureSamples = 0x910f

    MaxIntegerSamples = 0x9110
  end
end
