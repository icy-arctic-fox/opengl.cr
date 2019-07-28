{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureWrapMode : ::Int32
    LinearMipmapLinear = 0x2703

    Repeat = 0x2901

    ClampToEdge = 0x812f

    ClampToBorder = 0x812d

    MirroredRepeat = 0x8370
  end
end
