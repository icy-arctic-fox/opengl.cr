{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ReadBufferMode : ::Int32
    Front = 0x404

    Back = 0x405
  end
end
