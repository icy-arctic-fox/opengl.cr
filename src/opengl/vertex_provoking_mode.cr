{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Michael Gold 2006/08/07

  enum VertexProvokingMode : ::UInt32
    FirstVertexConvention = 0x8e4d

    LastVertexConvention = 0x8e4e
  end
end
