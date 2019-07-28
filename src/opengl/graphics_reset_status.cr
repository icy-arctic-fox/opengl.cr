{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GraphicsResetStatus : ::Int32
    NoError = 0x0

    GuiltyContextReset = 0x8253

    InnocentContextReset = 0x8254

    UnknownContextReset = 0x8255
  end
end
