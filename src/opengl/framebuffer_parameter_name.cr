{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Khronos bug 7658

  enum FramebufferParameterName : ::Int32
    FramebufferDefaultWidth = 0x9310

    FramebufferDefaultHeight = 0x9311

    FramebufferDefaultSamples = 0x9313

    FramebufferDefaultFixedSampleLocations = 0x9314
  end
end
