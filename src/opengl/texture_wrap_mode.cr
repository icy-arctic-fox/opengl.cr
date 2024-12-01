{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureWrapMode : ::Int32
    Repeat = 0x2901

    Clamp = 0x2900

    ClampToEdge = 0x812f
  end
end
