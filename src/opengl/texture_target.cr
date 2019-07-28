{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureTarget : ::UInt32
    Texture1D = 0xde0

    Texture2D = 0xde1

    ProxyTexture1D = 0x8063

    ProxyTexture2D = 0x8064

    Texture3D = 0x806f

    ProxyTexture3D = 0x8070

    TextureCubeMap = 0x8513

    TextureCubeMapPositiveX = 0x8515

    TextureCubeMapNegativeX = 0x8516

    TextureCubeMapPositiveY = 0x8517

    TextureCubeMapNegativeY = 0x8518

    TextureCubeMapPositiveZ = 0x8519

    TextureCubeMapNegativeZ = 0x851a

    ProxyTextureCubeMap = 0x851b

    Texture1DArray = 0x8c18

    ProxyTexture1DArray = 0x8c19

    Texture2DArray = 0x8c1a

    ProxyTexture2DArray = 0x8c1b

    TextureRectangle = 0x84f5

    ProxyTextureRectangle = 0x84f7
  end
end
