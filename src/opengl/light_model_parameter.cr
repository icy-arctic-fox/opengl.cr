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

    LightModelColorControl = 0x81f8
  end
end
