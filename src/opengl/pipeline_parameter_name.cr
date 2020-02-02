{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum PipelineParameterName : ::UInt32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    InfoLogLength = 0x8b84

    ActiveProgram = 0x8259
  end
end
