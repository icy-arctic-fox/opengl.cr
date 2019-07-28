{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum LightEnvModeSGIX : ::Int32
    Replace = 0x1e01

    Add = 0x104

    Modulate = 0x2100
  end
end
