{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Michael Gold 2006/08/07

  enum GetMultisamplePNameNV : ::Int32
    SamplePosition = 0x8e50
  end
end
