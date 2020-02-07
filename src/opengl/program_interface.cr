{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Pat Brown

  enum ProgramInterface : ::UInt32
    TransformFeedbackBuffer = 0x8c8e

    Uniform = 0x92e1

    UniformBlock = 0x92e2

    ProgramInput = 0x92e3

    ProgramOutput = 0x92e4

    BufferVariable = 0x92e5

    ShaderStorageBlock = 0x92e6

    VertexSubroutine = 0x92e8

    TessControlSubroutine = 0x92e9

    TessEvaluationSubroutine = 0x92ea

    GeometrySubroutine = 0x92eb

    FragmentSubroutine = 0x92ec

    ComputeSubroutine = 0x92ed

    VertexSubroutineUniform = 0x92ee

    TessControlSubroutineUniform = 0x92ef

    TessEvaluationSubroutineUniform = 0x92f0

    GeometrySubroutineUniform = 0x92f1

    FragmentSubroutineUniform = 0x92f2

    ComputeSubroutineUniform = 0x92f3

    TransformFeedbackVarying = 0x92f4
  end
end
