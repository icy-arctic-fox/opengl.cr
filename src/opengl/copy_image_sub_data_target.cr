{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CopyImageSubDataTarget : ::Int32
    Texture2D = 0xde1

    Renderbuffer = 0x8d41
  end
end
