{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum QueryTarget : ::UInt32
    SamplesPassed = 0x8914
  end
end
