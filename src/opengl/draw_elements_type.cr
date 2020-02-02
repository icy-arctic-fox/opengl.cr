{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum DrawElementsType : ::Int32
    UnsignedByte = 0x1401

    UnsignedShort = 0x1403

    UnsignedInt = 0x1405
  end
end
