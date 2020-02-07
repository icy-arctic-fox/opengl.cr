{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # For Michael Gold 2006/08/07

  enum ConditionalRenderMode : ::UInt32
    QueryWait = 0x8e13

    QueryNoWait = 0x8e14

    QueryByRegionWait = 0x8e15

    QueryByRegionNoWait = 0x8e16
  end
end
