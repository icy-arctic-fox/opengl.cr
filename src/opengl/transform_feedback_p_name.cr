{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TransformFeedbackPName : ::UInt32
    TransformFeedbackBufferStart = 0x8c84

    TransformFeedbackBufferSize = 0x8c85

    TransformFeedbackBufferBinding = 0x8c8f

    TransformFeedbackActive = 0x8e24

    TransformFeedbackBufferActive = 0x8e24

    TransformFeedbackPaused = 0x8e23

    TransformFeedbackBufferPaused = 0x8e23
  end
end
