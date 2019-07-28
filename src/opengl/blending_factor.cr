{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
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
  end
end
