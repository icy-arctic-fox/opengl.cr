{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureEnvParameter : ::UInt32
    TextureEnvMode = 0x2200

    TextureEnvColor = 0x2201
  end
end
