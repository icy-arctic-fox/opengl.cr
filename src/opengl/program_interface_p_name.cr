{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ProgramInterfacePName : ::Int32
    ActiveResources = 0x92f5

    MaxNameLength = 0x92f6

    MaxNumActiveVariables = 0x92f7
  end
end
