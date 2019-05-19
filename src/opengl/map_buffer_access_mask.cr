@[Link("gl")]
lib LibGL
  @[Flags]
  enum MapBufferAccessMask : ::UInt32
    MapRead = 0x1

    MapWrite = 0x2

    MapInvalidateRange = 0x4

    MapInvalidateBuffer = 0x8

    MapFlushExplicit = 0x10

    MapUnsynchronized = 0x20

    MapPersistent = 0x40

    MapCoherent = 0x80
  end
end
