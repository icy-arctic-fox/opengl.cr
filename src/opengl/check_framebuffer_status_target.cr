{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CheckFramebufferStatusTarget : ::Int32
    Framebuffer = 0x8d40
  end
end
