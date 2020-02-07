{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum RenderingMode : ::UInt32
    Render = 0x1c00

    Feedback = 0x1c01

    Select = 0x1c02
  end
end
