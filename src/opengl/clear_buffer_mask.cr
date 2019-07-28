{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum ClearBufferMask : ::UInt32
    DepthBuffer = 0x100

    StencilBuffer = 0x400

    ColorBuffer = 0x4000

    AccumBuffer = 0x200
  end
end
