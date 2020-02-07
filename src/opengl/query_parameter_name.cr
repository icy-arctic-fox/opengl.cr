{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum QueryParameterName : ::UInt32
    CurrentQuery = 0x8865
  end
end
