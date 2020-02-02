{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum CopyImageSubDataTarget : ::Int32
    Texture1D = 0xde0

    Texture2D = 0xde1

    Texture3D = 0x806f

    TextureCubeMap = 0x8513
  end
end
