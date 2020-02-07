{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum SamplerParameterF : ::UInt32
    TextureBorderColor = 0x1004

    TextureMinLod = 0x813a

    TextureMaxLod = 0x813b

    TextureMaxAnisotropy = 0x84fe
  end
end
