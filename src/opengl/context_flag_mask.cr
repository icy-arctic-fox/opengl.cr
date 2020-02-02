{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.
  @[Flags]
  enum ContextFlagMask : ::Int32
    ContextFlagDebug = 0x2

    ContextFlagRobustAccess = 0x4
  end
end
