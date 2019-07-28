{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum GetPixelMap : ::Int32
    PixelMapIToI = 0xc70

    PixelMapSToS = 0xc71

    PixelMapIToR = 0xc72

    PixelMapIToG = 0xc73

    PixelMapIToB = 0xc74

    PixelMapIToA = 0xc75

    PixelMapRToR = 0xc76

    PixelMapGToG = 0xc77

    PixelMapBToB = 0xc78

    PixelMapAToA = 0xc79
  end
end
