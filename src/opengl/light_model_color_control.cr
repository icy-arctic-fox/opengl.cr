{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum LightModelColorControl : ::Int32
    SingleColor = 0x81f9

    SeparateSpecularColor = 0x81fa
  end
end
