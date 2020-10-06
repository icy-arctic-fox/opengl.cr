{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # The primary GL enumerant space begins here. All modern enum allocations are in this range. These enums are mostly assigned the default class since it's a great deal of not very useful work to be more specific

  enum ConvolutionTargetEXT : ::Int32
    Convolution1D = 0x8010

    Convolution2D = 0x8011
  end
end
