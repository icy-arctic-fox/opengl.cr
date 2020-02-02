{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PrimitiveType : ::UInt32
    Points = 0x0

    Lines = 0x1

    LineLoop = 0x2

    LineStrip = 0x3

    Triangles = 0x4

    TriangleStrip = 0x5

    TriangleFan = 0x6

    Quads = 0x7

    QuadStrip = 0x8

    Polygon = 0x9
  end
end
