{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # OpenGL 4.6 Table 7.3: OpenGL Shading Language type tokens

  enum SLTypeToken : ::Int32
    Float = 0x1406
  end
end
