{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FogPName : ::UInt32
    FogDensity = 0xb62

    FogStart = 0xb63

    FogEnd = 0xb64

    FogMode = 0xb65
  end
end
