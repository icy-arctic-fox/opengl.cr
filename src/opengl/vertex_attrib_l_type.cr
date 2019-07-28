{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexAttribLType : ::UInt32
    Double = 0x140a
  end
end
