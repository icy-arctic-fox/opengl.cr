{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ColorPointerType : ::Int32
    Byte = 0x1400

    UnsignedByte = 0x1401

    Short = 0x1402

    UnsignedShort = 0x1403

    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406

    Double = 0x140a
  end
end
