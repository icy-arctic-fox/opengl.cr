{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum LightName : ::UInt32
    Light0 = 0x4000

    Light1 = 0x4001

    Light2 = 0x4002

    Light3 = 0x4003

    Light4 = 0x4004

    Light5 = 0x4005

    Light6 = 0x4006

    Light7 = 0x4007
  end
end
