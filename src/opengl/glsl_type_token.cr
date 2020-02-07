{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

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

    Sampler2DMultisample = 0x9108

    IntSampler2DMultisample = 0x9109

    UnsignedIntSampler2DMultisample = 0x910a

    Sampler2DMultisampleArray = 0x910b

    IntSampler2DMultisampleArray = 0x910c

    UnsignedIntSampler2DMultisampleArray = 0x910d

    SamplerCubeMapArray = 0x900c

    SamplerCubeMapArrayShadow = 0x900d

    IntSamplerCubeMapArray = 0x900e

    UnsignedIntSamplerCubeMapArray = 0x900f

    DoubleVec2 = 0x8ffc

    DoubleVec3 = 0x8ffd

    DoubleVec4 = 0x8ffe

    DoubleMat2 = 0x8f46

    DoubleMat3 = 0x8f47

    DoubleMat4 = 0x8f48

    UnsignedIntAtomicCounter = 0x92db

    Image1D = 0x904c

    Image2D = 0x904d

    Image3D = 0x904e

    Image2DRect = 0x904f

    ImageCube = 0x9050

    ImageBuffer = 0x9051

    Image1DArray = 0x9052

    Image2DArray = 0x9053

    ImageCubeMapArray = 0x9054

    Image2DMultisample = 0x9055

    Image2DMultisampleArray = 0x9056

    IntImage1D = 0x9057

    IntImage2D = 0x9058

    IntImage3D = 0x9059

    IntImage2DRect = 0x905a

    IntImageCube = 0x905b

    IntImageBuffer = 0x905c

    IntImage1DArray = 0x905d

    IntImage2DArray = 0x905e

    IntImageCubeMapArray = 0x905f

    IntImage2DMultisample = 0x9060

    IntImage2DMultisampleArray = 0x9061

    UnsignedIntImage1D = 0x9062

    UnsignedIntImage2D = 0x9063

    UnsignedIntImage3D = 0x9064

    UnsignedIntImage2DRect = 0x9065

    UnsignedIntImageCube = 0x9066

    UnsignedIntImageBuffer = 0x9067

    UnsignedIntImage1DArray = 0x9068

    UnsignedIntImage2DArray = 0x9069

    UnsignedIntImageCubeMapArray = 0x906a

    UnsignedIntImage2DMultisample = 0x906b

    UnsignedIntImage2DMultisampleArray = 0x906c
  end
end
