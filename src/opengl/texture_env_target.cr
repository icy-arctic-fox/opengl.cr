{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureEnvTarget : ::UInt32
    TextureEnv = 0x2300

    TextureFilterControl = 0x8500
  end
end
