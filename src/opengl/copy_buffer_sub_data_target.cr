{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum CopyBufferSubDataTarget : ::Int32
    ArrayBuffer = 0x8892

    ElementArrayBuffer = 0x8893

    PixelPackBuffer = 0x88eb

    PixelUnpackBuffer = 0x88ec

    TransformFeedbackBuffer = 0x8c8e
  end
end
