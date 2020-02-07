{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Michael Gold 2006/08/07

  enum QueryCounterTarget : ::UInt32
    Timestamp = 0x8e28
  end
end
