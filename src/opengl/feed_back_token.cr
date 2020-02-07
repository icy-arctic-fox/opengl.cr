{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum FeedBackToken : ::Int32
    PassThroughToken = 0x700

    PointToken = 0x701

    LineToken = 0x702

    PolygonToken = 0x703

    BitmapToken = 0x704

    DrawPixelToken = 0x705

    CopyPixelToken = 0x706

    LineResetToken = 0x707
  end
end
