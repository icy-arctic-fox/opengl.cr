{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexProvokingMode : ::UInt32
    FirstVertexConvention = 0x8e4d

    LastVertexConvention = 0x8e4e
  end
end
