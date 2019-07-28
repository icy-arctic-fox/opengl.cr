{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PathColor : ::Int32
    PrimaryColor = 0x8577
  end
end
