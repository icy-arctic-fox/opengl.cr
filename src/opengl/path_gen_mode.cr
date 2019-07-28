{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum PathGenMode : ::Int32
    None = 0x0

    EyeLinear = 0x2400

    ObjectLinear = 0x2401

    Constant = 0x8576
  end
end
