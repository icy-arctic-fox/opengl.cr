{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ShaderType : ::UInt32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    ComputeShader = 0x91b9

    GeometryShader = 0x8dd9

    TessControlShader = 0x8e88

    TessEvaluationShader = 0x8e87
  end
end
