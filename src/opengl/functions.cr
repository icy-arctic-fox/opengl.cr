{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  fun active_texture = glActiveTexture(
    texture : TextureUnit
  ) : ::Void

  fun alpha_funcx = glAlphaFuncx(
    func : AlphaFunction,
    ref : Fixed
  ) : ::Void

  fun bind_buffer = glBindBuffer(
    target : BufferTargetARB,
    buffer : UInt
  ) : ::Void

  fun bind_texture = glBindTexture(
    target : TextureTarget,
    texture : UInt
  ) : ::Void

  fun blend_func = glBlendFunc(
    sfactor : BlendingFactor,
    dfactor : BlendingFactor
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

  fun clear = glClear(
    mask : ClearBufferMask
  ) : ::Void

  fun clear_colorx = glClearColorx(
    red : Fixed,
    green : Fixed,
    blue : Fixed,
    alpha : Fixed
  ) : ::Void

  fun clear_depthx = glClearDepthx(
    depth : Fixed
  ) : ::Void

  fun clear_stencil = glClearStencil(
    s : Int
  ) : ::Void

  fun client_active_texture = glClientActiveTexture(
    texture : TextureUnit
  ) : ::Void

  fun clip_planex = glClipPlanex(
    plane : ClipPlaneName,
    equation : ::Pointer(Fixed)
  ) : ::Void

  fun color_4ub = glColor4ub(
    red : UByte,
    green : UByte,
    blue : UByte,
    alpha : UByte
  ) : ::Void

  fun color_4x = glColor4x(
    red : Fixed,
    green : Fixed,
    blue : Fixed,
    alpha : Fixed
  ) : ::Void

  fun color_mask = glColorMask(
    red : Boolean,
    green : Boolean,
    blue : Boolean,
    alpha : Boolean
  ) : ::Void

  fun color_pointer = glColorPointer(
    size : Int,
    type : ColorPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
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

  fun cull_face = glCullFace(
    mode : CullFaceMode
  ) : ::Void

  fun delete_buffers = glDeleteBuffers(
    n : SizeI,
    buffers : ::Pointer(UInt)
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

  fun depth_rangex = glDepthRangex(
    n : Fixed,
    f : Fixed
  ) : ::Void

  fun disable = glDisable(
    cap : EnableCap
  ) : ::Void

  fun disable_client_state = glDisableClientState(
    array : EnableCap
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

  fun enable_client_state = glEnableClientState(
    array : EnableCap
  ) : ::Void

  fun finish = glFinish : ::Void

  fun flush = glFlush : ::Void

  fun fogx = glFogx(
    pname : FogPName,
    param : Fixed
  ) : ::Void

  fun fogxv = glFogxv(
    pname : FogPName,
    param : ::Pointer(Fixed)
  ) : ::Void

  fun front_face = glFrontFace(
    mode : FrontFaceDirection
  ) : ::Void

  fun frustumx = glFrustumx(
    l : Fixed,
    r : Fixed,
    b : Fixed,
    t : Fixed,
    n : Fixed,
    f : Fixed
  ) : ::Void

  fun get_boolean_v = glGetBooleanv(
    pname : GetPName,
    data : ::Pointer(Boolean)
  ) : ::Void

  fun get_buffer_parameter_iv = glGetBufferParameteriv(
    target : BufferTargetARB,
    pname : BufferPNameARB,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_clip_planex = glGetClipPlanex(
    plane : ClipPlaneName,
    equation : ::Pointer(Fixed)
  ) : ::Void

  fun gen_buffers = glGenBuffers(
    n : SizeI,
    buffers : ::Pointer(UInt)
  ) : ::Void

  fun gen_textures = glGenTextures(
    n : SizeI,
    textures : ::Pointer(UInt)
  ) : ::Void

  fun get_error = glGetError : Enum

  fun get_fixe_dv = glGetFixedv(
    pname : GetPName,
    params : ::Pointer(Fixed)
  ) : ::Void

  fun get_integer_v = glGetIntegerv(
    pname : GetPName,
    data : ::Pointer(Int)
  ) : ::Void

  fun get_lightxv = glGetLightxv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Fixed)
  ) : ::Void

  fun get_materialxv = glGetMaterialxv(
    face : Enum,
    pname : MaterialParameter,
    params : ::Pointer(Fixed)
  ) : ::Void

  fun get_pointer_v = glGetPointerv(
    pname : GetPointervPName,
    params : ::Pointer(Pointer(Void))
  ) : ::Void

  fun get_string = glGetString(
    name : StringName
  ) : ::Pointer(UByte)

  fun get_tex_env_iv = glGetTexEnviv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_tex_envxv = glGetTexEnvxv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Fixed)
  ) : ::Void

  fun get_tex_parameter_iv = glGetTexParameteriv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_tex_parameterxv = glGetTexParameterxv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(Fixed)
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

  fun is_texture = glIsTexture(
    texture : UInt
  ) : Boolean

  fun light_modelx = glLightModelx(
    pname : LightModelParameter,
    param : Fixed
  ) : ::Void

  fun light_modelxv = glLightModelxv(
    pname : LightModelParameter,
    param : ::Pointer(Fixed)
  ) : ::Void

  fun lightx = glLightx(
    light : LightName,
    pname : LightParameter,
    param : Fixed
  ) : ::Void

  fun lightxv = glLightxv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Fixed)
  ) : ::Void

  fun line_widthx = glLineWidthx(
    width : Fixed
  ) : ::Void

  fun load_identity = glLoadIdentity : ::Void

  fun load_matrixx = glLoadMatrixx(
    m : ::Pointer(Fixed)
  ) : ::Void

  fun logic_op = glLogicOp(
    opcode : LogicOp
  ) : ::Void

  fun materialx = glMaterialx(
    face : Enum,
    pname : MaterialParameter,
    param : Fixed
  ) : ::Void

  fun materialxv = glMaterialxv(
    face : Enum,
    pname : MaterialParameter,
    param : ::Pointer(Fixed)
  ) : ::Void

  fun matrix_mode = glMatrixMode(
    mode : MatrixMode
  ) : ::Void

  fun mult_matrixx = glMultMatrixx(
    m : ::Pointer(Fixed)
  ) : ::Void

  fun multi_tex_coord_4x = glMultiTexCoord4x(
    texture : TextureUnit,
    s : Fixed,
    t : Fixed,
    r : Fixed,
    q : Fixed
  ) : ::Void

  fun normal_3x = glNormal3x(
    nx : Fixed,
    ny : Fixed,
    nz : Fixed
  ) : ::Void

  fun normal_pointer = glNormalPointer(
    type : NormalPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun orthox = glOrthox(
    l : Fixed,
    r : Fixed,
    b : Fixed,
    t : Fixed,
    n : Fixed,
    f : Fixed
  ) : ::Void

  fun pixel_store_i = glPixelStorei(
    pname : PixelStoreParameter,
    param : Int
  ) : ::Void

  fun point_parameterx = glPointParameterx(
    pname : PointParameterNameARB,
    param : Fixed
  ) : ::Void

  fun point_parameterxv = glPointParameterxv(
    pname : PointParameterNameARB,
    params : ::Pointer(Fixed)
  ) : ::Void

  fun point_sizex = glPointSizex(
    size : Fixed
  ) : ::Void

  fun polygon_offsetx = glPolygonOffsetx(
    factor : Fixed,
    units : Fixed
  ) : ::Void

  fun pop_matrix = glPopMatrix : ::Void

  fun push_matrix = glPushMatrix : ::Void

  fun read_pixels = glReadPixels(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun rotatex = glRotatex(
    angle : Fixed,
    x : Fixed,
    y : Fixed,
    z : Fixed
  ) : ::Void

  fun sample_coverage = glSampleCoverage(
    value : Float,
    invert : Boolean
  ) : ::Void

  fun sample_coveragex = glSampleCoveragex(
    value : ClampX,
    invert : Boolean
  ) : ::Void

  fun scalex = glScalex(
    x : Fixed,
    y : Fixed,
    z : Fixed
  ) : ::Void

  fun scissor = glScissor(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void

  fun shade_model = glShadeModel(
    mode : ShadingModel
  ) : ::Void

  fun stencil_func = glStencilFunc(
    func : StencilFunction,
    ref : Int,
    mask : UInt
  ) : ::Void

  fun stencil_mask = glStencilMask(
    mask : UInt
  ) : ::Void

  fun stencil_op = glStencilOp(
    fail : StencilOp,
    zfail : StencilOp,
    zpass : StencilOp
  ) : ::Void

  fun tex_coord_pointer = glTexCoordPointer(
    size : Int,
    type : TexCoordPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun tex_env_i = glTexEnvi(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    param : Int
  ) : ::Void

  fun tex_envx = glTexEnvx(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    param : Fixed
  ) : ::Void

  fun tex_env_iv = glTexEnviv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun tex_envxv = glTexEnvxv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Fixed)
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

  fun tex_parameter_i = glTexParameteri(
    target : TextureTarget,
    pname : TextureParameterName,
    param : Int
  ) : ::Void

  fun tex_parameterx = glTexParameterx(
    target : TextureTarget,
    pname : GetTextureParameter,
    param : Fixed
  ) : ::Void

  fun tex_parameter_iv = glTexParameteriv(
    target : TextureTarget,
    pname : TextureParameterName,
    params : ::Pointer(Int)
  ) : ::Void

  fun tex_parameterxv = glTexParameterxv(
    target : TextureTarget,
    pname : GetTextureParameter,
    params : ::Pointer(Fixed)
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

  fun translatex = glTranslatex(
    x : Fixed,
    y : Fixed,
    z : Fixed
  ) : ::Void

  fun vertex_pointer = glVertexPointer(
    size : Int,
    type : VertexPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun viewport = glViewport(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI
  ) : ::Void
end
