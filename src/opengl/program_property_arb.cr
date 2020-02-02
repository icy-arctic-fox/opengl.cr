{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ProgramPropertyARB : ::UInt32
    LinkStatus = 0x8b82
  end
end
