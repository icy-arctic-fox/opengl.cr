{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexBufferObjectParameter : ::Int32
    BufferSize = 0x8764

    BufferUsage = 0x8765
  end
end
