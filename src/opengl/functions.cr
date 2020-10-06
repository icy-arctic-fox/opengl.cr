{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  fun cull_face = glCullFace(
    mode : CullFaceMode
  ) : ::Void

  fun front_face = glFrontFace(
    mode : FrontFaceDirection
  ) : ::Void

  fun hint = glHint(
    target : HintTarget,
    mode : HintMode
  ) : ::Void

  fun line_width = glLineWidth(
    width : Float
  ) : ::Void

  fun point_size = glPointSize(
    size : Float
  ) : ::Void

  fun polygon_mode = glPolygonMode(
    face : MaterialFace,
    mode : PolygonMode
  ) : ::Void

  fun scissor = glScissor(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun tex_parameter_f = glTexParameterf(
    target : TextureTarget,
    pname : TextureParameterName,
    param : Float
  ) : ::Void

  fun tex_parameter_fv = glTexParameterfv(
    target : TextureTarget,
    pname : TextureParameterName,
    params : ::Pointer(Float)
  ) : ::Void

  fun tex_parameter_i = glTexParameteri(
    target : TextureTarget,
    pname : TextureParameterName,
    param : Int
  ) : ::Void

  fun tex_parameter_iv = glTexParameteriv(
    target : TextureTarget,
    pname : TextureParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun tex_image_1d = glTexImage1D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    width : SizeI,
    border : Int,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun tex_image_2d = glTexImage2D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI,
    border : Int,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun draw_buffer = glDrawBuffer(
    buf : DrawBufferMode
  ) : ::Void

  fun clear = glClear(
    mask : ClearBufferMask
  ) : ::Void

  fun clear_color = glClearColor(
    red : Float,
    green : Float,
    blue : Float,
    alpha : Float
  ) : ::Void

  fun clear_stencil = glClearStencil(
    s : Int
  ) : ::Void

  fun clear_depth = glClearDepth(
    depth : Double
  ) : ::Void

  fun stencil_mask = glStencilMask(
    mask : UInt
  ) : ::Void

  fun color_mask = glColorMask(
    red : Boolean,
    green : Boolean,
    blue : Boolean,
    alpha : Boolean
  ) : ::Void

  fun depth_mask = glDepthMask(
    flag : Boolean
  ) : ::Void

  fun disable = glDisable(
    cap : EnableCap
  ) : ::Void

  fun enable = glEnable(
    cap : EnableCap
  ) : ::Void

  fun finish = glFinish : ::Void

  fun flush = glFlush : ::Void

  fun blend_func = glBlendFunc(
    sfactor : BlendingFactor,
    dfactor : BlendingFactor
  ) : ::Void

  fun logic_op = glLogicOp(
    opcode : LogicOp
  ) : ::Void

  fun stencil_func = glStencilFunc(
    func : StencilFunction,
    ref : Int,
    mask : UInt
  ) : ::Void

  fun stencil_op = glStencilOp(
    fail : StencilOp,
    zfail : StencilOp,
    zpass : StencilOp
  ) : ::Void

  fun depth_func = glDepthFunc(
    func : DepthFunction
  ) : ::Void

  fun pixel_store_f = glPixelStoref(
    pname : PixelStoreParameter,
    param : Float
  ) : ::Void

  fun pixel_store_i = glPixelStorei(
    pname : PixelStoreParameter,
    param : Int
  ) : ::Void

  fun read_buffer = glReadBuffer(
    src : ReadBufferMode
  ) : ::Void

  fun read_pixels = glReadPixels(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun get_boolean_v = glGetBooleanv(
    pname : GetPName,
    data : ::Pointer(Boolean)
  ) : ::Void

  fun get_double_v = glGetDoublev(
    pname : GetPName,
    data : ::Pointer(Double)
  ) : ::Void

  fun get_error = glGetError : Enum

  fun get_float_v = glGetFloatv(
    pname : GetPName,
    data : ::Pointer(Float)
  ) : ::Void

  fun get_integer_v = glGetIntegerv(
    pname : GetPName,
    data : ::Pointer(Int)
  ) : ::Void

  fun get_string = glGetString(
    name : StringName
  ) : ::Pointer(UByte)

  fun get_tex_image = glGetTexImage(
    target : TextureTarget,
    level : Int,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun get_tex_parameter_fv = glGetTexParameterfv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_tex_parameter_iv = glGetTexParameteriv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_tex_level_parameter_fv = glGetTexLevelParameterfv(
    target : TextureTarget,
    level : Int,
    pname : GetTextureParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_tex_level_parameter_iv = glGetTexLevelParameteriv(
    target : TextureTarget,
    level : Int,
    pname : GetTextureParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun is_enabled = glIsEnabled(
    cap : EnableCap
  ) : Boolean

  fun depth_range = glDepthRange(
    n : Double,
    f : Double
  ) : ::Void

  fun viewport = glViewport(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun draw_arrays = glDrawArrays(
    mode : PrimitiveType,
    first : Int,
    count : SizeI
  ) : ::Void

  fun draw_elements = glDrawElements(
    mode : PrimitiveType,
    count : SizeI,
    type : DrawElementsType,
    indices : ::Pointer(Void)
  ) : ::Void

  fun polygon_offset = glPolygonOffset(
    factor : Float,
    units : Float
  ) : ::Void

  fun copy_tex_image_1d = glCopyTexImage1D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    x : Int,
    y : Int,
    width : SizeI,
    border : Int
  ) : ::Void

  fun copy_tex_image_2d = glCopyTexImage2D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI,
    border : Int
  ) : ::Void

  fun copy_tex_sub_image_1d = glCopyTexSubImage1D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    x : Int,
    y : Int,
    width : SizeI
  ) : ::Void

  fun copy_tex_sub_image_2d = glCopyTexSubImage2D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    yoffset : Int,
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun tex_sub_image_1d = glTexSubImage1D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    width : SizeI,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun tex_sub_image_2d = glTexSubImage2D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    yoffset : Int,
    width : SizeI,
    height : SizeI,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun bind_texture = glBindTexture(
    target : TextureTarget,
    texture : UInt
  ) : ::Void

  fun delete_textures = glDeleteTextures(
    n : SizeI,
    textures : ::Pointer(UInt)
  ) : ::Void

  fun gen_textures = glGenTextures(
    n : SizeI,
    textures : ::Pointer(UInt)
  ) : ::Void

  fun is_texture = glIsTexture(
    texture : UInt
  ) : Boolean

  fun draw_range_elements = glDrawRangeElements(
    mode : PrimitiveType,
    start : UInt,
    end : UInt,
    count : SizeI,
    type : DrawElementsType,
    indices : ::Pointer(Void)
  ) : ::Void

  fun tex_image_3d = glTexImage3D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI,
    depth : SizeI,
    border : Int,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun tex_sub_image_3d = glTexSubImage3D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    yoffset : Int,
    zoffset : Int,
    width : SizeI,
    height : SizeI,
    depth : SizeI,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun copy_tex_sub_image_3d = glCopyTexSubImage3D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    yoffset : Int,
    zoffset : Int,
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun active_texture = glActiveTexture(
    texture : TextureUnit
  ) : ::Void

  fun sample_coverage = glSampleCoverage(
    value : Float,
    invert : Boolean
  ) : ::Void

  fun compressed_tex_image_3d = glCompressedTexImage3D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI,
    depth : SizeI,
    border : Int,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun compressed_tex_image_2d = glCompressedTexImage2D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI,
    border : Int,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun compressed_tex_image_1d = glCompressedTexImage1D(
    target : TextureTarget,
    level : Int,
    internalformat : InternalFormat,
    width : SizeI,
    border : Int,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun compressed_tex_sub_image_3d = glCompressedTexSubImage3D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    yoffset : Int,
    zoffset : Int,
    width : SizeI,
    height : SizeI,
    depth : SizeI,
    format : PixelFormat,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun compressed_tex_sub_image_2d = glCompressedTexSubImage2D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    yoffset : Int,
    width : SizeI,
    height : SizeI,
    format : PixelFormat,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun compressed_tex_sub_image_1d = glCompressedTexSubImage1D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    width : SizeI,
    format : PixelFormat,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun get_compressed_tex_image = glGetCompressedTexImage(
    target : TextureTarget,
    level : Int,
    img : ::Pointer(Void)
  ) : ::Void

  fun blend_func_separate = glBlendFuncSeparate(
    sfactorRGB : BlendingFactor,
    dfactorRGB : BlendingFactor,
    sfactorAlpha : BlendingFactor,
    dfactorAlpha : BlendingFactor
  ) : ::Void

  fun multi_draw_arrays = glMultiDrawArrays(
    mode : PrimitiveType,
    first : ::Pointer(Int),
    count : ::Pointer(SizeI),
    drawcount : SizeI
  ) : ::Void

  fun multi_draw_elements = glMultiDrawElements(
    mode : PrimitiveType,
    count : ::Pointer(SizeI),
    type : DrawElementsType,
    indices : ::Pointer(Pointer(Void)),
    drawcount : SizeI
  ) : ::Void

  fun point_parameter_f = glPointParameterf(
    pname : PointParameterNameARB,
    param : Float
  ) : ::Void

  fun point_parameter_fv = glPointParameterfv(
    pname : PointParameterNameARB,
    params : ::Pointer(Float)
  ) : ::Void

  fun point_parameter_i = glPointParameteri(
    pname : PointParameterNameARB,
    param : Int
  ) : ::Void

  fun point_parameter_iv = glPointParameteriv(
    pname : PointParameterNameARB,
    params : ::Pointer(Int)
  ) : ::Void

  fun blend_color = glBlendColor(
    red : Float,
    green : Float,
    blue : Float,
    alpha : Float
  ) : ::Void

  fun blend_equation = glBlendEquation(
    mode : BlendEquationModeEXT
  ) : ::Void

  fun gen_queries = glGenQueries(
    n : SizeI,
    ids : ::Pointer(UInt)
  ) : ::Void

  fun delete_queries = glDeleteQueries(
    n : SizeI,
    ids : ::Pointer(UInt)
  ) : ::Void

  fun is_query = glIsQuery(
    id : UInt
  ) : Boolean

  fun begin_query = glBeginQuery(
    target : QueryTarget,
    id : UInt
  ) : ::Void

  fun end_query = glEndQuery(
    target : QueryTarget
  ) : ::Void

  fun get_query_iv = glGetQueryiv(
    target : QueryTarget,
    pname : QueryParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_query_object_iv = glGetQueryObjectiv(
    id : UInt,
    pname : QueryObjectParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_query_object_uiv = glGetQueryObjectuiv(
    id : UInt,
    pname : QueryObjectParameterName,
    params : ::Pointer(UInt)
  ) : ::Void

  fun bind_buffer = glBindBuffer(
    target : BufferTargetARB,
    buffer : UInt
  ) : ::Void

  fun delete_buffers = glDeleteBuffers(
    n : SizeI,
    buffers : ::Pointer(UInt)
  ) : ::Void

  fun gen_buffers = glGenBuffers(
    n : SizeI,
    buffers : ::Pointer(UInt)
  ) : ::Void

  fun is_buffer = glIsBuffer(
    buffer : UInt
  ) : Boolean

  fun buffer_data = glBufferData(
    target : BufferTargetARB,
    size : SizeIPtr,
    data : ::Pointer(Void),
    usage : BufferUsageARB
  ) : ::Void

  fun buffer_sub_data = glBufferSubData(
    target : BufferTargetARB,
    offset : IntPtr,
    size : SizeIPtr,
    data : ::Pointer(Void)
  ) : ::Void

  fun get_buffer_sub_data = glGetBufferSubData(
    target : BufferTargetARB,
    offset : IntPtr,
    size : SizeIPtr,
    data : ::Pointer(Void)
  ) : ::Void

  fun map_buffer = glMapBuffer(
    target : BufferTargetARB,
    access : BufferAccessARB
  ) : ::Pointer(Void)

  fun unmap_buffer = glUnmapBuffer(
    target : BufferTargetARB
  ) : Boolean

  fun get_buffer_parameter_iv = glGetBufferParameteriv(
    target : BufferTargetARB,
    pname : BufferPNameARB,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_buffer_pointer_v = glGetBufferPointerv(
    target : BufferTargetARB,
    pname : BufferPointerNameARB,
    params : ::Pointer(Pointer(Void))
  ) : ::Void

  fun blend_equation_separate = glBlendEquationSeparate(
    modeRGB : BlendEquationModeEXT,
    modeAlpha : BlendEquationModeEXT
  ) : ::Void

  fun draw_buffers = glDrawBuffers(
    n : SizeI,
    bufs : ::Pointer(DrawBufferMode)
  ) : ::Void

  fun stencil_op_separate = glStencilOpSeparate(
    face : StencilFaceDirection,
    sfail : StencilOp,
    dpfail : StencilOp,
    dppass : StencilOp
  ) : ::Void

  fun stencil_func_separate = glStencilFuncSeparate(
    face : StencilFaceDirection,
    func : StencilFunction,
    ref : Int,
    mask : UInt
  ) : ::Void

  fun stencil_mask_separate = glStencilMaskSeparate(
    face : StencilFaceDirection,
    mask : UInt
  ) : ::Void

  fun attach_shader = glAttachShader(
    program : UInt,
    shader : UInt
  ) : ::Void

  fun bind_attrib_location = glBindAttribLocation(
    program : UInt,
    index : UInt,
    name : ::Pointer(Char)
  ) : ::Void

  fun compile_shader = glCompileShader(
    shader : UInt
  ) : ::Void

  fun create_program = glCreateProgram : UInt

  fun create_shader = glCreateShader(
    type : ShaderType
  ) : UInt

  fun delete_program = glDeleteProgram(
    program : UInt
  ) : ::Void

  fun delete_shader = glDeleteShader(
    shader : UInt
  ) : ::Void

  fun detach_shader = glDetachShader(
    program : UInt,
    shader : UInt
  ) : ::Void

  fun disable_vertex_attrib_array = glDisableVertexAttribArray(
    index : UInt
  ) : ::Void

  fun enable_vertex_attrib_array = glEnableVertexAttribArray(
    index : UInt
  ) : ::Void

  fun get_active_attrib = glGetActiveAttrib(
    program : UInt,
    index : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    size : ::Pointer(Int),
    type : ::Pointer(AttributeType),
    name : ::Pointer(Char)
  ) : ::Void

  fun get_active_uniform = glGetActiveUniform(
    program : UInt,
    index : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    size : ::Pointer(Int),
    type : ::Pointer(UniformType),
    name : ::Pointer(Char)
  ) : ::Void

  fun get_attached_shaders = glGetAttachedShaders(
    program : UInt,
    maxCount : SizeI,
    count : ::Pointer(SizeI),
    shaders : ::Pointer(UInt)
  ) : ::Void

  fun get_attrib_location = glGetAttribLocation(
    program : UInt,
    name : ::Pointer(Char)
  ) : Int

  fun get_program_iv = glGetProgramiv(
    program : UInt,
    pname : ProgramPropertyARB,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_program_info_log = glGetProgramInfoLog(
    program : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    infoLog : ::Pointer(Char)
  ) : ::Void

  fun get_shader_iv = glGetShaderiv(
    shader : UInt,
    pname : ShaderParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_shader_info_log = glGetShaderInfoLog(
    shader : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    infoLog : ::Pointer(Char)
  ) : ::Void

  fun get_shader_source = glGetShaderSource(
    shader : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    source : ::Pointer(Char)
  ) : ::Void

  fun get_uniform_location = glGetUniformLocation(
    program : UInt,
    name : ::Pointer(Char)
  ) : Int

  fun get_uniform_fv = glGetUniformfv(
    program : UInt,
    location : Int,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_uniform_iv = glGetUniformiv(
    program : UInt,
    location : Int,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_vertex_attrib_dv = glGetVertexAttribdv(
    index : UInt,
    pname : VertexAttribPropertyARB,
    params : ::Pointer(Double)
  ) : ::Void

  fun get_vertex_attrib_fv = glGetVertexAttribfv(
    index : UInt,
    pname : VertexAttribPropertyARB,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_vertex_attrib_iv = glGetVertexAttribiv(
    index : UInt,
    pname : VertexAttribPropertyARB,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_vertex_attrib_pointer_v = glGetVertexAttribPointerv(
    index : UInt,
    pname : VertexAttribPointerPropertyARB,
    pointer : ::Pointer(Pointer(Void))
  ) : ::Void

  fun is_program = glIsProgram(
    program : UInt
  ) : Boolean

  fun is_shader = glIsShader(
    shader : UInt
  ) : Boolean

  fun link_program = glLinkProgram(
    program : UInt
  ) : ::Void

  fun shader_source = glShaderSource(
    shader : UInt,
    count : SizeI,
    string : ::Pointer(::Pointer(Char)),
    length : ::Pointer(Int)
  ) : ::Void

  fun use_program = glUseProgram(
    program : UInt
  ) : ::Void

  fun uniform_1f = glUniform1f(
    location : Int,
    v0 : Float
  ) : ::Void

  fun uniform_2f = glUniform2f(
    location : Int,
    v0 : Float,
    v1 : Float
  ) : ::Void

  fun uniform_3f = glUniform3f(
    location : Int,
    v0 : Float,
    v1 : Float,
    v2 : Float
  ) : ::Void

  fun uniform_4f = glUniform4f(
    location : Int,
    v0 : Float,
    v1 : Float,
    v2 : Float,
    v3 : Float
  ) : ::Void

  fun uniform_1i = glUniform1i(
    location : Int,
    v0 : Int
  ) : ::Void

  fun uniform_2i = glUniform2i(
    location : Int,
    v0 : Int,
    v1 : Int
  ) : ::Void

  fun uniform_3i = glUniform3i(
    location : Int,
    v0 : Int,
    v1 : Int,
    v2 : Int
  ) : ::Void

  fun uniform_4i = glUniform4i(
    location : Int,
    v0 : Int,
    v1 : Int,
    v2 : Int,
    v3 : Int
  ) : ::Void

  fun uniform_1fv = glUniform1fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_2fv = glUniform2fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_3fv = glUniform3fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_4fv = glUniform4fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_1iv = glUniform1iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_2iv = glUniform2iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_3iv = glUniform3iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_4iv = glUniform4iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_matrix_2fv = glUniformMatrix2fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_3fv = glUniformMatrix3fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_4fv = glUniformMatrix4fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun validate_program = glValidateProgram(
    program : UInt
  ) : ::Void

  fun vertex_attrib_1d = glVertexAttrib1d(
    index : UInt,
    x : Double
  ) : ::Void

  fun vertex_attrib_1dv = glVertexAttrib1dv(
    index : UInt,
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_attrib_1f = glVertexAttrib1f(
    index : UInt,
    x : Float
  ) : ::Void

  fun vertex_attrib_1fv = glVertexAttrib1fv(
    index : UInt,
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_attrib_1s = glVertexAttrib1s(
    index : UInt,
    x : Short
  ) : ::Void

  fun vertex_attrib_1sv = glVertexAttrib1sv(
    index : UInt,
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_attrib_2d = glVertexAttrib2d(
    index : UInt,
    x : Double,
    y : Double
  ) : ::Void

  fun vertex_attrib_2dv = glVertexAttrib2dv(
    index : UInt,
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_attrib_2f = glVertexAttrib2f(
    index : UInt,
    x : Float,
    y : Float
  ) : ::Void

  fun vertex_attrib_2fv = glVertexAttrib2fv(
    index : UInt,
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_attrib_2s = glVertexAttrib2s(
    index : UInt,
    x : Short,
    y : Short
  ) : ::Void

  fun vertex_attrib_2sv = glVertexAttrib2sv(
    index : UInt,
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_attrib_3d = glVertexAttrib3d(
    index : UInt,
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun vertex_attrib_3dv = glVertexAttrib3dv(
    index : UInt,
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_attrib_3f = glVertexAttrib3f(
    index : UInt,
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun vertex_attrib_3fv = glVertexAttrib3fv(
    index : UInt,
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_attrib_3s = glVertexAttrib3s(
    index : UInt,
    x : Short,
    y : Short,
    z : Short
  ) : ::Void

  fun vertex_attrib_3sv = glVertexAttrib3sv(
    index : UInt,
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_attrib_4nbv = glVertexAttrib4Nbv(
    index : UInt,
    v : ::Pointer(Byte)
  ) : ::Void

  fun vertex_attrib_4niv = glVertexAttrib4Niv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_4nsv = glVertexAttrib4Nsv(
    index : UInt,
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_attrib_4nub = glVertexAttrib4Nub(
    index : UInt,
    x : UByte,
    y : UByte,
    z : UByte,
    w : UByte
  ) : ::Void

  fun vertex_attrib_4nubv = glVertexAttrib4Nubv(
    index : UInt,
    v : ::Pointer(UByte)
  ) : ::Void

  fun vertex_attrib_4nuiv = glVertexAttrib4Nuiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_4nusv = glVertexAttrib4Nusv(
    index : UInt,
    v : ::Pointer(UShort)
  ) : ::Void

  fun vertex_attrib_4bv = glVertexAttrib4bv(
    index : UInt,
    v : ::Pointer(Byte)
  ) : ::Void

  fun vertex_attrib_4d = glVertexAttrib4d(
    index : UInt,
    x : Double,
    y : Double,
    z : Double,
    w : Double
  ) : ::Void

  fun vertex_attrib_4dv = glVertexAttrib4dv(
    index : UInt,
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_attrib_4f = glVertexAttrib4f(
    index : UInt,
    x : Float,
    y : Float,
    z : Float,
    w : Float
  ) : ::Void

  fun vertex_attrib_4fv = glVertexAttrib4fv(
    index : UInt,
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_attrib_4iv = glVertexAttrib4iv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_4s = glVertexAttrib4s(
    index : UInt,
    x : Short,
    y : Short,
    z : Short,
    w : Short
  ) : ::Void

  fun vertex_attrib_4sv = glVertexAttrib4sv(
    index : UInt,
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_attrib_4ubv = glVertexAttrib4ubv(
    index : UInt,
    v : ::Pointer(UByte)
  ) : ::Void

  fun vertex_attrib_4uiv = glVertexAttrib4uiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_4usv = glVertexAttrib4usv(
    index : UInt,
    v : ::Pointer(UShort)
  ) : ::Void

  fun vertex_attrib_pointer = glVertexAttribPointer(
    index : UInt,
    size : Int,
    type : VertexAttribPointerType,
    normalized : Boolean,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun uniform_matrix_2x3_fv = glUniformMatrix2x3fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_3x2_fv = glUniformMatrix3x2fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_2x4_fv = glUniformMatrix2x4fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_4x2_fv = glUniformMatrix4x2fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_3x4_fv = glUniformMatrix3x4fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix_4x3_fv = glUniformMatrix4x3fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun color_mask_i = glColorMaski(
    index : UInt,
    r : Boolean,
    g : Boolean,
    b : Boolean,
    a : Boolean
  ) : ::Void

  fun get_boolean_i_v = glGetBooleani_v(
    target : BufferTargetARB,
    index : UInt,
    data : ::Pointer(Boolean)
  ) : ::Void

  fun get_integer_i_v = glGetIntegeri_v(
    target : GetPName,
    index : UInt,
    data : ::Pointer(Int)
  ) : ::Void

  fun enable_i = glEnablei(
    target : EnableCap,
    index : UInt
  ) : ::Void

  fun disable_i = glDisablei(
    target : EnableCap,
    index : UInt
  ) : ::Void

  fun is_enabled_i = glIsEnabledi(
    target : EnableCap,
    index : UInt
  ) : Boolean

  fun begin_transform_feedback = glBeginTransformFeedback(
    primitiveMode : PrimitiveType
  ) : ::Void

  fun end_transform_feedback = glEndTransformFeedback : ::Void

  fun bind_buffer_range = glBindBufferRange(
    target : BufferTargetARB,
    index : UInt,
    buffer : UInt,
    offset : IntPtr,
    size : SizeIPtr
  ) : ::Void

  fun bind_buffer_base = glBindBufferBase(
    target : BufferTargetARB,
    index : UInt,
    buffer : UInt
  ) : ::Void

  fun transform_feedback_varyings = glTransformFeedbackVaryings(
    program : UInt,
    count : SizeI,
    varyings : ::Pointer(::Pointer(Char)),
    bufferMode : TransformFeedbackBufferMode
  ) : ::Void

  fun get_transform_feedback_varying = glGetTransformFeedbackVarying(
    program : UInt,
    index : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    size : ::Pointer(SizeI),
    type : ::Pointer(AttributeType),
    name : ::Pointer(Char)
  ) : ::Void

  fun clamp_color = glClampColor(
    target : ClampColorTargetARB,
    clamp : ClampColorModeARB
  ) : ::Void

  fun begin_conditional_render = glBeginConditionalRender(
    id : UInt,
    mode : ConditionalRenderMode
  ) : ::Void

  fun end_conditional_render = glEndConditionalRender : ::Void

  fun vertex_attrib_i_pointer = glVertexAttribIPointer(
    index : UInt,
    size : Int,
    type : VertexAttribIType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun get_vertex_attrib_i_iv = glGetVertexAttribIiv(
    index : UInt,
    pname : VertexAttribEnum,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_vertex_attrib_i_uiv = glGetVertexAttribIuiv(
    index : UInt,
    pname : VertexAttribEnum,
    params : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_i_1i = glVertexAttribI1i(
    index : UInt,
    x : Int
  ) : ::Void

  fun vertex_attrib_i_2i = glVertexAttribI2i(
    index : UInt,
    x : Int,
    y : Int
  ) : ::Void

  fun vertex_attrib_i_3i = glVertexAttribI3i(
    index : UInt,
    x : Int,
    y : Int,
    z : Int
  ) : ::Void

  fun vertex_attrib_i_4i = glVertexAttribI4i(
    index : UInt,
    x : Int,
    y : Int,
    z : Int,
    w : Int
  ) : ::Void

  fun vertex_attrib_i_1ui = glVertexAttribI1ui(
    index : UInt,
    x : UInt
  ) : ::Void

  fun vertex_attrib_i_2ui = glVertexAttribI2ui(
    index : UInt,
    x : UInt,
    y : UInt
  ) : ::Void

  fun vertex_attrib_i_3ui = glVertexAttribI3ui(
    index : UInt,
    x : UInt,
    y : UInt,
    z : UInt
  ) : ::Void

  fun vertex_attrib_i_4ui = glVertexAttribI4ui(
    index : UInt,
    x : UInt,
    y : UInt,
    z : UInt,
    w : UInt
  ) : ::Void

  fun vertex_attrib_i_1iv = glVertexAttribI1iv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_i_2iv = glVertexAttribI2iv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_i_3iv = glVertexAttribI3iv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_i_4iv = glVertexAttribI4iv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_i_1uiv = glVertexAttribI1uiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_i_2uiv = glVertexAttribI2uiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_i_3uiv = glVertexAttribI3uiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_i_4uiv = glVertexAttribI4uiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_i_4bv = glVertexAttribI4bv(
    index : UInt,
    v : ::Pointer(Byte)
  ) : ::Void

  fun vertex_attrib_i_4sv = glVertexAttribI4sv(
    index : UInt,
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_attrib_i_4ubv = glVertexAttribI4ubv(
    index : UInt,
    v : ::Pointer(UByte)
  ) : ::Void

  fun vertex_attrib_i_4usv = glVertexAttribI4usv(
    index : UInt,
    v : ::Pointer(UShort)
  ) : ::Void

  fun get_uniform_uiv = glGetUniformuiv(
    program : UInt,
    location : Int,
    params : ::Pointer(UInt)
  ) : ::Void

  fun bind_frag_data_location = glBindFragDataLocation(
    program : UInt,
    color : UInt,
    name : ::Pointer(Char)
  ) : ::Void

  fun get_frag_data_location = glGetFragDataLocation(
    program : UInt,
    name : ::Pointer(Char)
  ) : Int

  fun uniform_1ui = glUniform1ui(
    location : Int,
    v0 : UInt
  ) : ::Void

  fun uniform_2ui = glUniform2ui(
    location : Int,
    v0 : UInt,
    v1 : UInt
  ) : ::Void

  fun uniform_3ui = glUniform3ui(
    location : Int,
    v0 : UInt,
    v1 : UInt,
    v2 : UInt
  ) : ::Void

  fun uniform_4ui = glUniform4ui(
    location : Int,
    v0 : UInt,
    v1 : UInt,
    v2 : UInt,
    v3 : UInt
  ) : ::Void

  fun uniform_1uiv = glUniform1uiv(
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun uniform_2uiv = glUniform2uiv(
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun uniform_3uiv = glUniform3uiv(
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun uniform_4uiv = glUniform4uiv(
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun tex_parameter_i_iv = glTexParameterIiv(
    target : TextureTarget,
    pname : TextureParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun tex_parameter_i_uiv = glTexParameterIuiv(
    target : TextureTarget,
    pname : TextureParameterName,
    params : ::Pointer(UInt)
  ) : ::Void

  fun get_tex_parameter_i_iv = glGetTexParameterIiv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_tex_parameter_i_uiv = glGetTexParameterIuiv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(UInt)
  ) : ::Void

  fun clear_buffer_fiv = glClearBufferiv(
    buffer : Buffer,
    drawbuffer : Int,
    value : ::Pointer(Int)
  ) : ::Void

  fun clear_buffer_uiv = glClearBufferuiv(
    buffer : Buffer,
    drawbuffer : Int,
    value : ::Pointer(UInt)
  ) : ::Void

  fun clear_buffer_fv = glClearBufferfv(
    buffer : Buffer,
    drawbuffer : Int,
    value : ::Pointer(Float)
  ) : ::Void

  fun clear_bufferf_i = glClearBufferfi(
    buffer : Buffer,
    drawbuffer : Int,
    depth : Float,
    stencil : Int
  ) : ::Void

  fun get_string_i = glGetStringi(
    name : StringName,
    index : UInt
  ) : ::Pointer(UByte)

  fun is_renderbuffer = glIsRenderbuffer(
    renderbuffer : UInt
  ) : Boolean

  fun bind_renderbuffer = glBindRenderbuffer(
    target : RenderbufferTarget,
    renderbuffer : UInt
  ) : ::Void

  fun delete_renderbuffers = glDeleteRenderbuffers(
    n : SizeI,
    renderbuffers : ::Pointer(UInt)
  ) : ::Void

  fun gen_renderbuffers = glGenRenderbuffers(
    n : SizeI,
    renderbuffers : ::Pointer(UInt)
  ) : ::Void

  fun renderbuffer_storage = glRenderbufferStorage(
    target : RenderbufferTarget,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun get_renderbuffer_parameter_iv = glGetRenderbufferParameteriv(
    target : RenderbufferTarget,
    pname : RenderbufferParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun is_framebuffer = glIsFramebuffer(
    framebuffer : UInt
  ) : Boolean

  fun bind_framebuffer = glBindFramebuffer(
    target : FramebufferTarget,
    framebuffer : UInt
  ) : ::Void

  fun delete_framebuffers = glDeleteFramebuffers(
    n : SizeI,
    framebuffers : ::Pointer(UInt)
  ) : ::Void

  fun gen_framebuffers = glGenFramebuffers(
    n : SizeI,
    framebuffers : ::Pointer(UInt)
  ) : ::Void

  fun check_framebuffer_status = glCheckFramebufferStatus(
    target : FramebufferTarget
  ) : Enum

  fun framebuffer_texture_1d = glFramebufferTexture1D(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    textarget : TextureTarget,
    texture : UInt,
    level : Int
  ) : ::Void

  fun framebuffer_texture_2d = glFramebufferTexture2D(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    textarget : TextureTarget,
    texture : UInt,
    level : Int
  ) : ::Void

  fun framebuffer_texture_3d = glFramebufferTexture3D(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    textarget : TextureTarget,
    texture : UInt,
    level : Int,
    zoffset : Int
  ) : ::Void

  fun framebuffer_renderbuffer = glFramebufferRenderbuffer(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    renderbuffertarget : RenderbufferTarget,
    renderbuffer : UInt
  ) : ::Void

  fun get_framebuffer_attachment_parameter_iv = glGetFramebufferAttachmentParameteriv(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    pname : FramebufferAttachmentParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun generate_mipmap = glGenerateMipmap(
    target : TextureTarget
  ) : ::Void

  fun blit_framebuffer = glBlitFramebuffer(
    srcX0 : Int,
    srcY0 : Int,
    srcX1 : Int,
    srcY1 : Int,
    dstX0 : Int,
    dstY0 : Int,
    dstX1 : Int,
    dstY1 : Int,
    mask : ClearBufferMask,
    filter : BlitFramebufferFilter
  ) : ::Void

  fun renderbuffer_storage_multisample = glRenderbufferStorageMultisample(
    target : RenderbufferTarget,
    samples : SizeI,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun framebuffer_texture_layer = glFramebufferTextureLayer(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    texture : UInt,
    level : Int,
    layer : Int
  ) : ::Void

  fun map_buffer_range = glMapBufferRange(
    target : BufferTargetARB,
    offset : IntPtr,
    length : SizeIPtr,
    access : MapBufferAccessMask
  ) : ::Pointer(Void)

  fun flush_mapped_buffer_range = glFlushMappedBufferRange(
    target : BufferTargetARB,
    offset : IntPtr,
    length : SizeIPtr
  ) : ::Void

  fun bind_vertex_array = glBindVertexArray(
    array : UInt
  ) : ::Void

  fun delete_vertex_arrays = glDeleteVertexArrays(
    n : SizeI,
    arrays : ::Pointer(UInt)
  ) : ::Void

  fun gen_vertex_arrays = glGenVertexArrays(
    n : SizeI,
    arrays : ::Pointer(UInt)
  ) : ::Void

  fun is_vertex_array = glIsVertexArray(
    array : UInt
  ) : Boolean

  fun draw_arrays_instanced = glDrawArraysInstanced(
    mode : PrimitiveType,
    first : Int,
    count : SizeI,
    instancecount : SizeI
  ) : ::Void

  fun draw_elements_instanced = glDrawElementsInstanced(
    mode : PrimitiveType,
    count : SizeI,
    type : DrawElementsType,
    indices : ::Pointer(Void),
    instancecount : SizeI
  ) : ::Void

  fun tex_buffer = glTexBuffer(
    target : TextureTarget,
    internalformat : InternalFormat,
    buffer : UInt
  ) : ::Void

  fun primitive_restart_index = glPrimitiveRestartIndex(
    index : UInt
  ) : ::Void

  fun copy_buffer_sub_data = glCopyBufferSubData(
    readTarget : CopyBufferSubDataTarget,
    writeTarget : CopyBufferSubDataTarget,
    readOffset : IntPtr,
    writeOffset : IntPtr,
    size : SizeIPtr
  ) : ::Void

  fun get_uniform_indices = glGetUniformIndices(
    program : UInt,
    uniformCount : SizeI,
    uniformNames : ::Pointer(::Pointer(Char)),
    uniformIndices : ::Pointer(UInt)
  ) : ::Void

  fun get_active_uniforms_iv = glGetActiveUniformsiv(
    program : UInt,
    uniformCount : SizeI,
    uniformIndices : ::Pointer(UInt),
    pname : UniformPName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_active_uniform_name = glGetActiveUniformName(
    program : UInt,
    uniformIndex : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    uniformName : ::Pointer(Char)
  ) : ::Void

  fun get_uniform_block_index = glGetUniformBlockIndex(
    program : UInt,
    uniformBlockName : ::Pointer(Char)
  ) : UInt

  fun get_active_uniform_block_iv = glGetActiveUniformBlockiv(
    program : UInt,
    uniformBlockIndex : UInt,
    pname : UniformBlockPName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_active_uniform_block_name = glGetActiveUniformBlockName(
    program : UInt,
    uniformBlockIndex : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    uniformBlockName : ::Pointer(Char)
  ) : ::Void

  fun uniform_block_binding = glUniformBlockBinding(
    program : UInt,
    uniformBlockIndex : UInt,
    uniformBlockBinding : UInt
  ) : ::Void

  fun draw_elements_base_vertex = glDrawElementsBaseVertex(
    mode : PrimitiveType,
    count : SizeI,
    type : DrawElementsType,
    indices : ::Pointer(Void),
    basevertex : Int
  ) : ::Void

  fun draw_range_elements_base_vertex = glDrawRangeElementsBaseVertex(
    mode : PrimitiveType,
    start : UInt,
    end : UInt,
    count : SizeI,
    type : DrawElementsType,
    indices : ::Pointer(Void),
    basevertex : Int
  ) : ::Void

  fun draw_elements_instanced_base_vertex = glDrawElementsInstancedBaseVertex(
    mode : PrimitiveType,
    count : SizeI,
    type : DrawElementsType,
    indices : ::Pointer(Void),
    instancecount : SizeI,
    basevertex : Int
  ) : ::Void

  fun multi_draw_elements_base_vertex = glMultiDrawElementsBaseVertex(
    mode : PrimitiveType,
    count : ::Pointer(SizeI),
    type : DrawElementsType,
    indices : ::Pointer(Pointer(Void)),
    drawcount : SizeI,
    basevertex : ::Pointer(Int)
  ) : ::Void

  fun provoking_vertex = glProvokingVertex(
    mode : VertexProvokingMode
  ) : ::Void

  fun fence_sync = glFenceSync(
    condition : SyncCondition,
    flags : SyncBehaviorFlagS
  ) : Sync

  fun is_sync = glIsSync(
    sync : Sync
  ) : Boolean

  fun delete_sync = glDeleteSync(
    sync : Sync
  ) : ::Void

  fun client_wait_sync = glClientWaitSync(
    sync : Sync,
    flags : SyncObjectMask,
    timeout : UInt64
  ) : Enum

  fun wait_sync = glWaitSync(
    sync : Sync,
    flags : SyncBehaviorFlagS,
    timeout : UInt64
  ) : ::Void

  fun get_integer_64v = glGetInteger64v(
    pname : GetPName,
    data : ::Pointer(Int64)
  ) : ::Void

  fun get_sync_iv = glGetSynciv(
    sync : Sync,
    pname : SyncParameterName,
    count : SizeI,
    length : ::Pointer(SizeI),
    values : ::Pointer(Int)
  ) : ::Void

  fun get_integer_64i_v = glGetInteger64i_v(
    target : GetPName,
    index : UInt,
    data : ::Pointer(Int64)
  ) : ::Void

  fun get_buffer_parameter_i64v = glGetBufferParameteri64v(
    target : BufferTargetARB,
    pname : BufferPNameARB,
    params : ::Pointer(Int64)
  ) : ::Void

  fun framebuffer_texture = glFramebufferTexture(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    texture : UInt,
    level : Int
  ) : ::Void

  fun tex_image_2d_multisample = glTexImage2DMultisample(
    target : TextureTarget,
    samples : SizeI,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI,
    fixedsamplelocations : Boolean
  ) : ::Void

  fun tex_image_3d_multisample = glTexImage3DMultisample(
    target : TextureTarget,
    samples : SizeI,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI,
    depth : SizeI,
    fixedsamplelocations : Boolean
  ) : ::Void

  fun get_multisample_fv = glGetMultisamplefv(
    pname : GetMultisamplePNameNV,
    index : UInt,
    val : ::Pointer(Float)
  ) : ::Void

  fun sample_mask_i = glSampleMaski(
    maskNumber : UInt,
    mask : Bitfield
  ) : ::Void

  fun bind_frag_data_location_indexed = glBindFragDataLocationIndexed(
    program : UInt,
    colorNumber : UInt,
    index : UInt,
    name : ::Pointer(Char)
  ) : ::Void

  fun get_frag_data_index = glGetFragDataIndex(
    program : UInt,
    name : ::Pointer(Char)
  ) : Int

  fun gen_samplers = glGenSamplers(
    count : SizeI,
    samplers : ::Pointer(UInt)
  ) : ::Void

  fun delete_samplers = glDeleteSamplers(
    count : SizeI,
    samplers : ::Pointer(UInt)
  ) : ::Void

  fun is_sampler = glIsSampler(
    sampler : UInt
  ) : Boolean

  fun bind_sampler = glBindSampler(
    unit : UInt,
    sampler : UInt
  ) : ::Void

  fun sampler_parameter_i = glSamplerParameteri(
    sampler : UInt,
    pname : SamplerParameterI,
    param : Int
  ) : ::Void

  fun sampler_parameter_iv = glSamplerParameteriv(
    sampler : UInt,
    pname : SamplerParameterI,
    param : ::Pointer(Int)
  ) : ::Void

  fun sampler_parameter_f = glSamplerParameterf(
    sampler : UInt,
    pname : SamplerParameterF,
    param : Float
  ) : ::Void

  fun sampler_parameter_fv = glSamplerParameterfv(
    sampler : UInt,
    pname : SamplerParameterF,
    param : ::Pointer(Float)
  ) : ::Void

  fun sampler_parameter_i_iv = glSamplerParameterIiv(
    sampler : UInt,
    pname : SamplerParameterI,
    param : ::Pointer(Int)
  ) : ::Void

  fun sampler_parameter_i_uiv = glSamplerParameterIuiv(
    sampler : UInt,
    pname : SamplerParameterI,
    param : ::Pointer(UInt)
  ) : ::Void

  fun get_sampler_parameter_iv = glGetSamplerParameteriv(
    sampler : UInt,
    pname : SamplerParameterI,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_sampler_parameter_i_iv = glGetSamplerParameterIiv(
    sampler : UInt,
    pname : SamplerParameterI,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_sampler_parameter_fv = glGetSamplerParameterfv(
    sampler : UInt,
    pname : SamplerParameterF,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_sampler_parameter_i_uiv = glGetSamplerParameterIuiv(
    sampler : UInt,
    pname : SamplerParameterI,
    params : ::Pointer(UInt)
  ) : ::Void

  fun query_counter = glQueryCounter(
    id : UInt,
    target : QueryCounterTarget
  ) : ::Void

  fun get_query_object_i64v = glGetQueryObjecti64v(
    id : UInt,
    pname : QueryObjectParameterName,
    params : ::Pointer(Int64)
  ) : ::Void

  fun get_query_objectu_i64v = glGetQueryObjectui64v(
    id : UInt,
    pname : QueryObjectParameterName,
    params : ::Pointer(UInt64)
  ) : ::Void

  fun vertex_attrib_divisor = glVertexAttribDivisor(
    index : UInt,
    divisor : UInt
  ) : ::Void

  fun vertex_attrib_p_1ui = glVertexAttribP1ui(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : UInt
  ) : ::Void

  fun vertex_attrib_p_1uiv = glVertexAttribP1uiv(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_p_2ui = glVertexAttribP2ui(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : UInt
  ) : ::Void

  fun vertex_attrib_p_2uiv = glVertexAttribP2uiv(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_p_3ui = glVertexAttribP3ui(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : UInt
  ) : ::Void

  fun vertex_attrib_p_3uiv = glVertexAttribP3uiv(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : ::Pointer(UInt)
  ) : ::Void

  fun vertex_attrib_p_4ui = glVertexAttribP4ui(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : UInt
  ) : ::Void

  fun vertex_attrib_p_4uiv = glVertexAttribP4uiv(
    index : UInt,
    type : VertexAttribPointerType,
    normalized : Boolean,
    value : ::Pointer(UInt)
  ) : ::Void

  fun min_sample_shading = glMinSampleShading(
    value : Float
  ) : ::Void

  fun blend_equation_i = glBlendEquationi(
    buf : UInt,
    mode : BlendEquationModeEXT
  ) : ::Void

  fun blend_equation_separate_i = glBlendEquationSeparatei(
    buf : UInt,
    modeRGB : BlendEquationModeEXT,
    modeAlpha : BlendEquationModeEXT
  ) : ::Void

  fun blend_func_i = glBlendFunci(
    buf : UInt,
    src : BlendingFactor,
    dst : BlendingFactor
  ) : ::Void

  fun blend_func_separate_i = glBlendFuncSeparatei(
    buf : UInt,
    srcRGB : BlendingFactor,
    dstRGB : BlendingFactor,
    srcAlpha : BlendingFactor,
    dstAlpha : BlendingFactor
  ) : ::Void

  fun draw_arrays_indirect = glDrawArraysIndirect(
    mode : PrimitiveType,
    indirect : ::Pointer(Void)
  ) : ::Void

  fun draw_elements_indirect = glDrawElementsIndirect(
    mode : PrimitiveType,
    type : DrawElementsType,
    indirect : ::Pointer(Void)
  ) : ::Void

  fun uniform_1d = glUniform1d(
    location : Int,
    x : Double
  ) : ::Void

  fun uniform_2d = glUniform2d(
    location : Int,
    x : Double,
    y : Double
  ) : ::Void

  fun uniform_3d = glUniform3d(
    location : Int,
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun uniform_4d = glUniform4d(
    location : Int,
    x : Double,
    y : Double,
    z : Double,
    w : Double
  ) : ::Void

  fun uniform_1dv = glUniform1dv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_2dv = glUniform2dv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_3dv = glUniform3dv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_4dv = glUniform4dv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_2dv = glUniformMatrix2dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_3dv = glUniformMatrix3dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_4dv = glUniformMatrix4dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_2x3_dv = glUniformMatrix2x3dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_2x4_dv = glUniformMatrix2x4dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_3x2_dv = glUniformMatrix3x2dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_3x4_dv = glUniformMatrix3x4dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_4x2_dv = glUniformMatrix4x2dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun uniform_matrix_4x3_dv = glUniformMatrix4x3dv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Double)
  ) : ::Void

  fun get_uniform_dv = glGetUniformdv(
    program : UInt,
    location : Int,
    params : ::Pointer(Double)
  ) : ::Void

  fun get_subroutine_uniform_location = glGetSubroutineUniformLocation(
    program : UInt,
    shadertype : ShaderType,
    name : ::Pointer(Char)
  ) : Int

  fun get_subroutine_index = glGetSubroutineIndex(
    program : UInt,
    shadertype : ShaderType,
    name : ::Pointer(Char)
  ) : UInt

  fun get_active_subroutine_uniform_iv = glGetActiveSubroutineUniformiv(
    program : UInt,
    shadertype : ShaderType,
    index : UInt,
    pname : SubroutineParameterName,
    values : ::Pointer(Int)
  ) : ::Void

  fun get_active_subroutine_uniform_name = glGetActiveSubroutineUniformName(
    program : UInt,
    shadertype : ShaderType,
    index : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    name : ::Pointer(Char)
  ) : ::Void

  fun get_active_subroutine_name = glGetActiveSubroutineName(
    program : UInt,
    shadertype : ShaderType,
    index : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    name : ::Pointer(Char)
  ) : ::Void

  fun uniform_subroutines_uiv = glUniformSubroutinesuiv(
    shadertype : ShaderType,
    count : SizeI,
    indices : ::Pointer(UInt)
  ) : ::Void

  fun get_uniform_subroutine_uiv = glGetUniformSubroutineuiv(
    shadertype : ShaderType,
    location : Int,
    params : ::Pointer(UInt)
  ) : ::Void

  fun get_program_stage_iv = glGetProgramStageiv(
    program : UInt,
    shadertype : ShaderType,
    pname : ProgramStagePName,
    values : ::Pointer(Int)
  ) : ::Void

  fun patch_parameter_i = glPatchParameteri(
    pname : PatchParameterName,
    value : Int
  ) : ::Void

  fun patch_parameter_fv = glPatchParameterfv(
    pname : PatchParameterName,
    values : ::Pointer(Float)
  ) : ::Void

  fun bind_transform_feedback = glBindTransformFeedback(
    target : BindTransformFeedbackTarget,
    id : UInt
  ) : ::Void

  fun delete_transform_feedbacks = glDeleteTransformFeedbacks(
    n : SizeI,
    ids : ::Pointer(UInt)
  ) : ::Void

  fun gen_transform_feedbacks = glGenTransformFeedbacks(
    n : SizeI,
    ids : ::Pointer(UInt)
  ) : ::Void

  fun is_transform_feedback = glIsTransformFeedback(
    id : UInt
  ) : Boolean

  fun pause_transform_feedback = glPauseTransformFeedback : ::Void

  fun resume_transform_feedback = glResumeTransformFeedback : ::Void

  fun draw_transform_feedback = glDrawTransformFeedback(
    mode : PrimitiveType,
    id : UInt
  ) : ::Void

  fun draw_transform_feedback_stream = glDrawTransformFeedbackStream(
    mode : PrimitiveType,
    id : UInt,
    stream : UInt
  ) : ::Void

  fun begin_query_indexed = glBeginQueryIndexed(
    target : QueryTarget,
    index : UInt,
    id : UInt
  ) : ::Void

  fun end_query_indexed = glEndQueryIndexed(
    target : QueryTarget,
    index : UInt
  ) : ::Void

  fun get_query_indexed_iv = glGetQueryIndexediv(
    target : QueryTarget,
    index : UInt,
    pname : QueryParameterName,
    params : ::Pointer(Int)
  ) : ::Void
end
