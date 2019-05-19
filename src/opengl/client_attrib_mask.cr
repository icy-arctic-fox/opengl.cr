@[Link("gl")]
lib LibGL
  @[Flags]
  enum ClientAttribMask : ::UInt32
    ClientPixelStore = 0x1

    ClientVertexArray = 0x2

    ClientAllAttribBits = 0xffffffff
  end
end
