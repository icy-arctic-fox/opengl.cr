{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum EnableCap : ::UInt32
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

    Multisample = 0x809d

    SampleAlphaToCoverage = 0x809e

    SampleAlphaToOne = 0x809f

    SampleCoverage = 0x80a0

    PolygonOffsetFill = 0x8037

    Light0 = 0x4000

    Light1 = 0x4001

    Light2 = 0x4002

    Light3 = 0x4003

    Light4 = 0x4004

    Light5 = 0x4005

    Light6 = 0x4006

    Light7 = 0x4007
  end
end
