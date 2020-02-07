{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum StringName : ::UInt32
    ShadingLanguageVersion = 0x8b8c

    Vendor = 0x1f00

    Renderer = 0x1f01

    Version = 0x1f02

    Extensions = 0x1f03
  end
end
