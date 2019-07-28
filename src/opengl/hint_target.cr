{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum HintTarget : ::UInt32
    LineSmoothHint = 0xc52

    PolygonSmoothHint = 0xc53

    PerspectiveCorrectionHint = 0xc50

    PointSmoothHint = 0xc51

    FogHint = 0xc54

    TextureCompressionHint = 0x84ef
  end
end
