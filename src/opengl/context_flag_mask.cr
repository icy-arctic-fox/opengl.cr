@[Link("gl")]
lib LibGL
  @[Flags]
  enum ContextFlagMask : ::Int32
    ContextFlagDebug = 0x2

    ContextFlagRobustAccess = 0x4
  end
end
