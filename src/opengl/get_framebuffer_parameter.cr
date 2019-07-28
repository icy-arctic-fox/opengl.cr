{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GetFramebufferParameter : ::Int32
    SampleBuffers = 0x80a8

    Samples = 0x80a9
  end
end
