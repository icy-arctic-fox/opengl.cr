{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # OpenGL 4.6 Table 7.3: OpenGL Shading Language type tokens

  enum SLTypeToken : ::UInt32
    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406

    FloatVec2 = 0x8b50

    FloatVec3 = 0x8b51

    FloatVec4 = 0x8b52

    IntVec2 = 0x8b53

    IntVec3 = 0x8b54

    IntVec4 = 0x8b55

    Bool = 0x8b56

    BoolVec2 = 0x8b57

    BoolVec3 = 0x8b58

    BoolVec4 = 0x8b59

    FloatMat2 = 0x8b5a

    FloatMat3 = 0x8b5b

    FloatMat4 = 0x8b5c

    Sampler2D = 0x8b5e

    SamplerCube = 0x8b60

    Sampler3D = 0x8b5f

    Sampler2DShadow = 0x8b62

    FloatMat2x3 = 0x8b65

    FloatMat2x4 = 0x8b66

    FloatMat3x2 = 0x8b67

    FloatMat3x4 = 0x8b68

    FloatMat4x2 = 0x8b69

    FloatMat4x3 = 0x8b6a

    Sampler2DArray = 0x8dc1

    Sampler2DArrayShadow = 0x8dc4

    SamplerCubeShadow = 0x8dc5

    UnsignedIntVec2 = 0x8dc6

    UnsignedIntVec3 = 0x8dc7

    UnsignedIntVec4 = 0x8dc8

    IntSampler2D = 0x8dca

    IntSampler3D = 0x8dcb

    IntSamplerCube = 0x8dcc

    IntSampler2DArray = 0x8dcf

    UnsignedIntSampler2D = 0x8dd2

    UnsignedIntSampler3D = 0x8dd3

    UnsignedIntSamplerCube = 0x8dd4

    UnsignedIntSampler2DArray = 0x8dd7

    UnsignedIntAtomicCounter = 0x92db

    Image2D = 0x904d

    Image3D = 0x904e

    ImageCube = 0x9050

    Image2DArray = 0x9053

    IntImage2D = 0x9058

    IntImage3D = 0x9059

    IntImageCube = 0x905b

    IntImage2DArray = 0x905e

    UnsignedIntImage2D = 0x9063

    UnsignedIntImage3D = 0x9064

    UnsignedIntImageCube = 0x9066

    UnsignedIntImage2DArray = 0x9069

    Sampler2DMultisample = 0x9108

    IntSampler2DMultisample = 0x9109

    UnsignedIntSampler2DMultisample = 0x910a
  end
end
