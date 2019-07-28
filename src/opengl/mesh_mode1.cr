{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum MeshMode1 : ::Int32
    Point = 0x1b00

    Line = 0x1b01
  end
end
