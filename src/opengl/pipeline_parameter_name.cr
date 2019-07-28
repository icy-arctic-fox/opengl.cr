{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PipelineParameterName : ::Int32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    InfoLogLength = 0x8b84
  end
end
