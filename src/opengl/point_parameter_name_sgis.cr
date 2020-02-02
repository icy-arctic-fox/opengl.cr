{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PointParameterNameSGIS : ::Int32
    PointFadeThresholdSize = 0x8128

    PointSizeMin = 0x8126

    PointSizeMax = 0x8127

    PointDistanceAttenuation = 0x8129
  end
end
