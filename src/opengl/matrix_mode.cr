{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum MatrixMode : ::UInt32
    Modelview = 0x1700

    Projection = 0x1701

    Texture = 0x1702
  end
end
