{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FramebufferAttachmentParameterName : ::UInt32
    FramebufferAttachmentColorEncoding = 0x8210

    FramebufferAttachmentComponentType = 0x8211

    FramebufferAttachmentRedSize = 0x8212

    FramebufferAttachmentGreenSize = 0x8213

    FramebufferAttachmentBlueSize = 0x8214

    FramebufferAttachmentAlphaSize = 0x8215

    FramebufferAttachmentDepthSize = 0x8216

    FramebufferAttachmentStencilSize = 0x8217

    FramebufferAttachmentObjectName = 0x8cd1

    FramebufferAttachmentTextureLevel = 0x8cd2

    FramebufferAttachmentTextureCubeMapFace = 0x8cd3

    FramebufferAttachmentTextureLayer = 0x8cd4

    FramebufferAttachmentLayered = 0x8da7
  end
end
