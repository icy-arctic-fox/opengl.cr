{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum QueryObjectParameterName : ::UInt32
    QueryResult = 0x8866

    QueryResultAvailable = 0x8867
  end
end
