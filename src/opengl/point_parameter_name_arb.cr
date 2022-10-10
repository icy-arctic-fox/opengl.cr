{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PointParameterNameARB : ::UInt32
    PointSizeMin = 0x8126

    PointSizeMax = 0x8127

    PointFadeThresholdSize = 0x8128

    PointDistanceAttenuation = 0x8129
  end
end
