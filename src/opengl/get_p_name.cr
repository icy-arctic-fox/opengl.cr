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

    CurrentColor = 0xb00

    CurrentIndex = 0xb01

    CurrentNormal = 0xb02

    CurrentTextureCoords = 0xb03

    CurrentRasterColor = 0xb04

    CurrentRasterIndex = 0xb05

    CurrentRasterTextureCoords = 0xb06

    CurrentRasterPosition = 0xb07

    CurrentRasterPositionValid = 0xb08

    CurrentRasterDistance = 0xb09

    PointSmooth = 0xb10

    LineStipple = 0xb24

    LineStipplePattern = 0xb25

    LineStippleRepeat = 0xb26

    ListMode = 0xb30

    MaxListNesting = 0xb31

    ListBase = 0xb32

    ListIndex = 0xb33

    PolygonStipple = 0xb42

    EdgeFlag = 0xb43

    Lighting = 0xb50

    LightModelLocalViewer = 0xb51

    LightModelTwoSide = 0xb52

    LightModelAmbient = 0xb53

    ShadeModel = 0xb54

    ColorMaterialFace = 0xb55

    ColorMaterialParameter = 0xb56

    ColorMaterial = 0xb57

    Fog = 0xb60

    FogIndex = 0xb61

    FogDensity = 0xb62

    FogStart = 0xb63

    FogEnd = 0xb64

    FogMode = 0xb65

    FogColor = 0xb66

    AccumClearValue = 0xb80

    MatrixMode = 0xba0

    Normalize = 0xba1

    ModelviewStackDepth = 0xba3

    ProjectionStackDepth = 0xba4

    TextureStackDepth = 0xba5

    ModelviewMatrix = 0xba6

    ProjectionMatrix = 0xba7

    TextureMatrix = 0xba8

    AttribStackDepth = 0xbb0

    AlphaTest = 0xbc0

    AlphaTestFunc = 0xbc1

    AlphaTestRef = 0xbc2

    LogicOp = 0xbf1

    AuxBuffers = 0xc00

    IndexClearValue = 0xc20

    IndexWritemask = 0xc21

    IndexMode = 0xc30

    RGBAMode = 0xc31

    RenderMode = 0xc40

    PerspectiveCorrectionHint = 0xc50

    PointSmoothHint = 0xc51

    FogHint = 0xc54

    TextureGenS = 0xc60

    TextureGenT = 0xc61

    TextureGenR = 0xc62

    TextureGenQ = 0xc63

    PixelMapIToISize = 0xcb0

    PixelMapSToSSize = 0xcb1

    PixelMapIToRSize = 0xcb2

    PixelMapIToGSize = 0xcb3

    PixelMapIToBSize = 0xcb4

    PixelMapIToASize = 0xcb5

    PixelMapRToRSize = 0xcb6

    PixelMapGToGSize = 0xcb7

    PixelMapBToBSize = 0xcb8

    PixelMapAToASize = 0xcb9

    MapColor = 0xd10

    MapStencil = 0xd11

    IndexShift = 0xd12

    IndexOffset = 0xd13

    RedScale = 0xd14

    RedBias = 0xd15

    ZoomX = 0xd16

    ZoomY = 0xd17

    GreenScale = 0xd18

    GreenBias = 0xd19

    BlueScale = 0xd1a

    BlueBias = 0xd1b

    AlphaScale = 0xd1c

    AlphaBias = 0xd1d

    DepthScale = 0xd1e

    DepthBias = 0xd1f

    MaxEvalOrder = 0xd30

    MaxLights = 0xd31

    MaxClipPlanes = 0xd32

    MaxPixelMapTable = 0xd34

    MaxAttribStackDepth = 0xd35

    MaxModelviewStackDepth = 0xd36

    MaxNameStackDepth = 0xd37

    MaxProjectionStackDepth = 0xd38

    MaxTextureStackDepth = 0xd39

    IndexBits = 0xd51

    RedBits = 0xd52

    GreenBits = 0xd53

    BlueBits = 0xd54

    AlphaBits = 0xd55

    DepthBits = 0xd56

    StencilBits = 0xd57

    AccumRedBits = 0xd58

    AccumGreenBits = 0xd59

    AccumBlueBits = 0xd5a

    AccumAlphaBits = 0xd5b

    NameStackDepth = 0xd70

    AutoNormal = 0xd80

    Map1Color4 = 0xd90

    Map1Index = 0xd91

    Map1Normal = 0xd92

    Map1TextureCoord1 = 0xd93

    Map1TextureCoord2 = 0xd94

    Map1TextureCoord3 = 0xd95

    Map1TextureCoord4 = 0xd96

    Map1Vertex3 = 0xd97

    Map1Vertex4 = 0xd98

    Map2Color4 = 0xdb0

    Map2Index = 0xdb1

    Map2Normal = 0xdb2

    Map2TextureCoord1 = 0xdb3

    Map2TextureCoord2 = 0xdb4

    Map2TextureCoord3 = 0xdb5

    Map2TextureCoord4 = 0xdb6

    Map2Vertex3 = 0xdb7

    Map2Vertex4 = 0xdb8

    Map1GridDomain = 0xdd0

    Map1GridSegments = 0xdd1

    Map2GridDomain = 0xdd2

    Map2GridSegments = 0xdd3

    ClipPlane0 = 0x3000

    ClipPlane1 = 0x3001

    ClipPlane2 = 0x3002

    ClipPlane3 = 0x3003

    ClipPlane4 = 0x3004

    ClipPlane5 = 0x3005

    Light0 = 0x4000

    Light1 = 0x4001

    Light2 = 0x4002

    Light3 = 0x4003

    Light4 = 0x4004

    Light5 = 0x4005

    Light6 = 0x4006

    Light7 = 0x4007

    ColorLogicOp = 0xbf2

    PolygonOffsetUnits = 0x2a00

    PolygonOffsetPoint = 0x2a01

    PolygonOffsetLine = 0x2a02

    PolygonOffsetFill = 0x8037

    PolygonOffsetFactor = 0x8038

    TextureBinding1D = 0x8068

    TextureBinding2D = 0x8069

    ClientAttribStackDepth = 0xbb1

    IndexLogicOp = 0xbf1

    MaxClientAttribStackDepth = 0xd3b

    FeedbackBufferSize = 0xdf1

    FeedbackBufferType = 0xdf2

    SelectionBufferSize = 0xdf4

    VertexArray = 0x8074

    NormalArray = 0x8075

    ColorArray = 0x8076

    IndexArray = 0x8077

    TextureCoordArray = 0x8078

    EdgeFlagArray = 0x8079

    VertexArraySize = 0x807a

    VertexArrayType = 0x807b

    VertexArrayStride = 0x807c

    NormalArrayType = 0x807e

    NormalArrayStride = 0x807f

    ColorArraySize = 0x8081

    ColorArrayType = 0x8082

    ColorArrayStride = 0x8083

    IndexArrayType = 0x8085

    IndexArrayStride = 0x8086

    TextureCoordArraySize = 0x8088

    TextureCoordArrayType = 0x8089

    TextureCoordArrayStride = 0x808a

    EdgeFlagArrayStride = 0x808c

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

    LightModelColorControl = 0x81f8

    AliasedPointSizeRange = 0x846d

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
  end
end
