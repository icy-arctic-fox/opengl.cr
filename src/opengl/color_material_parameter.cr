{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum ColorMaterialParameter : ::UInt32
    Ambient = 0x1200

    Diffuse = 0x1201

    Specular = 0x1202

    Emission = 0x1600

    AmbientAndDiffuse = 0x1602
  end
end
