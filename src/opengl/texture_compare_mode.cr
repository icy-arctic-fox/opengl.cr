{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureCompareMode : ::Int32
    None = 0x0

    CompareRToTexture = 0x884e

    CompareRefToTexture = 0x884e
  end
end
