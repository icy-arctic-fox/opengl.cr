{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum ContextFlagMask : ::Int32
    ContextFlagForwardCompatible = 0x1

    ContextFlagDebug = 0x2
  end
end
