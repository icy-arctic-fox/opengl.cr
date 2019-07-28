{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Tagged as uint
  INVALID_INDEX = 4294967295

  # Tagged as uint64
  TIMEOUT_IGNORED = 18446744073709551615
end
