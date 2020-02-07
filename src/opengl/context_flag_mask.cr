{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Should be shared with WGL/GLX, but aren't since the FORWARD_COMPATIBLE and DEBUG values are swapped vs. WGL/GLX.
  @[Flags]
  enum ContextFlagMask : ::Int32
    ContextFlagDebug = 0x2

    ContextFlagRobustAccess = 0x4
  end
end
