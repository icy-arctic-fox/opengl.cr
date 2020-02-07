{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum LightParameter : ::UInt32
    Position = 0x1203

    SpotDirection = 0x1204

    SpotExponent = 0x1205

    SpotCutoff = 0x1206

    ConstantAttenuation = 0x1207

    LinearAttenuation = 0x1208

    QuadraticAttenuation = 0x1209
  end
end
