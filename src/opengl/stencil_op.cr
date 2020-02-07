{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum StencilOp : ::UInt32
    Zero = 0x0

    Keep = 0x1e00

    Replace = 0x1e01

    Incr = 0x1e02

    Decr = 0x1e03

    Invert = 0x150a

    IncrWrap = 0x8507

    DecrWrap = 0x8508
  end
end
