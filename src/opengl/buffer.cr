{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum Buffer : ::Int32
    Color = 0x1800

    Depth = 0x1801

    Stencil = 0x1802
  end
end
