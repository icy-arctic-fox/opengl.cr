{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum AtomicCounterBufferPName : ::Int32
    AtomicCounterBufferBinding = 0x92c1
  end
end
