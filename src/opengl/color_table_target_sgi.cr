{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ColorTableTargetSGI : ::Int32
    ColorTable = 0x80d0

    PostConvolutionColorTable = 0x80d1

    PostColorMatrixColorTable = 0x80d2

    ProxyColorTable = 0x80d3

    ProxyPostConvolutionColorTable = 0x80d4

    ProxyPostColorMatrixColorTable = 0x80d5
  end
end
