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
  end
end
