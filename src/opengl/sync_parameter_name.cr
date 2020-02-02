{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum SyncParameterName : ::UInt32
    ObjectType = 0x9112

    SyncCondition = 0x9113

    SyncStatus = 0x9114

    SyncFlags = 0x9115
  end
end
