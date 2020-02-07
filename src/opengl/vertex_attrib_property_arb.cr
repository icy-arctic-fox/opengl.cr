{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexAttribPropertyARB : ::Int32
    VertexAttribArrayBufferBinding = 0x889f
  end
end
