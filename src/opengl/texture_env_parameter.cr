{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TextureEnvParameter : ::UInt32
    TextureEnvMode = 0x2200

    TextureEnvColor = 0x2201
  end
end
