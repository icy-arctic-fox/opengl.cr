{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PixelFormat : ::UInt32
    UnsignedShort = 0x1403

    UnsignedInt = 0x1405

    DepthComponent = 0x1902

    Alpha = 0x1906

    RGB = 0x1907

    RGBA = 0x1908

    Luminance = 0x1909

    LuminanceAlpha = 0x190a
  end
end
