{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CheckFramebufferStatusTarget : ::Int32
    ReadFramebuffer = 0x8ca8

    DrawFramebuffer = 0x8ca9

    Framebuffer = 0x8d40
  end
end
