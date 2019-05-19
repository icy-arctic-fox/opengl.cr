@[Link("gl")]
lib LibGL
  @[Flags]
  enum AttribMask : ::UInt32
    DepthBuffer = 0x100

    StencilBuffer = 0x400

    ColorBuffer = 0x4000

    Current = 0x1

    Point = 0x2

    Line = 0x4

    Polygon = 0x8

    PolygonStipple = 0x10

    PixelMode = 0x20

    Lighting = 0x40

    Fog = 0x80

    AccumBuffer = 0x200

    Viewport = 0x800

    Transform = 0x1000

    Enable = 0x2000

    Hint = 0x8000

    Eval = 0x10000

    List = 0x20000

    Texture = 0x40000

    Scissor = 0x80000
    # Guaranteed to mark all attribute groups at once
    AllAttribBits = 0xffffffff

    Multisample = 0x20000000
  end
end
