{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum AttributeType : ::Int32
    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406
  end
end
