{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelCopyType : ::UInt32
    Color = 0x1800

    Depth = 0x1801

    Stencil = 0x1802
  end
end
