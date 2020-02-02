{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ClampColorTargetARB : ::UInt32
    ClampReadColor = 0x891c
  end
end
