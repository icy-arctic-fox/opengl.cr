{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum VertexBufferObjectUsage : ::Int32
    StreamDraw = 0x88e0

    StaticDraw = 0x88e4

    DynamicDraw = 0x88e8

    StreamRead = 0x88e1

    StreamCopy = 0x88e2

    StaticRead = 0x88e5

    StaticCopy = 0x88e6

    DynamicRead = 0x88e9

    DynamicCopy = 0x88ea
  end
end
