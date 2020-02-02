{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ObjectIdentifier : ::UInt32
    Texture = 0x1702

    VertexArray = 0x8074

    Framebuffer = 0x8d40

    Renderbuffer = 0x8d41

    TransformFeedback = 0x8e22

    Buffer = 0x82e0

    Shader = 0x82e1

    Program = 0x82e2

    Query = 0x82e3

    ProgramPipeline = 0x82e4

    Sampler = 0x82e6
  end
end
