{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum InvalidateFramebufferAttachment : ::Int32
    Color = 0x1800

    Depth = 0x1801

    Stencil = 0x1802

    DepthStencilAttachment = 0x821a

    ColorAttachment0 = 0x8ce0

    ColorAttachment1 = 0x8ce1

    ColorAttachment2 = 0x8ce2

    ColorAttachment3 = 0x8ce3

    ColorAttachment4 = 0x8ce4

    ColorAttachment5 = 0x8ce5

    ColorAttachment6 = 0x8ce6

    ColorAttachment7 = 0x8ce7

    ColorAttachment8 = 0x8ce8

    ColorAttachment9 = 0x8ce9

    ColorAttachment10 = 0x8cea

    ColorAttachment11 = 0x8ceb

    ColorAttachment12 = 0x8cec

    ColorAttachment13 = 0x8ced

    ColorAttachment14 = 0x8cee

    ColorAttachment15 = 0x8cef

    ColorAttachment16 = 0x8cf0

    ColorAttachment17 = 0x8cf1

    ColorAttachment18 = 0x8cf2

    ColorAttachment19 = 0x8cf3

    ColorAttachment20 = 0x8cf4

    ColorAttachment21 = 0x8cf5

    ColorAttachment22 = 0x8cf6

    ColorAttachment23 = 0x8cf7

    ColorAttachment24 = 0x8cf8

    ColorAttachment25 = 0x8cf9

    ColorAttachment26 = 0x8cfa

    ColorAttachment27 = 0x8cfb

    ColorAttachment28 = 0x8cfc

    ColorAttachment29 = 0x8cfd

    ColorAttachment30 = 0x8cfe

    ColorAttachment31 = 0x8cff

    DepthAttachment = 0x8d00
  end
end
