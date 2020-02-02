{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum Buffer : ::UInt32
    Color = 0x1800

    Depth = 0x1801

    Stencil = 0x1802
  end
end
