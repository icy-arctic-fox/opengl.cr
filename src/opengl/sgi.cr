{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  UNSIGNED_BYTE_2_3_3_REV = 33634

  UNSIGNED_SHORT_5_6_5 = 33635

  UNSIGNED_SHORT_5_6_5_REV = 33636

  UNSIGNED_SHORT_4_4_4_4_REV = 33637

  UNSIGNED_SHORT_1_5_5_5_REV = 33638

  UNSIGNED_INT_8_8_8_8_REV = 33639
end
