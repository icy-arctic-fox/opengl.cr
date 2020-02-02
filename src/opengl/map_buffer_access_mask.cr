{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.
  @[Flags]
  enum MapBufferAccessMask : ::UInt32
    MapRead = 0x1

    MapWrite = 0x2

    MapInvalidateRange = 0x4

    MapInvalidateBuffer = 0x8

    MapFlushExplicit = 0x10

    MapUnsynchronized = 0x20

    MapPersistent = 0x40

    MapCoherent = 0x80
  end
end
