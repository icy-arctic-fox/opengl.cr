{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum MeshMode2 : ::UInt32
    Point = 0x1b00

    Line = 0x1b01

    Fill = 0x1b02
  end
end
