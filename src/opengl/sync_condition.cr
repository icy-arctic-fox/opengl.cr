{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum SyncCondition : ::UInt32
    SyncGpuCommandsComplete = 0x9117
  end
end
