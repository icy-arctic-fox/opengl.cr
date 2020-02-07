{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum QueryTarget : ::UInt32
    SamplesPassed = 0x8914

    PrimitivesGenerated = 0x8c87

    TransformFeedbackPrimitivesWritten = 0x8c88

    AnySamplesPassed = 0x8c2f

    TimeElapsed = 0x88bf

    AnySamplesPassedConservative = 0x8d6a
  end
end
