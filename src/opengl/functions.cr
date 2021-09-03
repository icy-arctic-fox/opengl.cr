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
end
