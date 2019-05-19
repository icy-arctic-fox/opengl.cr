@[Link("gl")]
lib LibGL
  enum GetFramebufferParameter : ::Int32
    DoubleBuffer = 0xc32

    Stereo = 0xc33

    SampleBuffers = 0x80a8

    Samples = 0x80a9

    ImplementationColorReadType = 0x8b9a

    ImplementationColorReadFormat = 0x8b9b
  end
end
