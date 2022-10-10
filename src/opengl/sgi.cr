{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  FOG_COORDINATE_SOURCE = 33872

  CURRENT_FOG_COORDINATE = 33875

  FOG_COORDINATE_ARRAY_TYPE = 33876

  FOG_COORDINATE_ARRAY_STRIDE = 33877

  FOG_COORDINATE_ARRAY_POINTER = 33878

  FOG_COORDINATE_ARRAY = 33879

  COLOR_SUM = 33880

  CURRENT_SECONDARY_COLOR = 33881

  SECONDARY_COLOR_ARRAY_SIZE = 33882

  SECONDARY_COLOR_ARRAY_TYPE = 33883

  SECONDARY_COLOR_ARRAY_STRIDE = 33884

  SECONDARY_COLOR_ARRAY_POINTER = 33885

  SECONDARY_COLOR_ARRAY = 33886

  CURRENT_FOG_COORD = 33875

  FOG_COORD_ARRAY_TYPE = 33876

  FOG_COORD_ARRAY_STRIDE = 33877

  FOG_COORD_ARRAY_POINTER = 33878

  FOG_COORD_ARRAY = 33879
end
