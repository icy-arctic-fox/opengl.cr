{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum Boolean : ::UInt8
    False = 0x0

    True = 0x1
  end
end
