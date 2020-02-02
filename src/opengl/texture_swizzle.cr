{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum TextureSwizzle : ::Int32
    Zero = 0x0

    One = 0x1

    Red = 0x1903
  end
end
