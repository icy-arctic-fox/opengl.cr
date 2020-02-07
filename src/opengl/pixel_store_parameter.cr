{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelStoreParameter : ::UInt32
    UnpackSwapBytes = 0xcf0

    UnpackLSBFirst = 0xcf1

    UnpackRowLength = 0xcf2

    UnpackSkipRows = 0xcf3

    UnpackSkipPixels = 0xcf4

    UnpackAlignment = 0xcf5

    PackSwapBytes = 0xd00

    PackLSBFirst = 0xd01

    PackRowLength = 0xd02

    PackSkipRows = 0xd03

    PackSkipPixels = 0xd04

    PackAlignment = 0xd05

    PackSkipImages = 0x806b

    PackImageHeight = 0x806c

    UnpackSkipImages = 0x806d

    UnpackImageHeight = 0x806e
  end
end
