{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FramebufferStatus : ::Int32
    FramebufferUndefined = 0x8219

    FramebufferComplete = 0x8cd5

    FramebufferIncompleteAttachment = 0x8cd6

    FramebufferIncompleteMissingAttachment = 0x8cd7

    FramebufferIncompleteDrawBuffer = 0x8cdb

    FramebufferIncompleteReadBuffer = 0x8cdc

    FramebufferUnsupported = 0x8cdd

    FramebufferIncompleteMultisample = 0x8d56

    FramebufferIncompleteLayerTargets = 0x8da8
  end
end
