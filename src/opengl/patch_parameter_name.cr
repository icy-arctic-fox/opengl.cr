{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PatchParameterName : ::UInt32
    PatchVertices = 0x8e72

    PatchDefaultInnerLevel = 0x8e73

    PatchDefaultOuterLevel = 0x8e74
  end
end
