{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum CombinerComponentUsageNV : ::Int32
    Blue = 0x1905

    Alpha = 0x1906

    RGB = 0x1907
  end
end
