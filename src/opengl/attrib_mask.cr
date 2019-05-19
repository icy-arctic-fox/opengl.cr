@[Link("gl")]
lib LibGL
  @[Flags]
  enum AttribMask : ::Int32
    DepthBuffer = 0x100

    StencilBuffer = 0x400

    ColorBuffer = 0x4000
  end
end
