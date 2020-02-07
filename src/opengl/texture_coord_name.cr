{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureCoordName : ::UInt32
    S = 0x2000

    T = 0x2001

    R = 0x2002

    Q = 0x2003
  end
end
