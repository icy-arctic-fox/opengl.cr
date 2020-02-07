{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum SpecialNumbers : ::Int32
    False = 0x0

    True = 0x1

    Zero = 0x0

    One = 0x1

    NoError = 0x0

    None = 0x0
  end
end
