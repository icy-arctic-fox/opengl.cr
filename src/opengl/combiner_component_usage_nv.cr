{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CombinerComponentUsageNV : ::Int32
    Blue = 0x1905

    Alpha = 0x1906

    RGB = 0x1907
  end
end
