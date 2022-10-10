{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum LightTextureModeEXT : ::Int32
    FragmentDepth = 0x8452
  end
end
