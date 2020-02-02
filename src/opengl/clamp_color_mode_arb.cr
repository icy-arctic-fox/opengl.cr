{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ClampColorModeARB : ::UInt32
    False = 0x0

    True = 0x1

    FixedOnly = 0x891d
  end
end
