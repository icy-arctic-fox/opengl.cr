{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FogPointerTypeIBM : ::Int32
    Float = 0x1406
  end
end
