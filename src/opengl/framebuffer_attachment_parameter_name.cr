{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FramebufferAttachmentParameterName : ::UInt32
    FramebufferAttachmentObjectType = 0x8cd0

    FramebufferAttachmentObjectName = 0x8cd1

    FramebufferAttachmentTextureLevel = 0x8cd2
  end
end
