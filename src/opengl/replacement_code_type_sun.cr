{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum ReplacementCodeTypeSUN : ::Int32
    UnsignedByte = 0x1401

    UnsignedShort = 0x1403
  end
end
