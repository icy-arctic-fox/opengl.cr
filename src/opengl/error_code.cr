{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum ErrorCode : ::Int32
    NoError = 0x0

    InvalidEnum = 0x500

    InvalidValue = 0x501

    InvalidOperation = 0x502

    OutOfMemory = 0x505

    InvalidFramebufferOperation = 0x506

    StackOverflow = 0x503

    StackUnderflow = 0x504
  end
end
