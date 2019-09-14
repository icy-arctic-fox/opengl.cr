{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Was PixelInternalFormat

  enum InternalFormat : ::Int32
    StencilIndex = 0x1901

    DepthComponent = 0x1902

    Red = 0x1903

    RGB = 0x1907

    RGBA = 0x1908
  end
end
