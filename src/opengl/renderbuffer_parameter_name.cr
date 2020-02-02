{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum RenderbufferParameterName : ::UInt32
    RenderbufferWidth = 0x8d42

    RenderbufferHeight = 0x8d43

    RenderbufferInternalFormat = 0x8d44

    RenderbufferRedSize = 0x8d50

    RenderbufferGreenSize = 0x8d51

    RenderbufferBlueSize = 0x8d52

    RenderbufferAlphaSize = 0x8d53

    RenderbufferDepthSize = 0x8d54

    RenderbufferStencilSize = 0x8d55

    RenderbufferSamples = 0x8cab
  end
end
