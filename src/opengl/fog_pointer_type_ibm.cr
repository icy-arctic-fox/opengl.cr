{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FogPointerTypeIBM : ::Int32
    Float = 0x1406

    Double = 0x140a
  end
end
