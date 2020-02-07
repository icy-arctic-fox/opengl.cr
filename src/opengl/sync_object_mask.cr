{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum SyncObjectMask : ::UInt32
    SyncFlushCommands = 0x1
  end
end
