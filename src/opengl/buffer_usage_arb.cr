{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum BufferUsageARB : ::UInt32
    StaticDraw = 0x88e4

    DynamicDraw = 0x88e8
  end
end
