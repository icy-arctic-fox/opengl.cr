{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureWrapMode : ::Int32
    LinearMipmapLinear = 0x2703

    Repeat = 0x2901

    Clamp = 0x2900
  end
end
