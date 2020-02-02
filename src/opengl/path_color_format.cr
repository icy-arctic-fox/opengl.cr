{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PathColorFormat : ::Int32
    Alpha = 0x1906

    RGB = 0x1907

    RGBA = 0x1908

    Luminance = 0x1909

    LuminanceAlpha = 0x190a

    None = 0x0
  end
end
