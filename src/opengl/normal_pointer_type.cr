{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum NormalPointerType : ::Int32
    Byte = 0x1400

    Short = 0x1402

    Int = 0x1404

    Float = 0x1406

    Double = 0x140a
  end
end
