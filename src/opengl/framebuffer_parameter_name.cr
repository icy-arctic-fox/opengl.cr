{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FramebufferParameterName : ::UInt32
    FramebufferDefaultWidth = 0x9310

    FramebufferDefaultHeight = 0x9311

    FramebufferDefaultLayers = 0x9312

    FramebufferDefaultSamples = 0x9313

    FramebufferDefaultFixedSampleLocations = 0x9314
  end
end
