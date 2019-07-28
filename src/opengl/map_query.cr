{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum MapQuery : ::UInt32
    Coeff = 0xa00

    Order = 0xa01

    Domain = 0xa02
  end
end
