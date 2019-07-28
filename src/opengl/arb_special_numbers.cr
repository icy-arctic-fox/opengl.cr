{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Not an API enum. API definition macro for ES 1.0/1.1 headers
  VERSION_ES_CL_1_0 = 1

  # Not an API enum. API definition macro for ES 1.0/1.1 headers
  VERSION_ES_CM_1_1 = 1

  # Not an API enum. API definition macro for ES 1.0/1.1 headers
  VERSION_ES_CL_1_1 = 1
end
