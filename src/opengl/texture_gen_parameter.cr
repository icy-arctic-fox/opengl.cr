{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureGenParameter : ::UInt32
    TextureGenMode = 0x2500

    ObjectPlane = 0x2501

    EyePlane = 0x2502
  end
end
