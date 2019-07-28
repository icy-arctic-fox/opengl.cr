{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureGenMode : ::Int32
    EyeLinear = 0x2400

    ObjectLinear = 0x2401

    SphereMap = 0x2402
  end
end
