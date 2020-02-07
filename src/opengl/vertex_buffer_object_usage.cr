{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexBufferObjectUsage : ::UInt32
    StreamDraw = 0x88e0

    StreamRead = 0x88e1

    StreamCopy = 0x88e2

    StaticDraw = 0x88e4

    StaticRead = 0x88e5

    StaticCopy = 0x88e6

    DynamicDraw = 0x88e8

    DynamicRead = 0x88e9

    DynamicCopy = 0x88ea
  end
end
