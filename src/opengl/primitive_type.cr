{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PrimitiveType : ::UInt32
    Points = 0x0

    Lines = 0x1

    LineLoop = 0x2

    LineStrip = 0x3

    Triangles = 0x4

    TriangleStrip = 0x5

    TriangleFan = 0x6
  end
end
