{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelStoreParameter : ::UInt32
    UnpackAlignment = 0xcf5

    PackAlignment = 0xd05

    UnpackRowLength = 0xcf2

    UnpackSkipRows = 0xcf3

    UnpackSkipPixels = 0xcf4

    PackRowLength = 0xd02

    PackSkipRows = 0xd03

    PackSkipPixels = 0xd04

    UnpackSkipImages = 0x806d

    UnpackImageHeight = 0x806e
  end
end
