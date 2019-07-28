{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Was PixelInternalFormat

  enum InternalFormat : ::Int32
    RGB = 0x1907

    RGBA = 0x1908
  end
end
