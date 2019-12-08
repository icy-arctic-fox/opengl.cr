{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum SecondaryColorPointerTypeIBM : ::Int32
    Short = 0x1402

    Float = 0x1406
  end
end
