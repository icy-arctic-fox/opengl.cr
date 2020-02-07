{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum ReadBufferMode : ::UInt32
    None = 0x0

    FrontLeft = 0x400

    FrontRight = 0x401

    BackLeft = 0x402

    BackRight = 0x403

    Front = 0x404

    Back = 0x405

    Left = 0x406

    Right = 0x407

    Aux0 = 0x409

    Aux1 = 0x40a

    Aux2 = 0x40b

    Aux3 = 0x40c

    ColorAttachment0 = 0x8ce0

    ColorAttachment1 = 0x8ce1

    ColorAttachment2 = 0x8ce2

    ColorAttachment3 = 0x8ce3

    ColorAttachment4 = 0x8ce4

    ColorAttachment5 = 0x8ce5

    ColorAttachment6 = 0x8ce6

    ColorAttachment7 = 0x8ce7

    ColorAttachment8 = 0x8ce8

    ColorAttachment9 = 0x8ce9

    ColorAttachment10 = 0x8cea

    ColorAttachment11 = 0x8ceb

    ColorAttachment12 = 0x8cec

    ColorAttachment13 = 0x8ced

    ColorAttachment14 = 0x8cee

    ColorAttachment15 = 0x8cef
  end
end
