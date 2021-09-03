{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum TextureParameterName : ::UInt32
    TextureMagFilter = 0x2800

    TextureMinFilter = 0x2801

    TextureWrapS = 0x2802

    TextureWrapT = 0x2803

    TextureWrapR = 0x8072

    TextureMinLOD = 0x813a

    TextureMaxLOD = 0x813b

    TextureBaseLevel = 0x813c

    TextureMaxLevel = 0x813d

    TextureCompareMode = 0x884c

    TextureCompareFunc = 0x884d

    TextureSwizzleR = 0x8e42

    TextureSwizzleG = 0x8e43

    TextureSwizzleB = 0x8e44

    TextureSwizzleA = 0x8e45
  end
end
