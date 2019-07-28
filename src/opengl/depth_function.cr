{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  enum DepthFunction : ::UInt32
    Never = 0x200

    Less = 0x201

    Equal = 0x202

    GreaterEqual = 0x203

    Greater = 0x204

    NotEqual = 0x205

    LessEqual = 0x206

    Always = 0x207
  end
end
