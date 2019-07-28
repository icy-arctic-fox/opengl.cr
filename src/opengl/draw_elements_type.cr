{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum DrawElementsType : ::UInt32
    UnsignedByte = 0x1401

    UnsignedShort = 0x1403
  end
end
