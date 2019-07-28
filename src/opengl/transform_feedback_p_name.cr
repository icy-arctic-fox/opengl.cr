{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TransformFeedbackPName : ::Int32
    TransformFeedbackBufferStart = 0x8c84

    TransformFeedbackBufferSize = 0x8c85

    TransformFeedbackBufferBinding = 0x8c8f

    TransformFeedbackPaused = 0x8e23

    TransformFeedbackBufferPaused = 0x8e23

    TransformFeedbackActive = 0x8e24

    TransformFeedbackBufferActive = 0x8e24
  end
end
