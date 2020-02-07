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

    Quads = 0x7

    QuadStrip = 0x8

    Polygon = 0x9

    LinesAdjacency = 0xa

    LineStripAdjacency = 0xb

    TrianglesAdjacency = 0xc

    TriangleStripAdjacency = 0xd

    Patches = 0xe
  end
end
