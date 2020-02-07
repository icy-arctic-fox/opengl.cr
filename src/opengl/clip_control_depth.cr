{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Khronos bug 7658

  enum ClipControlDepth : ::Int32
    NegativeOneToOne = 0x935e

    ZeroToOne = 0x935f
  end
end
