{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum LightModelColorControl : ::Int32
    SingleColor = 0x81f9

    SeparateSpecularColor = 0x81fa
  end
end
