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

    # Proc type for the function glActiveTexture
    @[AlwaysInline]
    def active_texture
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # Proc type for the function glSampleCoverage
    @[AlwaysInline]
    def sample_coverage
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glCompressedTexImage3D
    @[AlwaysInline]
    def compressed_tex_image_3d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexImage2D
    @[AlwaysInline]
    def compressed_tex_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexImage1D
    @[AlwaysInline]
    def compressed_tex_image_1d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage3D
    @[AlwaysInline]
    def compressed_tex_sub_image_3d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage2D
    @[AlwaysInline]
    def compressed_tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage1D
    @[AlwaysInline]
    def compressed_tex_sub_image_1d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetCompressedTexImage
    @[AlwaysInline]
    def get_compressed_tex_image
      ::Proc(LibGL::TextureTarget, LibGL::Int, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glBlendFuncSeparate
    @[AlwaysInline]
    def blend_func_separate
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glMultiDrawArrays
    @[AlwaysInline]
    def multi_draw_arrays
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::Int), ::Pointer(LibGL::SizeI), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glMultiDrawElements
    @[AlwaysInline]
    def multi_draw_elements
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glPointParameterf
    @[AlwaysInline]
    def point_parameter_f
      ::Proc(LibGL::PointParameterNameARB, LibGL::Float, ::Void)
    end

    # Proc type for the function glPointParameterfv
    @[AlwaysInline]
    def point_parameter_fv
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glPointParameteri
    @[AlwaysInline]
    def point_parameter_i
      ::Proc(LibGL::PointParameterNameARB, LibGL::Int, ::Void)
    end

    # Proc type for the function glPointParameteriv
    @[AlwaysInline]
    def point_parameter_iv
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glBlendColor
    @[AlwaysInline]
    def blend_color
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glBlendEquation
    @[AlwaysInline]
    def blend_equation
      ::Proc(LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glGenQueries
    @[AlwaysInline]
    def gen_queries
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteQueries
    @[AlwaysInline]
    def delete_queries
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glIsQuery
    @[AlwaysInline]
    def is_query
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glBeginQuery
    @[AlwaysInline]
    def begin_query
      ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glEndQuery
    @[AlwaysInline]
    def end_query
      ::Proc(LibGL::QueryTarget, ::Void)
    end

    # Proc type for the function glGetQueryiv
    @[AlwaysInline]
    def get_query_iv
      ::Proc(LibGL::QueryTarget, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetQueryObjectiv
    @[AlwaysInline]
    def get_query_object_iv
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetQueryObjectuiv
    @[AlwaysInline]
    def get_query_object_uiv
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glBindBuffer
    @[AlwaysInline]
    def bind_buffer
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteBuffers
    @[AlwaysInline]
    def delete_buffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenBuffers
    @[AlwaysInline]
    def gen_buffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glIsBuffer
    @[AlwaysInline]
    def is_buffer
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glBufferData
    @[AlwaysInline]
    def buffer_data
      ::Proc(LibGL::BufferTargetARB, LibGL::SizeIPtr, ::Pointer(Void), LibGL::BufferUsageARB, ::Void)
    end

    # Proc type for the function glBufferSubData
    @[AlwaysInline]
    def buffer_sub_data
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetBufferSubData
    @[AlwaysInline]
    def get_buffer_sub_data
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glMapBuffer
    @[AlwaysInline]
    def map_buffer
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferAccessARB, ::Pointer(Void))
    end

    # Proc type for the function glUnmapBuffer
    @[AlwaysInline]
    def unmap_buffer
      ::Proc(LibGL::BufferTargetARB, LibGL::Boolean)
    end

    # Proc type for the function glGetBufferParameteriv
    @[AlwaysInline]
    def get_buffer_parameter_iv
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetBufferPointerv
    @[AlwaysInline]
    def get_buffer_pointer_v
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPointerNameARB, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glBlendEquationSeparate
    @[AlwaysInline]
    def blend_equation_separate
      ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glDrawBuffers
    @[AlwaysInline]
    def draw_buffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::DrawBufferMode), ::Void)
    end

    # Proc type for the function glStencilOpSeparate
    @[AlwaysInline]
    def stencil_op_separate
      ::Proc(LibGL::StencilFaceDirection, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glStencilFuncSeparate
    @[AlwaysInline]
    def stencil_func_separate
      ::Proc(LibGL::StencilFaceDirection, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMaskSeparate
    @[AlwaysInline]
    def stencil_mask_separate
      ::Proc(LibGL::StencilFaceDirection, LibGL::UInt, ::Void)
    end

    # Proc type for the function glAttachShader
    @[AlwaysInline]
    def attach_shader
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindAttribLocation
    @[AlwaysInline]
    def bind_attrib_location
      ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glCompileShader
    @[AlwaysInline]
    def compile_shader
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glCreateProgram
    @[AlwaysInline]
    def create_program
      ::Proc(LibGL::UInt)
    end

    # Proc type for the function glCreateShader
    @[AlwaysInline]
    def create_shader
      ::Proc(LibGL::ShaderType, LibGL::UInt)
    end

    # Proc type for the function glDeleteProgram
    @[AlwaysInline]
    def delete_program
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteShader
    @[AlwaysInline]
    def delete_shader
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDetachShader
    @[AlwaysInline]
    def detach_shader
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDisableVertexAttribArray
    @[AlwaysInline]
    def disable_vertex_attrib_array
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glEnableVertexAttribArray
    @[AlwaysInline]
    def enable_vertex_attrib_array
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glGetActiveAttrib
    @[AlwaysInline]
    def get_active_attrib
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveUniform
    @[AlwaysInline]
    def get_active_uniform
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::UniformType), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetAttachedShaders
    @[AlwaysInline]
    def get_attached_shaders
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetAttribLocation
    @[AlwaysInline]
    def get_attrib_location
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetProgramiv
    @[AlwaysInline]
    def get_program_iv
      ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramInfoLog
    @[AlwaysInline]
    def get_program_info_log
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetShaderiv
    @[AlwaysInline]
    def get_shader_iv
      ::Proc(LibGL::UInt, LibGL::ShaderParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetShaderInfoLog
    @[AlwaysInline]
    def get_shader_info_log
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetShaderSource
    @[AlwaysInline]
    def get_shader_source
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetUniformLocation
    @[AlwaysInline]
    def get_uniform_location
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetUniformfv
    @[AlwaysInline]
    def get_uniform_fv
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetUniformiv
    @[AlwaysInline]
    def get_uniform_iv
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetVertexAttribdv
    @[AlwaysInline]
    def get_vertex_attrib_dv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetVertexAttribfv
    @[AlwaysInline]
    def get_vertex_attrib_fv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetVertexAttribiv
    @[AlwaysInline]
    def get_vertex_attrib_iv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetVertexAttribPointerv
    @[AlwaysInline]
    def get_vertex_attrib_pointer_v
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerPropertyARB, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glIsProgram
    @[AlwaysInline]
    def is_program
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsShader
    @[AlwaysInline]
    def is_shader
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glLinkProgram
    @[AlwaysInline]
    def link_program
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glShaderSource
    @[AlwaysInline]
    def shader_source
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUseProgram
    @[AlwaysInline]
    def use_program
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform1f
    @[AlwaysInline]
    def uniform_1f
      ::Proc(LibGL::Int, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform2f
    @[AlwaysInline]
    def uniform_2f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform3f
    @[AlwaysInline]
    def uniform_3f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform4f
    @[AlwaysInline]
    def uniform_4f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform1i
    @[AlwaysInline]
    def uniform_1i
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform2i
    @[AlwaysInline]
    def uniform_2i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform3i
    @[AlwaysInline]
    def uniform_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform4i
    @[AlwaysInline]
    def uniform_4i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform1fv
    @[AlwaysInline]
    def uniform_1fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform2fv
    @[AlwaysInline]
    def uniform_2fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform3fv
    @[AlwaysInline]
    def uniform_3fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform4fv
    @[AlwaysInline]
    def uniform_4fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform1iv
    @[AlwaysInline]
    def uniform_1iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform2iv
    @[AlwaysInline]
    def uniform_2iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform3iv
    @[AlwaysInline]
    def uniform_3iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform4iv
    @[AlwaysInline]
    def uniform_4iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniformMatrix2fv
    @[AlwaysInline]
    def uniform_matrix2_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix3fv
    @[AlwaysInline]
    def uniform_matrix3_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix4fv
    @[AlwaysInline]
    def uniform_matrix4_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glValidateProgram
    @[AlwaysInline]
    def validate_program
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttrib1d
    @[AlwaysInline]
    def vertex_attrib_1d
      ::Proc(LibGL::UInt, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib1dv
    @[AlwaysInline]
    def vertex_attrib_1dv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib1f
    @[AlwaysInline]
    def vertex_attrib_1f
      ::Proc(LibGL::UInt, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib1fv
    @[AlwaysInline]
    def vertex_attrib_1fv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib1s
    @[AlwaysInline]
    def vertex_attrib_1s
      ::Proc(LibGL::UInt, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib1sv
    @[AlwaysInline]
    def vertex_attrib_1sv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib2d
    @[AlwaysInline]
    def vertex_attrib_2d
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib2dv
    @[AlwaysInline]
    def vertex_attrib_2dv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib2f
    @[AlwaysInline]
    def vertex_attrib_2f
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib2fv
    @[AlwaysInline]
    def vertex_attrib_2fv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib2s
    @[AlwaysInline]
    def vertex_attrib_2s
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib2sv
    @[AlwaysInline]
    def vertex_attrib_2sv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib3d
    @[AlwaysInline]
    def vertex_attrib_3d
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib3dv
    @[AlwaysInline]
    def vertex_attrib_3dv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib3f
    @[AlwaysInline]
    def vertex_attrib_3f
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib3fv
    @[AlwaysInline]
    def vertex_attrib_3fv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib3s
    @[AlwaysInline]
    def vertex_attrib_3s
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib3sv
    @[AlwaysInline]
    def vertex_attrib_3sv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nbv
    @[AlwaysInline]
    def vertex_attrib_4nbv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glVertexAttrib4Niv
    @[AlwaysInline]
    def vertex_attrib_4niv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nsv
    @[AlwaysInline]
    def vertex_attrib_4nsv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nub
    @[AlwaysInline]
    def vertex_attrib_4nub
      ::Proc(LibGL::UInt, LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glVertexAttrib4Nubv
    @[AlwaysInline]
    def vertex_attrib_4nubv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nuiv
    @[AlwaysInline]
    def vertex_attrib_4nuiv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nusv
    @[AlwaysInline]
    def vertex_attrib_4nusv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glVertexAttrib4bv
    @[AlwaysInline]
    def vertex_attrib_4bv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glVertexAttrib4d
    @[AlwaysInline]
    def vertex_attrib_4d
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib4dv
    @[AlwaysInline]
    def vertex_attrib_4dv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib4f
    @[AlwaysInline]
    def vertex_attrib_4f
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib4fv
    @[AlwaysInline]
    def vertex_attrib_4fv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib4iv
    @[AlwaysInline]
    def vertex_attrib_4iv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttrib4s
    @[AlwaysInline]
    def vertex_attrib_4s
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib4sv
    @[AlwaysInline]
    def vertex_attrib_4sv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib4ubv
    @[AlwaysInline]
    def vertex_attrib_4ubv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glVertexAttrib4uiv
    @[AlwaysInline]
    def vertex_attrib_4uiv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttrib4usv
    @[AlwaysInline]
    def vertex_attrib_4usv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glVertexAttribPointer
    @[AlwaysInline]
    def vertex_attrib_pointer
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glUniformMatrix2x3fv
    @[AlwaysInline]
    def uniform_matrix2x3_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix3x2fv
    @[AlwaysInline]
    def uniform_matrix3x2_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix2x4fv
    @[AlwaysInline]
    def uniform_matrix2x4_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix4x2fv
    @[AlwaysInline]
    def uniform_matrix4x2_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix3x4fv
    @[AlwaysInline]
    def uniform_matrix3x4_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix4x3fv
    @[AlwaysInline]
    def uniform_matrix4x3_fv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glColorMaski
    @[AlwaysInline]
    def color_mask_i
      ::Proc(LibGL::UInt, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glGetBooleani_v
    @[AlwaysInline]
    def get_boolean_i_v
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glGetIntegeri_v
    @[AlwaysInline]
    def get_integer_i_v
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glEnablei
    @[AlwaysInline]
    def enable_i
      ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDisablei
    @[AlwaysInline]
    def disable_i
      ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
    end

    # Proc type for the function glIsEnabledi
    @[AlwaysInline]
    def is_enabled_i
      ::Proc(LibGL::EnableCap, LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glBeginTransformFeedback
    @[AlwaysInline]
    def begin_transform_feedback
      ::Proc(LibGL::PrimitiveType, ::Void)
    end

    # Proc type for the function glEndTransformFeedback
    @[AlwaysInline]
    def end_transform_feedback
      ::Proc(::Void)
    end

    # Proc type for the function glBindBufferRange
    @[AlwaysInline]
    def bind_buffer_range
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glBindBufferBase
    @[AlwaysInline]
    def bind_buffer_base
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTransformFeedbackVaryings
    @[AlwaysInline]
    def transform_feedback_varyings
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::TransformFeedbackBufferMode, ::Void)
    end

    # Proc type for the function glGetTransformFeedbackVarying
    @[AlwaysInline]
    def get_transform_feedback_varying
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glClampColor
    @[AlwaysInline]
    def clamp_color
      ::Proc(LibGL::ClampColorTargetARB, LibGL::ClampColorModeARB, ::Void)
    end

    # Proc type for the function glBeginConditionalRender
    @[AlwaysInline]
    def begin_conditional_render
      ::Proc(LibGL::UInt, LibGL::ConditionalRenderMode, ::Void)
    end

    # Proc type for the function glEndConditionalRender
    @[AlwaysInline]
    def end_conditional_render
      ::Proc(::Void)
    end

    # Proc type for the function glVertexAttribIPointer
    @[AlwaysInline]
    def vertex_attrib_i_pointer
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetVertexAttribIiv
    @[AlwaysInline]
    def get_vertex_attrib_i_iv
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetVertexAttribIuiv
    @[AlwaysInline]
    def get_vertex_attrib_i_uiv
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI1i
    @[AlwaysInline]
    def vertex_attrib_i_1i
      ::Proc(LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI2i
    @[AlwaysInline]
    def vertex_attrib_i_2i
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI3i
    @[AlwaysInline]
    def vertex_attrib_i_3i
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI4i
    @[AlwaysInline]
    def vertex_attrib_i_4i
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI1ui
    @[AlwaysInline]
    def vertex_attrib_i_1ui
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI2ui
    @[AlwaysInline]
    def vertex_attrib_i_2ui
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI3ui
    @[AlwaysInline]
    def vertex_attrib_i_3ui
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI4ui
    @[AlwaysInline]
    def vertex_attrib_i_4ui
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI1iv
    @[AlwaysInline]
    def vertex_attrib_i_1iv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI2iv
    @[AlwaysInline]
    def vertex_attrib_i_2iv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI3iv
    @[AlwaysInline]
    def vertex_attrib_i_3iv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI4iv
    @[AlwaysInline]
    def vertex_attrib_i_4iv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI1uiv
    @[AlwaysInline]
    def vertex_attrib_i_1uiv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI2uiv
    @[AlwaysInline]
    def vertex_attrib_i_2uiv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI3uiv
    @[AlwaysInline]
    def vertex_attrib_i_3uiv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI4uiv
    @[AlwaysInline]
    def vertex_attrib_i_4uiv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI4bv
    @[AlwaysInline]
    def vertex_attrib_i_4bv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glVertexAttribI4sv
    @[AlwaysInline]
    def vertex_attrib_i_4sv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttribI4ubv
    @[AlwaysInline]
    def vertex_attrib_i_4ubv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glVertexAttribI4usv
    @[AlwaysInline]
    def vertex_attrib_i_4usv
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glGetUniformuiv
    @[AlwaysInline]
    def get_uniform_uiv
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glBindFragDataLocation
    @[AlwaysInline]
    def bind_frag_data_location
      ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetFragDataLocation
    @[AlwaysInline]
    def get_frag_data_location
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glUniform1ui
    @[AlwaysInline]
    def uniform_1ui
      ::Proc(LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform2ui
    @[AlwaysInline]
    def uniform_2ui
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform3ui
    @[AlwaysInline]
    def uniform_3ui
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform4ui
    @[AlwaysInline]
    def uniform_4ui
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform1uiv
    @[AlwaysInline]
    def uniform_1uiv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform2uiv
    @[AlwaysInline]
    def uniform_2uiv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform3uiv
    @[AlwaysInline]
    def uniform_3uiv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform4uiv
    @[AlwaysInline]
    def uniform_4uiv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glTexParameterIiv
    @[AlwaysInline]
    def tex_parameter_i_iv
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexParameterIuiv
    @[AlwaysInline]
    def tex_parameter_i_uiv
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetTexParameterIiv
    @[AlwaysInline]
    def get_tex_parameter_i_iv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexParameterIuiv
    @[AlwaysInline]
    def get_tex_parameter_i_uiv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glClearBufferiv
    @[AlwaysInline]
    def clear_buffer_iv
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glClearBufferuiv
    @[AlwaysInline]
    def clear_buffer_uiv
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glClearBufferfv
    @[AlwaysInline]
    def clear_buffer_fv
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glClearBufferfi
    @[AlwaysInline]
    def clear_buffer_fi
      ::Proc(LibGL::Buffer, LibGL::Int, LibGL::Float, LibGL::Int, ::Void)
    end

    # Proc type for the function glGetStringi
    @[AlwaysInline]
    def get_string_i
      ::Proc(LibGL::StringName, LibGL::UInt, ::Pointer(LibGL::UByte))
    end

    # Proc type for the function glIsRenderbuffer
    @[AlwaysInline]
    def is_renderbuffer
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glBindRenderbuffer
    @[AlwaysInline]
    def bind_renderbuffer
      ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteRenderbuffers
    @[AlwaysInline]
    def delete_renderbuffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenRenderbuffers
    @[AlwaysInline]
    def gen_renderbuffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glRenderbufferStorage
    @[AlwaysInline]
    def renderbuffer_storage
      ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glGetRenderbufferParameteriv
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv
      ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glIsFramebuffer
    @[AlwaysInline]
    def is_framebuffer
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glBindFramebuffer
    @[AlwaysInline]
    def bind_framebuffer
      ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteFramebuffers
    @[AlwaysInline]
    def delete_framebuffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenFramebuffers
    @[AlwaysInline]
    def gen_framebuffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glCheckFramebufferStatus
    @[AlwaysInline]
    def check_framebuffer_status
      ::Proc(LibGL::FramebufferTarget, LibGL::Enum)
    end

    # Proc type for the function glFramebufferTexture1D
    @[AlwaysInline]
    def framebuffer_texture_1d
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTexture2D
    @[AlwaysInline]
    def framebuffer_texture_2d
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTexture3D
    @[AlwaysInline]
    def framebuffer_texture_3d
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferRenderbuffer
    @[AlwaysInline]
    def framebuffer_renderbuffer
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glGetFramebufferAttachmentParameteriv
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGenerateMipmap
    @[AlwaysInline]
    def generate_mipmap
      ::Proc(LibGL::TextureTarget, ::Void)
    end

    # Proc type for the function glBlitFramebuffer
    @[AlwaysInline]
    def blit_framebuffer
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::ClearBufferMask, LibGL::BlitFramebufferFilter, ::Void)
    end

    # Proc type for the function glRenderbufferStorageMultisample
    @[AlwaysInline]
    def renderbuffer_storage_multisample
      ::Proc(LibGL::RenderbufferTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glFramebufferTextureLayer
    @[AlwaysInline]
    def framebuffer_texture_layer
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glMapBufferRange
    @[AlwaysInline]
    def map_buffer_range
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::MapBufferAccessMask, ::Pointer(Void))
    end

    # Proc type for the function glFlushMappedBufferRange
    @[AlwaysInline]
    def flush_mapped_buffer_range
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glBindVertexArray
    @[AlwaysInline]
    def bind_vertex_array
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteVertexArrays
    @[AlwaysInline]
    def delete_vertex_arrays
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenVertexArrays
    @[AlwaysInline]
    def gen_vertex_arrays
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glIsVertexArray
    @[AlwaysInline]
    def is_vertex_array
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glDrawArraysInstanced
    @[AlwaysInline]
    def draw_arrays_instanced
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawElementsInstanced
    @[AlwaysInline]
    def draw_elements_instanced
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glTexBuffer
    @[AlwaysInline]
    def tex_buffer
      ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, ::Void)
    end

    # Proc type for the function glPrimitiveRestartIndex
    @[AlwaysInline]
    def primitive_restart_index
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glCopyBufferSubData
    @[AlwaysInline]
    def copy_buffer_sub_data
      ::Proc(LibGL::CopyBufferSubDataTarget, LibGL::CopyBufferSubDataTarget, LibGL::IntPtr, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glGetUniformIndices
    @[AlwaysInline]
    def get_uniform_indices
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetActiveUniformsiv
    @[AlwaysInline]
    def get_active_uniforms_iv
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::UniformPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveUniformName
    @[AlwaysInline]
    def get_active_uniform_name
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetUniformBlockIndex
    @[AlwaysInline]
    def get_uniform_block_index
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # Proc type for the function glGetActiveUniformBlockiv
    @[AlwaysInline]
    def get_active_uniform_block_iv
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UniformBlockPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveUniformBlockName
    @[AlwaysInline]
    def get_active_uniform_block_name
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glUniformBlockBinding
    @[AlwaysInline]
    def uniform_block_binding
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawElementsBaseVertex
    @[AlwaysInline]
    def draw_elements_base_vertex
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
    end

    # Proc type for the function glDrawRangeElementsBaseVertex
    @[AlwaysInline]
    def draw_range_elements_base_vertex
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
    end

    # Proc type for the function glDrawElementsInstancedBaseVertex
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glMultiDrawElementsBaseVertex
    @[AlwaysInline]
    def multi_draw_elements_base_vertex
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glProvokingVertex
    @[AlwaysInline]
    def provoking_vertex
      ::Proc(LibGL::VertexProvokingMode, ::Void)
    end

    # Proc type for the function glFenceSync
    @[AlwaysInline]
    def fence_sync
      ::Proc(LibGL::SyncCondition, LibGL::SyncBehaviorFlags, LibGL::Sync)
    end

    # Proc type for the function glIsSync
    @[AlwaysInline]
    def is_sync
      ::Proc(LibGL::Sync, LibGL::Boolean)
    end

    # Proc type for the function glDeleteSync
    @[AlwaysInline]
    def delete_sync
      ::Proc(LibGL::Sync, ::Void)
    end

    # Proc type for the function glClientWaitSync
    @[AlwaysInline]
    def client_wait_sync
      ::Proc(LibGL::Sync, LibGL::SyncObjectMask, LibGL::UInt64, LibGL::Enum)
    end

    # Proc type for the function glWaitSync
    @[AlwaysInline]
    def wait_sync
      ::Proc(LibGL::Sync, LibGL::SyncBehaviorFlags, LibGL::UInt64, ::Void)
    end

    # Proc type for the function glGetInteger64v
    @[AlwaysInline]
    def get_integer_64v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetSynciv
    @[AlwaysInline]
    def get_sync_iv
      ::Proc(LibGL::Sync, LibGL::SyncParameterName, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetInteger64i_v
    @[AlwaysInline]
    def get_integer_64i_v
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetBufferParameteri64v
    @[AlwaysInline]
    def get_buffer_parameter_i64v
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glFramebufferTexture
    @[AlwaysInline]
    def framebuffer_texture
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexImage2DMultisample
    @[AlwaysInline]
    def tex_image_2d_multisample
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glTexImage3DMultisample
    @[AlwaysInline]
    def tex_image_3d_multisample
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glGetMultisamplefv
    @[AlwaysInline]
    def get_multisample_fv
      ::Proc(LibGL::GetMultisamplePNameNV, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glSampleMaski
    @[AlwaysInline]
    def sample_mask_i
      ::Proc(LibGL::UInt, LibGL::Bitfield, ::Void)
    end

    # Proc type for the function glBindFragDataLocationIndexed
    @[AlwaysInline]
    def bind_frag_data_location_indexed
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetFragDataIndex
    @[AlwaysInline]
    def get_frag_data_index
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGenSamplers
    @[AlwaysInline]
    def gen_samplers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteSamplers
    @[AlwaysInline]
    def delete_samplers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glIsSampler
    @[AlwaysInline]
    def is_sampler
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glBindSampler
    @[AlwaysInline]
    def bind_sampler
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glSamplerParameteri
    @[AlwaysInline]
    def sampler_parameter_i
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, LibGL::Int, ::Void)
    end

    # Proc type for the function glSamplerParameteriv
    @[AlwaysInline]
    def sampler_parameter_iv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glSamplerParameterf
    @[AlwaysInline]
    def sampler_parameter_f
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, LibGL::Float, ::Void)
    end

    # Proc type for the function glSamplerParameterfv
    @[AlwaysInline]
    def sampler_parameter_fv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glSamplerParameterIiv
    @[AlwaysInline]
    def sampler_parameter_i_iv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glSamplerParameterIuiv
    @[AlwaysInline]
    def sampler_parameter_i_uiv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetSamplerParameteriv
    @[AlwaysInline]
    def get_sampler_parameter_iv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetSamplerParameterIiv
    @[AlwaysInline]
    def get_sampler_parameter_i_iv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetSamplerParameterfv
    @[AlwaysInline]
    def get_sampler_parameter_fv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetSamplerParameterIuiv
    @[AlwaysInline]
    def get_sampler_parameter_i_uiv
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glQueryCounter
    @[AlwaysInline]
    def query_counter
      ::Proc(LibGL::UInt, LibGL::QueryCounterTarget, ::Void)
    end

    # Proc type for the function glGetQueryObjecti64v
    @[AlwaysInline]
    def get_query_object_i64v
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetQueryObjectui64v
    @[AlwaysInline]
    def get_query_object_ui64v
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt64), ::Void)
    end

    # Proc type for the function glVertexAttribDivisor
    @[AlwaysInline]
    def vertex_attrib_divisor
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP1ui
    @[AlwaysInline]
    def vertex_attrib_p_1ui
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP1uiv
    @[AlwaysInline]
    def vertex_attrib_p_1uiv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP2ui
    @[AlwaysInline]
    def vertex_attrib_p_2ui
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP2uiv
    @[AlwaysInline]
    def vertex_attrib_p_2uiv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP3ui
    @[AlwaysInline]
    def vertex_attrib_p_3ui
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP3uiv
    @[AlwaysInline]
    def vertex_attrib_p_3uiv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP4ui
    @[AlwaysInline]
    def vertex_attrib_p_4ui
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP4uiv
    @[AlwaysInline]
    def vertex_attrib_p_4uiv
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glMinSampleShading
    @[AlwaysInline]
    def min_sample_shading
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glBlendEquationi
    @[AlwaysInline]
    def blend_equation_i
      ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendEquationSeparatei
    @[AlwaysInline]
    def blend_equation_separate_i
      ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendFunci
    @[AlwaysInline]
    def blend_func_i
      ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glBlendFuncSeparatei
    @[AlwaysInline]
    def blend_func_separate_i
      ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glDrawArraysIndirect
    @[AlwaysInline]
    def draw_arrays_indirect
      ::Proc(LibGL::PrimitiveType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawElementsIndirect
    @[AlwaysInline]
    def draw_elements_indirect
      ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glUniform1d
    @[AlwaysInline]
    def uniform_1d
      ::Proc(LibGL::Int, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform2d
    @[AlwaysInline]
    def uniform_2d
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform3d
    @[AlwaysInline]
    def uniform_3d
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform4d
    @[AlwaysInline]
    def uniform_4d
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform1dv
    @[AlwaysInline]
    def uniform_1dv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform2dv
    @[AlwaysInline]
    def uniform_2dv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform3dv
    @[AlwaysInline]
    def uniform_3dv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform4dv
    @[AlwaysInline]
    def uniform_4dv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix2dv
    @[AlwaysInline]
    def uniform_matrix2_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix3dv
    @[AlwaysInline]
    def uniform_matrix3_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix4dv
    @[AlwaysInline]
    def uniform_matrix4_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix2x3dv
    @[AlwaysInline]
    def uniform_matrix2x3_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix2x4dv
    @[AlwaysInline]
    def uniform_matrix2x4_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix3x2dv
    @[AlwaysInline]
    def uniform_matrix3x2_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix3x4dv
    @[AlwaysInline]
    def uniform_matrix3x4_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix4x2dv
    @[AlwaysInline]
    def uniform_matrix4x2_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix4x3dv
    @[AlwaysInline]
    def uniform_matrix4x3_dv
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetUniformdv
    @[AlwaysInline]
    def get_uniform_dv
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetSubroutineUniformLocation
    @[AlwaysInline]
    def get_subroutine_uniform_location
      ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetSubroutineIndex
    @[AlwaysInline]
    def get_subroutine_index
      ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # Proc type for the function glGetActiveSubroutineUniformiv
    @[AlwaysInline]
    def get_active_subroutine_uniform_iv
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SubroutineParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveSubroutineUniformName
    @[AlwaysInline]
    def get_active_subroutine_uniform_name
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveSubroutineName
    @[AlwaysInline]
    def get_active_subroutine_name
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glUniformSubroutinesuiv
    @[AlwaysInline]
    def uniform_subroutines_uiv
      ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetUniformSubroutineuiv
    @[AlwaysInline]
    def get_uniform_subroutine_uiv
      ::Proc(LibGL::ShaderType, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetProgramStageiv
    @[AlwaysInline]
    def get_program_stage_iv
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::ProgramStagePName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glPatchParameteri
    @[AlwaysInline]
    def patch_parameter_i
      ::Proc(LibGL::PatchParameterName, LibGL::Int, ::Void)
    end

    # Proc type for the function glPatchParameterfv
    @[AlwaysInline]
    def patch_parameter_fv
      ::Proc(LibGL::PatchParameterName, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glBindTransformFeedback
    @[AlwaysInline]
    def bind_transform_feedback
      ::Proc(LibGL::BindTransformFeedbackTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteTransformFeedbacks
    @[AlwaysInline]
    def delete_transform_feedbacks
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenTransformFeedbacks
    @[AlwaysInline]
    def gen_transform_feedbacks
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glIsTransformFeedback
    @[AlwaysInline]
    def is_transform_feedback
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glPauseTransformFeedback
    @[AlwaysInline]
    def pause_transform_feedback
      ::Proc(::Void)
    end

    # Proc type for the function glResumeTransformFeedback
    @[AlwaysInline]
    def resume_transform_feedback
      ::Proc(::Void)
    end

    # Proc type for the function glDrawTransformFeedback
    @[AlwaysInline]
    def draw_transform_feedback
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawTransformFeedbackStream
    @[AlwaysInline]
    def draw_transform_feedback_stream
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBeginQueryIndexed
    @[AlwaysInline]
    def begin_query_indexed
      ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glEndQueryIndexed
    @[AlwaysInline]
    def end_query_indexed
      ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glGetQueryIndexediv
    @[AlwaysInline]
    def get_query_indexed_iv
      ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
    end
  end
end
