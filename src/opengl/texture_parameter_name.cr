{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureParameterName : ::UInt32
    TextureWidth = 0x1000

    TextureHeight = 0x1001

    TextureBorderColor = 0x1004

    TextureMagFilter = 0x2800

    TextureMinFilter = 0x2801

    TextureWrapS = 0x2802

    TextureWrapT = 0x2803

    TextureInternalFormat = 0x1003

    TextureRedSize = 0x805c

    TextureGreenSize = 0x805d

    TextureBlueSize = 0x805e

    TextureAlphaSize = 0x805f

    TextureWrapR = 0x8072

    TextureMinLod = 0x813a

    TextureMaxLod = 0x813b

    TextureBaseLevel = 0x813c

    TextureMaxLevel = 0x813d

    TextureLodBias = 0x8501

    TextureCompareMode = 0x884c

    TextureCompareFunc = 0x884d

    TextureSwizzleR = 0x8e42

    TextureSwizzleG = 0x8e43

    TextureSwizzleB = 0x8e44

    TextureSwizzleA = 0x8e45

    TextureSwizzleRGBA = 0x8e46

    DepthStencilTextureMode = 0x90ea
  end
end
