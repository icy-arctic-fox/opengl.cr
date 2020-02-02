{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum VertexAttribEnum : ::Int32
    VertexAttribArrayBufferBinding = 0x889f
  end
end
