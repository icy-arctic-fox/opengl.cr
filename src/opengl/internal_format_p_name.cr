{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum InternalFormatPName : ::Int32
    Samples = 0x80a9

    GenerateMipmap = 0x8191
  end
end
