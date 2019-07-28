{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum AccumOp : ::UInt32
    Accum = 0x100

    Load = 0x101

    Return = 0x102

    Mult = 0x103

    Add = 0x104
  end
end
