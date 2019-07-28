{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureEnvTarget : ::UInt32
    TextureEnv = 0x2300
  end
end
