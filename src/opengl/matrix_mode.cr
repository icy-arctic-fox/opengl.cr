{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum MatrixMode : ::UInt32
    Texture = 0x1702

    Modelview = 0x1700

    Projection = 0x1701
  end
end
