{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Framebuffer object specification + headroom

  enum FramebufferAttachment : ::UInt32
    ColorAttachment0 = 0x8ce0

    StencilAttachment = 0x8d20
  end
end
