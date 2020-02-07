{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Pat Brown 2005/10/13

  enum ProgramStagePName : ::UInt32
    ActiveSubroutines = 0x8de5

    ActiveSubroutineUniforms = 0x8de6

    ActiveSubroutineUniformLocations = 0x8e47

    ActiveSubroutineMaxLength = 0x8e48

    ActiveSubroutineUniformMaxLength = 0x8e49
  end
end
