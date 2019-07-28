{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureTarget : ::UInt32
    Texture2D = 0xde1

    TextureCubeMap = 0x8513

    TextureCubeMapPositiveX = 0x8515

    TextureCubeMapNegativeX = 0x8516

    TextureCubeMapPositiveY = 0x8517

    TextureCubeMapNegativeY = 0x8518

    TextureCubeMapPositiveZ = 0x8519

    TextureCubeMapNegativeZ = 0x851a

    Texture3D = 0x806f

    Texture2DArray = 0x8c1a

    Texture2DMultisample = 0x9100
  end
end
