{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum TextureSwizzle : ::Int32
    Zero = 0x0

    One = 0x1

    Red = 0x1903

    Green = 0x1904

    Blue = 0x1905

    Alpha = 0x1906
  end
end
