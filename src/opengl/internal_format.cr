@[Link("gl")]
lib LibGL
  # Was PixelInternalFormat

  enum InternalFormat : ::Int32
    DepthComponent = 0x1902

    RGB = 0x1907

    RGBA = 0x1908

    RGBA4 = 0x8056

    RGB5A1 = 0x8057

    DepthComponent16 = 0x81a5
  end
end
