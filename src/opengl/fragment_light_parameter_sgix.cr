{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum FragmentLightParameterSGIX : ::Int32
    Ambient = 0x1200

    Diffuse = 0x1201

    Specular = 0x1202

    Position = 0x1203

    SpotDirection = 0x1204

    SpotExponent = 0x1205

    SpotCutoff = 0x1206

    ConstantAttenuation = 0x1207

    LinearAttenuation = 0x1208

    QuadraticAttenuation = 0x1209
  end
end
