{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Range released by MS on 2002/9/16

  enum GetPointervPName : ::UInt32
    DebugCallbackFunction = 0x8244

    DebugCallbackUserParam = 0x8245
  end
end
