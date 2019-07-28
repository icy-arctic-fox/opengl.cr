{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ListMode : ::UInt32
    Compile = 0x1300

    CompileAndExecute = 0x1301
  end
end
