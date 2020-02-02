{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TextureEnvMode : ::Int32
    Blend = 0xbe2

    Add = 0x104

    Modulate = 0x2100

    Decal = 0x2101
  end
end
