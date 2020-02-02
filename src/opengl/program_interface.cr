{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ProgramInterface : ::Int32
    TransformFeedbackBuffer = 0x8c8e
  end
end
