{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum LightModelParameter : ::UInt32
    LightModelLocalViewer = 0xb51

    LightModelTwoSide = 0xb52

    LightModelAmbient = 0xb53
  end
end
