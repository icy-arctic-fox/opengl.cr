{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TextureCompareMode : ::Int32
    None = 0x0

    CompareRToTexture = 0x884e

    CompareRefToTexture = 0x884e
  end
end
