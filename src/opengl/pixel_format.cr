{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelFormat : ::UInt32
    UnsignedShort = 0x1403

    UnsignedInt = 0x1405

    DepthComponent = 0x1902

    Alpha = 0x1906

    RGB = 0x1907

    RGBA = 0x1908

    Luminance = 0x1909

    LuminanceAlpha = 0x190a

    Red = 0x1903

    RedInteger = 0x8d94

    RGBInteger = 0x8d98

    RGBAInteger = 0x8d99

    DepthStencil = 0x84f9

    Rg = 0x8227

    RgInteger = 0x8228

    Green = 0x1904

    Blue = 0x1905

    StencilIndex = 0x1901
  end
end
