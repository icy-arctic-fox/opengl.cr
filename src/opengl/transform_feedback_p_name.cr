{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TransformFeedbackPName : ::Int32
    TransformFeedbackBufferStart = 0x8c84

    TransformFeedbackBufferSize = 0x8c85

    TransformFeedbackBufferBinding = 0x8c8f
  end
end
