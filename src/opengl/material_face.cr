{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum MaterialFace : ::Int32
    Front = 0x404

    Back = 0x405

    FrontAndBack = 0x408
  end
end
