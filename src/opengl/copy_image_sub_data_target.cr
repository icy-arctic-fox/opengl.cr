{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CopyImageSubDataTarget : ::UInt32
    Texture2D = 0xde1

    TextureCubeMap = 0x8513

    Renderbuffer = 0x8d41

    Texture3D = 0x806f

    Texture2DArray = 0x8c1a

    Texture2DMultisample = 0x9100

    TextureCubeMapArray = 0x9009

    Texture2DMultisampleArray = 0x9102
  end
end
