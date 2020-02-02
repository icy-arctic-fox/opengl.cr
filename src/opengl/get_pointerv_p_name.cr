{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum GetPointervPName : ::UInt32
    VertexArrayPointer = 0x808e

    NormalArrayPointer = 0x808f

    ColorArrayPointer = 0x8090

    IndexArrayPointer = 0x8091

    TextureCoordArrayPointer = 0x8092

    EdgeFlagArrayPointer = 0x8093

    FeedbackBufferPointer = 0xdf0

    SelectionBufferPointer = 0xdf3

    DebugCallbackFunction = 0x8244

    DebugCallbackUserParam = 0x8245
  end
end
