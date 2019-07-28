{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ShaderType : ::UInt32
    FragmentShader = 0x8b30

    VertexShader = 0x8b31
  end
end
