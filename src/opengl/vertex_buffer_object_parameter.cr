{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum VertexBufferObjectParameter : ::Int32
    BufferSize = 0x8764

    BufferUsage = 0x8765

    BufferAccess = 0x88bb

    BufferMapped = 0x88bc

    BufferAccessFlags = 0x911f

    BufferMapLength = 0x9120

    BufferMapOffset = 0x9121

    BufferImmutableStorage = 0x821f

    BufferStorageFlags = 0x8220
  end
end
