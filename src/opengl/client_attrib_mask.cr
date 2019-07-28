{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum ClientAttribMask : ::UInt32
    ClientPixelStore = 0x1

    ClientVertexArray = 0x2

    ClientAllAttribBits = 0xffffffff
  end
end
