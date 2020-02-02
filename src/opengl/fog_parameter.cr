{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FogParameter : ::Int32
    FogDensity = 0xb62

    FogStart = 0xb63

    FogEnd = 0xb64

    FogMode = 0xb65

    FogColor = 0xb66
  end
end
