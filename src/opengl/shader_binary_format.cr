{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Khronos bug 12977

  enum ShaderBinaryFormat : ::Int32
    ShaderBinaryFormatSpirV = 0x9551
  end
end
