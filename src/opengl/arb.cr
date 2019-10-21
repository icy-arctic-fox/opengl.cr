{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  RGBA2 = 32853

  TEXTURE_DEPTH = 32881

  TEXTURE_COMPRESSED_IMAGE_SIZE = 34464

  TEXTURE_DEPTH_SIZE = 34890

  BLEND_EQUATION = 32777

  POINT_SPRITE_COORD_ORIGIN = 36000

  FRAMEBUFFER_DEFAULT = 33304

  FRAMEBUFFER_BINDING = 36006

  MAX_COLOR_ATTACHMENTS = 36063

  MAX_SAMPLES = 36183

  RGBA16_SNORM = 36763

  SIGNED_NORMALIZED = 36764

  CONTEXT_PROFILE_MASK = 37158

  SYNC_FENCE = 37142

  UNSIGNALED = 37144

  SIGNALED = 37145

  TEXTURE_SAMPLES = 37126

  TEXTURE_FIXED_SAMPLE_LOCATIONS = 37127

  UNDEFINED_VERTEX = 33376

  UNPACK_COMPRESSED_BLOCK_WIDTH = 37159

  UNPACK_COMPRESSED_BLOCK_HEIGHT = 37160

  UNPACK_COMPRESSED_BLOCK_DEPTH = 37161

  UNPACK_COMPRESSED_BLOCK_SIZE = 37162

  PACK_COMPRESSED_BLOCK_WIDTH = 37163

  PACK_COMPRESSED_BLOCK_HEIGHT = 37164

  PACK_COMPRESSED_BLOCK_DEPTH = 37165

  PACK_COMPRESSED_BLOCK_SIZE = 37166

  TEXTURE_IMMUTABLE_FORMAT = 37167

  NUM_SHADING_LANGUAGE_VERSIONS = 33513

  MAX_COMPUTE_SHARED_MEMORY_SIZE = 33378

  DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 33347

  MAX_COMBINED_DIMENSIONS = 33410

  DEPTH_COMPONENTS = 33412

  STENCIL_COMPONENTS = 33413

  MANUAL_GENERATE_MIPMAP = 33428

  FULL_SUPPORT = 33463

  CAVEAT_SUPPORT = 33464

  IMAGE_CLASS_4_X_32 = 33465

  IMAGE_CLASS_2_X_32 = 33466

  IMAGE_CLASS_1_X_32 = 33467

  IMAGE_CLASS_4_X_16 = 33468

  IMAGE_CLASS_2_X_16 = 33469

  IMAGE_CLASS_1_X_16 = 33470

  IMAGE_CLASS_4_X_8 = 33471

  IMAGE_CLASS_2_X_8 = 33472

  IMAGE_CLASS_1_X_8 = 33473

  IMAGE_CLASS_11_11_10 = 33474

  IMAGE_CLASS_10_10_10_2 = 33475

  VIEW_CLASS_128_BITS = 33476

  VIEW_CLASS_96_BITS = 33477

  VIEW_CLASS_64_BITS = 33478

  VIEW_CLASS_48_BITS = 33479

  VIEW_CLASS_32_BITS = 33480

  VIEW_CLASS_24_BITS = 33481

  VIEW_CLASS_16_BITS = 33482

  VIEW_CLASS_8_BITS = 33483

  VIEW_CLASS_S3TC_DXT1_RGB = 33484

  VIEW_CLASS_S3TC_DXT1_RGBA = 33485

  VIEW_CLASS_S3TC_DXT3_RGBA = 33486

  VIEW_CLASS_S3TC_DXT5_RGBA = 33487

  VIEW_CLASS_RGTC1_RED = 33488

  VIEW_CLASS_RGTC2_RG = 33489

  VIEW_CLASS_BPTC_UNORM = 33490

  VIEW_CLASS_BPTC_FLOAT = 33491

  TEXTURE_VIEW_MIN_LEVEL = 33499

  TEXTURE_VIEW_NUM_LEVELS = 33500

  TEXTURE_VIEW_MIN_LAYER = 33501

  TEXTURE_VIEW_NUM_LAYERS = 33502

  TEXTURE_IMMUTABLE_LEVELS = 33503

  MAX_VERTEX_ATTRIB_STRIDE = 33509

  PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 33313
end
