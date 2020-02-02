{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum GetMultisamplePNameNV : ::UInt32
    SamplePosition = 0x8e50
  end
end
