@[Link("gl")]
lib LibGL
  @[Flags]
  enum BufferStorageMask : ::UInt32
    MapRead = 0x1

    MapWrite = 0x2

    MapPersistent = 0x40

    MapCoherent = 0x80

    DynamicStorage = 0x100

    ClientStorage = 0x200
  end
end
