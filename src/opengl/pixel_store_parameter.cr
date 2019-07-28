{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PixelStoreParameter : ::UInt32
    UnpackAlignment = 0xcf5

    PackAlignment = 0xd05
  end
end
