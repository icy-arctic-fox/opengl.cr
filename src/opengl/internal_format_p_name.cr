{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum InternalFormatPName : ::UInt32
    Samples = 0x80a9

    TextureCompressed = 0x86a1

    GenerateMipmap = 0x8191

    NumSampleCounts = 0x9380

    ImageFormatCompatibilityType = 0x90c7
  end
end
