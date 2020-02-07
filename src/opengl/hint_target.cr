{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum HintTarget : ::UInt32
    LineSmoothHint = 0xc52

    PolygonSmoothHint = 0xc53

    PerspectiveCorrectionHint = 0xc50

    PointSmoothHint = 0xc51

    FogHint = 0xc54
  end
end
