{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureEnvMode : ::Int32
    Blend = 0xbe2

    Replace = 0x1e01

    Modulate = 0x2100

    Decal = 0x2101

    Add = 0x104

    Combine = 0x8570
  end
end
