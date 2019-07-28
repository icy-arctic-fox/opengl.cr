{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ColorBuffer : ::Int32
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
  end
end
