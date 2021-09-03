{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelFormat : ::UInt32
    UnsignedShort = 0x1403

    UnsignedInt = 0x1405

    Red = 0x1903

    RG = 0x8227

    RGB = 0x1907

    RGBA = 0x1908
  end
end
