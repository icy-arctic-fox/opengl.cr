{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum SizedInternalFormat : ::UInt32
    R3G3B2 = 0x2a10

    RGB4 = 0x804f

    RGB5 = 0x8050

    RGB8 = 0x8051

    RGB10 = 0x8052

    RGB12 = 0x8053

    RGB16 = 0x8054

    RGBA2 = 0x8055

    RGBA4 = 0x8056

    RGB5A1 = 0x8057

    RGBA8 = 0x8058

    RGB10A2 = 0x8059

    RGBA12 = 0x805a

    RGBA16 = 0x805b

    DepthComponent16 = 0x81a5

    DepthComponent24 = 0x81a6

    DepthComponent32 = 0x81a7

    SRGB8 = 0x8c41

    SRGB8Alpha8 = 0x8c43

    RGBA32F = 0x8814

    RGB32F = 0x8815

    RGBA16F = 0x881a

    RGB16F = 0x881b

    R11FG11fB10f = 0x8c3a

    RGB9E5 = 0x8c3d

    RGBA32Ui = 0x8d70

    RGB32Ui = 0x8d71

    RGBA16Ui = 0x8d76

    RGB16Ui = 0x8d77

    RGBA8Ui = 0x8d7c

    RGB8Ui = 0x8d7d

    RGBA32I = 0x8d82

    RGB32I = 0x8d83

    RGBA16I = 0x8d88

    RGB16I = 0x8d89

    RGBA8I = 0x8d8e

    RGB8I = 0x8d8f

    DepthComponent32F = 0x8cac

    Depth32FStencil8 = 0x8cad

    Depth24Stencil8 = 0x88f0

    StencilIndex1 = 0x8d46

    StencilIndex4 = 0x8d47

    StencilIndex8 = 0x8d48

    StencilIndex16 = 0x8d49

    CompressedRedRgtc1 = 0x8dbb

    CompressedSignedRedRgtc1 = 0x8dbc

    CompressedRgRgtc2 = 0x8dbd

    CompressedSignedRgRgtc2 = 0x8dbe

    R8 = 0x8229

    R16 = 0x822a

    Rg8 = 0x822b

    Rg16 = 0x822c

    R16F = 0x822d

    R32F = 0x822e

    Rg16F = 0x822f

    Rg32F = 0x8230

    R8I = 0x8231

    R8Ui = 0x8232

    R16I = 0x8233

    R16Ui = 0x8234

    R32I = 0x8235

    R32Ui = 0x8236

    Rg8I = 0x8237

    Rg8Ui = 0x8238

    Rg16I = 0x8239

    Rg16Ui = 0x823a

    Rg32I = 0x823b

    Rg32Ui = 0x823c

    R8Snorm = 0x8f94

    Rg8Snorm = 0x8f95

    RGB8Snorm = 0x8f96

    RGBA8Snorm = 0x8f97

    R16Snorm = 0x8f98

    Rg16Snorm = 0x8f99

    RGB16Snorm = 0x8f9a

    RGBA16Snorm = 0x8f9b

    RGB10A2ui = 0x906f

    CompressedRGBABptcUnorm = 0x8e8c

    CompressedSRGBAlphaBptcUnorm = 0x8e8d

    CompressedRGBBptcSignedFloat = 0x8e8e

    CompressedRGBBptcUnsignedFloat = 0x8e8f

    CompressedRGB8Etc2 = 0x9274

    CompressedSRGB8Etc2 = 0x9275

    CompressedRGB8PunchthroughAlpha1Etc2 = 0x9276

    CompressedSRGB8PunchthroughAlpha1Etc2 = 0x9277

    CompressedRGBA8Etc2Eac = 0x9278

    CompressedSRGB8Alpha8Etc2Eac = 0x9279

    CompressedR11Eac = 0x9270

    CompressedSignedR11Eac = 0x9271

    CompressedRg11Eac = 0x9272

    CompressedSignedRg11Eac = 0x9273
  end
end
