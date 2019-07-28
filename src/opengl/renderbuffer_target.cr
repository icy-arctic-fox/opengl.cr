{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum RenderbufferTarget : ::UInt32
    Renderbuffer = 0x8d41
  end
end
