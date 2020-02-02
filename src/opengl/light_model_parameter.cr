{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum LightModelParameter : ::UInt32
    LightModelAmbient = 0xb53

    LightModelTwoSide = 0xb52
  end
end
