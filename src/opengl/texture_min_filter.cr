{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureMinFilter : ::Int32
    Nearest = 0x2600

    Linear = 0x2601

    NearestMipmapNearest = 0x2700

    LinearMipmapNearest = 0x2701

    NearestMipmapLinear = 0x2702

    LinearMipmapLinear = 0x2703
  end
end
