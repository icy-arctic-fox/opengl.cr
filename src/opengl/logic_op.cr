{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum LogicOp : ::UInt32
    Clear = 0x1500

    And = 0x1501

    AndReverse = 0x1502

    Copy = 0x1503

    AndInverted = 0x1504

    Noop = 0x1505

    Xor = 0x1506

    Or = 0x1507

    Nor = 0x1508

    Equiv = 0x1509

    Invert = 0x150a

    OrReverse = 0x150b

    CopyInverted = 0x150c

    OrInverted = 0x150d

    Nand = 0x150e

    Set = 0x150f
  end
end
