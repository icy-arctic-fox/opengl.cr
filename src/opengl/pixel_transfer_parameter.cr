{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PixelTransferParameter : ::UInt32
    MapColor = 0xd10

    MapStencil = 0xd11

    IndexShift = 0xd12

    IndexOffset = 0xd13

    RedScale = 0xd14

    RedBias = 0xd15

    GreenScale = 0xd18

    GreenBias = 0xd19

    BlueScale = 0xd1a

    BlueBias = 0xd1b

    AlphaScale = 0xd1c

    AlphaBias = 0xd1d

    DepthScale = 0xd1e

    DepthBias = 0xd1f
  end
end
