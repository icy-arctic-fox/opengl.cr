{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum UniformPName : ::UInt32
    UniformType = 0x8a37

    UniformSize = 0x8a38

    UniformNameLength = 0x8a39

    UniformBlockIndex = 0x8a3a

    UniformOffset = 0x8a3b

    UniformArrayStride = 0x8a3c

    UniformMatrixStride = 0x8a3d

    UniformIsRowMajor = 0x8a3e

    UniformAtomicCounterBufferIndex = 0x92da
  end
end
