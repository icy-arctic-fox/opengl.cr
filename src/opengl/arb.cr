{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  RGBA2 = 32853

  TEXTURE_DEPTH = 32881

  RESCALE_NORMAL = 32826

  TEXTURE_COMPRESSED_IMAGE_SIZE = 34464

  CLIENT_ACTIVE_TEXTURE = 34017

  MAX_TEXTURE_UNITS = 34018

  TRANSPOSE_MODELVIEW_MATRIX = 34019

  TRANSPOSE_PROJECTION_MATRIX = 34020

  TRANSPOSE_TEXTURE_MATRIX = 34021

  TRANSPOSE_COLOR_MATRIX = 34022

  COMPRESSED_ALPHA = 34025

  COMPRESSED_LUMINANCE = 34026

  COMPRESSED_LUMINANCE_ALPHA = 34027

  COMPRESSED_INTENSITY = 34028

  SUBTRACT = 34023

  DOT3_RGB = 34478

  DOT3_RGBA = 34479

  TEXTURE_DEPTH_SIZE = 34890

  DEPTH_TEXTURE_MODE = 34891

  BLEND_EQUATION = 32777

  POINT_SPRITE_COORD_ORIGIN = 36000

  FRAMEBUFFER_DEFAULT = 33304

  FRAMEBUFFER_BINDING = 36006

  FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048

  STENCIL_ATTACHMENT = 36128

  STENCIL_INDEX1 = 36166

  STENCIL_INDEX4 = 36167

  STENCIL_INDEX8 = 36168

  STENCIL_INDEX16 = 36169

  MAX_SAMPLES = 36183

  INDEX = 33314

  RGBA16_SNORM = 36763

  SIGNED_NORMALIZED = 36764

  CONTEXT_PROFILE_MASK = 37158

  SYNC_FENCE = 37142

  UNSIGNALED = 37144

  SIGNALED = 37145

  TEXTURE_SAMPLES = 37126

  TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127

  UNDEFINED_VERTEX = 33376
end
