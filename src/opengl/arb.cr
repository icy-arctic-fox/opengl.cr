{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  RGBA2 = 32853

  TEXTURE_DEPTH = 32881

  RESCALE_NORMAL = 32826
end
