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

    TextureComponents = 0x1003

    TextureBorder = 0x1005

    TextureInternalFormat = 0x1003

    TextureRedSize = 0x805c

    TextureGreenSize = 0x805d

    TextureBlueSize = 0x805e

    TextureAlphaSize = 0x805f

    TextureLuminanceSize = 0x8060

    TextureIntensitySize = 0x8061

    TexturePriority = 0x8066

    TextureResident = 0x8067

    TextureWrapR = 0x8072

    TextureMinLod = 0x813a

    TextureMaxLod = 0x813b

    TextureBaseLevel = 0x813c

    TextureMaxLevel = 0x813d
  end
end
