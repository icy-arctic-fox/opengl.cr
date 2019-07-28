{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum LightModelParameter : ::UInt32
    LightModelLocalViewer = 0xb51

    LightModelTwoSide = 0xb52

    LightModelAmbient = 0xb53
  end
end
