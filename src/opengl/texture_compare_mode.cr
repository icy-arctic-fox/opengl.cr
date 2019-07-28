{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureCompareMode : ::Int32
    None = 0x0

    CompareRefToTexture = 0x884e

    CompareRToTexture = 0x884e
  end
end
