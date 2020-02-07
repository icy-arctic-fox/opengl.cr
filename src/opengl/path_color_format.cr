{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum PathColorFormat : ::Int32
    None = 0x0

    Alpha = 0x1906

    RGB = 0x1907

    RGBA = 0x1908
  end
end
