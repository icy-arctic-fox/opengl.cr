{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FogMode : ::Int32
    Linear = 0x2601

    Exp = 0x800

    Exp2 = 0x801
  end
end
