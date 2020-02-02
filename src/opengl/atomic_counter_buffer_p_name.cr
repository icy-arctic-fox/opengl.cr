{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum AtomicCounterBufferPName : ::Int32
    AtomicCounterBufferBinding = 0x92c1
  end
end
