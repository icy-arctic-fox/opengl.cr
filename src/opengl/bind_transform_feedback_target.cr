{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum BindTransformFeedbackTarget : ::UInt32
    TransformFeedback = 0x8e22
  end
end
