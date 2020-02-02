{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum DrawBufferMode : ::UInt32
    None = 0x0

    FrontLeft = 0x400

    FrontRight = 0x401

    BackLeft = 0x402

    BackRight = 0x403

    Front = 0x404

    Back = 0x405

    Left = 0x406

    Right = 0x407

    FrontAndBack = 0x408

    Aux0 = 0x409

    Aux1 = 0x40a

    Aux2 = 0x40b

    Aux3 = 0x40c
  end
end
