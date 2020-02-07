{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum VertexPointerType : ::Int32
    Short = 0x1402

    Int = 0x1404

    Float = 0x1406

    Double = 0x140a
  end
end
