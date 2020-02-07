{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Framebuffer object specification + headroom

  enum InvalidateFramebufferAttachment : ::Int32
    ColorAttachment0 = 0x8ce0

    DepthAttachment = 0x8d00
  end
end
