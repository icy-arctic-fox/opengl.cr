{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum SamplerParameterF : ::UInt32
    TextureBorderColor = 0x1004

    TextureMinLod = 0x813a

    TextureMaxLod = 0x813b

    TextureMaxAnisotropy = 0x84fe
  end
end
