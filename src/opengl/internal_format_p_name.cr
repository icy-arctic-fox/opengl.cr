{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # The primary GL enumerant space begins here. All modern enum allocations are in this range. These enums are mostly assigned the default class since it's a great deal of not very useful work to be more specific

  enum InternalFormatPName : ::UInt32
    Samples = 0x80a9

    TextureCompressed = 0x86a1

    NumSampleCounts = 0x9380

    ImageFormatCompatibilityType = 0x90c7
  end
end
