{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum MemoryBarrierMask : ::UInt32
    VertexAttribArrayBarrier = 0x1

    ElementArrayBarrier = 0x2

    UniformBarrier = 0x4

    TextureFetchBarrier = 0x8

    ShaderImageAccessBarrier = 0x20

    CommandBarrier = 0x40

    PixelBufferBarrier = 0x80

    TextureUpdateBarrier = 0x100

    BufferUpdateBarrier = 0x200

    FramebufferBarrier = 0x400

    TransformFeedbackBarrier = 0x800

    AtomicCounterBarrier = 0x1000

    AllBarrierBits = 0xffffffff

    ShaderStorageBarrier = 0x2000

    ClientMappedBufferBarrier = 0x4000

    QueryBufferBarrier = 0x8000
  end
end
