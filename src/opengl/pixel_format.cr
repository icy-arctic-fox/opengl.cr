{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

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

    Bgr = 0x80e0

    Bgra = 0x80e1

    RedInteger = 0x8d94

    GreenInteger = 0x8d95

    BlueInteger = 0x8d96

    RGBInteger = 0x8d98

    RGBAInteger = 0x8d99

    BgrInteger = 0x8d9a

    BgraInteger = 0x8d9b

    DepthStencil = 0x84f9

    Rg = 0x8227

    RgInteger = 0x8228
  end
end
