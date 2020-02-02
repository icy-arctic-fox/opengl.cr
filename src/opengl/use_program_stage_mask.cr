{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.
  @[Flags]
  enum UseProgramStageMask : ::UInt32
    VertexShader = 0x1

    FragmentShader = 0x2

    GeometryShader = 0x4

    TessControlShader = 0x8

    TessEvaluationShader = 0x10

    AllShaderBits = 0xffffffff

    ComputeShader = 0x20
  end
end
