{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum MeshMode2 : ::Int32
    Point = 0x1b00

    Line = 0x1b01

    Fill = 0x1b02
  end
end
