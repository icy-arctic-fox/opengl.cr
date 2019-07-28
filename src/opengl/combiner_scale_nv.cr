{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CombinerScaleNV : ::Int32
    None = 0x0
  end
end
