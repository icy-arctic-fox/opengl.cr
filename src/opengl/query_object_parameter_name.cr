{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum QueryObjectParameterName : ::UInt32
    QueryResult = 0x8866

    QueryResultAvailable = 0x8867

    QueryResultNoWait = 0x9194

    QueryTarget = 0x82ea
  end
end
