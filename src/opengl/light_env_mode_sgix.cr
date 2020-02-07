{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum LightEnvModeSGIX : ::Int32
    Replace = 0x1e01

    Add = 0x104

    Modulate = 0x2100
  end
end
