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

  fun color3b = glColor3b(
    red : Byte,
    green : Byte,
    blue : Byte
  ) : ::Void

  fun color3bv = glColor3bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun color3d = glColor3d(
    red : Double,
    green : Double,
    blue : Double
  ) : ::Void

  fun color3dv = glColor3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun color3f = glColor3f(
    red : Float,
    green : Float,
    blue : Float
  ) : ::Void

  fun color3fv = glColor3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun color3i = glColor3i(
    red : Int,
    green : Int,
    blue : Int
  ) : ::Void

  fun color3iv = glColor3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun color3s = glColor3s(
    red : Short,
    green : Short,
    blue : Short
  ) : ::Void

  fun color3sv = glColor3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun color3ub = glColor3ub(
    red : UByte,
    green : UByte,
    blue : UByte
  ) : ::Void

  fun color3ubv = glColor3ubv(
    v : ::Pointer(UByte)
  ) : ::Void

  fun color3ui = glColor3ui(
    red : UInt,
    green : UInt,
    blue : UInt
  ) : ::Void

  fun color3uiv = glColor3uiv(
    v : ::Pointer(UInt)
  ) : ::Void

  fun color3us = glColor3us(
    red : UShort,
    green : UShort,
    blue : UShort
  ) : ::Void

  fun color3usv = glColor3usv(
    v : ::Pointer(UShort)
  ) : ::Void

  fun color4b = glColor4b(
    red : Byte,
    green : Byte,
    blue : Byte,
    alpha : Byte
  ) : ::Void

  fun color4bv = glColor4bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun color4d = glColor4d(
    red : Double,
    green : Double,
    blue : Double,
    alpha : Double
  ) : ::Void

  fun color4dv = glColor4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun color4f = glColor4f(
    red : Float,
    green : Float,
    blue : Float,
    alpha : Float
  ) : ::Void

  fun color4fv = glColor4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun color4i = glColor4i(
    red : Int,
    green : Int,
    blue : Int,
    alpha : Int
  ) : ::Void

  fun color4iv = glColor4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun color4s = glColor4s(
    red : Short,
    green : Short,
    blue : Short,
    alpha : Short
  ) : ::Void

  fun color4sv = glColor4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun color4ub = glColor4ub(
    red : UByte,
    green : UByte,
    blue : UByte,
    alpha : UByte
  ) : ::Void

  fun color4ubv = glColor4ubv(
    v : ::Pointer(UByte)
  ) : ::Void

  fun color4ui = glColor4ui(
    red : UInt,
    green : UInt,
    blue : UInt,
    alpha : UInt
  ) : ::Void

  fun color4uiv = glColor4uiv(
    v : ::Pointer(UInt)
  ) : ::Void

  fun color4us = glColor4us(
    red : UShort,
    green : UShort,
    blue : UShort,
    alpha : UShort
  ) : ::Void

  fun color4usv = glColor4usv(
    v : ::Pointer(UShort)
  ) : ::Void

  fun edge_flag = glEdgeFlag(
    flag : Boolean
  ) : ::Void

  fun edge_flagv = glEdgeFlagv(
    flag : ::Pointer(Boolean)
  ) : ::Void

  fun end = glEnd : ::Void

  fun indexd = glIndexd(
    c : Double
  ) : ::Void

  fun indexdv = glIndexdv(
    c : ::Pointer(Double)
  ) : ::Void

  fun indexf = glIndexf(
    c : Float
  ) : ::Void

  fun indexfv = glIndexfv(
    c : ::Pointer(Float)
  ) : ::Void

  fun indexi = glIndexi(
    c : Int
  ) : ::Void

  fun indexiv = glIndexiv(
    c : ::Pointer(Int)
  ) : ::Void

  fun indexs = glIndexs(
    c : Short
  ) : ::Void

  fun indexsv = glIndexsv(
    c : ::Pointer(Short)
  ) : ::Void

  fun normal3b = glNormal3b(
    nx : Byte,
    ny : Byte,
    nz : Byte
  ) : ::Void

  fun normal3bv = glNormal3bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun normal3d = glNormal3d(
    nx : Double,
    ny : Double,
    nz : Double
  ) : ::Void

  fun normal3dv = glNormal3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun normal3f = glNormal3f(
    nx : Float,
    ny : Float,
    nz : Float
  ) : ::Void

  fun normal3fv = glNormal3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun normal3i = glNormal3i(
    nx : Int,
    ny : Int,
    nz : Int
  ) : ::Void

  fun normal3iv = glNormal3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun normal3s = glNormal3s(
    nx : Short,
    ny : Short,
    nz : Short
  ) : ::Void

  fun normal3sv = glNormal3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun raster_pos2d = glRasterPos2d(
    x : Double,
    y : Double
  ) : ::Void

  fun raster_pos2dv = glRasterPos2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun raster_pos2f = glRasterPos2f(
    x : Float,
    y : Float
  ) : ::Void

  fun raster_pos2fv = glRasterPos2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun raster_pos2i = glRasterPos2i(
    x : Int,
    y : Int
  ) : ::Void

  fun raster_pos2iv = glRasterPos2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun raster_pos2s = glRasterPos2s(
    x : Short,
    y : Short
  ) : ::Void

  fun raster_pos2sv = glRasterPos2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun raster_pos3d = glRasterPos3d(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun raster_pos3dv = glRasterPos3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun raster_pos3f = glRasterPos3f(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun raster_pos3fv = glRasterPos3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun raster_pos3i = glRasterPos3i(
    x : Int,
    y : Int,
    z : Int
  ) : ::Void

  fun raster_pos3iv = glRasterPos3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun raster_pos3s = glRasterPos3s(
    x : Short,
    y : Short,
    z : Short
  ) : ::Void

  fun raster_pos3sv = glRasterPos3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun raster_pos4d = glRasterPos4d(
    x : Double,
    y : Double,
    z : Double,
    w : Double
  ) : ::Void

  fun raster_pos4dv = glRasterPos4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun raster_pos4f = glRasterPos4f(
    x : Float,
    y : Float,
    z : Float,
    w : Float
  ) : ::Void

  fun raster_pos4fv = glRasterPos4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun raster_pos4i = glRasterPos4i(
    x : Int,
    y : Int,
    z : Int,
    w : Int
  ) : ::Void

  fun raster_pos4iv = glRasterPos4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun raster_pos4s = glRasterPos4s(
    x : Short,
    y : Short,
    z : Short,
    w : Short
  ) : ::Void

  fun raster_pos4sv = glRasterPos4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun rectd = glRectd(
    x1 : Double,
    y1 : Double,
    x2 : Double,
    y2 : Double
  ) : ::Void

  fun rectdv = glRectdv(
    v1 : ::Pointer(Double),
    v2 : ::Pointer(Double)
  ) : ::Void

  fun rectf = glRectf(
    x1 : Float,
    y1 : Float,
    x2 : Float,
    y2 : Float
  ) : ::Void

  fun rectfv = glRectfv(
    v1 : ::Pointer(Float),
    v2 : ::Pointer(Float)
  ) : ::Void

  fun recti = glRecti(
    x1 : Int,
    y1 : Int,
    x2 : Int,
    y2 : Int
  ) : ::Void

  fun rectiv = glRectiv(
    v1 : ::Pointer(Int),
    v2 : ::Pointer(Int)
  ) : ::Void

  fun rects = glRects(
    x1 : Short,
    y1 : Short,
    x2 : Short,
    y2 : Short
  ) : ::Void

  fun rectsv = glRectsv(
    v1 : ::Pointer(Short),
    v2 : ::Pointer(Short)
  ) : ::Void

  fun tex_coord1d = glTexCoord1d(
    s : Double
  ) : ::Void

  fun tex_coord1dv = glTexCoord1dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord1f = glTexCoord1f(
    s : Float
  ) : ::Void

  fun tex_coord1fv = glTexCoord1fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord1i = glTexCoord1i(
    s : Int
  ) : ::Void

  fun tex_coord1iv = glTexCoord1iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord1s = glTexCoord1s(
    s : Short
  ) : ::Void

  fun tex_coord1sv = glTexCoord1sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun tex_coord2d = glTexCoord2d(
    s : Double,
    t : Double
  ) : ::Void

  fun tex_coord2dv = glTexCoord2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord2f = glTexCoord2f(
    s : Float,
    t : Float
  ) : ::Void

  fun tex_coord2fv = glTexCoord2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord2i = glTexCoord2i(
    s : Int,
    t : Int
  ) : ::Void

  fun tex_coord2iv = glTexCoord2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord2s = glTexCoord2s(
    s : Short,
    t : Short
  ) : ::Void

  fun tex_coord2sv = glTexCoord2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun tex_coord3d = glTexCoord3d(
    s : Double,
    t : Double,
    r : Double
  ) : ::Void

  fun tex_coord3dv = glTexCoord3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord3f = glTexCoord3f(
    s : Float,
    t : Float,
    r : Float
  ) : ::Void

  fun tex_coord3fv = glTexCoord3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord3i = glTexCoord3i(
    s : Int,
    t : Int,
    r : Int
  ) : ::Void

  fun tex_coord3iv = glTexCoord3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord3s = glTexCoord3s(
    s : Short,
    t : Short,
    r : Short
  ) : ::Void

  fun tex_coord3sv = glTexCoord3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun tex_coord4d = glTexCoord4d(
    s : Double,
    t : Double,
    r : Double,
    q : Double
  ) : ::Void

  fun tex_coord4dv = glTexCoord4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun tex_coord4f = glTexCoord4f(
    s : Float,
    t : Float,
    r : Float,
    q : Float
  ) : ::Void

  fun tex_coord4fv = glTexCoord4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun tex_coord4i = glTexCoord4i(
    s : Int,
    t : Int,
    r : Int,
    q : Int
  ) : ::Void

  fun tex_coord4iv = glTexCoord4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun tex_coord4s = glTexCoord4s(
    s : Short,
    t : Short,
    r : Short,
    q : Short
  ) : ::Void

  fun tex_coord4sv = glTexCoord4sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex2d = glVertex2d(
    x : Double,
    y : Double
  ) : ::Void

  fun vertex2dv = glVertex2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex2f = glVertex2f(
    x : Float,
    y : Float
  ) : ::Void

  fun vertex2fv = glVertex2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex2i = glVertex2i(
    x : Int,
    y : Int
  ) : ::Void

  fun vertex2iv = glVertex2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex2s = glVertex2s(
    x : Short,
    y : Short
  ) : ::Void

  fun vertex2sv = glVertex2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex3d = glVertex3d(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun vertex3dv = glVertex3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex3f = glVertex3f(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun vertex3fv = glVertex3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex3i = glVertex3i(
    x : Int,
    y : Int,
    z : Int
  ) : ::Void

  fun vertex3iv = glVertex3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex3s = glVertex3s(
    x : Short,
    y : Short,
    z : Short
  ) : ::Void

  fun vertex3sv = glVertex3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun vertex4d = glVertex4d(
    x : Double,
    y : Double,
    z : Double,
    w : Double
  ) : ::Void

  fun vertex4dv = glVertex4dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun vertex4f = glVertex4f(
    x : Float,
    y : Float,
    z : Float,
    w : Float
  ) : ::Void

  fun vertex4fv = glVertex4fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun vertex4i = glVertex4i(
    x : Int,
    y : Int,
    z : Int,
    w : Int
  ) : ::Void

  fun vertex4iv = glVertex4iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun vertex4s = glVertex4s(
    x : Short,
    y : Short,
    z : Short,
    w : Short
  ) : ::Void

  fun vertex4sv = glVertex4sv(
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

  fun fogf = glFogf(
    pname : FogParameter,
    param : Float
  ) : ::Void

  fun fogfv = glFogfv(
    pname : FogParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun fogi = glFogi(
    pname : FogParameter,
    param : Int
  ) : ::Void

  fun fogiv = glFogiv(
    pname : FogParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun lightf = glLightf(
    light : LightName,
    pname : LightParameter,
    param : Float
  ) : ::Void

  fun lightfv = glLightfv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun lighti = glLighti(
    light : LightName,
    pname : LightParameter,
    param : Int
  ) : ::Void

  fun lightiv = glLightiv(
    light : LightName,
    pname : LightParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun light_modelf = glLightModelf(
    pname : LightModelParameter,
    param : Float
  ) : ::Void

  fun light_modelfv = glLightModelfv(
    pname : LightModelParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun light_modeli = glLightModeli(
    pname : LightModelParameter,
    param : Int
  ) : ::Void

  fun light_modeliv = glLightModeliv(
    pname : LightModelParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun line_stipple = glLineStipple(
    factor : Int,
    pattern : UShort
  ) : ::Void

  fun materialf = glMaterialf(
    face : MaterialFace,
    pname : MaterialParameter,
    param : Float
  ) : ::Void

  fun materialfv = glMaterialfv(
    face : MaterialFace,
    pname : MaterialParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun materiali = glMateriali(
    face : MaterialFace,
    pname : MaterialParameter,
    param : Int
  ) : ::Void

  fun materialiv = glMaterialiv(
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

  fun tex_envf = glTexEnvf(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    param : Float
  ) : ::Void

  fun tex_envfv = glTexEnvfv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun tex_envi = glTexEnvi(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    param : Int
  ) : ::Void

  fun tex_enviv = glTexEnviv(
    target : TextureEnvTarget,
    pname : TextureEnvParameter,
    params : ::Pointer(Int)
  ) : ::Void

  fun tex_gend = glTexGend(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    param : Double
  ) : ::Void

  fun tex_gendv = glTexGendv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Double)
  ) : ::Void

  fun tex_genf = glTexGenf(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    param : Float
  ) : ::Void

  fun tex_genfv = glTexGenfv(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    params : ::Pointer(Float)
  ) : ::Void

  fun tex_geni = glTexGeni(
    coord : TextureCoordName,
    pname : TextureGenParameter,
    param : Int
  ) : ::Void

  fun tex_geniv = glTexGeniv(
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

  fun map1d = glMap1d(
    target : MapTarget,
    u1 : Double,
    u2 : Double,
    stride : Int,
    order : Int,
    points : ::Pointer(Double)
  ) : ::Void

  fun map1f = glMap1f(
    target : MapTarget,
    u1 : Float,
    u2 : Float,
    stride : Int,
    order : Int,
    points : ::Pointer(Float)
  ) : ::Void

  fun map2d = glMap2d(
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

  fun map2f = glMap2f(
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

  fun map_grid1d = glMapGrid1d(
    un : Int,
    u1 : Double,
    u2 : Double
  ) : ::Void

  fun map_grid1f = glMapGrid1f(
    un : Int,
    u1 : Float,
    u2 : Float
  ) : ::Void

  fun map_grid2d = glMapGrid2d(
    un : Int,
    u1 : Double,
    u2 : Double,
    vn : Int,
    v1 : Double,
    v2 : Double
  ) : ::Void

  fun map_grid2f = glMapGrid2f(
    un : Int,
    u1 : Float,
    u2 : Float,
    vn : Int,
    v1 : Float,
    v2 : Float
  ) : ::Void

  fun eval_coord1d = glEvalCoord1d(
    u : Double
  ) : ::Void

  fun eval_coord1dv = glEvalCoord1dv(
    u : ::Pointer(Double)
  ) : ::Void

  fun eval_coord1f = glEvalCoord1f(
    u : Float
  ) : ::Void

  fun eval_coord1fv = glEvalCoord1fv(
    u : ::Pointer(Float)
  ) : ::Void

  fun eval_coord2d = glEvalCoord2d(
    u : Double,
    v : Double
  ) : ::Void

  fun eval_coord2dv = glEvalCoord2dv(
    u : ::Pointer(Double)
  ) : ::Void

  fun eval_coord2f = glEvalCoord2f(
    u : Float,
    v : Float
  ) : ::Void

  fun eval_coord2fv = glEvalCoord2fv(
    u : ::Pointer(Float)
  ) : ::Void

  fun eval_mesh1 = glEvalMesh1(
    mode : MeshMode1,
    i1 : Int,
    i2 : Int
  ) : ::Void

  fun eval_point1 = glEvalPoint1(
    i : Int
  ) : ::Void

  fun eval_mesh2 = glEvalMesh2(
    mode : MeshMode2,
    i1 : Int,
    i2 : Int,
    j1 : Int,
    j2 : Int
  ) : ::Void

  fun eval_point2 = glEvalPoint2(
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

  fun pixel_transferf = glPixelTransferf(
    pname : PixelTransferParameter,
    param : Float
  ) : ::Void

  fun pixel_transferi = glPixelTransferi(
    pname : PixelTransferParameter,
    param : Int
  ) : ::Void

  fun pixel_mapfv = glPixelMapfv(
    map : PixelMap,
    mapsize : SizeI,
    values : ::Pointer(Float)
  ) : ::Void

  fun pixel_mapuiv = glPixelMapuiv(
    map : PixelMap,
    mapsize : SizeI,
    values : ::Pointer(UInt)
  ) : ::Void

  fun pixel_mapusv = glPixelMapusv(
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

  fun load_matrixf = glLoadMatrixf(
    m : ::Pointer(Float)
  ) : ::Void

  fun load_matrixd = glLoadMatrixd(
    m : ::Pointer(Double)
  ) : ::Void

  fun matrix_mode = glMatrixMode(
    mode : MatrixMode
  ) : ::Void

  fun mult_matrixf = glMultMatrixf(
    m : ::Pointer(Float)
  ) : ::Void

  fun mult_matrixd = glMultMatrixd(
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

  fun rotated = glRotated(
    angle : Double,
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun rotatef = glRotatef(
    angle : Float,
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun scaled = glScaled(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun scalef = glScalef(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun translated = glTranslated(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun translatef = glTranslatef(
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
    params : ::Pointer(Pointer(Void))
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

  fun indexub = glIndexub(
    c : UByte
  ) : ::Void

  fun indexubv = glIndexubv(
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
    format : InternalFormat,
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
    format : InternalFormat,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun compressed_tex_sub_image_1d = glCompressedTexSubImage1D(
    target : TextureTarget,
    level : Int,
    xoffset : Int,
    width : SizeI,
    format : InternalFormat,
    imageSize : SizeI,
    data : ::Pointer(Void)
  ) : ::Void

  fun get_compressed_tex_image = glGetCompressedTexImage(
    target : TextureTarget,
    level : Int,
    img : ::Pointer(Void)
  ) : ::Void

  fun client_active_texture = glClientActiveTexture(
    texture : TextureUnit
  ) : ::Void

  fun multi_tex_coord1d = glMultiTexCoord1d(
    target : TextureUnit,
    s : Double
  ) : ::Void

  fun multi_tex_coord1dv = glMultiTexCoord1dv(
    target : TextureUnit,
    v : ::Pointer(Double)
  ) : ::Void

  fun multi_tex_coord1f = glMultiTexCoord1f(
    target : TextureUnit,
    s : Float
  ) : ::Void

  fun multi_tex_coord1fv = glMultiTexCoord1fv(
    target : TextureUnit,
    v : ::Pointer(Float)
  ) : ::Void

  fun multi_tex_coord1i = glMultiTexCoord1i(
    target : TextureUnit,
    s : Int
  ) : ::Void

  fun multi_tex_coord1iv = glMultiTexCoord1iv(
    target : TextureUnit,
    v : ::Pointer(Int)
  ) : ::Void

  fun multi_tex_coord1s = glMultiTexCoord1s(
    target : TextureUnit,
    s : Short
  ) : ::Void

  fun multi_tex_coord1sv = glMultiTexCoord1sv(
    target : TextureUnit,
    v : ::Pointer(Short)
  ) : ::Void

  fun multi_tex_coord2d = glMultiTexCoord2d(
    target : TextureUnit,
    s : Double,
    t : Double
  ) : ::Void

  fun multi_tex_coord2dv = glMultiTexCoord2dv(
    target : TextureUnit,
    v : ::Pointer(Double)
  ) : ::Void

  fun multi_tex_coord2f = glMultiTexCoord2f(
    target : TextureUnit,
    s : Float,
    t : Float
  ) : ::Void

  fun multi_tex_coord2fv = glMultiTexCoord2fv(
    target : TextureUnit,
    v : ::Pointer(Float)
  ) : ::Void

  fun multi_tex_coord2i = glMultiTexCoord2i(
    target : TextureUnit,
    s : Int,
    t : Int
  ) : ::Void

  fun multi_tex_coord2iv = glMultiTexCoord2iv(
    target : TextureUnit,
    v : ::Pointer(Int)
  ) : ::Void

  fun multi_tex_coord2s = glMultiTexCoord2s(
    target : TextureUnit,
    s : Short,
    t : Short
  ) : ::Void

  fun multi_tex_coord2sv = glMultiTexCoord2sv(
    target : TextureUnit,
    v : ::Pointer(Short)
  ) : ::Void

  fun multi_tex_coord3d = glMultiTexCoord3d(
    target : TextureUnit,
    s : Double,
    t : Double,
    r : Double
  ) : ::Void

  fun multi_tex_coord3dv = glMultiTexCoord3dv(
    target : TextureUnit,
    v : ::Pointer(Double)
  ) : ::Void

  fun multi_tex_coord3f = glMultiTexCoord3f(
    target : TextureUnit,
    s : Float,
    t : Float,
    r : Float
  ) : ::Void

  fun multi_tex_coord3fv = glMultiTexCoord3fv(
    target : TextureUnit,
    v : ::Pointer(Float)
  ) : ::Void

  fun multi_tex_coord3i = glMultiTexCoord3i(
    target : TextureUnit,
    s : Int,
    t : Int,
    r : Int
  ) : ::Void

  fun multi_tex_coord3iv = glMultiTexCoord3iv(
    target : TextureUnit,
    v : ::Pointer(Int)
  ) : ::Void

  fun multi_tex_coord3s = glMultiTexCoord3s(
    target : TextureUnit,
    s : Short,
    t : Short,
    r : Short
  ) : ::Void

  fun multi_tex_coord3sv = glMultiTexCoord3sv(
    target : TextureUnit,
    v : ::Pointer(Short)
  ) : ::Void

  fun multi_tex_coord4d = glMultiTexCoord4d(
    target : TextureUnit,
    s : Double,
    t : Double,
    r : Double,
    q : Double
  ) : ::Void

  fun multi_tex_coord4dv = glMultiTexCoord4dv(
    target : TextureUnit,
    v : ::Pointer(Double)
  ) : ::Void

  fun multi_tex_coord4f = glMultiTexCoord4f(
    target : TextureUnit,
    s : Float,
    t : Float,
    r : Float,
    q : Float
  ) : ::Void

  fun multi_tex_coord4fv = glMultiTexCoord4fv(
    target : TextureUnit,
    v : ::Pointer(Float)
  ) : ::Void

  fun multi_tex_coord4i = glMultiTexCoord4i(
    target : TextureUnit,
    s : Int,
    t : Int,
    r : Int,
    q : Int
  ) : ::Void

  fun multi_tex_coord4iv = glMultiTexCoord4iv(
    target : TextureUnit,
    v : ::Pointer(Int)
  ) : ::Void

  fun multi_tex_coord4s = glMultiTexCoord4s(
    target : TextureUnit,
    s : Short,
    t : Short,
    r : Short,
    q : Short
  ) : ::Void

  fun multi_tex_coord4sv = glMultiTexCoord4sv(
    target : TextureUnit,
    v : ::Pointer(Short)
  ) : ::Void

  fun load_transpose_matrixf = glLoadTransposeMatrixf(
    m : ::Pointer(Float)
  ) : ::Void

  fun load_transpose_matrixd = glLoadTransposeMatrixd(
    m : ::Pointer(Double)
  ) : ::Void

  fun mult_transpose_matrixf = glMultTransposeMatrixf(
    m : ::Pointer(Float)
  ) : ::Void

  fun mult_transpose_matrixd = glMultTransposeMatrixd(
    m : ::Pointer(Double)
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

  fun fog_coordf = glFogCoordf(
    coord : Float
  ) : ::Void

  fun fog_coordfv = glFogCoordfv(
    coord : ::Pointer(Float)
  ) : ::Void

  fun fog_coordd = glFogCoordd(
    coord : Double
  ) : ::Void

  fun fog_coorddv = glFogCoorddv(
    coord : ::Pointer(Double)
  ) : ::Void

  fun fog_coord_pointer = glFogCoordPointer(
    type : FogPointerTypeEXT,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun secondary_color3b = glSecondaryColor3b(
    red : Byte,
    green : Byte,
    blue : Byte
  ) : ::Void

  fun secondary_color3bv = glSecondaryColor3bv(
    v : ::Pointer(Byte)
  ) : ::Void

  fun secondary_color3d = glSecondaryColor3d(
    red : Double,
    green : Double,
    blue : Double
  ) : ::Void

  fun secondary_color3dv = glSecondaryColor3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun secondary_color3f = glSecondaryColor3f(
    red : Float,
    green : Float,
    blue : Float
  ) : ::Void

  fun secondary_color3fv = glSecondaryColor3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun secondary_color3i = glSecondaryColor3i(
    red : Int,
    green : Int,
    blue : Int
  ) : ::Void

  fun secondary_color3iv = glSecondaryColor3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun secondary_color3s = glSecondaryColor3s(
    red : Short,
    green : Short,
    blue : Short
  ) : ::Void

  fun secondary_color3sv = glSecondaryColor3sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun secondary_color3ub = glSecondaryColor3ub(
    red : UByte,
    green : UByte,
    blue : UByte
  ) : ::Void

  fun secondary_color3ubv = glSecondaryColor3ubv(
    v : ::Pointer(UByte)
  ) : ::Void

  fun secondary_color3ui = glSecondaryColor3ui(
    red : UInt,
    green : UInt,
    blue : UInt
  ) : ::Void

  fun secondary_color3uiv = glSecondaryColor3uiv(
    v : ::Pointer(UInt)
  ) : ::Void

  fun secondary_color3us = glSecondaryColor3us(
    red : UShort,
    green : UShort,
    blue : UShort
  ) : ::Void

  fun secondary_color3usv = glSecondaryColor3usv(
    v : ::Pointer(UShort)
  ) : ::Void

  fun secondary_color_pointer = glSecondaryColorPointer(
    size : Int,
    type : ColorPointerType,
    stride : SizeI,
    pointer : ::Pointer(Void)
  ) : ::Void

  fun window_pos2d = glWindowPos2d(
    x : Double,
    y : Double
  ) : ::Void

  fun window_pos2dv = glWindowPos2dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun window_pos2f = glWindowPos2f(
    x : Float,
    y : Float
  ) : ::Void

  fun window_pos2fv = glWindowPos2fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun window_pos2i = glWindowPos2i(
    x : Int,
    y : Int
  ) : ::Void

  fun window_pos2iv = glWindowPos2iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun window_pos2s = glWindowPos2s(
    x : Short,
    y : Short
  ) : ::Void

  fun window_pos2sv = glWindowPos2sv(
    v : ::Pointer(Short)
  ) : ::Void

  fun window_pos3d = glWindowPos3d(
    x : Double,
    y : Double,
    z : Double
  ) : ::Void

  fun window_pos3dv = glWindowPos3dv(
    v : ::Pointer(Double)
  ) : ::Void

  fun window_pos3f = glWindowPos3f(
    x : Float,
    y : Float,
    z : Float
  ) : ::Void

  fun window_pos3fv = glWindowPos3fv(
    v : ::Pointer(Float)
  ) : ::Void

  fun window_pos3i = glWindowPos3i(
    x : Int,
    y : Int,
    z : Int
  ) : ::Void

  fun window_pos3iv = glWindowPos3iv(
    v : ::Pointer(Int)
  ) : ::Void

  fun window_pos3s = glWindowPos3s(
    x : Short,
    y : Short,
    z : Short
  ) : ::Void

  fun window_pos3sv = glWindowPos3sv(
    v : ::Pointer(Short)
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

  fun uniform_matrix2_fv = glUniformMatrix2fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix3_fv = glUniformMatrix3fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix4_fv = glUniformMatrix4fv(
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

  fun uniform_matrix2x3_fv = glUniformMatrix2x3fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix3x2_fv = glUniformMatrix3x2fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix2x4_fv = glUniformMatrix2x4fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix4x2_fv = glUniformMatrix4x2fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix3x4_fv = glUniformMatrix3x4fv(
    location : Int,
    count : SizeI,
    transpose : Boolean,
    value : ::Pointer(Float)
  ) : ::Void

  fun uniform_matrix4x3_fv = glUniformMatrix4x3fv(
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

  fun clear_buffer_iv = glClearBufferiv(
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

  fun clear_buffer_fi = glClearBufferfi(
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
end
