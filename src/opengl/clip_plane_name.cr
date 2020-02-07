{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ClipPlaneName : ::UInt32
    ClipPlane0 = 0x3000

    ClipPlane1 = 0x3001

    ClipPlane2 = 0x3002

    ClipPlane3 = 0x3003

    ClipPlane4 = 0x3004

    ClipPlane5 = 0x3005
  end
end
