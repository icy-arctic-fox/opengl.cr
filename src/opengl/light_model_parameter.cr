{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum LightModelParameter : ::UInt32
    LightModelAmbient = 0xb53

    LightModelTwoSide = 0xb52
  end
end
