{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum CopyImageSubDataTarget : ::Int32
    Texture2D = 0xde1

    TextureCubeMap = 0x8513

    Renderbuffer = 0x8d41
  end
end
