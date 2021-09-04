module OpenGL
  module Procs
    extend self

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face
      ::Proc(LibGL::CullFaceMode, ::Void)
    end

    # Proc type for the function glFrontFace
    @[AlwaysInline]
    def front_face
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # Proc type for the function glHint
    @[AlwaysInline]
    def hint
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # Proc type for the function glLineWidth
    @[AlwaysInline]
    def line_width
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glPointSize
    @[AlwaysInline]
    def point_size
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glPolygonMode
    @[AlwaysInline]
    def polygon_mode
      ::Proc(LibGL::MaterialFace, LibGL::PolygonMode, ::Void)
    end

    # Proc type for the function glScissor
    @[AlwaysInline]
    def scissor
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glTexParameterf
    @[AlwaysInline]
    def tex_parameter_f
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexParameterfv
    @[AlwaysInline]
    def tex_parameter_fv
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexParameteri
    @[AlwaysInline]
    def tex_parameter_i
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexParameteriv
    @[AlwaysInline]
    def tex_parameter_iv
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexImage1D
    @[AlwaysInline]
    def tex_image_1d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexImage2D
    @[AlwaysInline]
    def tex_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawBuffer
    @[AlwaysInline]
    def draw_buffer
      ::Proc(LibGL::DrawBufferMode, ::Void)
    end

    # Proc type for the function glClear
    @[AlwaysInline]
    def clear
      ::Proc(LibGL::ClearBufferMask, ::Void)
    end

    # Proc type for the function glClearColor
    @[AlwaysInline]
    def clear_color
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glClearStencil
    @[AlwaysInline]
    def clear_stencil
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glClearDepth
    @[AlwaysInline]
    def clear_depth
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glStencilMask
    @[AlwaysInline]
    def stencil_mask
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glColorMask
    @[AlwaysInline]
    def color_mask
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glDepthMask
    @[AlwaysInline]
    def depth_mask
      ::Proc(LibGL::Boolean, ::Void)
    end

    # Proc type for the function glDisable
    @[AlwaysInline]
    def disable
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glEnable
    @[AlwaysInline]
    def enable
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glFinish
    @[AlwaysInline]
    def finish
      ::Proc(::Void)
    end

    # Proc type for the function glFlush
    @[AlwaysInline]
    def flush
      ::Proc(::Void)
    end

    # Proc type for the function glBlendFunc
    @[AlwaysInline]
    def blend_func
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glLogicOp
    @[AlwaysInline]
    def logic_op
      ::Proc(LibGL::LogicOp, ::Void)
    end

    # Proc type for the function glStencilFunc
    @[AlwaysInline]
    def stencil_func
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilOp
    @[AlwaysInline]
    def stencil_op
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glDepthFunc
    @[AlwaysInline]
    def depth_func
      ::Proc(LibGL::DepthFunction, ::Void)
    end

    # Proc type for the function glPixelStoref
    @[AlwaysInline]
    def pixel_store_f
      ::Proc(LibGL::PixelStoreParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelStorei
    @[AlwaysInline]
    def pixel_store_i
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glReadBuffer
    @[AlwaysInline]
    def read_buffer
      ::Proc(LibGL::ReadBufferMode, ::Void)
    end

    # Proc type for the function glReadPixels
    @[AlwaysInline]
    def read_pixels
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetBooleanv
    @[AlwaysInline]
    def get_boolean_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glGetDoublev
    @[AlwaysInline]
    def get_double_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetError
    @[AlwaysInline]
    def get_error
      ::Proc(LibGL::Enum)
    end

    # Proc type for the function glGetFloatv
    @[AlwaysInline]
    def get_float_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetIntegerv
    @[AlwaysInline]
    def get_integer_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetString
    @[AlwaysInline]
    def get_string
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
    end

    # Proc type for the function glGetTexImage
    @[AlwaysInline]
    def get_tex_image
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetTexParameterfv
    @[AlwaysInline]
    def get_tex_parameter_fv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexParameteriv
    @[AlwaysInline]
    def get_tex_parameter_iv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexLevelParameterfv
    @[AlwaysInline]
    def get_tex_level_parameter_fv
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexLevelParameteriv
    @[AlwaysInline]
    def get_tex_level_parameter_iv
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glIsEnabled
    @[AlwaysInline]
    def is_enabled
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # Proc type for the function glDepthRange
    @[AlwaysInline]
    def depth_range
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glViewport
    @[AlwaysInline]
    def viewport
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glNewList
    @[AlwaysInline]
    def new_list
      ::Proc(LibGL::UInt, LibGL::ListMode, ::Void)
    end

    # Proc type for the function glEndList
    @[AlwaysInline]
    def end_list
      ::Proc(::Void)
    end

    # Proc type for the function glCallList
    @[AlwaysInline]
    def call_list
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glCallLists
    @[AlwaysInline]
    def call_lists
      ::Proc(LibGL::SizeI, LibGL::ListNameType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDeleteLists
    @[AlwaysInline]
    def delete_lists
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glGenLists
    @[AlwaysInline]
    def gen_lists
      ::Proc(LibGL::SizeI, LibGL::UInt)
    end

    # Proc type for the function glListBase
    @[AlwaysInline]
    def list_base
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glBegin
    @[AlwaysInline]
    def begin
      ::Proc(LibGL::PrimitiveType, ::Void)
    end

    # Proc type for the function glBitmap
    @[AlwaysInline]
    def bitmap
      ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glColor3b
    @[AlwaysInline]
    def color_3b
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glColor3bv
    @[AlwaysInline]
    def color_3bv
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glColor3d
    @[AlwaysInline]
    def color_3d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glColor3dv
    @[AlwaysInline]
    def color_3dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glColor3f
    @[AlwaysInline]
    def color_3f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glColor3fv
    @[AlwaysInline]
    def color_3fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glColor3i
    @[AlwaysInline]
    def color_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glColor3iv
    @[AlwaysInline]
    def color_3iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glColor3s
    @[AlwaysInline]
    def color_3s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glColor3sv
    @[AlwaysInline]
    def color_3sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glColor3ub
    @[AlwaysInline]
    def color_3ub
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glColor3ubv
    @[AlwaysInline]
    def color_3ubv
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glColor3ui
    @[AlwaysInline]
    def color_3ui
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glColor3uiv
    @[AlwaysInline]
    def color_3uiv
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glColor3us
    @[AlwaysInline]
    def color_3us
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # Proc type for the function glColor3usv
    @[AlwaysInline]
    def color_3usv
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glColor4b
    @[AlwaysInline]
    def color_4b
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glColor4bv
    @[AlwaysInline]
    def color_4bv
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glColor4d
    @[AlwaysInline]
    def color_4d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glColor4dv
    @[AlwaysInline]
    def color_4dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glColor4f
    @[AlwaysInline]
    def color_4f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glColor4fv
    @[AlwaysInline]
    def color_4fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glColor4i
    @[AlwaysInline]
    def color_4i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glColor4iv
    @[AlwaysInline]
    def color_4iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glColor4s
    @[AlwaysInline]
    def color_4s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glColor4sv
    @[AlwaysInline]
    def color_4sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glColor4ub
    @[AlwaysInline]
    def color_4ub
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glColor4ubv
    @[AlwaysInline]
    def color_4ubv
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glColor4ui
    @[AlwaysInline]
    def color_4ui
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glColor4uiv
    @[AlwaysInline]
    def color_4uiv
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glColor4us
    @[AlwaysInline]
    def color_4us
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # Proc type for the function glColor4usv
    @[AlwaysInline]
    def color_4usv
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glEdgeFlag
    @[AlwaysInline]
    def edge_flag
      ::Proc(LibGL::Boolean, ::Void)
    end

    # Proc type for the function glEdgeFlagv
    @[AlwaysInline]
    def edge_flag_v
      ::Proc(::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glEnd
    @[AlwaysInline]
    def end
      ::Proc(::Void)
    end

    # Proc type for the function glIndexd
    @[AlwaysInline]
    def index_d
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glIndexdv
    @[AlwaysInline]
    def index_dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glIndexf
    @[AlwaysInline]
    def index_f
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glIndexfv
    @[AlwaysInline]
    def index_fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glIndexi
    @[AlwaysInline]
    def index_i
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glIndexiv
    @[AlwaysInline]
    def index_iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glIndexs
    @[AlwaysInline]
    def index_s
      ::Proc(LibGL::Short, ::Void)
    end

    # Proc type for the function glIndexsv
    @[AlwaysInline]
    def index_sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glNormal3b
    @[AlwaysInline]
    def normal_3b
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glNormal3bv
    @[AlwaysInline]
    def normal_3bv
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glNormal3d
    @[AlwaysInline]
    def normal_3d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glNormal3dv
    @[AlwaysInline]
    def normal_3dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glNormal3f
    @[AlwaysInline]
    def normal_3f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glNormal3fv
    @[AlwaysInline]
    def normal_3fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glNormal3i
    @[AlwaysInline]
    def normal_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glNormal3iv
    @[AlwaysInline]
    def normal_3iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glNormal3s
    @[AlwaysInline]
    def normal_3s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glNormal3sv
    @[AlwaysInline]
    def normal_3sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRasterPos2d
    @[AlwaysInline]
    def raster_pos_2d
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRasterPos2dv
    @[AlwaysInline]
    def raster_pos_2dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRasterPos2f
    @[AlwaysInline]
    def raster_pos_2f
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRasterPos2fv
    @[AlwaysInline]
    def raster_pos_2fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRasterPos2i
    @[AlwaysInline]
    def raster_pos_2i
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRasterPos2iv
    @[AlwaysInline]
    def raster_pos_2iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRasterPos2s
    @[AlwaysInline]
    def raster_pos_2s
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRasterPos2sv
    @[AlwaysInline]
    def raster_pos_2sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRasterPos3d
    @[AlwaysInline]
    def raster_pos_3d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRasterPos3dv
    @[AlwaysInline]
    def raster_pos_3dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRasterPos3f
    @[AlwaysInline]
    def raster_pos_3f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRasterPos3fv
    @[AlwaysInline]
    def raster_pos_3fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRasterPos3i
    @[AlwaysInline]
    def raster_pos_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRasterPos3iv
    @[AlwaysInline]
    def raster_pos_3iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRasterPos3s
    @[AlwaysInline]
    def raster_pos_3s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRasterPos3sv
    @[AlwaysInline]
    def raster_pos_3sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRasterPos4d
    @[AlwaysInline]
    def raster_pos_4d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRasterPos4dv
    @[AlwaysInline]
    def raster_pos_4dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRasterPos4f
    @[AlwaysInline]
    def raster_pos_4f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRasterPos4fv
    @[AlwaysInline]
    def raster_pos_4fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRasterPos4i
    @[AlwaysInline]
    def raster_pos_4i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRasterPos4iv
    @[AlwaysInline]
    def raster_pos_4iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRasterPos4s
    @[AlwaysInline]
    def raster_pos_4s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRasterPos4sv
    @[AlwaysInline]
    def raster_pos_4sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRectd
    @[AlwaysInline]
    def rect_d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRectdv
    @[AlwaysInline]
    def rect_dv
      ::Proc(::Pointer(LibGL::Double), ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRectf
    @[AlwaysInline]
    def rect_f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRectfv
    @[AlwaysInline]
    def rect_fv
      ::Proc(::Pointer(LibGL::Float), ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRecti
    @[AlwaysInline]
    def rect_i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRectiv
    @[AlwaysInline]
    def rect_iv
      ::Proc(::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRects
    @[AlwaysInline]
    def rect_s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRectsv
    @[AlwaysInline]
    def rect_sv
      ::Proc(::Pointer(LibGL::Short), ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord1d
    @[AlwaysInline]
    def tex_coord_1d
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord1dv
    @[AlwaysInline]
    def tex_coord_1dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord1f
    @[AlwaysInline]
    def tex_coord_1f
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord1fv
    @[AlwaysInline]
    def tex_coord_1fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord1i
    @[AlwaysInline]
    def tex_coord_1i
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord1iv
    @[AlwaysInline]
    def tex_coord_1iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord1s
    @[AlwaysInline]
    def tex_coord_1s
      ::Proc(LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord1sv
    @[AlwaysInline]
    def tex_coord_1sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord2d
    @[AlwaysInline]
    def tex_coord_2d
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord2dv
    @[AlwaysInline]
    def tex_coord_2dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord2f
    @[AlwaysInline]
    def tex_coord_2f
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord2fv
    @[AlwaysInline]
    def tex_coord_2fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord2i
    @[AlwaysInline]
    def tex_coord_2i
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord2iv
    @[AlwaysInline]
    def tex_coord_2iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord2s
    @[AlwaysInline]
    def tex_coord_2s
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord2sv
    @[AlwaysInline]
    def tex_coord_2sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord3d
    @[AlwaysInline]
    def tex_coord_3d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord3dv
    @[AlwaysInline]
    def tex_coord_3dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord3f
    @[AlwaysInline]
    def tex_coord_3f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord3fv
    @[AlwaysInline]
    def tex_coord_3fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord3i
    @[AlwaysInline]
    def tex_coord_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord3iv
    @[AlwaysInline]
    def tex_coord_3iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord3s
    @[AlwaysInline]
    def tex_coord_3s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord3sv
    @[AlwaysInline]
    def tex_coord_3sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord4d
    @[AlwaysInline]
    def tex_coord_4d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord4dv
    @[AlwaysInline]
    def tex_coord_4dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord4f
    @[AlwaysInline]
    def tex_coord_4f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord4fv
    @[AlwaysInline]
    def tex_coord_4fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord4i
    @[AlwaysInline]
    def tex_coord_4i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord4iv
    @[AlwaysInline]
    def tex_coord_4iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord4s
    @[AlwaysInline]
    def tex_coord_4s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord4sv
    @[AlwaysInline]
    def tex_coord_4sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertex2d
    @[AlwaysInline]
    def vertex_2d
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertex2dv
    @[AlwaysInline]
    def vertex_2dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertex2f
    @[AlwaysInline]
    def vertex_2f
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertex2fv
    @[AlwaysInline]
    def vertex_2fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertex2i
    @[AlwaysInline]
    def vertex_2i
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertex2iv
    @[AlwaysInline]
    def vertex_2iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertex2s
    @[AlwaysInline]
    def vertex_2s
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertex2sv
    @[AlwaysInline]
    def vertex_2sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertex3d
    @[AlwaysInline]
    def vertex_3d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertex3dv
    @[AlwaysInline]
    def vertex_3dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertex3f
    @[AlwaysInline]
    def vertex_3f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertex3fv
    @[AlwaysInline]
    def vertex_3fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertex3i
    @[AlwaysInline]
    def vertex_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertex3iv
    @[AlwaysInline]
    def vertex_3iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertex3s
    @[AlwaysInline]
    def vertex_3s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertex3sv
    @[AlwaysInline]
    def vertex_3sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertex4d
    @[AlwaysInline]
    def vertex_4d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertex4dv
    @[AlwaysInline]
    def vertex_4dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertex4f
    @[AlwaysInline]
    def vertex_4f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertex4fv
    @[AlwaysInline]
    def vertex_4fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertex4i
    @[AlwaysInline]
    def vertex_4i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertex4iv
    @[AlwaysInline]
    def vertex_4iv
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertex4s
    @[AlwaysInline]
    def vertex_4s
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertex4sv
    @[AlwaysInline]
    def vertex_4sv
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glClipPlane
    @[AlwaysInline]
    def clip_plane
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glColorMaterial
    @[AlwaysInline]
    def color_material
      ::Proc(LibGL::MaterialFace, LibGL::ColorMaterialParameter, ::Void)
    end

    # Proc type for the function glFogf
    @[AlwaysInline]
    def fog_f
      ::Proc(LibGL::FogParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glFogfv
    @[AlwaysInline]
    def fog_fv
      ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glFogi
    @[AlwaysInline]
    def fog_i
      ::Proc(LibGL::FogParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glFogiv
    @[AlwaysInline]
    def fog_iv
      ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glLightf
    @[AlwaysInline]
    def light_f
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glLightfv
    @[AlwaysInline]
    def light_fv
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLighti
    @[AlwaysInline]
    def light_i
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glLightiv
    @[AlwaysInline]
    def light_iv
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glLightModelf
    @[AlwaysInline]
    def light_model_f
      ::Proc(LibGL::LightModelParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glLightModelfv
    @[AlwaysInline]
    def light_model_fv
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLightModeli
    @[AlwaysInline]
    def light_model_i
      ::Proc(LibGL::LightModelParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glLightModeliv
    @[AlwaysInline]
    def light_model_iv
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glLineStipple
    @[AlwaysInline]
    def line_stipple
      ::Proc(LibGL::Int, LibGL::UShort, ::Void)
    end

    # Proc type for the function glMaterialf
    @[AlwaysInline]
    def material_f
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glMaterialfv
    @[AlwaysInline]
    def material_fv
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMateriali
    @[AlwaysInline]
    def material_i
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glMaterialiv
    @[AlwaysInline]
    def material_iv
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glPolygonStipple
    @[AlwaysInline]
    def polygon_stipple
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glShadeModel
    @[AlwaysInline]
    def shade_model
      ::Proc(LibGL::ShadingModel, ::Void)
    end

    # Proc type for the function glTexEnvf
    @[AlwaysInline]
    def tex_env_f
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexEnvfv
    @[AlwaysInline]
    def tex_env_fv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexEnvi
    @[AlwaysInline]
    def tex_env_i
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexEnviv
    @[AlwaysInline]
    def tex_env_iv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexGend
    @[AlwaysInline]
    def tex_gen_d
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexGendv
    @[AlwaysInline]
    def tex_gen_dv
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexGenf
    @[AlwaysInline]
    def tex_gen_f
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexGenfv
    @[AlwaysInline]
    def tex_gen_fv
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexGeni
    @[AlwaysInline]
    def tex_gen_i
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexGeniv
    @[AlwaysInline]
    def tex_gen_iv
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glFeedbackBuffer
    @[AlwaysInline]
    def feedback_buffer
      ::Proc(LibGL::SizeI, LibGL::FeedbackType, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glSelectBuffer
    @[AlwaysInline]
    def select_buffer
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glRenderMode
    @[AlwaysInline]
    def render_mode
      ::Proc(LibGL::RenderingMode, LibGL::Int)
    end

    # Proc type for the function glInitNames
    @[AlwaysInline]
    def init_names
      ::Proc(::Void)
    end

    # Proc type for the function glLoadName
    @[AlwaysInline]
    def load_name
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glPassThrough
    @[AlwaysInline]
    def pass_through
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glPopName
    @[AlwaysInline]
    def pop_name
      ::Proc(::Void)
    end

    # Proc type for the function glPushName
    @[AlwaysInline]
    def push_name
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glClearAccum
    @[AlwaysInline]
    def clear_accum
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glClearIndex
    @[AlwaysInline]
    def clear_index
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glIndexMask
    @[AlwaysInline]
    def index_mask
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glAccum
    @[AlwaysInline]
    def accum
      ::Proc(LibGL::AccumOp, LibGL::Float, ::Void)
    end

    # Proc type for the function glPopAttrib
    @[AlwaysInline]
    def pop_attrib
      ::Proc(::Void)
    end

    # Proc type for the function glPushAttrib
    @[AlwaysInline]
    def push_attrib
      ::Proc(LibGL::AttribMask, ::Void)
    end

    # Proc type for the function glMap1d
    @[AlwaysInline]
    def map_1d
      ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMap1f
    @[AlwaysInline]
    def map_1f
      ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMap2d
    @[AlwaysInline]
    def map_2d
      ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMap2f
    @[AlwaysInline]
    def map_2f
      ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMapGrid1d
    @[AlwaysInline]
    def map_grid_1d
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMapGrid1f
    @[AlwaysInline]
    def map_grid_1f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glMapGrid2d
    @[AlwaysInline]
    def map_grid_2d
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMapGrid2f
    @[AlwaysInline]
    def map_grid_2f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glEvalCoord1d
    @[AlwaysInline]
    def eval_coord_1d
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glEvalCoord1dv
    @[AlwaysInline]
    def eval_coord_1dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glEvalCoord1f
    @[AlwaysInline]
    def eval_coord_1f
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glEvalCoord1fv
    @[AlwaysInline]
    def eval_coord_1fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glEvalCoord2d
    @[AlwaysInline]
    def eval_coord_2d
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glEvalCoord2dv
    @[AlwaysInline]
    def eval_coord_2dv
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glEvalCoord2f
    @[AlwaysInline]
    def eval_coord_2f
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glEvalCoord2fv
    @[AlwaysInline]
    def eval_coord_2fv
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glEvalMesh1
    @[AlwaysInline]
    def eval_mesh1
      ::Proc(LibGL::MeshMode1, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalPoint1
    @[AlwaysInline]
    def eval_point1
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalMesh2
    @[AlwaysInline]
    def eval_mesh2
      ::Proc(LibGL::MeshMode2, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalPoint2
    @[AlwaysInline]
    def eval_point2
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glAlphaFunc
    @[AlwaysInline]
    def alpha_func
      ::Proc(LibGL::AlphaFunction, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelZoom
    @[AlwaysInline]
    def pixel_zoom
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelTransferf
    @[AlwaysInline]
    def pixel_transfer_f
      ::Proc(LibGL::PixelTransferParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelTransferi
    @[AlwaysInline]
    def pixel_transfer_i
      ::Proc(LibGL::PixelTransferParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glPixelMapfv
    @[AlwaysInline]
    def pixel_map_fv
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glPixelMapuiv
    @[AlwaysInline]
    def pixel_map_uiv
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glPixelMapusv
    @[AlwaysInline]
    def pixel_map_usv
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glCopyPixels
    @[AlwaysInline]
    def copy_pixels
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelCopyType, ::Void)
    end

    # Proc type for the function glDrawPixels
    @[AlwaysInline]
    def draw_pixels
      ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetClipPlane
    @[AlwaysInline]
    def get_clip_plane
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetLightfv
    @[AlwaysInline]
    def get_light_fv
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetLightiv
    @[AlwaysInline]
    def get_light_iv
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetMapdv
    @[AlwaysInline]
    def get_map_dv
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetMapfv
    @[AlwaysInline]
    def get_map_fv
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetMapiv
    @[AlwaysInline]
    def get_map_iv
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetMaterialfv
    @[AlwaysInline]
    def get_material_fv
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetMaterialiv
    @[AlwaysInline]
    def get_material_iv
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetPixelMapfv
    @[AlwaysInline]
    def get_pixel_map_fv
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetPixelMapuiv
    @[AlwaysInline]
    def get_pixel_map_uiv
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetPixelMapusv
    @[AlwaysInline]
    def get_pixel_map_usv
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glGetPolygonStipple
    @[AlwaysInline]
    def get_polygon_stipple
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glGetTexEnvfv
    @[AlwaysInline]
    def get_tex_env_fv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexEnviv
    @[AlwaysInline]
    def get_tex_env_iv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexGendv
    @[AlwaysInline]
    def get_tex_gen_dv
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetTexGenfv
    @[AlwaysInline]
    def get_tex_gen_fv
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexGeniv
    @[AlwaysInline]
    def get_tex_gen_iv
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glIsList
    @[AlwaysInline]
    def is_list
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glFrustum
    @[AlwaysInline]
    def frustum
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glLoadIdentity
    @[AlwaysInline]
    def load_identity
      ::Proc(::Void)
    end

    # Proc type for the function glLoadMatrixf
    @[AlwaysInline]
    def load_matrix_f
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLoadMatrixd
    @[AlwaysInline]
    def load_matrix_d
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMatrixMode
    @[AlwaysInline]
    def matrix_mode
      ::Proc(LibGL::MatrixMode, ::Void)
    end

    # Proc type for the function glMultMatrixf
    @[AlwaysInline]
    def mult_matrix_f
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultMatrixd
    @[AlwaysInline]
    def mult_matrix_d
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glOrtho
    @[AlwaysInline]
    def ortho
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glPopMatrix
    @[AlwaysInline]
    def pop_matrix
      ::Proc(::Void)
    end

    # Proc type for the function glPushMatrix
    @[AlwaysInline]
    def push_matrix
      ::Proc(::Void)
    end

    # Proc type for the function glRotated
    @[AlwaysInline]
    def rotate_d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRotatef
    @[AlwaysInline]
    def rotate_f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glScaled
    @[AlwaysInline]
    def scale_d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glScalef
    @[AlwaysInline]
    def scale_f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTranslated
    @[AlwaysInline]
    def translate_d
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTranslatef
    @[AlwaysInline]
    def translate_f
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glDrawArrays
    @[AlwaysInline]
    def draw_arrays
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawElements
    @[AlwaysInline]
    def draw_elements
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetPointerv
    @[AlwaysInline]
    def get_pointer_v
      ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glPolygonOffset
    @[AlwaysInline]
    def polygon_offset
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glCopyTexImage1D
    @[AlwaysInline]
    def copy_tex_image_1d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glCopyTexImage2D
    @[AlwaysInline]
    def copy_tex_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glCopyTexSubImage1D
    @[AlwaysInline]
    def copy_tex_sub_image_1d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glCopyTexSubImage2D
    @[AlwaysInline]
    def copy_tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glTexSubImage1D
    @[AlwaysInline]
    def tex_sub_image_1d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexSubImage2D
    @[AlwaysInline]
    def tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glBindTexture
    @[AlwaysInline]
    def bind_texture
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteTextures
    @[AlwaysInline]
    def delete_textures
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenTextures
    @[AlwaysInline]
    def gen_textures
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glIsTexture
    @[AlwaysInline]
    def is_texture
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glArrayElement
    @[AlwaysInline]
    def array_element
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glColorPointer
    @[AlwaysInline]
    def color_pointer
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDisableClientState
    @[AlwaysInline]
    def disable_client_state
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glEdgeFlagPointer
    @[AlwaysInline]
    def edge_flag_pointer
      ::Proc(LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glEnableClientState
    @[AlwaysInline]
    def enable_client_state
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glIndexPointer
    @[AlwaysInline]
    def index_pointer
      ::Proc(LibGL::IndexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glInterleavedArrays
    @[AlwaysInline]
    def interleaved_arrays
      ::Proc(LibGL::InterleavedArrayFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glNormalPointer
    @[AlwaysInline]
    def normal_pointer
      ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexCoordPointer
    @[AlwaysInline]
    def tex_coord_pointer
      ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glVertexPointer
    @[AlwaysInline]
    def vertex_pointer
      ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glAreTexturesResident
    @[AlwaysInline]
    def are_textures_resident
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Boolean), LibGL::Boolean)
    end

    # Proc type for the function glPrioritizeTextures
    @[AlwaysInline]
    def prioritize_textures
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glIndexub
    @[AlwaysInline]
    def index_ub
      ::Proc(LibGL::UByte, ::Void)
    end

    # Proc type for the function glIndexubv
    @[AlwaysInline]
    def index_ubv
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glPopClientAttrib
    @[AlwaysInline]
    def pop_client_attrib
      ::Proc(::Void)
    end

    # Proc type for the function glPushClientAttrib
    @[AlwaysInline]
    def push_client_attrib
      ::Proc(LibGL::ClientAttribMask, ::Void)
    end

    # Proc type for the function glDrawRangeElements
    @[AlwaysInline]
    def draw_range_elements
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexImage3D
    @[AlwaysInline]
    def tex_image_3d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexSubImage3D
    @[AlwaysInline]
    def tex_sub_image_3d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCopyTexSubImage3D
    @[AlwaysInline]
    def copy_tex_sub_image_3d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end
  end
end
