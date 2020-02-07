{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum DebugSeverity : ::UInt32
    DontCare = 0x1100

    DebugSeverityHigh = 0x9146

    DebugSeverityMedium = 0x9147

    DebugSeverityLow = 0x9148

    DebugSeverityNotification = 0x826b
  end
end
