@[Link("gl")]
lib LibGL
  enum GetTextureParameter : ::UInt32
    TextureWidth = 0x1000

    TextureHeight = 0x1001

    TextureBorderColor = 0x1004

    TextureMagFilter = 0x2800

    TextureMinFilter = 0x2801

    TextureWrapS = 0x2802

    TextureWrapT = 0x2803

    TextureComponents = 0x1003

    TextureBorder = 0x1005
  end
end
