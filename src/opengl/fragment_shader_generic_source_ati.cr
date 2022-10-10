{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tokens whose numeric value is intrinsically meaningful

  enum FragmentShaderGenericSourceATI : ::Int32
    Zero = 0x0

    One = 0x1
  end
end
