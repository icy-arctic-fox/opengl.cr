{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  UNSIGNED_SHORT_5_6_5 = 33635

  DEPTH_COMPONENT24 = 33190
end
