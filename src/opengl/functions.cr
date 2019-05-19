@[Link("gl")]
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

  fun new_list = glNewList(
    list : UInt,
    mode : ListMode
  ) : ::Void

  fun end_list = glEndList : ::Void

  fun call_list = glCallList(
    list : UInt
  ) : ::Void

  fun call_lists = glCallLists(
    n : SizeI,
    type : ListNameType,
    lists : ::Pointer(Void)
  ) : ::Void

  fun delete_lists = glDeleteLists(
    list : UInt,
    range : SizeI
  ) : ::Void

  fun gen_lists = glGenLists(
    range : SizeI
  ) : UInt

  fun list_base = glListBase(
    base : UInt
  ) : ::Void

  fun begin = glBegin(
    mode : PrimitiveType
  ) : ::Void

  fun bitmap = glBitmap(
    width : SizeI,
    height : SizeI,
    xorig : Float,
    yorig : Float,
    xmove : Float,
    ymove : Float,
    bitmap : ::Pointer(UByte)
  ) : ::Void

  fun color_3b = glColor3b(
    red : Byte,
    green : Byte,
    blue : Byte
  ) : ::Void

  fun color_3bv = glColor3bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun color_3d = glColor3d(
    red : Double,
    green : Double,
    blue : Double
  ) : ::Void

  fun color_3dv = glColor3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun color_3f = glColor3f(
    red : Float,
    green : Float,
    blue : Float
  ) : ::Void

  fun color_3fv = glColor3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun color_3i = glColor3i(
    red : Int,
    green : Int,
    blue : Int
  ) : ::Void

  fun color_3iv = glColor3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun color_3s = glColor3s(
    red : Short,
    green : Short,
    blue : Short
  ) : ::Void

  fun color_3sv = glColor3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun color_3ub = glColor3ub(
    red : UByte,
    green : UByte,
    blue : UByte
  ) : ::Void

  fun color_3ubv = glColor3ubv(
    v : ::Pointer(UByte)
  ) : ::Void

  fun color_3ui = glColor3ui(
    red : UInt,
    green : UInt,
    blue : UInt
  ) : ::Void

  fun color_3uiv = glColor3uiv(
    v : ::Pointer(UInt)
  ) : ::Void

  fun color_3us = glColor3us(
    red : UShort,
    green : UShort,
    blue : UShort
  ) : ::Void

  fun color_3usv = glColor3usv(
    v : ::Pointer(UShort)
  ) : ::Void

  fun color_4b = glColor4b(
    red : Byte,
    green : Byte,
    blue : Byte,
    alpha : Byte
  ) : ::Void

  fun color_4bv = glColor4bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun color_4d = glColor4d(
    red : Double,
    green : Double,
    blue : Double,
    alpha : Double
  ) : ::Void

  fun color_4dv = glColor4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun color_4f = glColor4f(
    red : Float,
    green : Float,
    blue : Float,
    alpha : Float
  ) : ::Void

  fun color_4fv = glColor4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun color_4i = glColor4i(
    red : Int,
    green : Int,
    blue : Int,
    alpha : Int
  ) : ::Void

  fun color_4iv = glColor4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun color_4s = glColor4s(
    red : Short,
    green : Short,
    blue : Short,
    alpha : Short
  ) : ::Void

  fun color_4sv = glColor4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun color_4ub = glColor4ub(
    red : UByte,
    green : UByte,
    blue : UByte,
    alpha : UByte
  ) : ::Void

  fun color_4ubv = glColor4ubv(
    v : ::Pointer(UByte)
  ) : ::Void

  fun color_4ui = glColor4ui(
    red : UInt,
    green : UInt,
    blue : UInt,
    alpha : UInt
  ) : ::Void

  fun color_4uiv = glColor4uiv(
    v : ::Pointer(UInt)
  ) : ::Void

  fun color_4us = glColor4us(
    red : UShort,
    green : UShort,
    blue : UShort,
    alpha : UShort
  ) : ::Void

  fun color_4usv = glColor4usv(
    v : ::Pointer(UShort)
  ) : ::Void

  fun edge_flag = glEdgeFlag(
    flag : Boolean
  ) : ::Void

  fun edge_flag_v = glEdgeFlagv(
    flag : ::Pointer(Boolean)
  ) : ::Void

  fun end = glEnd : ::Void

  fun index_d = glIndexd(
    c : Double
  ) : ::Void

  fun index_dv = glIndexdv(
    c : ::Pointer(Double)
  ) : ::Void

  fun index_f = glIndexf(
    c : Float
  ) : ::Void

  fun index_fv = glIndexfv(
    c : ::Pointer(Float)
  ) : ::Void

  fun index_i = glIndexi(
    c : Int
  ) : ::Void

  fun index_iv = glIndexiv(
    c : ::Pointer(Int)
  ) : ::Void

  fun index_s = glIndexs(
    c : Short
  ) : ::Void

  fun index_sv = glIndexsv(
    c : ::Pointer(Short)
  ) : ::Void

  fun normal_3b = glNormal3b(
    nx : Byte,
    ny : Byte,
    nz : Byte
  ) : ::Void

  fun normal_3bv = glNormal3bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun normal_3d = glNormal3d(
    nx : Double,
    ny : Double,
    nz : Double
  ) : ::Void

  fun normal_3dv = glNormal3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun normal_3f = glNormal3f(
    nx : Float,
    ny : Float,
    nz : Float
  ) : ::Void

  fun normal_3fv = glNormal3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun normal_3i = glNormal3i(
    nx : Int,
    ny : Int,
    nz : Int
  ) : ::Void

  fun normal_3iv = glNormal3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun normal_3s = glNormal3s(
    nx : Short,
    ny : Short,
    nz : Short
  ) : ::Void

  fun normal_3sv = glNormal3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun raster_pos_2d = glRasterPos2d(
    x : Double,
    y : Double
  ) : ::Void

  fun raster_pos_2dv = glRasterPos2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun raster_pos_2f = glRasterPos2f(
    x : Float,
    y : Float
  ) : ::Void

  fun raster_pos_2fv = glRasterPos2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun raster_pos_2i = glRasterPos2i(
    x : Int,
    y : Int
  ) : ::Void

  fun raster_pos_2iv = glRasterPos2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun raster_pos_2s = glRasterPos2s(
    x : Short,
    y : Short
  ) : ::Void

  fun raster_pos_2sv = glRasterPos2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun raster_pos_3d = glRasterPos3d(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun raster_pos_3dv = glRasterPos3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun raster_pos_3f = glRasterPos3f(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun raster_pos_3fv = glRasterPos3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun raster_pos_3i = glRasterPos3i(
    x : Int,
    y : Int,
    z : Int
  ) : ::Void

  fun raster_pos_3iv = glRasterPos3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun raster_pos_3s = glRasterPos3s(
    x : Short,
    y : Short,
    z : Short
  ) : ::Void

  fun raster_pos_3sv = glRasterPos3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun raster_pos_4d = glRasterPos4d(
    x : Double,
    y : Double,
    z : Double,
    w : Double
  ) : ::Void

  fun raster_pos_4dv = glRasterPos4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun raster_pos_4f = glRasterPos4f(
    x : Float,
    y : Float,
    z : Float,
    w : Float
  ) : ::Void

  fun raster_pos_4fv = glRasterPos4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun raster_pos_4i = glRasterPos4i(
    x : Int,
    y : Int,
    z : Int,
    w : Int
  ) : ::Void

  fun raster_pos_4iv = glRasterPos4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun raster_pos_4s = glRasterPos4s(
    x : Short,
    y : Short,
    z : Short,
    w : Short
  ) : ::Void

  fun raster_pos_4sv = glRasterPos4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun rect_d = glRectd(
    x1 : Double,
    y1 : Double,
    x2 : Double,
    y2 : Double
  ) : ::Void

  fun rect_dv = glRectdv(
    v1 : ::Pointer(Double),
    v2 : ::Pointer(Double)
  ) : ::Void

  fun rect_f = glRectf(
    x1 : Float,
    y1 : Float,
    x2 : Float,
    y2 : Float
  ) : ::Void

  fun rect_fv = glRectfv(
    v1 : ::Pointer(Float),
    v2 : ::Pointer(Float)
  ) : ::Void

  fun rect_i = glRecti(
    x1 : Int,
    y1 : Int,
    x2 : Int,
    y2 : Int
  ) : ::Void

  fun rect_iv = glRectiv(
    v1 : ::Pointer(Int),
    v2 : ::Pointer(Int)
  ) : ::Void

  fun rect_s = glRects(
    x1 : Short,
    y1 : Short,
    x2 : Short,
    y2 : Short
  ) : ::Void

  fun rect_sv = glRectsv(
    v1 : ::Pointer(Short),
    v2 : ::Pointer(Short)
  ) : ::Void

  fun tex_coord_1d = glTexCoord1d(
    s : Double
  ) : ::Void

  fun tex_coord_1dv = glTexCoord1dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord_1f = glTexCoord1f(
    s : Float
  ) : ::Void

  fun tex_coord_1fv = glTexCoord1fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord_1i = glTexCoord1i(
    s : Int
  ) : ::Void

  fun tex_coord_1iv = glTexCoord1iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord_1s = glTexCoord1s(
    s : Short
  ) : ::Void

  fun tex_coord_1sv = glTexCoord1sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun tex_coord_2d = glTexCoord2d(
    s : Double,
    t : Double
  ) : ::Void

  fun tex_coord_2dv = glTexCoord2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord_2f = glTexCoord2f(
    s : Float,
    t : Float
  ) : ::Void

  fun tex_coord_2fv = glTexCoord2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord_2i = glTexCoord2i(
    s : Int,
    t : Int
  ) : ::Void

  fun tex_coord_2iv = glTexCoord2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord_2s = glTexCoord2s(
    s : Short,
    t : Short
  ) : ::Void

  fun tex_coord_2sv = glTexCoord2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun tex_coord_3d = glTexCoord3d(
    s : Double,
    t : Double,
    r : Double
  ) : ::Void

  fun tex_coord_3dv = glTexCoord3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord_3f = glTexCoord3f(
    s : Float,
    t : Float,
    r : Float
  ) : ::Void

  fun tex_coord_3fv = glTexCoord3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord_3i = glTexCoord3i(
    s : Int,
    t : Int,
    r : Int
  ) : ::Void

  fun tex_coord_3iv = glTexCoord3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord_3s = glTexCoord3s(
    s : Short,
    t : Short,
    r : Short
  ) : ::Void

  fun tex_coord_3sv = glTexCoord3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun tex_coord_4d = glTexCoord4d(
    s : Double,
    t : Double,
    r : Double,
    q : Double
  ) : ::Void

  fun tex_coord_4dv = glTexCoord4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord_4f = glTexCoord4f(
    s : Float,
    t : Float,
    r : Float,
    q : Float
  ) : ::Void

  fun tex_coord_4fv = glTexCoord4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord_4i = glTexCoord4i(
    s : Int,
    t : Int,
    r : Int,
    q : Int
  ) : ::Void

  fun tex_coord_4iv = glTexCoord4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord_4s = glTexCoord4s(
    s : Short,
    t : Short,
    r : Short,
    q : Short
  ) : ::Void

  fun tex_coord_4sv = glTexCoord4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_2d = glVertex2d(
    x : Double,
    y : Double
  ) : ::Void

  fun vertex_2dv = glVertex2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_2f = glVertex2f(
    x : Float,
    y : Float
  ) : ::Void

  fun vertex_2fv = glVertex2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_2i = glVertex2i(
    x : Int,
    y : Int
  ) : ::Void

  fun vertex_2iv = glVertex2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_2s = glVertex2s(
    x : Short,
    y : Short
  ) : ::Void

  fun vertex_2sv = glVertex2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_3d = glVertex3d(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun vertex_3dv = glVertex3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_3f = glVertex3f(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun vertex_3fv = glVertex3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_3i = glVertex3i(
    x : Int,
    y : Int,
    z : Int
  ) : ::Void

  fun vertex_3iv = glVertex3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_3s = glVertex3s(
    x : Short,
    y : Short,
    z : Short
  ) : ::Void

  fun vertex_3sv = glVertex3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex_4d = glVertex4d(
    x : Double,
    y : Double,
    z : Double,
    w : Double
  ) : ::Void

  fun vertex_4dv = glVertex4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex_4f = glVertex4f(
    x : Float,
    y : Float,
    z : Float,
    w : Float
  ) : ::Void

  fun vertex_4fv = glVertex4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex_4i = glVertex4i(
    x : Int,
    y : Int,
    z : Int,
    w : Int
  ) : ::Void

  fun vertex_4iv = glVertex4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex_4s = glVertex4s(
    x : Short,
    y : Short,
    z : Short,
    w : Short
  ) : ::Void

  fun vertex_4sv = glVertex4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun clip_plane = glClipPlane(
    plane : ClipPlaneName,
    equation : ::Pointer(Double)
  ) : ::Void

  fun color_material = glColorMaterial(
    face : MaterialFace,
    mode : ColorMaterialParameter
  ) : ::Void

  fun fog_f = glFogf(
    pname : FogParameter,
    param : Float
  ) : ::Void

  fun fog_fv = glFogfv(
    pname : FogParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun fog_i = glFogi(
    pname : FogParameter,
    param : Int
  ) : ::Void

  fun fog_iv = glFogiv(
    pname : FogParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun light_f = glLightf(
    light : LightName,
    pname : LightParameter,
    param : Float
  ) : ::Void

  fun light_fv = glLightfv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun light_i = glLighti(
    light : LightName,
    pname : LightParameter,
    param : Int
  ) : ::Void

  fun light_iv = glLightiv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun light_model_f = glLightModelf(
    pname : LightModelParameter,
    param : Float
  ) : ::Void

  fun light_model_fv = glLightModelfv(
    pname : LightModelParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun light_model_i = glLightModeli(
    pname : LightModelParameter,
    param : Int
  ) : ::Void

  fun light_model_iv = glLightModeliv(
    pname : LightModelParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun line_stipple = glLineStipple(
    factor : Int,
    pattern : UShort
  ) : ::Void

  fun material_f = glMaterialf(
    face : MaterialFace,
    pname : MaterialParameter,
    param : Float
  ) : ::Void

  fun material_fv = glMaterialfv(
    face : MaterialFace,
    pname : MaterialParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun material_i = glMateriali(
    face : MaterialFace,
    pname : MaterialParameter,
    param : Int
  ) : ::Void

  fun material_iv = glMaterialiv(
    face : MaterialFace,
    pname : MaterialParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun polygon_stipple = glPolygonStipple(
    mask : ::Pointer(UByte)
  ) : ::Void

  fun shade_model = glShadeModel(
    mode : ShadingModel
  ) : ::Void

  fun tex_env_f = glTexEnvf(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    param : Float
  ) : ::Void

  fun tex_env_fv = glTexEnvfv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun tex_env_i = glTexEnvi(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    param : Int
  ) : ::Void

  fun tex_env_iv = glTexEnviv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun tex_gen_d = glTexGend(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    param : Double
  ) : ::Void

  fun tex_gen_dv = glTexGendv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Double)
  ) : ::Void

  fun tex_gen_f = glTexGenf(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    param : Float
  ) : ::Void

  fun tex_gen_fv = glTexGenfv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun tex_gen_i = glTexGeni(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    param : Int
  ) : ::Void

  fun tex_gen_iv = glTexGeniv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun feedback_buffer = glFeedbackBuffer(
    size : SizeI,
    type : FeedbackType,
    buffer : ::Pointer(Float)
  ) : ::Void

  fun select_buffer = glSelectBuffer(
    size : SizeI,
    buffer : ::Pointer(UInt)
  ) : ::Void

  fun render_mode = glRenderMode(
    mode : RenderingMode
  ) : Int

  fun init_names = glInitNames : ::Void

  fun load_name = glLoadName(
    name : UInt
  ) : ::Void

  fun pass_through = glPassThrough(
    token : Float
  ) : ::Void

  fun pop_name = glPopName : ::Void

  fun push_name = glPushName(
    name : UInt
  ) : ::Void

  fun clear_accum = glClearAccum(
    red : Float,
    green : Float,
    blue : Float,
    alpha : Float
  ) : ::Void

  fun clear_index = glClearIndex(
    c : Float
  ) : ::Void

  fun index_mask = glIndexMask(
    mask : UInt
  ) : ::Void

  fun accum = glAccum(
    op : AccumOp,
    value : Float
  ) : ::Void

  fun pop_attrib = glPopAttrib : ::Void

  fun push_attrib = glPushAttrib(
    mask : AttribMask
  ) : ::Void

  fun map_1d = glMap1d(
    target : MapTarget,
    u1 : Double,
    u2 : Double,
    stride : Int,
    order : Int,
    points : ::Pointer(Double)
  ) : ::Void

  fun map_1f = glMap1f(
    target : MapTarget,
    u1 : Float,
    u2 : Float,
    stride : Int,
    order : Int,
    points : ::Pointer(Float)
  ) : ::Void

  fun map_2d = glMap2d(
    target : MapTarget,
    u1 : Double,
    u2 : Double,
    ustride : Int,
    uorder : Int,
    v1 : Double,
    v2 : Double,
    vstride : Int,
    vorder : Int,
    points : ::Pointer(Double)
  ) : ::Void

  fun map_2f = glMap2f(
    target : MapTarget,
    u1 : Float,
    u2 : Float,
    ustride : Int,
    uorder : Int,
    v1 : Float,
    v2 : Float,
    vstride : Int,
    vorder : Int,
    points : ::Pointer(Float)
  ) : ::Void

  fun map_grid_1d = glMapGrid1d(
    un : Int,
    u1 : Double,
    u2 : Double
  ) : ::Void

  fun map_grid_1f = glMapGrid1f(
    un : Int,
    u1 : Float,
    u2 : Float
  ) : ::Void

  fun map_grid_2d = glMapGrid2d(
    un : Int,
    u1 : Double,
    u2 : Double,
    vn : Int,
    v1 : Double,
    v2 : Double
  ) : ::Void

  fun map_grid_2f = glMapGrid2f(
    un : Int,
    u1 : Float,
    u2 : Float,
    vn : Int,
    v1 : Float,
    v2 : Float
  ) : ::Void

  fun eval_coord_1d = glEvalCoord1d(
    u : Double
  ) : ::Void

  fun eval_coord_1dv = glEvalCoord1dv(
    u : ::Pointer(Double)
  ) : ::Void

  fun eval_coord_1f = glEvalCoord1f(
    u : Float
  ) : ::Void

  fun eval_coord_1fv = glEvalCoord1fv(
    u : ::Pointer(Float)
  ) : ::Void

  fun eval_coord_2d = glEvalCoord2d(
    u : Double,
    v : Double
  ) : ::Void

  fun eval_coord_2dv = glEvalCoord2dv(
    u : ::Pointer(Double)
  ) : ::Void

  fun eval_coord_2f = glEvalCoord2f(
    u : Float,
    v : Float
  ) : ::Void

  fun eval_coord_2fv = glEvalCoord2fv(
    u : ::Pointer(Float)
  ) : ::Void

  fun eval_mesh_1_ = glEvalMesh1(
    mode : MeshMode1,
    i1 : Int,
    i2 : Int
  ) : ::Void

  fun eval_point_1_ = glEvalPoint1(
    i : Int
  ) : ::Void

  fun eval_mesh_2_ = glEvalMesh2(
    mode : MeshMode2,
    i1 : Int,
    i2 : Int,
    j1 : Int,
    j2 : Int
  ) : ::Void

  fun eval_point_2_ = glEvalPoint2(
    i : Int,
    j : Int
  ) : ::Void

  fun alpha_func = glAlphaFunc(
    func : AlphaFunction,
    ref : Float
  ) : ::Void

  fun pixel_zoom = glPixelZoom(
    xfactor : Float,
    yfactor : Float
  ) : ::Void

  fun pixel_transfer_f = glPixelTransferf(
    pname : PixelTransferParameter,
    param : Float
  ) : ::Void

  fun pixel_transfer_i = glPixelTransferi(
    pname : PixelTransferParameter,
    param : Int
  ) : ::Void

  fun pixel_map_fv = glPixelMapfv(
    map : PixelMap,
    mapsize : SizeI,
    values : ::Pointer(Float)
  ) : ::Void

  fun pixel_map_uiv = glPixelMapuiv(
    map : PixelMap,
    mapsize : SizeI,
    values : ::Pointer(UInt)
  ) : ::Void

  fun pixel_map_usv = glPixelMapusv(
    map : PixelMap,
    mapsize : SizeI,
    values : ::Pointer(UShort)
  ) : ::Void

  fun copy_pixels = glCopyPixels(
    x : Int,
    y : Int,
    width : SizeI,
    height : SizeI,
    type : PixelCopyType
  ) : ::Void

  fun draw_pixels = glDrawPixels(
    width : SizeI,
    height : SizeI,
    format : PixelFormat,
    type : PixelType,
    pixels : ::Pointer(Void)
  ) : ::Void

  fun get_clip_plane = glGetClipPlane(
    plane : ClipPlaneName,
    equation : ::Pointer(Double)
  ) : ::Void

  fun get_light_fv = glGetLightfv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_light_iv = glGetLightiv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_map_dv = glGetMapdv(
    target : MapTarget,
    query : GetMapQuery,
    v : ::Pointer(Double)
  ) : ::Void

  fun get_map_fv = glGetMapfv(
    target : MapTarget,
    query : GetMapQuery,
    v : ::Pointer(Float)
  ) : ::Void

  fun get_map_iv = glGetMapiv(
    target : MapTarget,
    query : GetMapQuery,
    v : ::Pointer(Int)
  ) : ::Void

  fun get_material_fv = glGetMaterialfv(
    face : MaterialFace,
    pname : MaterialParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_material_iv = glGetMaterialiv(
    face : MaterialFace,
    pname : MaterialParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_pixel_map_fv = glGetPixelMapfv(
    map : PixelMap,
    values : ::Pointer(Float)
  ) : ::Void

  fun get_pixel_map_uiv = glGetPixelMapuiv(
    map : PixelMap,
    values : ::Pointer(UInt)
  ) : ::Void

  fun get_pixel_map_usv = glGetPixelMapusv(
    map : PixelMap,
    values : ::Pointer(UShort)
  ) : ::Void

  fun get_polygon_stipple = glGetPolygonStipple(
    mask : ::Pointer(UByte)
  ) : ::Void

  fun get_tex_env_fv = glGetTexEnvfv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_tex_env_iv = glGetTexEnviv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun get_tex_gen_dv = glGetTexGendv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Double)
  ) : ::Void

  fun get_tex_gen_fv = glGetTexGenfv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun get_tex_gen_iv = glGetTexGeniv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun is_list = glIsList(
    list : UInt
  ) : Boolean

  fun frustum = glFrustum(
    left : Double,
    right : Double,
    bottom : Double,
    top : Double,
    zNear : Double,
    zFar : Double
  ) : ::Void

  fun load_identity = glLoadIdentity : ::Void

  fun load_matrix_f = glLoadMatrixf(
    m : ::Pointer(Float)
  ) : ::Void

  fun load_matrix_d = glLoadMatrixd(
    m : ::Pointer(Double)
  ) : ::Void

  fun matrix_mode = glMatrixMode(
    mode : MatrixMode
  ) : ::Void

  fun mult_matrix_f = glMultMatrixf(
    m : ::Pointer(Float)
  ) : ::Void

  fun mult_matrix_d = glMultMatrixd(
    m : ::Pointer(Double)
  ) : ::Void

  fun ortho = glOrtho(
    left : Double,
    right : Double,
    bottom : Double,
    top : Double,
    zNear : Double,
    zFar : Double
  ) : ::Void

  fun pop_matrix = glPopMatrix : ::Void

  fun push_matrix = glPushMatrix : ::Void

  fun rotate_d = glRotated(
    angle : Double,
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun rotate_f = glRotatef(
    angle : Float,
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun scale_d = glScaled(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun scale_f = glScalef(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun translate_d = glTranslated(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun translate_f = glTranslatef(
    x : Float,
    y : Float,
    z : Float
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

  fun get_pointer_v = glGetPointerv(
    pname : GetPointervPName,
    params : ::Pointer(Void)
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

  fun array_element = glArrayElement(
    i : Int
  ) : ::Void

  fun color_pointer = glColorPointer(
    size : Int,
    type : ColorPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun disable_client_state = glDisableClientState(
    array : EnableCap
  ) : ::Void

  fun edge_flag_pointer = glEdgeFlagPointer(
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun enable_client_state = glEnableClientState(
    array : EnableCap
  ) : ::Void

  fun index_pointer = glIndexPointer(
    type : IndexPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun interleaved_arrays = glInterleavedArrays(
    format : InterleavedArrayFormat,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun normal_pointer = glNormalPointer(
    type : NormalPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun tex_coord_pointer = glTexCoordPointer(
    size : Int,
    type : TexCoordPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun vertex_pointer = glVertexPointer(
    size : Int,
    type : VertexPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun are_textures_resident = glAreTexturesResident(
    n : SizeI,
    textures : ::Pointer(UInt),
    residences : ::Pointer(Boolean)
  ) : Boolean

  fun prioritize_textures = glPrioritizeTextures(
    n : SizeI,
    textures : ::Pointer(UInt),
    priorities : ::Pointer(Float)
  ) : ::Void

  fun index_ub = glIndexub(
    c : UByte
  ) : ::Void

  fun index_ubv = glIndexubv(
    c : ::Pointer(UByte)
  ) : ::Void

  fun pop_client_attrib = glPopClientAttrib : ::Void

  fun push_client_attrib = glPushClientAttrib(
    mask : ClientAttribMask
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
end
