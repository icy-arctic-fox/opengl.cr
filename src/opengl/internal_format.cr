{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Was PixelInternalFormat

  enum InternalFormat : ::UInt32
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
  end
end
