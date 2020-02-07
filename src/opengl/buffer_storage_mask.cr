{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum BufferStorageMask : ::Int32
    MapRead = 0x1

    MapWrite = 0x2
  end
end
