{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum QueryTarget : ::UInt32
    TransformFeedbackPrimitivesWritten = 0x8c88

    AnySamplesPassed = 0x8c2f

    AnySamplesPassedConservative = 0x8d6a
  end
end
