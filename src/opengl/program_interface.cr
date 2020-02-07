{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Pat Brown

  enum ProgramInterface : ::Int32
    TransformFeedbackBuffer = 0x8c8e
  end
end
