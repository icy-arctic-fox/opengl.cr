@[Link("gl")]
lib LibGL
  # OpenGL 4.6 Table 7.3: OpenGL Shading Language type tokens

  enum SLTypeToken : ::UInt32
    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406

    Double = 0x140a

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

    Sampler1D = 0x8b5d

    Sampler2D = 0x8b5e

    Sampler3D = 0x8b5f

    SamplerCube = 0x8b60

    Sampler1DShadow = 0x8b61

    Sampler2DShadow = 0x8b62

    FloatMat2x3 = 0x8b65

    FloatMat2x4 = 0x8b66

    FloatMat3x2 = 0x8b67

    FloatMat3x4 = 0x8b68

    FloatMat4x2 = 0x8b69

    FloatMat4x3 = 0x8b6a

    Sampler1DArray = 0x8dc0

    Sampler2DArray = 0x8dc1

    Sampler1DArrayShadow = 0x8dc3

    Sampler2DArrayShadow = 0x8dc4

    SamplerCubeShadow = 0x8dc5

    UnsignedIntVec2 = 0x8dc6

    UnsignedIntVec3 = 0x8dc7

    UnsignedIntVec4 = 0x8dc8

    IntSampler1D = 0x8dc9

    IntSampler2D = 0x8dca

    IntSampler3D = 0x8dcb

    IntSamplerCube = 0x8dcc

    IntSampler1DArray = 0x8dce

    IntSampler2DArray = 0x8dcf

    UnsignedIntSampler1D = 0x8dd1

    UnsignedIntSampler2D = 0x8dd2

    UnsignedIntSampler3D = 0x8dd3

    UnsignedIntSamplerCube = 0x8dd4

    UnsignedIntSampler1DArray = 0x8dd6

    UnsignedIntSampler2DArray = 0x8dd7

    Sampler2DRect = 0x8b63

    Sampler2DRectShadow = 0x8b64

    SamplerBuffer = 0x8dc2

    IntSampler2DRect = 0x8dcd

    IntSamplerBuffer = 0x8dd0

    UnsignedIntSampler2DRect = 0x8dd5

    UnsignedIntSamplerBuffer = 0x8dd8
  end
end
