{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ObjectIdentifier : ::Int32
    Texture = 0x1702

    Framebuffer = 0x8d40

    Renderbuffer = 0x8d41

    TransformFeedback = 0x8e22
  end
end
