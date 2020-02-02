{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum VertexShaderTextureUnitParameter : ::Int32
    CurrentTextureCoords = 0xb03

    TextureMatrix = 0xba8
  end
end
