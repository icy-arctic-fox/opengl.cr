{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  UNSIGNED_INT_5_9_9_9_REV = 35902

  MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968

  MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978

  MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979

  FLOAT_32_UNSIGNED_INT_24_8_REV = 36269

  UNSIGNED_INT_24_8 = 34042

  UNSIGNED_NORMALIZED = 35863

  COPY_READ_BUFFER_BINDING = 36662

  COPY_READ_BUFFER = 36662

  COPY_WRITE_BUFFER_BINDING = 36663

  COPY_WRITE_BUFFER = 36663

  TRANSFORM_FEEDBACK_BINDING = 36389

  DRAW_INDIRECT_BUFFER_BINDING = 36675

  ATOMIC_COUNTER_BUFFER_START = 37570

  ATOMIC_COUNTER_BUFFER_SIZE = 37571

  MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 37580

  MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 37584

  MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 37585

  MAX_ATOMIC_COUNTER_BUFFER_SIZE = 37592

  MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 37596

  MAX_IMAGE_UNITS = 36664

  MAX_VERTEX_IMAGE_UNIFORMS = 37066

  MAX_FRAGMENT_IMAGE_UNIFORMS = 37070

  MAX_COMBINED_IMAGE_UNIFORMS = 37071

  IMAGE_BINDING_NAME = 36666

  IMAGE_BINDING_LEVEL = 36667

  IMAGE_BINDING_LAYERED = 36668

  IMAGE_BINDING_LAYER = 36669

  IMAGE_BINDING_ACCESS = 36670

  IMAGE_BINDING_FORMAT = 36974

  IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 37064

  IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 37065

  MAX_SHADER_STORAGE_BLOCK_SIZE = 37086

  MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 36665

  MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 36665

  MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 36446

  MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 36447

  SAMPLE_MASK_VALUE = 36434

  TEXTURE_STENCIL_SIZE = 35057

  TEXTURE_SHARED_SIZE = 35903

  TEXTURE_RED_TYPE = 35856

  TEXTURE_GREEN_TYPE = 35857

  TEXTURE_BLUE_TYPE = 35858

  TEXTURE_ALPHA_TYPE = 35859

  TEXTURE_DEPTH_TYPE = 35862

  VERTEX_BINDING_BUFFER = 36687

  MULTIPLY = 37524

  SCREEN = 37525

  OVERLAY = 37526

  DARKEN = 37527

  LIGHTEN = 37528

  COLORDODGE = 37529

  COLORBURN = 37530

  HARDLIGHT = 37531

  SOFTLIGHT = 37532

  DIFFERENCE = 37534

  EXCLUSION = 37536

  HSL_HUE = 37549

  HSL_SATURATION = 37550

  HSL_COLOR = 37551

  HSL_LUMINOSITY = 37552

  GEOMETRY_SHADER_INVOCATIONS = 34943

  MAX_GEOMETRY_OUTPUT_VERTICES = 36320

  MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS = 36321

  MAX_GEOMETRY_SHADER_INVOCATIONS = 36442

  MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 37583

  MAX_GEOMETRY_IMAGE_UNIFORMS = 37069

  PRIMITIVE_BOUNDING_BOX = 37566

  MIN_SAMPLE_SHADING_VALUE = 35895

  MIN_FRAGMENT_INTERPOLATION_OFFSET = 36443

  MAX_FRAGMENT_INTERPOLATION_OFFSET = 36444

  FRAGMENT_INTERPOLATION_OFFSET_BITS = 36445

  TESS_CONTROL_OUTPUT_VERTICES = 36469

  TESS_GEN_MODE = 36470

  TESS_GEN_SPACING = 36471

  TESS_GEN_VERTEX_ORDER = 36472

  TESS_GEN_POINT_MODE = 36473

  ISOLINES = 36474

  FRACTIONAL_ODD = 36475

  FRACTIONAL_EVEN = 36476

  MAX_PATCH_VERTICES = 36477

  MAX_TESS_GEN_LEVEL = 36478

  MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 36479

  MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 36480

  MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 36481

  MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 36482

  MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 36483

  MAX_TESS_PATCH_COMPONENTS = 36484

  MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 36485

  MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 36486

  MAX_TESS_CONTROL_INPUT_COMPONENTS = 34924

  MAX_TESS_EVALUATION_INPUT_COMPONENTS = 34925

  MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 36382

  MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 36383

  MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 37581

  MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 37582

  MAX_TESS_CONTROL_IMAGE_UNIFORMS = 37067

  MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 37068

  # Equivalent to GL_TEXTURE_BUFFER_ARB query, but named more consistently
  TEXTURE_BUFFER_BINDING = 35882

  TEXTURE_BUFFER_DATA_STORE_BINDING = 35885
end
