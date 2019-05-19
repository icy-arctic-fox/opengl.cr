@[Link("gl")]
lib LibGL
  enum TextureTarget : ::UInt32
    Texture1D = 0xde0

    Texture2D = 0xde1

    ProxyTexture1D = 0x8063

    ProxyTexture2D = 0x8064

    Texture3D = 0x806f

    ProxyTexture3D = 0x8070
  end
end
