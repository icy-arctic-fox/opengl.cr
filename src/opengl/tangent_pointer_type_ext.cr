{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TangentPointerTypeEXT : ::Int32
    Byte = 0x1400

    Short = 0x1402

    Float = 0x1406

    Double = 0x140a
  end
end
