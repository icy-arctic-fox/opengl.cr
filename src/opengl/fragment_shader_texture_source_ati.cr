{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FragmentShaderTextureSourceATI : ::Int32
    Texture0 = 0x84c0

    Texture1 = 0x84c1

    Texture2 = 0x84c2

    Texture3 = 0x84c3

    Texture4 = 0x84c4

    Texture5 = 0x84c5

    Texture6 = 0x84c6

    Texture7 = 0x84c7

    Texture8 = 0x84c8

    Texture9 = 0x84c9

    Texture10 = 0x84ca

    Texture11 = 0x84cb

    Texture12 = 0x84cc

    Texture13 = 0x84cd

    Texture14 = 0x84ce

    Texture15 = 0x84cf

    Texture16 = 0x84d0

    Texture17 = 0x84d1

    Texture18 = 0x84d2

    Texture19 = 0x84d3

    Texture20 = 0x84d4

    Texture21 = 0x84d5

    Texture22 = 0x84d6

    Texture23 = 0x84d7

    Texture24 = 0x84d8

    Texture25 = 0x84d9

    Texture26 = 0x84da

    Texture27 = 0x84db

    Texture28 = 0x84dc

    Texture29 = 0x84dd

    Texture30 = 0x84de

    Texture31 = 0x84df
  end
end
