{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum VertexAttribPointerPropertyARB : ::UInt32
    VertexAttribArrayPointer = 0x8645
  end
end
