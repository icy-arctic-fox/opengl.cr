{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum ContextProfileMask : ::Int32
    ContextCoreProfile = 0x1

    ContextCompatibilityProfile = 0x2
  end
end
