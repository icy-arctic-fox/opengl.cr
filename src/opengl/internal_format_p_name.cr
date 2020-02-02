{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum InternalFormatPName : ::UInt32
    Samples = 0x80a9

    NumSampleCounts = 0x9380

    ImageFormatCompatibilityType = 0x90c7

    TextureCompressed = 0x86a1
  end
end
