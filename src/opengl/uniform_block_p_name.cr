{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum UniformBlockPName : ::UInt32
    UniformBlockBinding = 0x8a3f

    UniformBlockDataSize = 0x8a40

    UniformBlockNameLength = 0x8a41

    UniformBlockActiveUniforms = 0x8a42

    UniformBlockActiveUniformIndices = 0x8a43

    UniformBlockReferencedByVertexShader = 0x8a44

    UniformBlockReferencedByFragmentShader = 0x8a46
  end
end
