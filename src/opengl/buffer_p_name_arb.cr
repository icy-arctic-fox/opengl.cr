{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum BufferPNameARB : ::UInt32
    BufferSize = 0x8764

    BufferUsage = 0x8765

    BufferAccess = 0x88bb

    BufferMapped = 0x88bc
  end
end
