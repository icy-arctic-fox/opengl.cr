{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelTexGenMode : ::Int32
    RGB = 0x1907

    RGBA = 0x1908

    Luminance = 0x1909

    LuminanceAlpha = 0x190a

    None = 0x0
  end
end
