@[Link("gl")]
lib LibGL
  enum SamplerParameterName : ::UInt32
    TextureMagFilter = 0x2800

    TextureMinFilter = 0x2801

    TextureWrapS = 0x2802

    TextureWrapT = 0x2803

    TextureWrapR = 0x8072

    TextureMinLod = 0x813a

    TextureMaxLod = 0x813b

    TextureCompareMode = 0x884c

    TextureCompareFunc = 0x884d
  end
end
