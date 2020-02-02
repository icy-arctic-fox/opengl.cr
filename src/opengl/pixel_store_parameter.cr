{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PixelStoreParameter : ::UInt32
    UnpackAlignment = 0xcf5

    PackAlignment = 0xd05
  end
end
