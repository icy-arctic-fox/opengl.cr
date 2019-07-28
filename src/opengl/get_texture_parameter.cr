{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GetTextureParameter : ::UInt32
    TextureMagFilter = 0x2800

    TextureMinFilter = 0x2801

    TextureWrapS = 0x2802

    TextureWrapT = 0x2803
  end
end
