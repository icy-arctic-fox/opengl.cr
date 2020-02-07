{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # The primary GL enumerant space begins here. All modern enum allocations are in this range. These enums are mostly assigned the default class since it's a great deal of not very useful work to be more specific

  enum GetFramebufferParameter : ::Int32
    SampleBuffers = 0x80a8

    Samples = 0x80a9

    ImplementationColorReadType = 0x8b9a

    ImplementationColorReadFormat = 0x8b9b

    FramebufferDefaultWidth = 0x9310

    FramebufferDefaultHeight = 0x9311

    FramebufferDefaultSamples = 0x9313

    FramebufferDefaultFixedSampleLocations = 0x9314

    FramebufferDefaultLayers = 0x9312
  end
end
