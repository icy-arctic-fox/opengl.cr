{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum DrawElementsType : ::Int32
    UnsignedByte = 0x1401

    UnsignedShort = 0x1403

    UnsignedInt = 0x1405
  end
end
