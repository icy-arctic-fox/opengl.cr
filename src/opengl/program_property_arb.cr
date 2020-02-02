{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ProgramPropertyARB : ::UInt32
    DeleteStatus = 0x8b80

    LinkStatus = 0x8b82

    ValidateStatus = 0x8b83

    AttachedShaders = 0x8b85

    ActiveUniforms = 0x8b86

    ActiveUniformMaxLength = 0x8b87

    ActiveAttributes = 0x8b89

    ActiveAttributeMaxLength = 0x8b8a

    InfoLogLength = 0x8b84

    TransformFeedbackVaryingMaxLength = 0x8c76

    TransformFeedbackBufferMode = 0x8c7f

    TransformFeedbackVaryings = 0x8c83

    ActiveUniformBlockMaxNameLength = 0x8a35

    ActiveUniformBlocks = 0x8a36

    ProgramBinaryLength = 0x8741
  end
end
