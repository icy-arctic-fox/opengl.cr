{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  NORMAL_MAP = 34065

  REFLECTION_MAP = 34066
end
