{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # The primary GL enumerant space begins here. All modern enum allocations are in this range. These enums are mostly assigned the default class since it's a great deal of not very useful work to be more specific

  enum GetPointervPName : ::UInt32
    VertexArrayPointer = 0x808e

    NormalArrayPointer = 0x808f

    ColorArrayPointer = 0x8090

    TextureCoordArrayPointer = 0x8092
  end
end
