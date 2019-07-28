{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureCoordName : ::UInt32
    S = 0x2000

    T = 0x2001

    R = 0x2002

    Q = 0x2003
  end
end
