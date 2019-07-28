{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ShadingModel : ::UInt32
    Flat = 0x1d00

    Smooth = 0x1d01
  end
end
