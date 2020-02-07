{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum AccumOp : ::UInt32
    Accum = 0x100

    Load = 0x101

    Return = 0x102

    Mult = 0x103

    Add = 0x104
  end
end
