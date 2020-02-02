{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ShaderType : ::UInt32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31

    ComputeShader = 0x91b9
  end
end
