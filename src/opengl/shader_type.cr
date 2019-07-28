{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ShaderType : ::UInt32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    GeometryShader = 0x8dd9
  end
end
