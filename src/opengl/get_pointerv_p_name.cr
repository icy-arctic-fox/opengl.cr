{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GetPointervPName : ::UInt32
    VertexArrayPointer = 0x808e

    NormalArrayPointer = 0x808f

    ColorArrayPointer = 0x8090

    TextureCoordArrayPointer = 0x8092
  end
end
