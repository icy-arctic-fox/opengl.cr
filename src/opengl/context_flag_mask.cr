@[Link("gl")]
lib LibGL
  @[Flags]
  enum ContextFlagMask : ::Int32
    ContextFlagForwardCompatible = 0x1

    ContextFlagDebug = 0x2

    ContextFlagRobustAccess = 0x4
  end
end
