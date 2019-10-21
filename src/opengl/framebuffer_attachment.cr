{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FramebufferAttachment : ::UInt32
    ColorAttachment0 = 0x8ce0

    DepthAttachment = 0x8d00

    StencilAttachment = 0x8d20
  end
end
