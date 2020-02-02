{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ProgramResourceProperty : ::Int32
    NumCompatibleSubroutines = 0x8e4a

    CompatibleSubroutines = 0x8e4b
  end
end
