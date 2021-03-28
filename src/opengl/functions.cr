{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  fun active_texture = glActiveTexture(
    texture : TextureUnit
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

  fun bind_buffer = glBindBuffer(
    target : BufferTargetARB,
    buffer : UInt
  ) : ::Void

  fun bind_framebuffer = glBindFramebuffer(
    target : FramebufferTarget,
    framebuffer : UInt
  ) : ::Void

  fun bind_renderbuffer = glBindRenderbuffer(
    target : RenderbufferTarget,
    renderbuffer : UInt
  ) : ::Void

  fun bind_texture = glBindTexture(
    target : TextureTarget,
    texture : UInt
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

  fun blend_equation_separate = glBlendEquationSeparate(
    modeRGB : BlendEquationModeEXT,
    modeAlpha : BlendEquationModeEXT
  ) : ::Void

  fun blend_func = glBlendFunc(
    sfactor : BlendingFactor,
    dfactor : BlendingFactor
  ) : ::Void

  fun blend_func_separate = glBlendFuncSeparate(
    sfactorRGB : BlendingFactor,
    dfactorRGB : BlendingFactor,
    sfactorAlpha : BlendingFactor,
    dfactorAlpha : BlendingFactor
  ) : ::Void

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

  fun check_framebuffer_status = glCheckFramebufferStatus(
    target : FramebufferTarget
  ) : Enum

  fun clear = glClear(
    mask : ClearBufferMask
  ) : ::Void

  fun clear_color = glClearColor(
    red : Float,
    green : Float,
    blue : Float,
    alpha : Float
  ) : ::Void

  fun clear_depth_f = glClearDepthf(
    d : Float
  ) : ::Void

  fun clear_stencil = glClearStencil(
    s : Int
  ) : ::Void

  fun color_mask = glColorMask(
    red : Boolean,
    green : Boolean,
    blue : Boolean,
    alpha : Boolean
  ) : ::Void

  fun compile_shader = glCompileShader(
    shader : UInt
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

  fun create_program = glCreateProgram : UInt

  fun create_shader = glCreateShader(
    type : ShaderType
  ) : UInt

  fun cull_face = glCullFace(
    mode : CullFaceMode
  ) : ::Void

  fun delete_buffers = glDeleteBuffers(
    n : SizeI,
    buffers : ::Pointer(UInt)
  ) : ::Void

  fun delete_framebuffers = glDeleteFramebuffers(
    n : SizeI,
    framebuffers : ::Pointer(UInt)
  ) : ::Void

  fun delete_program = glDeleteProgram(
    program : UInt
  ) : ::Void

  fun delete_renderbuffers = glDeleteRenderbuffers(
    n : SizeI,
    renderbuffers : ::Pointer(UInt)
  ) : ::Void

  fun delete_shader = glDeleteShader(
    shader : UInt
  ) : ::Void

  fun delete_textures = glDeleteTextures(
    n : SizeI,
    textures : ::Pointer(UInt)
  ) : ::Void

  fun depth_func = glDepthFunc(
    func : DepthFunction
  ) : ::Void

  fun depth_mask = glDepthMask(
    flag : Boolean
  ) : ::Void

  fun depth_range_f = glDepthRangef(
    n : Float,
    f : Float
  ) : ::Void

  fun detach_shader = glDetachShader(
    program : UInt,
    shader : UInt
  ) : ::Void

  fun disable = glDisable(
    cap : EnableCap
  ) : ::Void

  fun disable_vertex_attrib_array = glDisableVertexAttribArray(
    index : UInt
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

  fun enable = glEnable(
    cap : EnableCap
  ) : ::Void

  fun enable_vertex_attrib_array = glEnableVertexAttribArray(
    index : UInt
  ) : ::Void

  fun finish = glFinish : ::Void

  fun flush = glFlush : ::Void

  fun framebuffer_renderbuffer = glFramebufferRenderbuffer(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    renderbuffertarget : RenderbufferTarget,
    renderbuffer : UInt
  ) : ::Void

  fun framebuffer_texture_2d = glFramebufferTexture2D(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    textarget : TextureTarget,
    texture : UInt,
    level : Int
  ) : ::Void

  fun front_face = glFrontFace(
    mode : FrontFaceDirection
  ) : ::Void

  fun gen_buffers = glGenBuffers(
    n : SizeI,
    buffers : ::Pointer(UInt)
  ) : ::Void

  fun generate_mipmap = glGenerateMipmap(
    target : TextureTarget
  ) : ::Void

  fun gen_framebuffers = glGenFramebuffers(
    n : SizeI,
    framebuffers : ::Pointer(UInt)
  ) : ::Void

  fun gen_renderbuffers = glGenRenderbuffers(
    n : SizeI,
    renderbuffers : ::Pointer(UInt)
  ) : ::Void

  fun gen_textures = glGenTextures(
    n : SizeI,
    textures : ::Pointer(UInt)
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

  fun get_boolean_v = glGetBooleanv(
    pname : GetPName,
    data : ::Pointer(Boolean)
  ) : ::Void

  fun get_buffer_parameter_iv = glGetBufferParameteriv(
    target : BufferTargetARB,
    pname : BufferPNameARB,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_error = glGetError : Enum

  fun get_float_v = glGetFloatv(
    pname : GetPName,
    data : ::Pointer(Float)
  ) : ::Void

  fun get_framebuffer_attachment_parameter_iv = glGetFramebufferAttachmentParameteriv(
    target : FramebufferTarget,
    attachment : FramebufferAttachment,
    pname : FramebufferAttachmentParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_integer_v = glGetIntegerv(
    pname : GetPName,
    data : ::Pointer(Int)
  ) : ::Void

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

  fun get_renderbuffer_parameter_iv = glGetRenderbufferParameteriv(
    target : RenderbufferTarget,
    pname : RenderbufferParameterName,
    params : ::Pointer(Int)
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

  fun get_shader_precision_format = glGetShaderPrecisionFormat(
    shadertype : ShaderType,
    precisiontype : PrecisionType,
    range : ::Pointer(Int),
    precision : ::Pointer(Int)
  ) : ::Void

  fun get_shader_source = glGetShaderSource(
    shader : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    source : ::Pointer(Char)
  ) : ::Void

  fun get_string = glGetString(
    name : StringName
  ) : ::Pointer(UByte)

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

  fun get_uniform_location = glGetUniformLocation(
    program : UInt,
    name : ::Pointer(Char)
  ) : Int

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

  fun hint = glHint(
    target : HintTarget,
    mode : HintMode
  ) : ::Void

  fun is_buffer = glIsBuffer(
    buffer : UInt
  ) : Boolean

  fun is_enabled = glIsEnabled(
    cap : EnableCap
  ) : Boolean

  fun is_framebuffer = glIsFramebuffer(
    framebuffer : UInt
  ) : Boolean

  fun is_program = glIsProgram(
    program : UInt
  ) : Boolean

  fun is_renderbuffer = glIsRenderbuffer(
    renderbuffer : UInt
  ) : Boolean

  fun is_shader = glIsShader(
    shader : UInt
  ) : Boolean

  fun is_texture = glIsTexture(
    texture : UInt
  ) : Boolean

  fun line_width = glLineWidth(
    width : Float
  ) : ::Void

  fun link_program = glLinkProgram(
    program : UInt
  ) : ::Void

  fun pixel_store_i = glPixelStorei(
    pname : PixelStoreParameter,
    param : Int
  ) : ::Void

  fun polygon_offset = glPolygonOffset(
    factor : Float,
    units : Float
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

  fun release_shader_compiler = glReleaseShaderCompiler : ::Void

  fun renderbuffer_storage = glRenderbufferStorage(
    target : RenderbufferTarget,
    internalformat : InternalFormat,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun sample_coverage = glSampleCoverage(
    value : Float,
    invert : Boolean
  ) : ::Void

  fun scissor = glScissor(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun shader_binary = glShaderBinary(
    count : SizeI,
    shaders : ::Pointer(UInt),
    binaryFormat : Enum,
    binary : ::Pointer(Void),
    length : SizeI
  ) : ::Void

  fun shader_source = glShaderSource(
    shader : UInt,
    count : SizeI,
    string : ::Pointer(::Pointer(Char)),
    length : ::Pointer(Int)
  ) : ::Void

  fun stencil_func = glStencilFunc(
    func : StencilFunction,
    ref : Int,
    mask : UInt
  ) : ::Void

  fun stencil_func_separate = glStencilFuncSeparate(
    face : StencilFaceDirection,
    func : StencilFunction,
    ref : Int,
    mask : UInt
  ) : ::Void

  fun stencil_mask = glStencilMask(
    mask : UInt
  ) : ::Void

  fun stencil_mask_separate = glStencilMaskSeparate(
    face : StencilFaceDirection,
    mask : UInt
  ) : ::Void

  fun stencil_op = glStencilOp(
    fail : StencilOp,
    zfail : StencilOp,
    zpass : StencilOp
  ) : ::Void

  fun stencil_op_separate = glStencilOpSeparate(
    face : StencilFaceDirection,
    sfail : StencilOp,
    dpfail : StencilOp,
    dppass : StencilOp
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

  fun uniform_1f = glUniform1f(
    location : Int,
    v0 : Float
  ) : ::Void

  fun uniform_1fv = glUniform1fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_1i = glUniform1i(
    location : Int,
    v0 : Int
  ) : ::Void

  fun uniform_1iv = glUniform1iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_2f = glUniform2f(
    location : Int,
    v0 : Float,
    v1 : Float
  ) : ::Void

  fun uniform_2fv = glUniform2fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_2i = glUniform2i(
    location : Int,
    v0 : Int,
    v1 : Int
  ) : ::Void

  fun uniform_2iv = glUniform2iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_3f = glUniform3f(
    location : Int,
    v0 : Float,
    v1 : Float,
    v2 : Float
  ) : ::Void

  fun uniform_3fv = glUniform3fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_3i = glUniform3i(
    location : Int,
    v0 : Int,
    v1 : Int,
    v2 : Int
  ) : ::Void

  fun uniform_3iv = glUniform3iv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun uniform_4f = glUniform4f(
    location : Int,
    v0 : Float,
    v1 : Float,
    v2 : Float,
    v3 : Float
  ) : ::Void

  fun uniform_4fv = glUniform4fv(
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_4i = glUniform4i(
    location : Int,
    v0 : Int,
    v1 : Int,
    v2 : Int,
    v3 : Int
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

  fun use_program = glUseProgram(
    program : UInt
  ) : ::Void

  fun validate_program = glValidateProgram(
    program : UInt
  ) : ::Void

  fun vertex_attrib_1f = glVertexAttrib1f(
    index : UInt,
    x : Float
  ) : ::Void

  fun vertex_attrib_1fv = glVertexAttrib1fv(
    index : UInt,
    v : ::Pointer(Float)
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

  fun vertex_attrib_pointer = glVertexAttribPointer(
    index : UInt,
    size : Int,
    type : VertexAttribPointerType,
    normalized : Boolean,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun viewport = glViewport(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun read_buffer = glReadBuffer(
    src : ReadBufferMode
  ) : ::Void

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

  fun get_query_object_uiv = glGetQueryObjectuiv(
    id : UInt,
    pname : QueryObjectParameterName,
    params : ::Pointer(UInt)
  ) : ::Void

  fun unmap_buffer = glUnmapBuffer(
    target : BufferTargetARB
  ) : Boolean

  fun get_buffer_pointer_v = glGetBufferPointerv(
    target : BufferTargetARB,
    pname : BufferPointerNameARB,
    params : ::Pointer(Pointer(Void))
  ) : ::Void

  fun draw_buffers = glDrawBuffers(
    n : SizeI,
    bufs : ::Pointer(DrawBufferMode)
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

  fun get_integer_i_v = glGetIntegeri_v(
    target : GetPName,
    index : UInt,
    data : ::Pointer(Int)
  ) : ::Void

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

  fun vertex_attrib_i_4i = glVertexAttribI4i(
    index : UInt,
    x : Int,
    y : Int,
    z : Int,
    w : Int
  ) : ::Void

  fun vertex_attrib_i_4ui = glVertexAttribI4ui(
    index : UInt,
    x : UInt,
    y : UInt,
    z : UInt,
    w : UInt
  ) : ::Void

  fun vertex_attrib_i_4iv = glVertexAttribI4iv(
    index : UInt,
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_attrib_i_4uiv = glVertexAttribI4uiv(
    index : UInt,
    v : ::Pointer(UInt)
  ) : ::Void

  fun get_uniform_uiv = glGetUniformuiv(
    program : UInt,
    location : Int,
    params : ::Pointer(UInt)
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

  fun fence_sync = glFenceSync(
    condition : SyncCondition,
    flags : SyncBehaviorFlags
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
    flags : SyncBehaviorFlags,
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

  fun get_sampler_parameter_iv = glGetSamplerParameteriv(
    sampler : UInt,
    pname : SamplerParameterI,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_sampler_parameter_fv = glGetSamplerParameterfv(
    sampler : UInt,
    pname : SamplerParameterF,
    params : ::Pointer(Float)
  ) : ::Void

  fun vertex_attrib_divisor = glVertexAttribDivisor(
    index : UInt,
    divisor : UInt
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

  fun get_program_binary = glGetProgramBinary(
    program : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    binaryFormat : ::Pointer(Enum),
    binary : ::Pointer(Void)
  ) : ::Void

  fun program_binary = glProgramBinary(
    program : UInt,
    binaryFormat : Enum,
    binary : ::Pointer(Void),
    length : SizeI
  ) : ::Void

  fun program_parameter_i = glProgramParameteri(
    program : UInt,
    pname : ProgramParameterPName,
    value : Int
  ) : ::Void

  fun invalidate_framebuffer = glInvalidateFramebuffer(
    target : FramebufferTarget,
    numAttachments : SizeI,
    attachments : ::Pointer(InvalidateFramebufferAttachment)
  ) : ::Void

  fun invalidate_sub_framebuffer = glInvalidateSubFramebuffer(
    target : FramebufferTarget,
    numAttachments : SizeI,
    attachments : ::Pointer(InvalidateFramebufferAttachment),
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun tex_storage_2d = glTexStorage2D(
    target : TextureTarget,
    levels : SizeI,
    internalformat : SizedInternalFormat,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun tex_storage_3d = glTexStorage3D(
    target : TextureTarget,
    levels : SizeI,
    internalformat : SizedInternalFormat,
    width : SizeI,
    height : SizeI,
    depth : SizeI
  ) : ::Void

  fun get_internalformat_iv = glGetInternalformativ(
    target : TextureTarget,
    internalformat : InternalFormat,
    pname : InternalFormatPName,
    count : SizeI,
    params : ::Pointer(Int)
  ) : ::Void

  fun dispatch_compute = glDispatchCompute(
    num_groups_x : UInt,
    num_groups_y : UInt,
    num_groups_z : UInt
  ) : ::Void

  fun dispatch_compute_indirect = glDispatchComputeIndirect(
    indirect : IntPtr
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

  fun framebuffer_parameter_i = glFramebufferParameteri(
    target : FramebufferTarget,
    pname : Enum,
    param : Int
  ) : ::Void

  fun get_framebuffer_parameter_iv = glGetFramebufferParameteriv(
    target : FramebufferTarget,
    pname : FramebufferAttachmentParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_program_interface_iv = glGetProgramInterfaceiv(
    program : UInt,
    programInterface : ProgramInterface,
    pname : Enum,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_program_resource_index = glGetProgramResourceIndex(
    program : UInt,
    programInterface : ProgramInterface,
    name : ::Pointer(Char)
  ) : UInt

  fun get_program_resource_name = glGetProgramResourceName(
    program : UInt,
    programInterface : ProgramInterface,
    index : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    name : ::Pointer(Char)
  ) : ::Void

  fun get_program_resource_iv = glGetProgramResourceiv(
    program : UInt,
    programInterface : ProgramInterface,
    index : UInt,
    propCount : SizeI,
    props : ::Pointer(Enum),
    count : SizeI,
    length : ::Pointer(SizeI),
    params : ::Pointer(Int)
  ) : ::Void

  fun get_program_resource_location = glGetProgramResourceLocation(
    program : UInt,
    programInterface : ProgramInterface,
    name : ::Pointer(Char)
  ) : Int

  fun use_program_stages = glUseProgramStages(
    pipeline : UInt,
    stages : UseProgramStageMask,
    program : UInt
  ) : ::Void

  fun active_shader_program = glActiveShaderProgram(
    pipeline : UInt,
    program : UInt
  ) : ::Void

  fun create_shader_program_v = glCreateShaderProgramv(
    type : ShaderType,
    count : SizeI,
    strings : ::Pointer(::Pointer(Char))
  ) : UInt

  fun bind_program_pipeline = glBindProgramPipeline(
    pipeline : UInt
  ) : ::Void

  fun delete_program_pipelines = glDeleteProgramPipelines(
    n : SizeI,
    pipelines : ::Pointer(UInt)
  ) : ::Void

  fun gen_program_pipelines = glGenProgramPipelines(
    n : SizeI,
    pipelines : ::Pointer(UInt)
  ) : ::Void

  fun is_program_pipeline = glIsProgramPipeline(
    pipeline : UInt
  ) : Boolean

  fun get_program_pipeline_iv = glGetProgramPipelineiv(
    pipeline : UInt,
    pname : PipelineParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun program_uniform_1i = glProgramUniform1i(
    program : UInt,
    location : Int,
    v0 : Int
  ) : ::Void

  fun program_uniform_2i = glProgramUniform2i(
    program : UInt,
    location : Int,
    v0 : Int,
    v1 : Int
  ) : ::Void

  fun program_uniform_3i = glProgramUniform3i(
    program : UInt,
    location : Int,
    v0 : Int,
    v1 : Int,
    v2 : Int
  ) : ::Void

  fun program_uniform_4i = glProgramUniform4i(
    program : UInt,
    location : Int,
    v0 : Int,
    v1 : Int,
    v2 : Int,
    v3 : Int
  ) : ::Void

  fun program_uniform_1ui = glProgramUniform1ui(
    program : UInt,
    location : Int,
    v0 : UInt
  ) : ::Void

  fun program_uniform_2ui = glProgramUniform2ui(
    program : UInt,
    location : Int,
    v0 : UInt,
    v1 : UInt
  ) : ::Void

  fun program_uniform_3ui = glProgramUniform3ui(
    program : UInt,
    location : Int,
    v0 : UInt,
    v1 : UInt,
    v2 : UInt
  ) : ::Void

  fun program_uniform_4ui = glProgramUniform4ui(
    program : UInt,
    location : Int,
    v0 : UInt,
    v1 : UInt,
    v2 : UInt,
    v3 : UInt
  ) : ::Void

  fun program_uniform_1f = glProgramUniform1f(
    program : UInt,
    location : Int,
    v0 : Float
  ) : ::Void

  fun program_uniform_2f = glProgramUniform2f(
    program : UInt,
    location : Int,
    v0 : Float,
    v1 : Float
  ) : ::Void

  fun program_uniform_3f = glProgramUniform3f(
    program : UInt,
    location : Int,
    v0 : Float,
    v1 : Float,
    v2 : Float
  ) : ::Void

  fun program_uniform_4f = glProgramUniform4f(
    program : UInt,
    location : Int,
    v0 : Float,
    v1 : Float,
    v2 : Float,
    v3 : Float
  ) : ::Void

  fun program_uniform_1iv = glProgramUniform1iv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun program_uniform_2iv = glProgramUniform2iv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun program_uniform_3iv = glProgramUniform3iv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun program_uniform_4iv = glProgramUniform4iv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Int)
  ) : ::Void

  fun program_uniform_1uiv = glProgramUniform1uiv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun program_uniform_2uiv = glProgramUniform2uiv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun program_uniform_3uiv = glProgramUniform3uiv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun program_uniform_4uiv = glProgramUniform4uiv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(UInt)
  ) : ::Void

  fun program_uniform_1fv = glProgramUniform1fv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_2fv = glProgramUniform2fv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_3fv = glProgramUniform3fv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_4fv = glProgramUniform4fv(
    program : UInt,
    location : Int,
    count : SizeI,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_2fv = glProgramUniformMatrix2fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_3fv = glProgramUniformMatrix3fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_4fv = glProgramUniformMatrix4fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_2x3_fv = glProgramUniformMatrix2x3fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_3x2_fv = glProgramUniformMatrix3x2fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_2x4_fv = glProgramUniformMatrix2x4fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_4x2_fv = glProgramUniformMatrix4x2fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_3x4_fv = glProgramUniformMatrix3x4fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun program_uniform_matrix_4x3_fv = glProgramUniformMatrix4x3fv(
    program : UInt,
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun validate_program_pipeline = glValidateProgramPipeline(
    pipeline : UInt
  ) : ::Void

  fun get_program_pipeline_info_log = glGetProgramPipelineInfoLog(
    pipeline : UInt,
    bufSize : SizeI,
    length : ::Pointer(SizeI),
    infoLog : ::Pointer(Char)
  ) : ::Void

  fun bind_image_texture = glBindImageTexture(
    unit : UInt,
    texture : UInt,
    level : Int,
    layered : Boolean,
    layer : Int,
    access : Enum,
    format : InternalFormat
  ) : ::Void

  fun get_boolean_i_v = glGetBooleani_v(
    target : BufferTargetARB,
    index : UInt,
    data : ::Pointer(Boolean)
  ) : ::Void

  fun memory_barrier = glMemoryBarrier(
    barriers : Bitfield
  ) : ::Void

  fun memory_barrier_by_region = glMemoryBarrierByRegion(
    barriers : Bitfield
  ) : ::Void

  fun tex_storage_2d_multisample = glTexStorage2DMultisample(
    target : TextureTarget,
    samples : SizeI,
    internalformat : SizedInternalFormat,
    width : SizeI,
    height : SizeI,
    fixedsamplelocations : Boolean
  ) : ::Void

  fun get_multisample_fv = glGetMultisamplefv(
    pname : Enum,
    index : UInt,
    val : ::Pointer(Float)
  ) : ::Void

  fun sample_mask_i = glSampleMaski(
    maskNumber : UInt,
    mask : Bitfield
  ) : ::Void

  fun get_tex_level_parameter_iv = glGetTexLevelParameteriv(
    target : TextureTarget,
    level : Int,
    pname : GetTextureParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_tex_level_parameter_fv = glGetTexLevelParameterfv(
    target : TextureTarget,
    level : Int,
    pname : GetTextureParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun bind_vertex_buffer = glBindVertexBuffer(
    bindingindex : UInt,
    buffer : UInt,
    offset : IntPtr,
    stride : SizeI
  ) : ::Void

  fun vertex_attrib_format = glVertexAttribFormat(
    attribindex : UInt,
    size : Int,
    type : VertexAttribType,
    normalized : Boolean,
    relativeoffset : UInt
  ) : ::Void

  fun vertex_attrib_i_format = glVertexAttribIFormat(
    attribindex : UInt,
    size : Int,
    type : VertexAttribIType,
    relativeoffset : UInt
  ) : ::Void

  fun vertex_attrib_binding = glVertexAttribBinding(
    attribindex : UInt,
    bindingindex : UInt
  ) : ::Void

  fun vertex_binding_divisor = glVertexBindingDivisor(
    bindingindex : UInt,
    divisor : UInt
  ) : ::Void
end
