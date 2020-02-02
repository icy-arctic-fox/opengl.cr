{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ClipControlDepth : ::Int32
    NegativeOneToOne = 0x935e

    ZeroToOne = 0x935f
  end
end
