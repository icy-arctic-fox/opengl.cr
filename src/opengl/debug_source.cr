{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum DebugSource : ::UInt32
    DontCare = 0x1100

    DebugSourceApi = 0x8246

    DebugSourceWindowSystem = 0x8247

    DebugSourceShaderCompiler = 0x8248

    DebugSourceThirdParty = 0x8249

    DebugSourceApplication = 0x824a

    DebugSourceOther = 0x824b
  end
end
