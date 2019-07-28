{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum QueryCounterTarget : ::UInt32
    Timestamp = 0x8e28
  end
end
