{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum HintTarget : ::UInt32
    GenerateMipmapHint = 0x8192
  end
end
