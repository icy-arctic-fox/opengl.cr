{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PatchParameterName : ::UInt32
    PatchVertices = 0x8e72
  end
end
