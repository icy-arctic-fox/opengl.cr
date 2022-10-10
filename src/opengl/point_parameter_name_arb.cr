{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PointParameterNameARB : ::UInt32
    PointFadeThresholdSize = 0x8128

    PointSizeMin = 0x8126

    PointSizeMax = 0x8127

    PointDistanceAttenuation = 0x8129
  end
end
