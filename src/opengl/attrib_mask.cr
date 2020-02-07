{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  @[Flags]
  enum AttribMask : ::Int32
    DepthBuffer = 0x100

    StencilBuffer = 0x400

    ColorBuffer = 0x4000
  end
end
