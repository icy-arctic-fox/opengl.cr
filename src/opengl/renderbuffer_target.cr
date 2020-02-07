{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Framebuffer object specification + headroom

  enum RenderbufferTarget : ::UInt32
    Renderbuffer = 0x8d41
  end
end
