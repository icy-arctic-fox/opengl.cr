{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum PixelTexGenMode : ::Int32
    None = 0x0

    RGB = 0x1907

    RGBA = 0x1908
  end
end
