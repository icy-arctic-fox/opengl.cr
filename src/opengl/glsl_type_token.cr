{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # OpenGL 4.6 Table 7.3: OpenGL Shading Language type tokens

  enum SLTypeToken : ::Int32
    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406

    Double = 0x140a
  end
end
