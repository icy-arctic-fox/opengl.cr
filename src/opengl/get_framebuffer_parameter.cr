{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum GetFramebufferParameter : ::UInt32
    DoubleBuffer = 0xc32

    Stereo = 0xc33

    SampleBuffers = 0x80a8

    Samples = 0x80a9

    ImplementationColorReadType = 0x8b9a

    ImplementationColorReadFormat = 0x8b9b

    FramebufferDefaultWidth = 0x9310

    FramebufferDefaultHeight = 0x9311

    FramebufferDefaultLayers = 0x9312

    FramebufferDefaultSamples = 0x9313

    FramebufferDefaultFixedSampleLocations = 0x9314
  end
end
