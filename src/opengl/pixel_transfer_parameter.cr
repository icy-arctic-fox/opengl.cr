{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PixelTransferParameter : ::Int32
    AlphaScale = 0xd1c
  end
end
