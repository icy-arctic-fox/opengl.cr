{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ObjectIdentifier : ::Int32
    Texture = 0x1702

    Framebuffer = 0x8d40

    Renderbuffer = 0x8d41

    TransformFeedback = 0x8e22
  end
end
