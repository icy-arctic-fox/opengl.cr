@[Link("gl")]
lib LibGL
  # See glTransformFeedbackVaryings()

  enum TransformFeedbackBufferMode : ::UInt32
    InterleavedAttribs = 0x8c8c

    SeparateAttribs = 0x8c8d
  end
end
