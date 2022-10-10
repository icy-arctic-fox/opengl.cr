{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum FragmentShaderValueRepATI : ::Int32
    Alpha = 0x1906

    None = 0x0

    Red = 0x1903

    Green = 0x1904

    Blue = 0x1905
  end
end
