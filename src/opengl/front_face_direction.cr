{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum FrontFaceDirection : ::UInt32
    Clockwise = 0x900

    CounterClockwise = 0x901
  end
end
