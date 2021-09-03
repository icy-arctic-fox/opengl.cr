{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum InternalFormat : ::Int32
    DepthComponent = 0x1902

    RGB = 0x1907

    RGBA = 0x1908

    RGBA4 = 0x8056

    RGB5A1 = 0x8057

    RGB565 = 0x8d62

    DepthComponent16 = 0x81a5

    StencilIndex8 = 0x8d48
  end
end
