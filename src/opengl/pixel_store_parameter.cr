{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelStoreParameter : ::UInt32
    UnpackAlignment = 0xcf5

    PackAlignment = 0xd05
  end
end
