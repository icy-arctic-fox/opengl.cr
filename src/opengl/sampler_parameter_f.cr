{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum SamplerParameterF : ::UInt32
    TextureMinLOD = 0x813a

    TextureMaxLOD = 0x813b
  end
end
