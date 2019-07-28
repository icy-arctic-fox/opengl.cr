{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PointParameterNameSGIS : ::Int32
    PointFadeThresholdSize = 0x8128
  end
end
