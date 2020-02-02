{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum SyncStatus : ::Int32
    AlreadySignaled = 0x911a

    TimeoutExpired = 0x911b

    ConditionSatisfied = 0x911c

    WaitFailed = 0x911d
  end
end
