{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum FragmentShaderValueRepATI : ::Int32
    None = 0x0

    Red = 0x1903

    Green = 0x1904

    Blue = 0x1905

    Alpha = 0x1906
  end
end
