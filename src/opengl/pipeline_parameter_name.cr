{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PipelineParameterName : ::UInt32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    InfoLogLength = 0x8b84

    GeometryShader = 0x8dd9

    TessEvaluationShader = 0x8e87

    TessControlShader = 0x8e88

    ActiveProgram = 0x8259
  end
end
