{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum GetPointervPName : ::UInt32
    DebugCallbackFunction = 0x8244

    DebugCallbackUserParam = 0x8245
  end
end
