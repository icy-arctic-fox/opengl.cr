{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum InternalFormat : ::UInt32
    StencilIndex = 0x1901

    DepthComponent = 0x1902

    Red = 0x1903

    RGB = 0x1907

    RGBA = 0x1908

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

    Alpha4 = 0x803b

    Alpha8 = 0x803c

    Alpha12 = 0x803d

    Alpha16 = 0x803e

    Luminance4 = 0x803f

    Luminance8 = 0x8040

    Luminance12 = 0x8041

    Luminance16 = 0x8042

    Luminance4Alpha4 = 0x8043

    Luminance6Alpha2 = 0x8044

    Luminance8Alpha8 = 0x8045

    Luminance12Alpha4 = 0x8046

    Luminance12Alpha12 = 0x8047

    Luminance16Alpha16 = 0x8048

    Intensity = 0x8049

    Intensity4 = 0x804a

    Intensity8 = 0x804b

    Intensity12 = 0x804c

    Intensity16 = 0x804d

    CompressedRGB = 0x84ed

    CompressedRGBA = 0x84ee

    DepthComponent16 = 0x81a5

    DepthComponent24 = 0x81a6

    DepthComponent32 = 0x81a7

    SRGB = 0x8c40

    SRGB8 = 0x8c41

    SRGBAlpha = 0x8c42

    SRGB8Alpha8 = 0x8c43

    CompressedSRGB = 0x8c48

    CompressedSRGBAlpha = 0x8c49

    CompressedRed = 0x8225

    CompressedRG = 0x8226

    RGBA32F = 0x8814

    RGB32F = 0x8815

    RGBA16F = 0x881a

    RGB16F = 0x881b

    R11FG11FB10F = 0x8c3a

    RGB9E5 = 0x8c3d

    RGBA32UI = 0x8d70

    RGB32UI = 0x8d71

    RGBA16UI = 0x8d76

    RGB16UI = 0x8d77

    RGBA8UI = 0x8d7c

    RGB8UI = 0x8d7d

    RGBA32I = 0x8d82

    RGB32I = 0x8d83

    RGBA16I = 0x8d88

    RGB16I = 0x8d89

    RGBA8I = 0x8d8e

    RGB8I = 0x8d8f

    DepthComponent32F = 0x8cac

    Depth32FStencil8 = 0x8cad

    DepthStencil = 0x84f9

    Depth24Stencil8 = 0x88f0

    StencilIndex1 = 0x8d46

    StencilIndex4 = 0x8d47

    StencilIndex8 = 0x8d48

    StencilIndex16 = 0x8d49

    CompressedRedRGTC1 = 0x8dbb

    CompressedSignedRedRGTC1 = 0x8dbc

    CompressedRGRGTC2 = 0x8dbd

    CompressedSignedRGRGTC2 = 0x8dbe

    RG = 0x8227

    R8 = 0x8229

    R16 = 0x822a

    RG8 = 0x822b

    RG16 = 0x822c

    R16F = 0x822d

    R32F = 0x822e

    RG16F = 0x822f

    RG32F = 0x8230

    R8I = 0x8231

    R8UI = 0x8232

    R16I = 0x8233

    R16UI = 0x8234

    R32I = 0x8235

    R32UI = 0x8236

    RG8I = 0x8237

    RG8UI = 0x8238

    RG16I = 0x8239

    RG16UI = 0x823a

    RG32I = 0x823b

    RG32UI = 0x823c

    R8SNorm = 0x8f94

    RG8SNorm = 0x8f95

    RGB8SNorm = 0x8f96

    RGBA8SNorm = 0x8f97

    R16SNorm = 0x8f98

    RG16SNorm = 0x8f99

    RGB16SNorm = 0x8f9a

    RGBA16SNorm = 0x8f9b

    RGB10A2UI = 0x906f

    RGB565 = 0x8d62

    CompressedRGBABPTCUnorm = 0x8e8c

    CompressedSRGBAlphaBPTCUnorm = 0x8e8d

    CompressedRGBBPTCSignedFloat = 0x8e8e

    CompressedRGBBPTCUnsignedFloat = 0x8e8f

    CompressedRGB8ETC2 = 0x9274

    CompressedSRGB8ETC2 = 0x9275

    CompressedRGB8PunchthroughAlpha1ETC2 = 0x9276

    CompressedSRGB8PunchthroughAlpha1ETC2 = 0x9277

    CompressedRGBA8ETC2EAC = 0x9278

    CompressedSRGB8Alpha8ETC2EAC = 0x9279

    CompressedR11EAC = 0x9270

    CompressedSignedR11EAC = 0x9271

    CompressedRG11EAC = 0x9272

    CompressedSignedRG11EAC = 0x9273
  end
end
