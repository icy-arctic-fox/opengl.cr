{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GetMultisamplePNameNV : ::Int32
    SamplePosition = 0x8e50
  end
end
