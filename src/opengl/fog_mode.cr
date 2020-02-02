{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FogMode : ::Int32
    Exp = 0x800

    Exp2 = 0x801

    Linear = 0x2601
  end
end
