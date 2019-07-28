{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum UseProgramStageMask : ::UInt32
    ComputeShader = 0x20

    VertexShader = 0x1

    FragmentShader = 0x2

    AllShaderBits = 0xffffffff
  end
end
