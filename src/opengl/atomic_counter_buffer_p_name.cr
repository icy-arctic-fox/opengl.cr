{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum AtomicCounterBufferPName : ::UInt32
    AtomicCounterBufferBinding = 0x92c1

    AtomicCounterBufferDataSize = 0x92c4

    AtomicCounterBufferActiveAtomicCounters = 0x92c5

    AtomicCounterBufferActiveAtomicCounterIndices = 0x92c6

    AtomicCounterBufferReferencedByVertexShader = 0x92c7

    AtomicCounterBufferReferencedByTessControlShader = 0x92c8

    AtomicCounterBufferReferencedByTessEvaluationShader = 0x92c9

    AtomicCounterBufferReferencedByGeometryShader = 0x92ca

    AtomicCounterBufferReferencedByFragmentShader = 0x92cb
  end
end
