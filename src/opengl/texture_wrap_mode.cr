{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TextureWrapMode : ::Int32
    LinearMipmapLinear = 0x2703

    Repeat = 0x2901

    Clamp = 0x2900

    ClampToEdge = 0x812f

    ClampToBorder = 0x812d

    MirroredRepeat = 0x8370
  end
end
