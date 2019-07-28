{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum HintMode : ::UInt32
    DontCare = 0x1100

    Fastest = 0x1101

    Nicest = 0x1102
  end
end
