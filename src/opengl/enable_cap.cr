{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

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

    PointSmooth = 0xb10

    LineStipple = 0xb24

    PolygonStipple = 0xb42

    Lighting = 0xb50

    ColorMaterial = 0xb57

    Fog = 0xb60

    Normalize = 0xba1

    AlphaTest = 0xbc0

    TextureGenS = 0xc60

    TextureGenT = 0xc61

    TextureGenR = 0xc62

    TextureGenQ = 0xc63

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

    PolygonOffsetPoint = 0x2a01

    PolygonOffsetLine = 0x2a02

    PolygonOffsetFill = 0x8037

    IndexLogicOp = 0xbf1

    VertexArray = 0x8074

    NormalArray = 0x8075

    ColorArray = 0x8076

    IndexArray = 0x8077

    TextureCoordArray = 0x8078

    EdgeFlagArray = 0x8079

    Multisample = 0x809d

    SampleAlphaToCoverage = 0x809e

    SampleAlphaToOne = 0x809f

    SampleCoverage = 0x80a0

    TextureCubeMap = 0x8513

    ClipDistance0 = 0x3000

    ClipDistance1 = 0x3001

    ClipDistance2 = 0x3002

    ClipDistance3 = 0x3003

    ClipDistance4 = 0x3004

    ClipDistance5 = 0x3005

    ClipDistance6 = 0x3006

    ClipDistance7 = 0x3007

    RasterizerDiscard = 0x8c89

    FramebufferSRGB = 0x8db9
  end
end
