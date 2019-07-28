{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CopyImageSubDataTarget : ::Int32
    Texture2D = 0xde1

    TextureCubeMap = 0x8513

    Renderbuffer = 0x8d41

    Texture3D = 0x806f

    Texture2DArray = 0x8c1a
  end
end
