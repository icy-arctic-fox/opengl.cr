{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum UniformBlockPName : ::UInt32
    UniformBlockBinding = 0x8a3f

    UniformBlockDataSize = 0x8a40

    UniformBlockNameLength = 0x8a41

    UniformBlockActiveUniforms = 0x8a42

    UniformBlockActiveUniformIndices = 0x8a43

    UniformBlockReferencedByVertexShader = 0x8a44

    UniformBlockReferencedByGeometryShader = 0x8a45

    UniformBlockReferencedByFragmentShader = 0x8a46
  end
end
