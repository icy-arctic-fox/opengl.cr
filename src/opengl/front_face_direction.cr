{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FrontFaceDirection : ::UInt32
    Clockwise = 0x900

    CounterClockwise = 0x901
  end
end
