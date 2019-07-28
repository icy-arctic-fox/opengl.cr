{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum BlendEquationModeEXT : ::UInt32
    FuncAdd = 0x8006

    FuncSubtract = 0x800a

    FuncReverseSubtract = 0x800b
  end
end
