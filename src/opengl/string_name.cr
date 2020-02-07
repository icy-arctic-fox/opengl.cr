{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum StringName : ::UInt32
    Vendor = 0x1f00

    Renderer = 0x1f01

    Version = 0x1f02

    Extensions = 0x1f03

    ShadingLanguageVersion = 0x8b8c
  end
end
