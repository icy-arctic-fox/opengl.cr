{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum TexCoordPointerType : ::UInt32
    Short = 0x1402

    Float = 0x1406
  end
end
