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

    TransformFeedbackVarying = 0x92f4
  end
end
