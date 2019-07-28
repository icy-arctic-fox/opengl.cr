{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum VertexPointerType : ::UInt32
    Short = 0x1402

    Int = 0x1404

    Float = 0x1406

    Double = 0x140a
  end
end
