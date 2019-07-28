{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FogPointerTypeEXT : ::UInt32
    Float = 0x1406

    Double = 0x140a
  end
end
