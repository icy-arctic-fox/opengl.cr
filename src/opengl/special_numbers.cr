{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum SpecialNumbers : ::Int32
    # Not an API enum. API definition macro for ES 1.0/1.1 headers
    VersionEsCl10 = 0x1
    # Not an API enum. API definition macro for ES 1.0/1.1 headers
    VersionEsCm11 = 0x1
    # Not an API enum. API definition macro for ES 1.0/1.1 headers
    VersionEsCl11 = 0x1

    False = 0x0

    True = 0x1

    Zero = 0x0

    One = 0x1

    NoError = 0x0
  end
end
