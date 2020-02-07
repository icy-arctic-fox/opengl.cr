{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Framebuffer object specification + headroom

  enum FramebufferAttachmentParameterName : ::UInt32
    FramebufferAttachmentObjectType = 0x8cd0

    FramebufferAttachmentObjectName = 0x8cd1

    FramebufferAttachmentTextureLevel = 0x8cd2

    FramebufferAttachmentTextureCubeMapFace = 0x8cd3
  end
end
