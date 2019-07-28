{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ProgramInterfacePName : ::UInt32
    ActiveResources = 0x92f5

    MaxNameLength = 0x92f6

    MaxNumActiveVariables = 0x92f7

    MaxNumCompatibleSubroutines = 0x92f8
  end
end
