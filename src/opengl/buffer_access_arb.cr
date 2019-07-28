{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum BufferAccessARB : ::UInt32
    ReadOnly = 0x88b8

    WriteOnly = 0x88b9

    ReadWrite = 0x88ba
  end
end
