{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureTarget : ::UInt32
    Texture1D = 0xde0

    Texture2D = 0xde1
  end
end
