{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum BufferStorageTarget : ::Int32
    ArrayBuffer = 0x8892

    ElementArrayBuffer = 0x8893
  end
end
