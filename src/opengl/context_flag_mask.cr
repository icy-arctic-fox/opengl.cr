@[Link("gl")]
lib LibGL
  @[Flags]
  enum ContextFlagMask : ::Int32
    ContextFlagForwardCompatible = 0x1

    ContextFlagDebug = 0x2
  end
end
