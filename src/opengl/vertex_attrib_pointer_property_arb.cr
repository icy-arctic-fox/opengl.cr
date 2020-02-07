{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexAttribPointerPropertyARB : ::UInt32
    VertexAttribArrayPointer = 0x8645
  end
end
