{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum VertexShaderTextureUnitParameter : ::Int32
    CurrentTextureCoords = 0xb03

    TextureMatrix = 0xba8
  end
end
