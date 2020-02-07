{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum RegisterCombinerPName : ::Int32
    Combine = 0x8570

    CombineRGB = 0x8571

    CombineAlpha = 0x8572

    Source0RGB = 0x8580

    Source1RGB = 0x8581

    Source2RGB = 0x8582

    Source0Alpha = 0x8588

    Source1Alpha = 0x8589

    Source2Alpha = 0x858a

    Operand0RGB = 0x8590

    Operand1RGB = 0x8591

    Operand2RGB = 0x8592

    Operand0Alpha = 0x8598

    Operand1Alpha = 0x8599

    Operand2Alpha = 0x859a

    RGBScale = 0x8573

    AddSigned = 0x8574

    Interpolate = 0x8575

    Constant = 0x8576

    PrimaryColor = 0x8577

    Previous = 0x8578

    Src1Alpha = 0x8589

    Src0RGB = 0x8580

    Src1RGB = 0x8581

    Src2RGB = 0x8582

    Src0Alpha = 0x8588

    Src2Alpha = 0x858a
  end
end
