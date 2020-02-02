{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PathColorFormat : ::Int32
    RGB = 0x1907

    RGBA = 0x1908

    None = 0x0
  end
end
