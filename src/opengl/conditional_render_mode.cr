{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum ConditionalRenderMode : ::UInt32
    QueryWait = 0x8e13

    QueryNoWait = 0x8e14

    QueryByRegionWait = 0x8e15

    QueryByRegionNoWait = 0x8e16
  end
end
