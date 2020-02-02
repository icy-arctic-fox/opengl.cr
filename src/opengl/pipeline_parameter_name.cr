{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PipelineParameterName : ::Int32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    InfoLogLength = 0x8b84

    GeometryShader = 0x8dd9

    TessEvaluationShader = 0x8e87

    TessControlShader = 0x8e88
  end
end
