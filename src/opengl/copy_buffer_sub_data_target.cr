@[Link("gl")]
lib LibGL
  enum CopyBufferSubDataTarget : ::UInt32
    ArrayBuffer = 0x8892

    ElementArrayBuffer = 0x8893

    PixelPackBuffer = 0x88eb

    PixelUnpackBuffer = 0x88ec

    TransformFeedbackBuffer = 0x8c8e

    TextureBuffer = 0x8c2a

    CopyReadBuffer = 0x8f36

    CopyWriteBuffer = 0x8f37

    UniformBuffer = 0x8a11

    DrawIndirectBuffer = 0x8f3f
  end
end