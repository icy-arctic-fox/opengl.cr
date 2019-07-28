{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum BufferPointerNameARB : ::UInt32
    BufferMapPointer = 0x88bd
  end
end
