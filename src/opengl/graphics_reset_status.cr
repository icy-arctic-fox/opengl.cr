{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GraphicsResetStatus : ::Int32
    NoError = 0x0
  end
end
