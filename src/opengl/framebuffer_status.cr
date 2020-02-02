{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FramebufferStatus : ::Int32
    FramebufferComplete = 0x8cd5

    FramebufferIncompleteAttachment = 0x8cd6

    FramebufferIncompleteMissingAttachment = 0x8cd7

    FramebufferUnsupported = 0x8cdd

    FramebufferUndefined = 0x8219

    FramebufferIncompleteMultisample = 0x8d56
  end
end
