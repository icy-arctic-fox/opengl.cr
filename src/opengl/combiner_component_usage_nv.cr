{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CombinerComponentUsageNV : ::Int32
    Alpha = 0x1906

    RGB = 0x1907

    Blue = 0x1905
  end
end