module OpenGL
  module Procs
    extend self

    # `Proc` type for the OpenGL function *glCullFace*.
    @[AlwaysInline]
    def cull_face : ::Proc.class
      ::Proc(LibGL::TriangleFace, ::Void)
    end

    # `Proc` type for the OpenGL function *glFrontFace*.
    @[AlwaysInline]
    def front_face : ::Proc.class
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # `Proc` type for the OpenGL function *glHint*.
    @[AlwaysInline]
    def hint : ::Proc.class
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glLineWidth*.
    @[AlwaysInline]
    def line_width : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPointSize*.
    @[AlwaysInline]
    def point_size : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPolygonMode*.
    @[AlwaysInline]
    def polygon_mode : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::PolygonMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glScissor*.
    @[AlwaysInline]
    def scissor : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameterf*.
    @[AlwaysInline]
    def tex_parameter_f : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameterfv*.
    @[AlwaysInline]
    def tex_parameter_fv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameteri*.
    @[AlwaysInline]
    def tex_parameter_i : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameteriv*.
    @[AlwaysInline]
    def tex_parameter_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexImage1D*.
    @[AlwaysInline]
    def tex_image_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexImage2D*.
    @[AlwaysInline]
    def tex_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawBuffer*.
    @[AlwaysInline]
    def draw_buffer : ::Proc.class
      ::Proc(LibGL::DrawBufferMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glClear*.
    @[AlwaysInline]
    def clear : ::Proc.class
      ::Proc(LibGL::ClearBufferMask, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearColor*.
    @[AlwaysInline]
    def clear_color : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearStencil*.
    @[AlwaysInline]
    def clear_stencil : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearDepth*.
    @[AlwaysInline]
    def clear_depth : ::Proc.class
      ::Proc(LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilMask*.
    @[AlwaysInline]
    def stencil_mask : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorMask*.
    @[AlwaysInline]
    def color_mask : ::Proc.class
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthMask*.
    @[AlwaysInline]
    def depth_mask : ::Proc.class
      ::Proc(LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisable*.
    @[AlwaysInline]
    def disable : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glEnable*.
    @[AlwaysInline]
    def enable : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glFinish*.
    @[AlwaysInline]
    def finish : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glFlush*.
    @[AlwaysInline]
    def flush : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFunc*.
    @[AlwaysInline]
    def blend_func : ::Proc.class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # `Proc` type for the OpenGL function *glLogicOp*.
    @[AlwaysInline]
    def logic_op : ::Proc.class
      ::Proc(LibGL::LogicOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilFunc*.
    @[AlwaysInline]
    def stencil_func : ::Proc.class
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilOp*.
    @[AlwaysInline]
    def stencil_op : ::Proc.class
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthFunc*.
    @[AlwaysInline]
    def depth_func : ::Proc.class
      ::Proc(LibGL::DepthFunction, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelStoref*.
    @[AlwaysInline]
    def pixel_store_f : ::Proc.class
      ::Proc(LibGL::PixelStoreParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelStorei*.
    @[AlwaysInline]
    def pixel_store_i : ::Proc.class
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glReadBuffer*.
    @[AlwaysInline]
    def read_buffer : ::Proc.class
      ::Proc(LibGL::ReadBufferMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glReadPixels*.
    @[AlwaysInline]
    def read_pixels : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetBooleanv*.
    @[AlwaysInline]
    def get_boolean_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetDoublev*.
    @[AlwaysInline]
    def get_double_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetError*.
    @[AlwaysInline]
    def get_error : ::Proc.class
      ::Proc(LibGL::Enum)
    end

    # `Proc` type for the OpenGL function *glGetFloatv*.
    @[AlwaysInline]
    def get_float_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetIntegerv*.
    @[AlwaysInline]
    def get_integer_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetString*.
    @[AlwaysInline]
    def get_string : ::Proc.class
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
    end

    # `Proc` type for the OpenGL function *glGetTexImage*.
    @[AlwaysInline]
    def get_tex_image : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexParameterfv*.
    @[AlwaysInline]
    def get_tex_parameter_fv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexParameteriv*.
    @[AlwaysInline]
    def get_tex_parameter_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexLevelParameterfv*.
    @[AlwaysInline]
    def get_tex_level_parameter_fv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexLevelParameteriv*.
    @[AlwaysInline]
    def get_tex_level_parameter_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsEnabled*.
    @[AlwaysInline]
    def is_enabled : ::Proc.class
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glDepthRange*.
    @[AlwaysInline]
    def depth_range : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glViewport*.
    @[AlwaysInline]
    def viewport : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glNewList*.
    @[AlwaysInline]
    def new_list : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ListMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glEndList*.
    @[AlwaysInline]
    def end_list : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glCallList*.
    @[AlwaysInline]
    def call_list : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glCallLists*.
    @[AlwaysInline]
    def call_lists : ::Proc.class
      ::Proc(LibGL::SizeI, LibGL::ListNameType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteLists*.
    @[AlwaysInline]
    def delete_lists : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glGenLists*.
    @[AlwaysInline]
    def gen_lists : ::Proc.class
      ::Proc(LibGL::SizeI, LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glListBase*.
    @[AlwaysInline]
    def list_base : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBegin*.
    @[AlwaysInline]
    def begin : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Void)
    end

    # `Proc` type for the OpenGL function *glBitmap*.
    @[AlwaysInline]
    def bitmap : ::Proc.class
      ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3b*.
    @[AlwaysInline]
    def color_3b : ::Proc.class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3bv*.
    @[AlwaysInline]
    def color_3bv : ::Proc.class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3d*.
    @[AlwaysInline]
    def color_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3dv*.
    @[AlwaysInline]
    def color_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3f*.
    @[AlwaysInline]
    def color_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3fv*.
    @[AlwaysInline]
    def color_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3i*.
    @[AlwaysInline]
    def color_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3iv*.
    @[AlwaysInline]
    def color_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3s*.
    @[AlwaysInline]
    def color_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3sv*.
    @[AlwaysInline]
    def color_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3ub*.
    @[AlwaysInline]
    def color_3ub : ::Proc.class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3ubv*.
    @[AlwaysInline]
    def color_3ubv : ::Proc.class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3ui*.
    @[AlwaysInline]
    def color_3ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3uiv*.
    @[AlwaysInline]
    def color_3uiv : ::Proc.class
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3us*.
    @[AlwaysInline]
    def color_3us : ::Proc.class
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor3usv*.
    @[AlwaysInline]
    def color_3usv : ::Proc.class
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4b*.
    @[AlwaysInline]
    def color_4b : ::Proc.class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4bv*.
    @[AlwaysInline]
    def color_4bv : ::Proc.class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4d*.
    @[AlwaysInline]
    def color_4d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4dv*.
    @[AlwaysInline]
    def color_4dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4f*.
    @[AlwaysInline]
    def color_4f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4fv*.
    @[AlwaysInline]
    def color_4fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4i*.
    @[AlwaysInline]
    def color_4i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4iv*.
    @[AlwaysInline]
    def color_4iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4s*.
    @[AlwaysInline]
    def color_4s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4sv*.
    @[AlwaysInline]
    def color_4sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4ub*.
    @[AlwaysInline]
    def color_4ub : ::Proc.class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4ubv*.
    @[AlwaysInline]
    def color_4ubv : ::Proc.class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4ui*.
    @[AlwaysInline]
    def color_4ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4uiv*.
    @[AlwaysInline]
    def color_4uiv : ::Proc.class
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4us*.
    @[AlwaysInline]
    def color_4us : ::Proc.class
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4usv*.
    @[AlwaysInline]
    def color_4usv : ::Proc.class
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glEdgeFlag*.
    @[AlwaysInline]
    def edge_flag : ::Proc.class
      ::Proc(LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glEdgeFlagv*.
    @[AlwaysInline]
    def edge_flag_v : ::Proc.class
      ::Proc(::Pointer(LibGL::Boolean), ::Void)
    end

    # `Proc` type for the OpenGL function *glEnd*.
    @[AlwaysInline]
    def end : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glIndexd*.
    @[AlwaysInline]
    def index_d : ::Proc.class
      ::Proc(LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexdv*.
    @[AlwaysInline]
    def index_dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexf*.
    @[AlwaysInline]
    def index_f : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexfv*.
    @[AlwaysInline]
    def index_fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexi*.
    @[AlwaysInline]
    def index_i : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexiv*.
    @[AlwaysInline]
    def index_iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexs*.
    @[AlwaysInline]
    def index_s : ::Proc.class
      ::Proc(LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexsv*.
    @[AlwaysInline]
    def index_sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3b*.
    @[AlwaysInline]
    def normal_3b : ::Proc.class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3bv*.
    @[AlwaysInline]
    def normal_3bv : ::Proc.class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3d*.
    @[AlwaysInline]
    def normal_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3dv*.
    @[AlwaysInline]
    def normal_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3f*.
    @[AlwaysInline]
    def normal_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3fv*.
    @[AlwaysInline]
    def normal_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3i*.
    @[AlwaysInline]
    def normal_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3iv*.
    @[AlwaysInline]
    def normal_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3s*.
    @[AlwaysInline]
    def normal_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3sv*.
    @[AlwaysInline]
    def normal_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2d*.
    @[AlwaysInline]
    def raster_pos_2d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2dv*.
    @[AlwaysInline]
    def raster_pos_2dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2f*.
    @[AlwaysInline]
    def raster_pos_2f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2fv*.
    @[AlwaysInline]
    def raster_pos_2fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2i*.
    @[AlwaysInline]
    def raster_pos_2i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2iv*.
    @[AlwaysInline]
    def raster_pos_2iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2s*.
    @[AlwaysInline]
    def raster_pos_2s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos2sv*.
    @[AlwaysInline]
    def raster_pos_2sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3d*.
    @[AlwaysInline]
    def raster_pos_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3dv*.
    @[AlwaysInline]
    def raster_pos_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3f*.
    @[AlwaysInline]
    def raster_pos_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3fv*.
    @[AlwaysInline]
    def raster_pos_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3i*.
    @[AlwaysInline]
    def raster_pos_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3iv*.
    @[AlwaysInline]
    def raster_pos_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3s*.
    @[AlwaysInline]
    def raster_pos_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos3sv*.
    @[AlwaysInline]
    def raster_pos_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4d*.
    @[AlwaysInline]
    def raster_pos_4d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4dv*.
    @[AlwaysInline]
    def raster_pos_4dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4f*.
    @[AlwaysInline]
    def raster_pos_4f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4fv*.
    @[AlwaysInline]
    def raster_pos_4fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4i*.
    @[AlwaysInline]
    def raster_pos_4i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4iv*.
    @[AlwaysInline]
    def raster_pos_4iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4s*.
    @[AlwaysInline]
    def raster_pos_4s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glRasterPos4sv*.
    @[AlwaysInline]
    def raster_pos_4sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glRectd*.
    @[AlwaysInline]
    def rect_d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glRectdv*.
    @[AlwaysInline]
    def rect_dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glRectf*.
    @[AlwaysInline]
    def rect_f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glRectfv*.
    @[AlwaysInline]
    def rect_fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glRecti*.
    @[AlwaysInline]
    def rect_i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glRectiv*.
    @[AlwaysInline]
    def rect_iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glRects*.
    @[AlwaysInline]
    def rect_s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glRectsv*.
    @[AlwaysInline]
    def rect_sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1d*.
    @[AlwaysInline]
    def tex_coord_1d : ::Proc.class
      ::Proc(LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1dv*.
    @[AlwaysInline]
    def tex_coord_1dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1f*.
    @[AlwaysInline]
    def tex_coord_1f : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1fv*.
    @[AlwaysInline]
    def tex_coord_1fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1i*.
    @[AlwaysInline]
    def tex_coord_1i : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1iv*.
    @[AlwaysInline]
    def tex_coord_1iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1s*.
    @[AlwaysInline]
    def tex_coord_1s : ::Proc.class
      ::Proc(LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord1sv*.
    @[AlwaysInline]
    def tex_coord_1sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2d*.
    @[AlwaysInline]
    def tex_coord_2d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2dv*.
    @[AlwaysInline]
    def tex_coord_2dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2f*.
    @[AlwaysInline]
    def tex_coord_2f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2fv*.
    @[AlwaysInline]
    def tex_coord_2fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2i*.
    @[AlwaysInline]
    def tex_coord_2i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2iv*.
    @[AlwaysInline]
    def tex_coord_2iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2s*.
    @[AlwaysInline]
    def tex_coord_2s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord2sv*.
    @[AlwaysInline]
    def tex_coord_2sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3d*.
    @[AlwaysInline]
    def tex_coord_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3dv*.
    @[AlwaysInline]
    def tex_coord_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3f*.
    @[AlwaysInline]
    def tex_coord_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3fv*.
    @[AlwaysInline]
    def tex_coord_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3i*.
    @[AlwaysInline]
    def tex_coord_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3iv*.
    @[AlwaysInline]
    def tex_coord_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3s*.
    @[AlwaysInline]
    def tex_coord_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord3sv*.
    @[AlwaysInline]
    def tex_coord_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4d*.
    @[AlwaysInline]
    def tex_coord_4d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4dv*.
    @[AlwaysInline]
    def tex_coord_4dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4f*.
    @[AlwaysInline]
    def tex_coord_4f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4fv*.
    @[AlwaysInline]
    def tex_coord_4fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4i*.
    @[AlwaysInline]
    def tex_coord_4i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4iv*.
    @[AlwaysInline]
    def tex_coord_4iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4s*.
    @[AlwaysInline]
    def tex_coord_4s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoord4sv*.
    @[AlwaysInline]
    def tex_coord_4sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2d*.
    @[AlwaysInline]
    def vertex_2d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2dv*.
    @[AlwaysInline]
    def vertex_2dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2f*.
    @[AlwaysInline]
    def vertex_2f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2fv*.
    @[AlwaysInline]
    def vertex_2fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2i*.
    @[AlwaysInline]
    def vertex_2i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2iv*.
    @[AlwaysInline]
    def vertex_2iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2s*.
    @[AlwaysInline]
    def vertex_2s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex2sv*.
    @[AlwaysInline]
    def vertex_2sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3d*.
    @[AlwaysInline]
    def vertex_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3dv*.
    @[AlwaysInline]
    def vertex_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3f*.
    @[AlwaysInline]
    def vertex_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3fv*.
    @[AlwaysInline]
    def vertex_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3i*.
    @[AlwaysInline]
    def vertex_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3iv*.
    @[AlwaysInline]
    def vertex_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3s*.
    @[AlwaysInline]
    def vertex_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex3sv*.
    @[AlwaysInline]
    def vertex_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4d*.
    @[AlwaysInline]
    def vertex_4d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4dv*.
    @[AlwaysInline]
    def vertex_4dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4f*.
    @[AlwaysInline]
    def vertex_4f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4fv*.
    @[AlwaysInline]
    def vertex_4fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4i*.
    @[AlwaysInline]
    def vertex_4i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4iv*.
    @[AlwaysInline]
    def vertex_4iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4s*.
    @[AlwaysInline]
    def vertex_4s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertex4sv*.
    @[AlwaysInline]
    def vertex_4sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glClipPlane*.
    @[AlwaysInline]
    def clip_plane : ::Proc.class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glColorMaterial*.
    @[AlwaysInline]
    def color_material : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::ColorMaterialParameter, ::Void)
    end

    # `Proc` type for the OpenGL function *glFogf*.
    @[AlwaysInline]
    def fog_f : ::Proc.class
      ::Proc(LibGL::FogParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glFogfv*.
    @[AlwaysInline]
    def fog_fv : ::Proc.class
      ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glFogi*.
    @[AlwaysInline]
    def fog_i : ::Proc.class
      ::Proc(LibGL::FogParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glFogiv*.
    @[AlwaysInline]
    def fog_iv : ::Proc.class
      ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glLightf*.
    @[AlwaysInline]
    def light_f : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glLightfv*.
    @[AlwaysInline]
    def light_fv : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glLighti*.
    @[AlwaysInline]
    def light_i : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glLightiv*.
    @[AlwaysInline]
    def light_iv : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glLightModelf*.
    @[AlwaysInline]
    def light_model_f : ::Proc.class
      ::Proc(LibGL::LightModelParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glLightModelfv*.
    @[AlwaysInline]
    def light_model_fv : ::Proc.class
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glLightModeli*.
    @[AlwaysInline]
    def light_model_i : ::Proc.class
      ::Proc(LibGL::LightModelParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glLightModeliv*.
    @[AlwaysInline]
    def light_model_iv : ::Proc.class
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glLineStipple*.
    @[AlwaysInline]
    def line_stipple : ::Proc.class
      ::Proc(LibGL::Int, LibGL::UShort, ::Void)
    end

    # `Proc` type for the OpenGL function *glMaterialf*.
    @[AlwaysInline]
    def material_f : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glMaterialfv*.
    @[AlwaysInline]
    def material_fv : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMateriali*.
    @[AlwaysInline]
    def material_i : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMaterialiv*.
    @[AlwaysInline]
    def material_iv : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glPolygonStipple*.
    @[AlwaysInline]
    def polygon_stipple : ::Proc.class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glShadeModel*.
    @[AlwaysInline]
    def shade_model : ::Proc.class
      ::Proc(LibGL::ShadingModel, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnvf*.
    @[AlwaysInline]
    def tex_env_f : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnvfv*.
    @[AlwaysInline]
    def tex_env_fv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnvi*.
    @[AlwaysInline]
    def tex_env_i : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnviv*.
    @[AlwaysInline]
    def tex_env_iv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexGend*.
    @[AlwaysInline]
    def tex_gen_d : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexGendv*.
    @[AlwaysInline]
    def tex_gen_dv : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexGenf*.
    @[AlwaysInline]
    def tex_gen_f : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexGenfv*.
    @[AlwaysInline]
    def tex_gen_fv : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexGeni*.
    @[AlwaysInline]
    def tex_gen_i : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexGeniv*.
    @[AlwaysInline]
    def tex_gen_iv : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glFeedbackBuffer*.
    @[AlwaysInline]
    def feedback_buffer : ::Proc.class
      ::Proc(LibGL::SizeI, LibGL::FeedbackType, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glSelectBuffer*.
    @[AlwaysInline]
    def select_buffer : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glRenderMode*.
    @[AlwaysInline]
    def render_mode : ::Proc.class
      ::Proc(LibGL::RenderingMode, LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glInitNames*.
    @[AlwaysInline]
    def init_names : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glLoadName*.
    @[AlwaysInline]
    def load_name : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glPassThrough*.
    @[AlwaysInline]
    def pass_through : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPopName*.
    @[AlwaysInline]
    def pop_name : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glPushName*.
    @[AlwaysInline]
    def push_name : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearAccum*.
    @[AlwaysInline]
    def clear_accum : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearIndex*.
    @[AlwaysInline]
    def clear_index : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexMask*.
    @[AlwaysInline]
    def index_mask : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glAccum*.
    @[AlwaysInline]
    def accum : ::Proc.class
      ::Proc(LibGL::AccumOp, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPopAttrib*.
    @[AlwaysInline]
    def pop_attrib : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glPushAttrib*.
    @[AlwaysInline]
    def push_attrib : ::Proc.class
      ::Proc(LibGL::AttribMask, ::Void)
    end

    # `Proc` type for the OpenGL function *glMap1d*.
    @[AlwaysInline]
    def map_1d : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMap1f*.
    @[AlwaysInline]
    def map_1f : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMap2d*.
    @[AlwaysInline]
    def map_2d : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMap2f*.
    @[AlwaysInline]
    def map_2f : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMapGrid1d*.
    @[AlwaysInline]
    def map_grid_1d : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glMapGrid1f*.
    @[AlwaysInline]
    def map_grid_1f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glMapGrid2d*.
    @[AlwaysInline]
    def map_grid_2d : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glMapGrid2f*.
    @[AlwaysInline]
    def map_grid_2f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord1d*.
    @[AlwaysInline]
    def eval_coord_1d : ::Proc.class
      ::Proc(LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord1dv*.
    @[AlwaysInline]
    def eval_coord_1dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord1f*.
    @[AlwaysInline]
    def eval_coord_1f : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord1fv*.
    @[AlwaysInline]
    def eval_coord_1fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord2d*.
    @[AlwaysInline]
    def eval_coord_2d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord2dv*.
    @[AlwaysInline]
    def eval_coord_2dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord2f*.
    @[AlwaysInline]
    def eval_coord_2f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalCoord2fv*.
    @[AlwaysInline]
    def eval_coord_2fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalMesh1*.
    @[AlwaysInline]
    def eval_mesh1 : ::Proc.class
      ::Proc(LibGL::MeshMode1, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalPoint1*.
    @[AlwaysInline]
    def eval_point1 : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalMesh2*.
    @[AlwaysInline]
    def eval_mesh2 : ::Proc.class
      ::Proc(LibGL::MeshMode2, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glEvalPoint2*.
    @[AlwaysInline]
    def eval_point2 : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glAlphaFunc*.
    @[AlwaysInline]
    def alpha_func : ::Proc.class
      ::Proc(LibGL::AlphaFunction, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelZoom*.
    @[AlwaysInline]
    def pixel_zoom : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelTransferf*.
    @[AlwaysInline]
    def pixel_transfer_f : ::Proc.class
      ::Proc(LibGL::PixelTransferParameter, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelTransferi*.
    @[AlwaysInline]
    def pixel_transfer_i : ::Proc.class
      ::Proc(LibGL::PixelTransferParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelMapfv*.
    @[AlwaysInline]
    def pixel_map_fv : ::Proc.class
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelMapuiv*.
    @[AlwaysInline]
    def pixel_map_uiv : ::Proc.class
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelMapusv*.
    @[AlwaysInline]
    def pixel_map_usv : ::Proc.class
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyPixels*.
    @[AlwaysInline]
    def copy_pixels : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelCopyType, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawPixels*.
    @[AlwaysInline]
    def draw_pixels : ::Proc.class
      ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetClipPlane*.
    @[AlwaysInline]
    def get_clip_plane : ::Proc.class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetLightfv*.
    @[AlwaysInline]
    def get_light_fv : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetLightiv*.
    @[AlwaysInline]
    def get_light_iv : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMapdv*.
    @[AlwaysInline]
    def get_map_dv : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMapfv*.
    @[AlwaysInline]
    def get_map_fv : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMapiv*.
    @[AlwaysInline]
    def get_map_iv : ::Proc.class
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMaterialfv*.
    @[AlwaysInline]
    def get_material_fv : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMaterialiv*.
    @[AlwaysInline]
    def get_material_iv : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPixelMapfv*.
    @[AlwaysInline]
    def get_pixel_map_fv : ::Proc.class
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPixelMapuiv*.
    @[AlwaysInline]
    def get_pixel_map_uiv : ::Proc.class
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPixelMapusv*.
    @[AlwaysInline]
    def get_pixel_map_usv : ::Proc.class
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPolygonStipple*.
    @[AlwaysInline]
    def get_polygon_stipple : ::Proc.class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexEnvfv*.
    @[AlwaysInline]
    def get_tex_env_fv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexEnviv*.
    @[AlwaysInline]
    def get_tex_env_iv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexGendv*.
    @[AlwaysInline]
    def get_tex_gen_dv : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexGenfv*.
    @[AlwaysInline]
    def get_tex_gen_fv : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexGeniv*.
    @[AlwaysInline]
    def get_tex_gen_iv : ::Proc.class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsList*.
    @[AlwaysInline]
    def is_list : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glFrustum*.
    @[AlwaysInline]
    def frustum : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glLoadIdentity*.
    @[AlwaysInline]
    def load_identity : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glLoadMatrixf*.
    @[AlwaysInline]
    def load_matrix_f : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glLoadMatrixd*.
    @[AlwaysInline]
    def load_matrix_d : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMatrixMode*.
    @[AlwaysInline]
    def matrix_mode : ::Proc.class
      ::Proc(LibGL::MatrixMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultMatrixf*.
    @[AlwaysInline]
    def mult_matrix_f : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultMatrixd*.
    @[AlwaysInline]
    def mult_matrix_d : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glOrtho*.
    @[AlwaysInline]
    def ortho : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glPopMatrix*.
    @[AlwaysInline]
    def pop_matrix : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glPushMatrix*.
    @[AlwaysInline]
    def push_matrix : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glRotated*.
    @[AlwaysInline]
    def rotate_d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glRotatef*.
    @[AlwaysInline]
    def rotate_f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glScaled*.
    @[AlwaysInline]
    def scale_d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glScalef*.
    @[AlwaysInline]
    def scale_f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glTranslated*.
    @[AlwaysInline]
    def translate_d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glTranslatef*.
    @[AlwaysInline]
    def translate_f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawArrays*.
    @[AlwaysInline]
    def draw_arrays : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElements*.
    @[AlwaysInline]
    def draw_elements : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPointerv*.
    @[AlwaysInline]
    def get_pointer_v : ::Proc.class
      ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
    end

    # `Proc` type for the OpenGL function *glPolygonOffset*.
    @[AlwaysInline]
    def polygon_offset : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexImage1D*.
    @[AlwaysInline]
    def copy_tex_image_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexImage2D*.
    @[AlwaysInline]
    def copy_tex_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexSubImage1D*.
    @[AlwaysInline]
    def copy_tex_sub_image_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexSubImage2D*.
    @[AlwaysInline]
    def copy_tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexSubImage1D*.
    @[AlwaysInline]
    def tex_sub_image_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexSubImage2D*.
    @[AlwaysInline]
    def tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glBindTexture*.
    @[AlwaysInline]
    def bind_texture : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteTextures*.
    @[AlwaysInline]
    def delete_textures : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenTextures*.
    @[AlwaysInline]
    def gen_textures : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsTexture*.
    @[AlwaysInline]
    def is_texture : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glArrayElement*.
    @[AlwaysInline]
    def array_element : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorPointer*.
    @[AlwaysInline]
    def color_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glDisableClientState*.
    @[AlwaysInline]
    def disable_client_state : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glEdgeFlagPointer*.
    @[AlwaysInline]
    def edge_flag_pointer : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glEnableClientState*.
    @[AlwaysInline]
    def enable_client_state : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexPointer*.
    @[AlwaysInline]
    def index_pointer : ::Proc.class
      ::Proc(LibGL::IndexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glInterleavedArrays*.
    @[AlwaysInline]
    def interleaved_arrays : ::Proc.class
      ::Proc(LibGL::InterleavedArrayFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormalPointer*.
    @[AlwaysInline]
    def normal_pointer : ::Proc.class
      ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordPointer*.
    @[AlwaysInline]
    def tex_coord_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexPointer*.
    @[AlwaysInline]
    def vertex_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glAreTexturesResident*.
    @[AlwaysInline]
    def are_textures_resident : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Boolean), LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glPrioritizeTextures*.
    @[AlwaysInline]
    def prioritize_textures : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexub*.
    @[AlwaysInline]
    def index_ub : ::Proc.class
      ::Proc(LibGL::UByte, ::Void)
    end

    # `Proc` type for the OpenGL function *glIndexubv*.
    @[AlwaysInline]
    def index_ubv : ::Proc.class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glPopClientAttrib*.
    @[AlwaysInline]
    def pop_client_attrib : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glPushClientAttrib*.
    @[AlwaysInline]
    def push_client_attrib : ::Proc.class
      ::Proc(LibGL::ClientAttribMask, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawRangeElements*.
    @[AlwaysInline]
    def draw_range_elements : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexImage3D*.
    @[AlwaysInline]
    def tex_image_3d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexSubImage3D*.
    @[AlwaysInline]
    def tex_sub_image_3d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexSubImage3D*.
    @[AlwaysInline]
    def copy_tex_sub_image_3d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glActiveTexture*.
    @[AlwaysInline]
    def active_texture : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # `Proc` type for the OpenGL function *glSampleCoverage*.
    @[AlwaysInline]
    def sample_coverage : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexImage3D*.
    @[AlwaysInline]
    def compressed_tex_image_3d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexImage2D*.
    @[AlwaysInline]
    def compressed_tex_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexImage1D*.
    @[AlwaysInline]
    def compressed_tex_image_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexSubImage3D*.
    @[AlwaysInline]
    def compressed_tex_sub_image_3d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexSubImage2D*.
    @[AlwaysInline]
    def compressed_tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexSubImage1D*.
    @[AlwaysInline]
    def compressed_tex_sub_image_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetCompressedTexImage*.
    @[AlwaysInline]
    def get_compressed_tex_image : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glClientActiveTexture*.
    @[AlwaysInline]
    def client_active_texture : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1d*.
    @[AlwaysInline]
    def multi_tex_coord_1d : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1dv*.
    @[AlwaysInline]
    def multi_tex_coord_1dv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1f*.
    @[AlwaysInline]
    def multi_tex_coord_1f : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1fv*.
    @[AlwaysInline]
    def multi_tex_coord_1fv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1i*.
    @[AlwaysInline]
    def multi_tex_coord_1i : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1iv*.
    @[AlwaysInline]
    def multi_tex_coord_1iv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1s*.
    @[AlwaysInline]
    def multi_tex_coord_1s : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord1sv*.
    @[AlwaysInline]
    def multi_tex_coord_1sv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2d*.
    @[AlwaysInline]
    def multi_tex_coord_2d : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2dv*.
    @[AlwaysInline]
    def multi_tex_coord_2dv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2f*.
    @[AlwaysInline]
    def multi_tex_coord_2f : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2fv*.
    @[AlwaysInline]
    def multi_tex_coord_2fv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2i*.
    @[AlwaysInline]
    def multi_tex_coord_2i : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2iv*.
    @[AlwaysInline]
    def multi_tex_coord_2iv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2s*.
    @[AlwaysInline]
    def multi_tex_coord_2s : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord2sv*.
    @[AlwaysInline]
    def multi_tex_coord_2sv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3d*.
    @[AlwaysInline]
    def multi_tex_coord_3d : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3dv*.
    @[AlwaysInline]
    def multi_tex_coord_3dv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3f*.
    @[AlwaysInline]
    def multi_tex_coord_3f : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3fv*.
    @[AlwaysInline]
    def multi_tex_coord_3fv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3i*.
    @[AlwaysInline]
    def multi_tex_coord_3i : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3iv*.
    @[AlwaysInline]
    def multi_tex_coord_3iv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3s*.
    @[AlwaysInline]
    def multi_tex_coord_3s : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord3sv*.
    @[AlwaysInline]
    def multi_tex_coord_3sv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4d*.
    @[AlwaysInline]
    def multi_tex_coord_4d : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4dv*.
    @[AlwaysInline]
    def multi_tex_coord_4dv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4f*.
    @[AlwaysInline]
    def multi_tex_coord_4f : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4fv*.
    @[AlwaysInline]
    def multi_tex_coord_4fv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4i*.
    @[AlwaysInline]
    def multi_tex_coord_4i : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4iv*.
    @[AlwaysInline]
    def multi_tex_coord_4iv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4s*.
    @[AlwaysInline]
    def multi_tex_coord_4s : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4sv*.
    @[AlwaysInline]
    def multi_tex_coord_4sv : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glLoadTransposeMatrixf*.
    @[AlwaysInline]
    def load_transpose_matrix_f : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glLoadTransposeMatrixd*.
    @[AlwaysInline]
    def load_transpose_matrix_d : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultTransposeMatrixf*.
    @[AlwaysInline]
    def mult_transpose_matrix_f : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultTransposeMatrixd*.
    @[AlwaysInline]
    def mult_transpose_matrix_d : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFuncSeparate*.
    @[AlwaysInline]
    def blend_func_separate : ::Proc.class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiDrawArrays*.
    @[AlwaysInline]
    def multi_draw_arrays : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::Int), ::Pointer(LibGL::SizeI), LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiDrawElements*.
    @[AlwaysInline]
    def multi_draw_elements : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glPointParameterf*.
    @[AlwaysInline]
    def point_parameter_f : ::Proc.class
      ::Proc(LibGL::PointParameterNameARB, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPointParameterfv*.
    @[AlwaysInline]
    def point_parameter_fv : ::Proc.class
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glPointParameteri*.
    @[AlwaysInline]
    def point_parameter_i : ::Proc.class
      ::Proc(LibGL::PointParameterNameARB, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glPointParameteriv*.
    @[AlwaysInline]
    def point_parameter_iv : ::Proc.class
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glFogCoordf*.
    @[AlwaysInline]
    def fog_coord_f : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glFogCoordfv*.
    @[AlwaysInline]
    def fog_coord_fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glFogCoordd*.
    @[AlwaysInline]
    def fog_coord_d : ::Proc.class
      ::Proc(LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glFogCoorddv*.
    @[AlwaysInline]
    def fog_coord_dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glFogCoordPointer*.
    @[AlwaysInline]
    def fog_coord_pointer : ::Proc.class
      ::Proc(LibGL::FogPointerTypeEXT, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3b*.
    @[AlwaysInline]
    def secondary_color_3b : ::Proc.class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3bv*.
    @[AlwaysInline]
    def secondary_color_3bv : ::Proc.class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3d*.
    @[AlwaysInline]
    def secondary_color_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3dv*.
    @[AlwaysInline]
    def secondary_color_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3f*.
    @[AlwaysInline]
    def secondary_color_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3fv*.
    @[AlwaysInline]
    def secondary_color_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3i*.
    @[AlwaysInline]
    def secondary_color_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3iv*.
    @[AlwaysInline]
    def secondary_color_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3s*.
    @[AlwaysInline]
    def secondary_color_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3sv*.
    @[AlwaysInline]
    def secondary_color_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3ub*.
    @[AlwaysInline]
    def secondary_color_3ub : ::Proc.class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3ubv*.
    @[AlwaysInline]
    def secondary_color_3ubv : ::Proc.class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3ui*.
    @[AlwaysInline]
    def secondary_color_3ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3uiv*.
    @[AlwaysInline]
    def secondary_color_3uiv : ::Proc.class
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3us*.
    @[AlwaysInline]
    def secondary_color_3us : ::Proc.class
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColor3usv*.
    @[AlwaysInline]
    def secondary_color_3usv : ::Proc.class
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColorPointer*.
    @[AlwaysInline]
    def secondary_color_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2d*.
    @[AlwaysInline]
    def window_pos_2d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2dv*.
    @[AlwaysInline]
    def window_pos_2dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2f*.
    @[AlwaysInline]
    def window_pos_2f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2fv*.
    @[AlwaysInline]
    def window_pos_2fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2i*.
    @[AlwaysInline]
    def window_pos_2i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2iv*.
    @[AlwaysInline]
    def window_pos_2iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2s*.
    @[AlwaysInline]
    def window_pos_2s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos2sv*.
    @[AlwaysInline]
    def window_pos_2sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3d*.
    @[AlwaysInline]
    def window_pos_3d : ::Proc.class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3dv*.
    @[AlwaysInline]
    def window_pos_3dv : ::Proc.class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3f*.
    @[AlwaysInline]
    def window_pos_3f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3fv*.
    @[AlwaysInline]
    def window_pos_3fv : ::Proc.class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3i*.
    @[AlwaysInline]
    def window_pos_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3iv*.
    @[AlwaysInline]
    def window_pos_3iv : ::Proc.class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3s*.
    @[AlwaysInline]
    def window_pos_3s : ::Proc.class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glWindowPos3sv*.
    @[AlwaysInline]
    def window_pos_3sv : ::Proc.class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendColor*.
    @[AlwaysInline]
    def blend_color : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendEquation*.
    @[AlwaysInline]
    def blend_equation : ::Proc.class
      ::Proc(LibGL::BlendEquationModeEXT, ::Void)
    end

    # `Proc` type for the OpenGL function *glGenQueries*.
    @[AlwaysInline]
    def gen_queries : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteQueries*.
    @[AlwaysInline]
    def delete_queries : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsQuery*.
    @[AlwaysInline]
    def is_query : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glBeginQuery*.
    @[AlwaysInline]
    def begin_query : ::Proc.class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glEndQuery*.
    @[AlwaysInline]
    def end_query : ::Proc.class
      ::Proc(LibGL::QueryTarget, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetQueryiv*.
    @[AlwaysInline]
    def get_query_iv : ::Proc.class
      ::Proc(LibGL::QueryTarget, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetQueryObjectiv*.
    @[AlwaysInline]
    def get_query_object_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetQueryObjectuiv*.
    @[AlwaysInline]
    def get_query_object_uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glBindBuffer*.
    @[AlwaysInline]
    def bind_buffer : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteBuffers*.
    @[AlwaysInline]
    def delete_buffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenBuffers*.
    @[AlwaysInline]
    def gen_buffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsBuffer*.
    @[AlwaysInline]
    def is_buffer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glBufferData*.
    @[AlwaysInline]
    def buffer_data : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::SizeIPtr, ::Pointer(Void), LibGL::BufferUsageARB, ::Void)
    end

    # `Proc` type for the OpenGL function *glBufferSubData*.
    @[AlwaysInline]
    def buffer_sub_data : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetBufferSubData*.
    @[AlwaysInline]
    def get_buffer_sub_data : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glMapBuffer*.
    @[AlwaysInline]
    def map_buffer : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferAccessARB, ::Pointer(Void))
    end

    # `Proc` type for the OpenGL function *glUnmapBuffer*.
    @[AlwaysInline]
    def unmap_buffer : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glGetBufferParameteriv*.
    @[AlwaysInline]
    def get_buffer_parameter_iv : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetBufferPointerv*.
    @[AlwaysInline]
    def get_buffer_pointer_v : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPointerNameARB, ::Pointer(Pointer(Void)), ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendEquationSeparate*.
    @[AlwaysInline]
    def blend_equation_separate : ::Proc.class
      ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawBuffers*.
    @[AlwaysInline]
    def draw_buffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::DrawBufferMode), ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilOpSeparate*.
    @[AlwaysInline]
    def stencil_op_separate : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilFuncSeparate*.
    @[AlwaysInline]
    def stencil_func_separate : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilMaskSeparate*.
    @[AlwaysInline]
    def stencil_mask_separate : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glAttachShader*.
    @[AlwaysInline]
    def attach_shader : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindAttribLocation*.
    @[AlwaysInline]
    def bind_attrib_location : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompileShader*.
    @[AlwaysInline]
    def compile_shader : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glCreateProgram*.
    @[AlwaysInline]
    def create_program : ::Proc.class
      ::Proc(LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glCreateShader*.
    @[AlwaysInline]
    def create_shader : ::Proc.class
      ::Proc(LibGL::ShaderType, LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glDeleteProgram*.
    @[AlwaysInline]
    def delete_program : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteShader*.
    @[AlwaysInline]
    def delete_shader : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDetachShader*.
    @[AlwaysInline]
    def detach_shader : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisableVertexAttribArray*.
    @[AlwaysInline]
    def disable_vertex_attrib_array : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glEnableVertexAttribArray*.
    @[AlwaysInline]
    def enable_vertex_attrib_array : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveAttrib*.
    @[AlwaysInline]
    def get_active_attrib : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveUniform*.
    @[AlwaysInline]
    def get_active_uniform : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::UniformType), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetAttachedShaders*.
    @[AlwaysInline]
    def get_attached_shaders : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetAttribLocation*.
    @[AlwaysInline]
    def get_attrib_location : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glGetProgramiv*.
    @[AlwaysInline]
    def get_program_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramInfoLog*.
    @[AlwaysInline]
    def get_program_info_log : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetShaderiv*.
    @[AlwaysInline]
    def get_shader_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetShaderInfoLog*.
    @[AlwaysInline]
    def get_shader_info_log : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetShaderSource*.
    @[AlwaysInline]
    def get_shader_source : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformLocation*.
    @[AlwaysInline]
    def get_uniform_location : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glGetUniformfv*.
    @[AlwaysInline]
    def get_uniform_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformiv*.
    @[AlwaysInline]
    def get_uniform_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribdv*.
    @[AlwaysInline]
    def get_vertex_attrib_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribfv*.
    @[AlwaysInline]
    def get_vertex_attrib_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribiv*.
    @[AlwaysInline]
    def get_vertex_attrib_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribPointerv*.
    @[AlwaysInline]
    def get_vertex_attrib_pointer_v : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerPropertyARB, ::Pointer(Pointer(Void)), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsProgram*.
    @[AlwaysInline]
    def is_program : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glIsShader*.
    @[AlwaysInline]
    def is_shader : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glLinkProgram*.
    @[AlwaysInline]
    def link_program : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glShaderSource*.
    @[AlwaysInline]
    def shader_source : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUseProgram*.
    @[AlwaysInline]
    def use_program : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1f*.
    @[AlwaysInline]
    def uniform_1f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2f*.
    @[AlwaysInline]
    def uniform_2f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3f*.
    @[AlwaysInline]
    def uniform_3f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4f*.
    @[AlwaysInline]
    def uniform_4f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1i*.
    @[AlwaysInline]
    def uniform_1i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2i*.
    @[AlwaysInline]
    def uniform_2i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3i*.
    @[AlwaysInline]
    def uniform_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4i*.
    @[AlwaysInline]
    def uniform_4i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1fv*.
    @[AlwaysInline]
    def uniform_1fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2fv*.
    @[AlwaysInline]
    def uniform_2fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3fv*.
    @[AlwaysInline]
    def uniform_3fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4fv*.
    @[AlwaysInline]
    def uniform_4fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1iv*.
    @[AlwaysInline]
    def uniform_1iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2iv*.
    @[AlwaysInline]
    def uniform_2iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3iv*.
    @[AlwaysInline]
    def uniform_3iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4iv*.
    @[AlwaysInline]
    def uniform_4iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix2fv*.
    @[AlwaysInline]
    def uniform_matrix2_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix3fv*.
    @[AlwaysInline]
    def uniform_matrix3_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix4fv*.
    @[AlwaysInline]
    def uniform_matrix4_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glValidateProgram*.
    @[AlwaysInline]
    def validate_program : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib1d*.
    @[AlwaysInline]
    def vertex_attrib_1d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib1dv*.
    @[AlwaysInline]
    def vertex_attrib_1dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib1f*.
    @[AlwaysInline]
    def vertex_attrib_1f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib1fv*.
    @[AlwaysInline]
    def vertex_attrib_1fv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib1s*.
    @[AlwaysInline]
    def vertex_attrib_1s : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib1sv*.
    @[AlwaysInline]
    def vertex_attrib_1sv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib2d*.
    @[AlwaysInline]
    def vertex_attrib_2d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib2dv*.
    @[AlwaysInline]
    def vertex_attrib_2dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib2f*.
    @[AlwaysInline]
    def vertex_attrib_2f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib2fv*.
    @[AlwaysInline]
    def vertex_attrib_2fv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib2s*.
    @[AlwaysInline]
    def vertex_attrib_2s : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib2sv*.
    @[AlwaysInline]
    def vertex_attrib_2sv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib3d*.
    @[AlwaysInline]
    def vertex_attrib_3d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib3dv*.
    @[AlwaysInline]
    def vertex_attrib_3dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib3f*.
    @[AlwaysInline]
    def vertex_attrib_3f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib3fv*.
    @[AlwaysInline]
    def vertex_attrib_3fv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib3s*.
    @[AlwaysInline]
    def vertex_attrib_3s : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib3sv*.
    @[AlwaysInline]
    def vertex_attrib_3sv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Nbv*.
    @[AlwaysInline]
    def vertex_attrib_4nbv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Niv*.
    @[AlwaysInline]
    def vertex_attrib_4niv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Nsv*.
    @[AlwaysInline]
    def vertex_attrib_4nsv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Nub*.
    @[AlwaysInline]
    def vertex_attrib_4nub : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Nubv*.
    @[AlwaysInline]
    def vertex_attrib_4nubv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Nuiv*.
    @[AlwaysInline]
    def vertex_attrib_4nuiv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4Nusv*.
    @[AlwaysInline]
    def vertex_attrib_4nusv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4bv*.
    @[AlwaysInline]
    def vertex_attrib_4bv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4d*.
    @[AlwaysInline]
    def vertex_attrib_4d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4dv*.
    @[AlwaysInline]
    def vertex_attrib_4dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4f*.
    @[AlwaysInline]
    def vertex_attrib_4f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4fv*.
    @[AlwaysInline]
    def vertex_attrib_4fv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4iv*.
    @[AlwaysInline]
    def vertex_attrib_4iv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4s*.
    @[AlwaysInline]
    def vertex_attrib_4s : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4sv*.
    @[AlwaysInline]
    def vertex_attrib_4sv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4ubv*.
    @[AlwaysInline]
    def vertex_attrib_4ubv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4uiv*.
    @[AlwaysInline]
    def vertex_attrib_4uiv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttrib4usv*.
    @[AlwaysInline]
    def vertex_attrib_4usv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribPointer*.
    @[AlwaysInline]
    def vertex_attrib_pointer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix2x3fv*.
    @[AlwaysInline]
    def uniform_matrix2x3_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix3x2fv*.
    @[AlwaysInline]
    def uniform_matrix3x2_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix2x4fv*.
    @[AlwaysInline]
    def uniform_matrix2x4_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix4x2fv*.
    @[AlwaysInline]
    def uniform_matrix4x2_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix3x4fv*.
    @[AlwaysInline]
    def uniform_matrix3x4_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix4x3fv*.
    @[AlwaysInline]
    def uniform_matrix4x3_fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glColorMaski*.
    @[AlwaysInline]
    def color_mask_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetBooleani_v*.
    @[AlwaysInline]
    def get_boolean_i_v : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Pointer(LibGL::Boolean), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetIntegeri_v*.
    @[AlwaysInline]
    def get_integer_i_v : ::Proc.class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glEnablei*.
    @[AlwaysInline]
    def enable_i : ::Proc.class
      ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisablei*.
    @[AlwaysInline]
    def disable_i : ::Proc.class
      ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glIsEnabledi*.
    @[AlwaysInline]
    def is_enabled_i : ::Proc.class
      ::Proc(LibGL::EnableCap, LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glBeginTransformFeedback*.
    @[AlwaysInline]
    def begin_transform_feedback : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Void)
    end

    # `Proc` type for the OpenGL function *glEndTransformFeedback*.
    @[AlwaysInline]
    def end_transform_feedback : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glBindBufferRange*.
    @[AlwaysInline]
    def bind_buffer_range : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindBufferBase*.
    @[AlwaysInline]
    def bind_buffer_base : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glTransformFeedbackVaryings*.
    @[AlwaysInline]
    def transform_feedback_varyings : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::TransformFeedbackBufferMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTransformFeedbackVarying*.
    @[AlwaysInline]
    def get_transform_feedback_varying : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glClampColor*.
    @[AlwaysInline]
    def clamp_color : ::Proc.class
      ::Proc(LibGL::ClampColorTargetARB, LibGL::ClampColorModeARB, ::Void)
    end

    # `Proc` type for the OpenGL function *glBeginConditionalRender*.
    @[AlwaysInline]
    def begin_conditional_render : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ConditionalRenderMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glEndConditionalRender*.
    @[AlwaysInline]
    def end_conditional_render : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribIPointer*.
    @[AlwaysInline]
    def vertex_attrib_i_pointer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribIiv*.
    @[AlwaysInline]
    def get_vertex_attrib_i_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribIuiv*.
    @[AlwaysInline]
    def get_vertex_attrib_i_uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI1i*.
    @[AlwaysInline]
    def vertex_attrib_i_1i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI2i*.
    @[AlwaysInline]
    def vertex_attrib_i_2i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI3i*.
    @[AlwaysInline]
    def vertex_attrib_i_3i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4i*.
    @[AlwaysInline]
    def vertex_attrib_i_4i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI1ui*.
    @[AlwaysInline]
    def vertex_attrib_i_1ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI2ui*.
    @[AlwaysInline]
    def vertex_attrib_i_2ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI3ui*.
    @[AlwaysInline]
    def vertex_attrib_i_3ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4ui*.
    @[AlwaysInline]
    def vertex_attrib_i_4ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI1iv*.
    @[AlwaysInline]
    def vertex_attrib_i_1iv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI2iv*.
    @[AlwaysInline]
    def vertex_attrib_i_2iv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI3iv*.
    @[AlwaysInline]
    def vertex_attrib_i_3iv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4iv*.
    @[AlwaysInline]
    def vertex_attrib_i_4iv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI1uiv*.
    @[AlwaysInline]
    def vertex_attrib_i_1uiv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI2uiv*.
    @[AlwaysInline]
    def vertex_attrib_i_2uiv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI3uiv*.
    @[AlwaysInline]
    def vertex_attrib_i_3uiv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4uiv*.
    @[AlwaysInline]
    def vertex_attrib_i_4uiv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4bv*.
    @[AlwaysInline]
    def vertex_attrib_i_4bv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4sv*.
    @[AlwaysInline]
    def vertex_attrib_i_4sv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4ubv*.
    @[AlwaysInline]
    def vertex_attrib_i_4ubv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribI4usv*.
    @[AlwaysInline]
    def vertex_attrib_i_4usv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformuiv*.
    @[AlwaysInline]
    def get_uniform_uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glBindFragDataLocation*.
    @[AlwaysInline]
    def bind_frag_data_location : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetFragDataLocation*.
    @[AlwaysInline]
    def get_frag_data_location : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glUniform1ui*.
    @[AlwaysInline]
    def uniform_1ui : ::Proc.class
      ::Proc(LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2ui*.
    @[AlwaysInline]
    def uniform_2ui : ::Proc.class
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3ui*.
    @[AlwaysInline]
    def uniform_3ui : ::Proc.class
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4ui*.
    @[AlwaysInline]
    def uniform_4ui : ::Proc.class
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1uiv*.
    @[AlwaysInline]
    def uniform_1uiv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2uiv*.
    @[AlwaysInline]
    def uniform_2uiv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3uiv*.
    @[AlwaysInline]
    def uniform_3uiv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4uiv*.
    @[AlwaysInline]
    def uniform_4uiv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameterIiv*.
    @[AlwaysInline]
    def tex_parameter_i_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameterIuiv*.
    @[AlwaysInline]
    def tex_parameter_i_uiv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexParameterIiv*.
    @[AlwaysInline]
    def get_tex_parameter_i_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexParameterIuiv*.
    @[AlwaysInline]
    def get_tex_parameter_i_uiv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glClearBufferiv*.
    @[AlwaysInline]
    def clear_buffer_iv : ::Proc.class
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glClearBufferuiv*.
    @[AlwaysInline]
    def clear_buffer_uiv : ::Proc.class
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glClearBufferfv*.
    @[AlwaysInline]
    def clear_buffer_fv : ::Proc.class
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glClearBufferfi*.
    @[AlwaysInline]
    def clear_buffer_fi : ::Proc.class
      ::Proc(LibGL::Buffer, LibGL::Int, LibGL::Float, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetStringi*.
    @[AlwaysInline]
    def get_string_i : ::Proc.class
      ::Proc(LibGL::StringName, LibGL::UInt, ::Pointer(LibGL::UByte))
    end

    # `Proc` type for the OpenGL function *glIsRenderbuffer*.
    @[AlwaysInline]
    def is_renderbuffer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glBindRenderbuffer*.
    @[AlwaysInline]
    def bind_renderbuffer : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteRenderbuffers*.
    @[AlwaysInline]
    def delete_renderbuffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenRenderbuffers*.
    @[AlwaysInline]
    def gen_renderbuffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glRenderbufferStorage*.
    @[AlwaysInline]
    def renderbuffer_storage : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetRenderbufferParameteriv*.
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsFramebuffer*.
    @[AlwaysInline]
    def is_framebuffer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glBindFramebuffer*.
    @[AlwaysInline]
    def bind_framebuffer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteFramebuffers*.
    @[AlwaysInline]
    def delete_framebuffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenFramebuffers*.
    @[AlwaysInline]
    def gen_framebuffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glCheckFramebufferStatus*.
    @[AlwaysInline]
    def check_framebuffer_status : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::Enum)
    end

    # `Proc` type for the OpenGL function *glFramebufferTexture1D*.
    @[AlwaysInline]
    def framebuffer_texture_1d : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferTexture2D*.
    @[AlwaysInline]
    def framebuffer_texture_2d : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferTexture3D*.
    @[AlwaysInline]
    def framebuffer_texture_3d : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferRenderbuffer*.
    @[AlwaysInline]
    def framebuffer_renderbuffer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetFramebufferAttachmentParameteriv*.
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenerateMipmap*.
    @[AlwaysInline]
    def generate_mipmap : ::Proc.class
      ::Proc(LibGL::TextureTarget, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlitFramebuffer*.
    @[AlwaysInline]
    def blit_framebuffer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::ClearBufferMask, LibGL::BlitFramebufferFilter, ::Void)
    end

    # `Proc` type for the OpenGL function *glRenderbufferStorageMultisample*.
    @[AlwaysInline]
    def renderbuffer_storage_multisample : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferTextureLayer*.
    @[AlwaysInline]
    def framebuffer_texture_layer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMapBufferRange*.
    @[AlwaysInline]
    def map_buffer_range : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::MapBufferAccessMask, ::Pointer(Void))
    end

    # `Proc` type for the OpenGL function *glFlushMappedBufferRange*.
    @[AlwaysInline]
    def flush_mapped_buffer_range : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindVertexArray*.
    @[AlwaysInline]
    def bind_vertex_array : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteVertexArrays*.
    @[AlwaysInline]
    def delete_vertex_arrays : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenVertexArrays*.
    @[AlwaysInline]
    def gen_vertex_arrays : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsVertexArray*.
    @[AlwaysInline]
    def is_vertex_array : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glDrawArraysInstanced*.
    @[AlwaysInline]
    def draw_arrays_instanced : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElementsInstanced*.
    @[AlwaysInline]
    def draw_elements_instanced : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexBuffer*.
    @[AlwaysInline]
    def tex_buffer : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glPrimitiveRestartIndex*.
    @[AlwaysInline]
    def primitive_restart_index : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyBufferSubData*.
    @[AlwaysInline]
    def copy_buffer_sub_data : ::Proc.class
      ::Proc(LibGL::CopyBufferSubDataTarget, LibGL::CopyBufferSubDataTarget, LibGL::IntPtr, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformIndices*.
    @[AlwaysInline]
    def get_uniform_indices : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveUniformsiv*.
    @[AlwaysInline]
    def get_active_uniforms_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::UniformPName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveUniformName*.
    @[AlwaysInline]
    def get_active_uniform_name : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformBlockIndex*.
    @[AlwaysInline]
    def get_uniform_block_index : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glGetActiveUniformBlockiv*.
    @[AlwaysInline]
    def get_active_uniform_block_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UniformBlockPName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveUniformBlockName*.
    @[AlwaysInline]
    def get_active_uniform_block_name : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformBlockBinding*.
    @[AlwaysInline]
    def uniform_block_binding : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElementsBaseVertex*.
    @[AlwaysInline]
    def draw_elements_base_vertex : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawRangeElementsBaseVertex*.
    @[AlwaysInline]
    def draw_range_elements_base_vertex : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElementsInstancedBaseVertex*.
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiDrawElementsBaseVertex*.
    @[AlwaysInline]
    def multi_draw_elements_base_vertex : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glProvokingVertex*.
    @[AlwaysInline]
    def provoking_vertex : ::Proc.class
      ::Proc(LibGL::VertexProvokingMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glFenceSync*.
    @[AlwaysInline]
    def fence_sync : ::Proc.class
      ::Proc(LibGL::SyncCondition, LibGL::SyncBehaviorFlags, LibGL::Sync)
    end

    # `Proc` type for the OpenGL function *glIsSync*.
    @[AlwaysInline]
    def is_sync : ::Proc.class
      ::Proc(LibGL::Sync, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glDeleteSync*.
    @[AlwaysInline]
    def delete_sync : ::Proc.class
      ::Proc(LibGL::Sync, ::Void)
    end

    # `Proc` type for the OpenGL function *glClientWaitSync*.
    @[AlwaysInline]
    def client_wait_sync : ::Proc.class
      ::Proc(LibGL::Sync, LibGL::SyncObjectMask, LibGL::UInt64, LibGL::Enum)
    end

    # `Proc` type for the OpenGL function *glWaitSync*.
    @[AlwaysInline]
    def wait_sync : ::Proc.class
      ::Proc(LibGL::Sync, LibGL::SyncBehaviorFlags, LibGL::UInt64, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetInteger64v*.
    @[AlwaysInline]
    def get_integer_64v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int64), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetSynciv*.
    @[AlwaysInline]
    def get_sync_iv : ::Proc.class
      ::Proc(LibGL::Sync, LibGL::SyncParameterName, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetInteger64i_v*.
    @[AlwaysInline]
    def get_integer_64i_v : ::Proc.class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int64), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetBufferParameteri64v*.
    @[AlwaysInline]
    def get_buffer_parameter_i64v : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int64), ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferTexture*.
    @[AlwaysInline]
    def framebuffer_texture : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexImage2DMultisample*.
    @[AlwaysInline]
    def tex_image_2d_multisample : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexImage3DMultisample*.
    @[AlwaysInline]
    def tex_image_3d_multisample : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMultisamplefv*.
    @[AlwaysInline]
    def get_multisample_fv : ::Proc.class
      ::Proc(LibGL::GetMultisamplePNameNV, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glSampleMaski*.
    @[AlwaysInline]
    def sample_mask_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Bitfield, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindFragDataLocationIndexed*.
    @[AlwaysInline]
    def bind_frag_data_location_indexed : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetFragDataIndex*.
    @[AlwaysInline]
    def get_frag_data_index : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glGenSamplers*.
    @[AlwaysInline]
    def gen_samplers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteSamplers*.
    @[AlwaysInline]
    def delete_samplers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsSampler*.
    @[AlwaysInline]
    def is_sampler : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glBindSampler*.
    @[AlwaysInline]
    def bind_sampler : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glSamplerParameteri*.
    @[AlwaysInline]
    def sampler_parameter_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glSamplerParameteriv*.
    @[AlwaysInline]
    def sampler_parameter_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glSamplerParameterf*.
    @[AlwaysInline]
    def sampler_parameter_f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glSamplerParameterfv*.
    @[AlwaysInline]
    def sampler_parameter_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glSamplerParameterIiv*.
    @[AlwaysInline]
    def sampler_parameter_i_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glSamplerParameterIuiv*.
    @[AlwaysInline]
    def sampler_parameter_i_uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetSamplerParameteriv*.
    @[AlwaysInline]
    def get_sampler_parameter_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetSamplerParameterIiv*.
    @[AlwaysInline]
    def get_sampler_parameter_i_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetSamplerParameterfv*.
    @[AlwaysInline]
    def get_sampler_parameter_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetSamplerParameterIuiv*.
    @[AlwaysInline]
    def get_sampler_parameter_i_uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glQueryCounter*.
    @[AlwaysInline]
    def query_counter : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::QueryCounterTarget, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetQueryObjecti64v*.
    @[AlwaysInline]
    def get_query_object_i64v : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int64), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetQueryObjectui64v*.
    @[AlwaysInline]
    def get_query_object_ui64v : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt64), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribDivisor*.
    @[AlwaysInline]
    def vertex_attrib_divisor : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP1ui*.
    @[AlwaysInline]
    def vertex_attrib_p_1ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP1uiv*.
    @[AlwaysInline]
    def vertex_attrib_p_1uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP2ui*.
    @[AlwaysInline]
    def vertex_attrib_p_2ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP2uiv*.
    @[AlwaysInline]
    def vertex_attrib_p_2uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP3ui*.
    @[AlwaysInline]
    def vertex_attrib_p_3ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP3uiv*.
    @[AlwaysInline]
    def vertex_attrib_p_3uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP4ui*.
    @[AlwaysInline]
    def vertex_attrib_p_4ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribP4uiv*.
    @[AlwaysInline]
    def vertex_attrib_p_4uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexP2ui*.
    @[AlwaysInline]
    def vertex_p_2ui : ::Proc.class
      ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexP2uiv*.
    @[AlwaysInline]
    def vertex_p_2uiv : ::Proc.class
      ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexP3ui*.
    @[AlwaysInline]
    def vertex_p_3ui : ::Proc.class
      ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexP3uiv*.
    @[AlwaysInline]
    def vertex_p_3uiv : ::Proc.class
      ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexP4ui*.
    @[AlwaysInline]
    def vertex_p_4ui : ::Proc.class
      ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexP4uiv*.
    @[AlwaysInline]
    def vertex_p_4uiv : ::Proc.class
      ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP1ui*.
    @[AlwaysInline]
    def tex_coord_p_1ui : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP1uiv*.
    @[AlwaysInline]
    def tex_coord_p_1uiv : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP2ui*.
    @[AlwaysInline]
    def tex_coord_p_2ui : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP2uiv*.
    @[AlwaysInline]
    def tex_coord_p_2uiv : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP3ui*.
    @[AlwaysInline]
    def tex_coord_p_3ui : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP3uiv*.
    @[AlwaysInline]
    def tex_coord_p_3uiv : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP4ui*.
    @[AlwaysInline]
    def tex_coord_p_4ui : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordP4uiv*.
    @[AlwaysInline]
    def tex_coord_p_4uiv : ::Proc.class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP1ui*.
    @[AlwaysInline]
    def multi_tex_coord_p_1ui : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP1uiv*.
    @[AlwaysInline]
    def multi_tex_coord_p_1uiv : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP2ui*.
    @[AlwaysInline]
    def multi_tex_coord_p_2ui : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP2uiv*.
    @[AlwaysInline]
    def multi_tex_coord_p_2uiv : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP3ui*.
    @[AlwaysInline]
    def multi_tex_coord_p_3ui : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP3uiv*.
    @[AlwaysInline]
    def multi_tex_coord_p_3uiv : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP4ui*.
    @[AlwaysInline]
    def multi_tex_coord_p_4ui : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoordP4uiv*.
    @[AlwaysInline]
    def multi_tex_coord_p_4uiv : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glNormalP3ui*.
    @[AlwaysInline]
    def normal_p_3ui : ::Proc.class
      ::Proc(LibGL::NormalPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormalP3uiv*.
    @[AlwaysInline]
    def normal_p_3uiv : ::Proc.class
      ::Proc(LibGL::NormalPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glColorP3ui*.
    @[AlwaysInline]
    def color_p_3ui : ::Proc.class
      ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorP3uiv*.
    @[AlwaysInline]
    def color_p_3uiv : ::Proc.class
      ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glColorP4ui*.
    @[AlwaysInline]
    def color_p_4ui : ::Proc.class
      ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorP4uiv*.
    @[AlwaysInline]
    def color_p_4uiv : ::Proc.class
      ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColorP3ui*.
    @[AlwaysInline]
    def secondary_color_p_3ui : ::Proc.class
      ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glSecondaryColorP3uiv*.
    @[AlwaysInline]
    def secondary_color_p_3uiv : ::Proc.class
      ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
    end
  end
end
