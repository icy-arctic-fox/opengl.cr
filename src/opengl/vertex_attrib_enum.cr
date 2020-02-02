{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum VertexAttribEnum : ::UInt32
    VertexAttribArrayBufferBinding = 0x889f

    VertexAttribArrayEnabled = 0x8622

    VertexAttribArraySize = 0x8623

    VertexAttribArrayStride = 0x8624

    VertexAttribArrayType = 0x8625

    CurrentVertexAttrib = 0x8626

    VertexAttribArrayNormalized = 0x886a

    VertexAttribArrayInteger = 0x88fd
  end
end
