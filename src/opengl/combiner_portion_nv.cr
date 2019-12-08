{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CombinerPortionNV : ::Int32
    Alpha = 0x1906

    RGB = 0x1907
  end
end
