{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum GetFramebufferParameter : ::Int32
    DoubleBuffer = 0xc32

    Stereo = 0xc33

    SampleBuffers = 0x80a8

    Samples = 0x80a9
  end
end
