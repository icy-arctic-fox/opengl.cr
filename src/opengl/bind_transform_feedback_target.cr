{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum BindTransformFeedbackTarget : ::UInt32
    TransformFeedback = 0x8e22
  end
end
