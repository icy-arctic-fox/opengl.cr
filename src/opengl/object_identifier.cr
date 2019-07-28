{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ObjectIdentifier : ::Int32
    Texture = 0x1702
  end
end
