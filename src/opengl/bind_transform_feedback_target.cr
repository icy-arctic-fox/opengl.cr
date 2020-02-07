{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Michael Gold 2006/08/07

  enum BindTransformFeedbackTarget : ::UInt32
    TransformFeedback = 0x8e22
  end
end
