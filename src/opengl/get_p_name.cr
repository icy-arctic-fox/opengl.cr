{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum GetPName : ::UInt32
    ClipPlane0 = 0x3000

    ClipPlane1 = 0x3001

    ClipPlane2 = 0x3002

    ClipPlane3 = 0x3003

    ClipPlane4 = 0x3004

    ClipPlane5 = 0x3005

    Fog = 0xb60

    Lighting = 0xb50

    Texture2D = 0xde1

    CullFace = 0xb44

    AlphaTest = 0xbc0

    Blend = 0xbe2

    ColorLogicOp = 0xbf2

    Dither = 0xbd0

    StencilTest = 0xb90

    DepthTest = 0xb71

    PointSmooth = 0xb10

    LineSmooth = 0xb20

    ScissorTest = 0xc11

    ColorMaterial = 0xb57

    Normalize = 0xba1

    VertexArray = 0x8074

    NormalArray = 0x8075

    ColorArray = 0x8076

    TextureCoordArray = 0x8078

    FogDensity = 0xb62

    FogStart = 0xb63

    FogEnd = 0xb64

    FogMode = 0xb65

    FogColor = 0xb66

    CurrentColor = 0xb00

    CurrentNormal = 0xb02

    CurrentTextureCoords = 0xb03

    PointSize = 0xb11

    PointFadeThresholdSize = 0x8128

    SmoothPointSizeRange = 0xb12

    PointSizeRange = 0xb12

    LineWidth = 0xb21

    SmoothLineWidthRange = 0xb22

    LineWidthRange = 0xb22

    AliasedPointSizeRange = 0x846d

    AliasedLineWidthRange = 0x846e

    CullFaceMode = 0xb45

    FrontFace = 0xb46

    ShadeModel = 0xb54

    DepthRange = 0xb70

    DepthWritemask = 0xb72

    DepthClearValue = 0xb73

    DepthFunc = 0xb74

    StencilClearValue = 0xb91

    StencilFunc = 0xb92

    StencilValueMask = 0xb93

    StencilFail = 0xb94

    StencilPassDepthFail = 0xb95

    StencilPassDepthPass = 0xb96

    StencilRef = 0xb97

    StencilWritemask = 0xb98

    MatrixMode = 0xba0

    Viewport = 0xba2

    ModelviewStackDepth = 0xba3

    ProjectionStackDepth = 0xba4

    TextureStackDepth = 0xba5

    ModelviewMatrix = 0xba6

    ProjectionMatrix = 0xba7

    TextureMatrix = 0xba8

    AlphaTestFunc = 0xbc1

    AlphaTestRef = 0xbc2

    BlendDst = 0xbe0

    BlendSrc = 0xbe1

    LogicOpMode = 0xbf0

    ScissorBox = 0xc10

    ColorClearValue = 0xc22

    ColorWritemask = 0xc23

    MaxLights = 0xd31

    MaxClipPlanes = 0xd32

    MaxTextureSize = 0xd33

    MaxModelviewStackDepth = 0xd36

    MaxProjectionStackDepth = 0xd38

    MaxTextureStackDepth = 0xd39

    MaxViewportDims = 0xd3a

    SubpixelBits = 0xd50

    RedBits = 0xd52

    GreenBits = 0xd53

    BlueBits = 0xd54

    AlphaBits = 0xd55

    DepthBits = 0xd56

    StencilBits = 0xd57

    PolygonOffsetUnits = 0x2a00

    PolygonOffsetFill = 0x8037

    PolygonOffsetFactor = 0x8038

    TextureBinding2D = 0x8069

    VertexArraySize = 0x807a

    VertexArrayType = 0x807b

    VertexArrayStride = 0x807c

    NormalArrayType = 0x807e

    NormalArrayStride = 0x807f

    ColorArraySize = 0x8081

    ColorArrayType = 0x8082

    ColorArrayStride = 0x8083

    TextureCoordArraySize = 0x8088

    TextureCoordArrayType = 0x8089

    TextureCoordArrayStride = 0x808a

    SampleBuffers = 0x80a8

    Samples = 0x80a9

    SampleCoverageValue = 0x80aa

    SampleCoverageInvert = 0x80ab

    NumCompressedTextureFormats = 0x86a2

    CompressedTextureFormats = 0x86a3

    PerspectiveCorrectionHint = 0xc50

    PointSmoothHint = 0xc51

    LineSmoothHint = 0xc52

    FogHint = 0xc54

    LightModelAmbient = 0xb53

    LightModelTwoSide = 0xb52

    UnpackAlignment = 0xcf5

    PackAlignment = 0xd05

    ActiveTexture = 0x84e0

    Light0 = 0x4000

    Light1 = 0x4001

    Light2 = 0x4002

    Light3 = 0x4003

    Light4 = 0x4004

    Light5 = 0x4005

    Light6 = 0x4006

    Light7 = 0x4007

    ArrayBufferBinding = 0x8894

    ElementArrayBufferBinding = 0x8895

    AlphaScale = 0xd1c
  end
end
