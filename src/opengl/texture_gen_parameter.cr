{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TextureGenParameter : ::UInt32
    TextureGenMode = 0x2500

    ObjectPlane = 0x2501

    EyePlane = 0x2502
  end
end
