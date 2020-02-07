{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Michael Gold 2006/08/07

  enum PatchParameterName : ::UInt32
    PatchVertices = 0x8e72

    PatchDefaultInnerLevel = 0x8e73

    PatchDefaultOuterLevel = 0x8e74
  end
end
