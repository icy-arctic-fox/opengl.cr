{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum BlendEquationModeEXT : ::UInt32
    FuncAdd = 0x8006

    FuncReverseSubtract = 0x800b

    FuncSubtract = 0x800a

    Min = 0x8007

    Max = 0x8008
  end
end
