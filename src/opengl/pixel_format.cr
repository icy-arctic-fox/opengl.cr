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

    StencilIndex = 0x1901

    DepthComponent = 0x1902

    Red = 0x1903

    Green = 0x1904

    Blue = 0x1905

    Alpha = 0x1906

    RGB = 0x1907

    RGBA = 0x1908

    ColorIndex = 0x1900

    Luminance = 0x1909

    LuminanceAlpha = 0x190a

    BGR = 0x80e0

    BGRA = 0x80e1

    RedInteger = 0x8d94

    GreenInteger = 0x8d95

    BlueInteger = 0x8d96

    RGBInteger = 0x8d98

    RGBAInteger = 0x8d99

    BGRInteger = 0x8d9a

    BGRAInteger = 0x8d9b

    DepthStencil = 0x84f9

    RG = 0x8227

    RGInteger = 0x8228
  end
end
