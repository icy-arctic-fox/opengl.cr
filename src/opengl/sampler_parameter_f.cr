{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum SamplerParameterF : ::UInt32
    TextureMinLod = 0x813a

    TextureMaxLod = 0x813b
  end
end
