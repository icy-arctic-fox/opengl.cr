{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum BlendingFactor : ::UInt32
    Zero = 0x0

    One = 0x1

    SrcColor = 0x300

    OneMinusSrcColor = 0x301

    SrcAlpha = 0x302

    OneMinusSrcAlpha = 0x303

    DstAlpha = 0x304

    OneMinusDstAlpha = 0x305

    DstColor = 0x306

    OneMinusDstColor = 0x307

    SrcAlphaSaturate = 0x308

    ConstantColor = 0x8001

    OneMinusConstantColor = 0x8002

    ConstantAlpha = 0x8003

    OneMinusConstantAlpha = 0x8004

    Src1Alpha = 0x8589

    Source1Alpha = 0x8589

    Src1Color = 0x88f9

    OneMinusSrc1Color = 0x88fa

    OneMinusSrc1Alpha = 0x88fb
  end
end
