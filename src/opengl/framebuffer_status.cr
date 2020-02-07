{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Framebuffer object specification + headroom

  enum FramebufferStatus : ::Int32
    FramebufferComplete = 0x8cd5

    FramebufferIncompleteAttachment = 0x8cd6

    FramebufferIncompleteMissingAttachment = 0x8cd7

    FramebufferUnsupported = 0x8cdd
  end
end
