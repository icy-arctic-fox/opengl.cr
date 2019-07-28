{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum RenderingMode : ::UInt32
    Render = 0x1c00

    Feedback = 0x1c01

    Select = 0x1c02
  end
end
