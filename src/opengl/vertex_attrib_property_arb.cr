{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexAttribPropertyARB : ::UInt32
    CurrentVertexAttrib = 0x8626

    VertexAttribArrayEnabled = 0x8622

    VertexAttribArraySize = 0x8623

    VertexAttribArrayStride = 0x8624

    VertexAttribArrayType = 0x8625

    VertexAttribArrayNormalized = 0x886a

    VertexAttribArrayBufferBinding = 0x889f
  end
end
