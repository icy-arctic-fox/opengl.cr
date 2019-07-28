{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum FeedbackType : ::UInt32
    D2 = 0x600

    D3 = 0x601

    Color3D = 0x602

    ColorTexture3D = 0x603

    ColorTexture4D = 0x604
  end
end
