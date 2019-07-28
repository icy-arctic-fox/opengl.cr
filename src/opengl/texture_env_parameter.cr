{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureEnvParameter : ::UInt32
    TextureEnvMode = 0x2200

    TextureEnvColor = 0x2201
  end
end
