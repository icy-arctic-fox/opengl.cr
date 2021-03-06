{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum DebugType : ::UInt32
    DontCare = 0x1100

    DebugTypeError = 0x824c

    DebugTypeDeprecatedBehavior = 0x824d

    DebugTypeUndefinedBehavior = 0x824e

    DebugTypePortability = 0x824f

    DebugTypePerformance = 0x8250

    DebugTypeOther = 0x8251

    DebugTypeMarker = 0x8268

    DebugTypePushGroup = 0x8269

    DebugTypePopGroup = 0x826a
  end
end
