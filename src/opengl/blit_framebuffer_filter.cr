{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum BlitFramebufferFilter : ::Int32
    Nearest = 0x2600

    Linear = 0x2601
  end
end
