{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ClipControlOrigin : ::UInt32
    LowerLeft = 0x8ca1

    UpperLeft = 0x8ca2
  end
end
