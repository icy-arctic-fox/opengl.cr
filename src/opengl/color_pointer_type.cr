{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ColorPointerType : ::UInt32
    Byte = 0x1400

    UnsignedByte = 0x1401

    UnsignedShort = 0x1403
  end
end
