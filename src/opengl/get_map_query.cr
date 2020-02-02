{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum GetMapQuery : ::UInt32
    Coeff = 0xa00

    Order = 0xa01

    Domain = 0xa02
  end
end
