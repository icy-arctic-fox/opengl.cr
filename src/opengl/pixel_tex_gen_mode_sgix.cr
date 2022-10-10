{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelTexGenModeSGIX : ::Int32
    Alpha = 0x1906

    RGB = 0x1907

    RGBA = 0x1908

    None = 0x0
  end
end
