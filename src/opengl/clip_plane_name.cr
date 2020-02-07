{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ClipPlaneName : ::Int32
    ClipDistance0 = 0x3000

    ClipPlane0 = 0x3000

    ClipDistance1 = 0x3001

    ClipPlane1 = 0x3001

    ClipDistance2 = 0x3002

    ClipPlane2 = 0x3002

    ClipDistance3 = 0x3003

    ClipPlane3 = 0x3003

    ClipDistance4 = 0x3004

    ClipPlane4 = 0x3004

    ClipDistance5 = 0x3005

    ClipPlane5 = 0x3005

    ClipDistance6 = 0x3006

    ClipDistance7 = 0x3007
  end
end
