{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum CopyImageSubDataTarget : ::UInt32
    Texture1D = 0xde0

    Texture2D = 0xde1

    Texture3D = 0x806f

    TextureCubeMap = 0x8513

    Texture1DArray = 0x8c18

    Texture2DArray = 0x8c1a

    Renderbuffer = 0x8d41

    TextureRectangle = 0x84f5

    Texture2DMultisample = 0x9100

    Texture2DMultisampleArray = 0x9102

    TextureCubeMapArray = 0x9009
  end
end
