{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Pat Brown

  enum TransformFeedbackBufferMode : ::UInt32
    InterleavedAttribs = 0x8c8c

    SeparateAttribs = 0x8c8d
  end
end
