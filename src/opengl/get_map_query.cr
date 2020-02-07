{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum GetMapQuery : ::UInt32
    Coeff = 0xa00

    Order = 0xa01

    Domain = 0xa02
  end
end
