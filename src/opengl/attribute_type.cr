{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum AttributeType : ::Int32
    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406

    Double = 0x140a
  end
end
