{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FogCoordSrc : ::Int32
    FogCoordinate = 0x8451

    FragmentDepth = 0x8452

    FogCoord = 0x8451
  end
end
