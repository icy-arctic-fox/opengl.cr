{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  COMBINE = 34160

  COMBINE_RGB = 34161

  COMBINE_ALPHA = 34162

  RGB_SCALE = 34163

  ADD_SIGNED = 34164

  INTERPOLATE = 34165

  PREVIOUS = 34168

  OPERAND0_RGB = 34192

  OPERAND1_RGB = 34193

  OPERAND2_RGB = 34194

  OPERAND0_ALPHA = 34200

  OPERAND1_ALPHA = 34201

  OPERAND2_ALPHA = 34202

  SRC0_RGB = 34176

  SOURCE0_RGB = 34176

  SRC1_RGB = 34177

  SOURCE1_RGB = 34177

  SRC2_RGB = 34178

  SOURCE2_RGB = 34178

  SRC0_ALPHA = 34184

  SOURCE0_ALPHA = 34184

  SRC2_ALPHA = 34186

  SOURCE2_ALPHA = 34186
end
