{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureWrapMode : ::Int32
    LinearMipmapLinear = 0x2703

    Repeat = 0x2901

    ClampToEdge = 0x812f

    MirroredRepeat = 0x8370

    ClampToBorder = 0x812d
  end
end
