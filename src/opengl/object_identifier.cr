{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ObjectIdentifier : ::Int32
    VertexArray = 0x8074

    Texture = 0x1702
  end
end
