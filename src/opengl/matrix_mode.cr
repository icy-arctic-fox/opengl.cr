{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum MatrixMode : ::UInt32
    Modelview = 0x1700

    Projection = 0x1701

    Texture = 0x1702
  end
end
