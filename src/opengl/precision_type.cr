{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PrecisionType : ::UInt32
    LowFloat = 0x8df0

    MediumFloat = 0x8df1

    HighFloat = 0x8df2

    LowInt = 0x8df3

    MediumInt = 0x8df4

    HighInt = 0x8df5
  end
end
