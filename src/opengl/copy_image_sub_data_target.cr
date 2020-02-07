{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum CopyImageSubDataTarget : ::Int32
    Texture1D = 0xde0

    Texture2D = 0xde1
  end
end
