{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ReadBufferMode : ::Int32
    Front = 0x404

    Back = 0x405

    ColorAttachment0 = 0x8ce0

    None = 0x0
  end
end
