{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum QueryParameterName : ::UInt32
    QueryCounterBits = 0x8864

    CurrentQuery = 0x8865
  end
end
