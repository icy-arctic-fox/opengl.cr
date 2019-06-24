@[Link("gl")]
lib LibGL
  enum QueryTarget : ::UInt32
    SamplesPassed = 0x8914

    PrimitivesGenerated = 0x8c87

    TransformFeedbackPrimitivesWritten = 0x8c88

    AnySamplesPassed = 0x8c2f

    TimeElapsed = 0x88bf

    AnySamplesPassedConservative = 0x8d6a

    VerticesSubmitted = 0x82ee

    PrimitivesSubmitted = 0x82ef

    VertexShaderInvocations = 0x82f0

    TransformFeedbackOverflow = 0x82ec
  end
end
