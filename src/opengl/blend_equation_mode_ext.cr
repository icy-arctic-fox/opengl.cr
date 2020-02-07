{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # The primary GL enumerant space begins here. All modern enum allocations are in this range. These enums are mostly assigned the default class since it's a great deal of not very useful work to be more specific

  enum BlendEquationModeEXT : ::UInt32
    FuncAdd = 0x8006

    FuncSubtract = 0x800a

    FuncReverseSubtract = 0x800b
  end
end
