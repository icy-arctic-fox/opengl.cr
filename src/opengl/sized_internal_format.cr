{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # The primary GL enumerant space begins here. All modern enum allocations are in this range. These enums are mostly assigned the default class since it's a great deal of not very useful work to be more specific

  enum SizedInternalFormat : ::UInt32
    RGBA4 = 0x8056

    RGB5A1 = 0x8057

    RGB565 = 0x8d62

    DepthComponent16 = 0x81a5

    StencilIndex8 = 0x8d48

    RGB8 = 0x8051

    RGBA8 = 0x8058

    RGB10A2 = 0x8059

    DepthComponent24 = 0x81a6

    SRGB8 = 0x8c41

    SRGB8Alpha8 = 0x8c43

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

    Depth24Stencil8 = 0x88f0

    R8 = 0x8229

    RG8 = 0x822b

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

    RGB10A2UI = 0x906f

    CompressedR11EAC = 0x9270

    CompressedSignedR11EAC = 0x9271

    CompressedRG11EAC = 0x9272

    CompressedSignedRG11EAC = 0x9273

    CompressedRGB8ETC2 = 0x9274

    CompressedSRGB8ETC2 = 0x9275

    CompressedRGB8PunchthroughAlpha1ETC2 = 0x9276

    CompressedSRGB8PunchthroughAlpha1ETC2 = 0x9277

    CompressedRGBA8ETC2EAC = 0x9278

    CompressedSRGB8Alpha8ETC2EAC = 0x9279

    CompressedRGBAAstc4x4 = 0x93b0

    CompressedRGBAAstc5x4 = 0x93b1

    CompressedRGBAAstc5x5 = 0x93b2

    CompressedRGBAAstc6x5 = 0x93b3

    CompressedRGBAAstc6x6 = 0x93b4

    CompressedRGBAAstc8x5 = 0x93b5

    CompressedRGBAAstc8x6 = 0x93b6

    CompressedRGBAAstc8x8 = 0x93b7

    CompressedRGBAAstc10x5 = 0x93b8

    CompressedRGBAAstc10x6 = 0x93b9

    CompressedRGBAAstc10x8 = 0x93ba

    CompressedRGBAAstc10x10 = 0x93bb

    CompressedRGBAAstc12x10 = 0x93bc

    CompressedRGBAAstc12x12 = 0x93bd

    CompressedSRGB8Alpha8Astc4x4 = 0x93d0

    CompressedSRGB8Alpha8Astc5x4 = 0x93d1

    CompressedSRGB8Alpha8Astc5x5 = 0x93d2

    CompressedSRGB8Alpha8Astc6x5 = 0x93d3

    CompressedSRGB8Alpha8Astc6x6 = 0x93d4

    CompressedSRGB8Alpha8Astc8x5 = 0x93d5

    CompressedSRGB8Alpha8Astc8x6 = 0x93d6

    CompressedSRGB8Alpha8Astc8x8 = 0x93d7

    CompressedSRGB8Alpha8Astc10x5 = 0x93d8

    CompressedSRGB8Alpha8Astc10x6 = 0x93d9

    CompressedSRGB8Alpha8Astc10x8 = 0x93da

    CompressedSRGB8Alpha8Astc10x10 = 0x93db

    CompressedSRGB8Alpha8Astc12x10 = 0x93dc

    CompressedSRGB8Alpha8Astc12x12 = 0x93dd
  end
end
