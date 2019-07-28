{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FramebufferAttachmentParameterName : ::UInt32
    FramebufferAttachmentObjectName = 0x8cd1

    FramebufferAttachmentTextureLevel = 0x8cd2

    FramebufferAttachmentTextureCubeMapFace = 0x8cd3
  end
end
