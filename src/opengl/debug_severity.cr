{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum DebugSeverity : ::UInt32
    DontCare = 0x1100

    DebugSeverityNotification = 0x826b

    DebugSeverityHigh = 0x9146

    DebugSeverityMedium = 0x9147

    DebugSeverityLow = 0x9148
  end
end
