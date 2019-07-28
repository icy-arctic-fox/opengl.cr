{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  RESCALE_NORMAL = 32826

  MAX_TEXTURE_UNITS = 34018

  CLIENT_ACTIVE_TEXTURE = 34017

  SUBTRACT = 34023

  DOT3_RGB = 34478

  DOT3_RGBA = 34479
end
