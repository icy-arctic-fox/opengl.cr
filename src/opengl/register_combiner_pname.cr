{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum RegisterCombinerPName : ::Int32
    Src1Alpha = 0x8589

    Source1Alpha = 0x8589
  end
end
