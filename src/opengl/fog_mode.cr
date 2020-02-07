{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum FogMode : ::Int32
    Linear = 0x2601

    Exp = 0x800

    Exp2 = 0x801
  end
end
