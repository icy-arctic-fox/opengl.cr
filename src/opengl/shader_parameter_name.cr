{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ShaderParameterName : ::UInt32
    ShaderType = 0x8b4f

    DeleteStatus = 0x8b80

    CompileStatus = 0x8b81

    InfoLogLength = 0x8b84

    ShaderSourceLength = 0x8b88
  end
end
