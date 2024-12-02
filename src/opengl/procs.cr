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

    # `Proc` type for the OpenGL function *glMinSampleShading*.
    @[AlwaysInline]
    def min_sample_shading : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendEquationi*.
    @[AlwaysInline]
    def blend_equation_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendEquationSeparatei*.
    @[AlwaysInline]
    def blend_equation_separate_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFunci*.
    @[AlwaysInline]
    def blend_func_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFuncSeparatei*.
    @[AlwaysInline]
    def blend_func_separate_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawArraysIndirect*.
    @[AlwaysInline]
    def draw_arrays_indirect : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElementsIndirect*.
    @[AlwaysInline]
    def draw_elements_indirect : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1d*.
    @[AlwaysInline]
    def uniform_1d : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2d*.
    @[AlwaysInline]
    def uniform_2d : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3d*.
    @[AlwaysInline]
    def uniform_3d : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4d*.
    @[AlwaysInline]
    def uniform_4d : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1dv*.
    @[AlwaysInline]
    def uniform_1dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2dv*.
    @[AlwaysInline]
    def uniform_2dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3dv*.
    @[AlwaysInline]
    def uniform_3dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4dv*.
    @[AlwaysInline]
    def uniform_4dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix2dv*.
    @[AlwaysInline]
    def uniform_matrix2_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix3dv*.
    @[AlwaysInline]
    def uniform_matrix3_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix4dv*.
    @[AlwaysInline]
    def uniform_matrix4_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix2x3dv*.
    @[AlwaysInline]
    def uniform_matrix2x3_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix2x4dv*.
    @[AlwaysInline]
    def uniform_matrix2x4_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix3x2dv*.
    @[AlwaysInline]
    def uniform_matrix3x2_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix3x4dv*.
    @[AlwaysInline]
    def uniform_matrix3x4_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix4x2dv*.
    @[AlwaysInline]
    def uniform_matrix4x2_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformMatrix4x3dv*.
    @[AlwaysInline]
    def uniform_matrix4x3_dv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformdv*.
    @[AlwaysInline]
    def get_uniform_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetSubroutineUniformLocation*.
    @[AlwaysInline]
    def get_subroutine_uniform_location : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glGetSubroutineIndex*.
    @[AlwaysInline]
    def get_subroutine_index : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glGetActiveSubroutineUniformiv*.
    @[AlwaysInline]
    def get_active_subroutine_uniform_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SubroutineParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveSubroutineUniformName*.
    @[AlwaysInline]
    def get_active_subroutine_uniform_name : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveSubroutineName*.
    @[AlwaysInline]
    def get_active_subroutine_name : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniformSubroutinesuiv*.
    @[AlwaysInline]
    def uniform_subroutines_uiv : ::Proc.class
      ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformSubroutineuiv*.
    @[AlwaysInline]
    def get_uniform_subroutine_uiv : ::Proc.class
      ::Proc(LibGL::ShaderType, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramStageiv*.
    @[AlwaysInline]
    def get_program_stage_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::ProgramStagePName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glPatchParameteri*.
    @[AlwaysInline]
    def patch_parameter_i : ::Proc.class
      ::Proc(LibGL::PatchParameterName, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glPatchParameterfv*.
    @[AlwaysInline]
    def patch_parameter_fv : ::Proc.class
      ::Proc(LibGL::PatchParameterName, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glBindTransformFeedback*.
    @[AlwaysInline]
    def bind_transform_feedback : ::Proc.class
      ::Proc(LibGL::BindTransformFeedbackTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteTransformFeedbacks*.
    @[AlwaysInline]
    def delete_transform_feedbacks : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenTransformFeedbacks*.
    @[AlwaysInline]
    def gen_transform_feedbacks : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsTransformFeedback*.
    @[AlwaysInline]
    def is_transform_feedback : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glPauseTransformFeedback*.
    @[AlwaysInline]
    def pause_transform_feedback : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glResumeTransformFeedback*.
    @[AlwaysInline]
    def resume_transform_feedback : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glDrawTransformFeedback*.
    @[AlwaysInline]
    def draw_transform_feedback : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawTransformFeedbackStream*.
    @[AlwaysInline]
    def draw_transform_feedback_stream : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBeginQueryIndexed*.
    @[AlwaysInline]
    def begin_query_indexed : ::Proc.class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glEndQueryIndexed*.
    @[AlwaysInline]
    def end_query_indexed : ::Proc.class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetQueryIndexediv*.
    @[AlwaysInline]
    def get_query_indexed_iv : ::Proc.class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glReleaseShaderCompiler*.
    @[AlwaysInline]
    def release_shader_compiler : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glShaderBinary*.
    @[AlwaysInline]
    def shader_binary : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetShaderPrecisionFormat*.
    @[AlwaysInline]
    def get_shader_precision_format : ::Proc.class
      ::Proc(LibGL::ShaderType, LibGL::PrecisionType, ::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthRangef*.
    @[AlwaysInline]
    def depth_range_f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearDepthf*.
    @[AlwaysInline]
    def clear_depth_f : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramBinary*.
    @[AlwaysInline]
    def get_program_binary : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Enum), ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramBinary*.
    @[AlwaysInline]
    def program_binary : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramParameteri*.
    @[AlwaysInline]
    def program_parameter_i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramParameterPName, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUseProgramStages*.
    @[AlwaysInline]
    def use_program_stages : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UseProgramStageMask, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glActiveShaderProgram*.
    @[AlwaysInline]
    def active_shader_program : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glCreateShaderProgramv*.
    @[AlwaysInline]
    def create_shader_program_v : ::Proc.class
      ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glBindProgramPipeline*.
    @[AlwaysInline]
    def bind_program_pipeline : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteProgramPipelines*.
    @[AlwaysInline]
    def delete_program_pipelines : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenProgramPipelines*.
    @[AlwaysInline]
    def gen_program_pipelines : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glIsProgramPipeline*.
    @[AlwaysInline]
    def is_program_pipeline : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glGetProgramPipelineiv*.
    @[AlwaysInline]
    def get_program_pipeline_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::PipelineParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1i*.
    @[AlwaysInline]
    def program_uniform_1i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1iv*.
    @[AlwaysInline]
    def program_uniform_1iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1f*.
    @[AlwaysInline]
    def program_uniform_1f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1fv*.
    @[AlwaysInline]
    def program_uniform_1fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1d*.
    @[AlwaysInline]
    def program_uniform_1d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1dv*.
    @[AlwaysInline]
    def program_uniform_1dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1ui*.
    @[AlwaysInline]
    def program_uniform_1ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform1uiv*.
    @[AlwaysInline]
    def program_uniform_1uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2i*.
    @[AlwaysInline]
    def program_uniform_2i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2iv*.
    @[AlwaysInline]
    def program_uniform_2iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2f*.
    @[AlwaysInline]
    def program_uniform_2f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2fv*.
    @[AlwaysInline]
    def program_uniform_2fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2d*.
    @[AlwaysInline]
    def program_uniform_2d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2dv*.
    @[AlwaysInline]
    def program_uniform_2dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2ui*.
    @[AlwaysInline]
    def program_uniform_2ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform2uiv*.
    @[AlwaysInline]
    def program_uniform_2uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3i*.
    @[AlwaysInline]
    def program_uniform_3i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3iv*.
    @[AlwaysInline]
    def program_uniform_3iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3f*.
    @[AlwaysInline]
    def program_uniform_3f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3fv*.
    @[AlwaysInline]
    def program_uniform_3fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3d*.
    @[AlwaysInline]
    def program_uniform_3d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3dv*.
    @[AlwaysInline]
    def program_uniform_3dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3ui*.
    @[AlwaysInline]
    def program_uniform_3ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform3uiv*.
    @[AlwaysInline]
    def program_uniform_3uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4i*.
    @[AlwaysInline]
    def program_uniform_4i : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4iv*.
    @[AlwaysInline]
    def program_uniform_4iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4f*.
    @[AlwaysInline]
    def program_uniform_4f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4fv*.
    @[AlwaysInline]
    def program_uniform_4fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4d*.
    @[AlwaysInline]
    def program_uniform_4d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4dv*.
    @[AlwaysInline]
    def program_uniform_4dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4ui*.
    @[AlwaysInline]
    def program_uniform_4ui : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniform4uiv*.
    @[AlwaysInline]
    def program_uniform_4uiv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix2fv*.
    @[AlwaysInline]
    def program_uniform_matrix2_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix3fv*.
    @[AlwaysInline]
    def program_uniform_matrix3_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix4fv*.
    @[AlwaysInline]
    def program_uniform_matrix4_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix2dv*.
    @[AlwaysInline]
    def program_uniform_matrix2_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix3dv*.
    @[AlwaysInline]
    def program_uniform_matrix3_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix4dv*.
    @[AlwaysInline]
    def program_uniform_matrix4_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix2x3fv*.
    @[AlwaysInline]
    def program_uniform_matrix2x3_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix3x2fv*.
    @[AlwaysInline]
    def program_uniform_matrix3x2_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix2x4fv*.
    @[AlwaysInline]
    def program_uniform_matrix2x4_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix4x2fv*.
    @[AlwaysInline]
    def program_uniform_matrix4x2_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix3x4fv*.
    @[AlwaysInline]
    def program_uniform_matrix3x4_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix4x3fv*.
    @[AlwaysInline]
    def program_uniform_matrix4x3_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix2x3dv*.
    @[AlwaysInline]
    def program_uniform_matrix2x3_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix3x2dv*.
    @[AlwaysInline]
    def program_uniform_matrix3x2_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix2x4dv*.
    @[AlwaysInline]
    def program_uniform_matrix2x4_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix4x2dv*.
    @[AlwaysInline]
    def program_uniform_matrix4x2_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix3x4dv*.
    @[AlwaysInline]
    def program_uniform_matrix3x4_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramUniformMatrix4x3dv*.
    @[AlwaysInline]
    def program_uniform_matrix4x3_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glValidateProgramPipeline*.
    @[AlwaysInline]
    def validate_program_pipeline : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramPipelineInfoLog*.
    @[AlwaysInline]
    def get_program_pipeline_info_log : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL1d*.
    @[AlwaysInline]
    def vertex_attrib_l_1d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL2d*.
    @[AlwaysInline]
    def vertex_attrib_l_2d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL3d*.
    @[AlwaysInline]
    def vertex_attrib_l_3d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL4d*.
    @[AlwaysInline]
    def vertex_attrib_l_4d : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL1dv*.
    @[AlwaysInline]
    def vertex_attrib_l_1dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL2dv*.
    @[AlwaysInline]
    def vertex_attrib_l_2dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL3dv*.
    @[AlwaysInline]
    def vertex_attrib_l_3dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribL4dv*.
    @[AlwaysInline]
    def vertex_attrib_l_4dv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribLPointer*.
    @[AlwaysInline]
    def vertex_attrib_l_pointer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetVertexAttribLdv*.
    @[AlwaysInline]
    def get_vertex_attrib_l_dv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glViewportArrayv*.
    @[AlwaysInline]
    def viewport_array_v : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glViewportIndexedf*.
    @[AlwaysInline]
    def viewport_indexed_f : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glViewportIndexedfv*.
    @[AlwaysInline]
    def viewport_indexed_fv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glScissorArrayv*.
    @[AlwaysInline]
    def scissor_array_v : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glScissorIndexed*.
    @[AlwaysInline]
    def scissor_indexed : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glScissorIndexedv*.
    @[AlwaysInline]
    def scissor_indexedv : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthRangeArrayv*.
    @[AlwaysInline]
    def depth_range_array_v : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthRangeIndexed*.
    @[AlwaysInline]
    def depth_range_indexed : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetFloati_v*.
    @[AlwaysInline]
    def get_float_i_v : ::Proc.class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetDoublei_v*.
    @[AlwaysInline]
    def get_double_i_v : ::Proc.class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawArraysInstancedBaseInstance*.
    @[AlwaysInline]
    def draw_arrays_instanced_base_instance : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElementsInstancedBaseInstance*.
    @[AlwaysInline]
    def draw_elements_instanced_base_instance : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawElementsInstancedBaseVertexBaseInstance*.
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex_base_instance : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetInternalformativ*.
    @[AlwaysInline]
    def get_internalformat_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetActiveAtomicCounterBufferiv*.
    @[AlwaysInline]
    def get_active_atomic_counter_buffer_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::AtomicCounterBufferPName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glBindImageTexture*.
    @[AlwaysInline]
    def bind_image_texture : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::Int, LibGL::Boolean, LibGL::Int, LibGL::BufferAccessARB, LibGL::InternalFormat, ::Void)
    end

    # `Proc` type for the OpenGL function *glMemoryBarrier*.
    @[AlwaysInline]
    def memory_barrier : ::Proc.class
      ::Proc(LibGL::MemoryBarrierMask, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexStorage1D*.
    @[AlwaysInline]
    def tex_storage_1d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexStorage2D*.
    @[AlwaysInline]
    def tex_storage_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexStorage3D*.
    @[AlwaysInline]
    def tex_storage_3d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawTransformFeedbackInstanced*.
    @[AlwaysInline]
    def draw_transform_feedback_instanced : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawTransformFeedbackStreamInstanced*.
    @[AlwaysInline]
    def draw_transform_feedback_stream_instanced : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearBufferData*.
    @[AlwaysInline]
    def clear_buffer_data : ::Proc.class
      ::Proc(LibGL::BufferStorageTarget, LibGL::SizedInternalFormat, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glClearBufferSubData*.
    @[AlwaysInline]
    def clear_buffer_sub_data : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::SizedInternalFormat, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glDispatchCompute*.
    @[AlwaysInline]
    def dispatch_compute : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDispatchComputeIndirect*.
    @[AlwaysInline]
    def dispatch_compute_indirect : ::Proc.class
      ::Proc(LibGL::IntPtr, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyImageSubData*.
    @[AlwaysInline]
    def copy_image_sub_data : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferParameteri*.
    @[AlwaysInline]
    def framebuffer_parameter_i : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferParameterName, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetFramebufferParameteriv*.
    @[AlwaysInline]
    def get_framebuffer_parameter_iv : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetInternalformati64v*.
    @[AlwaysInline]
    def get_internalformat_i64v : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int64), ::Void)
    end

    # `Proc` type for the OpenGL function *glInvalidateTexSubImage*.
    @[AlwaysInline]
    def invalidate_tex_sub_image : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glInvalidateTexImage*.
    @[AlwaysInline]
    def invalidate_tex_image : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glInvalidateBufferSubData*.
    @[AlwaysInline]
    def invalidate_buffer_sub_data : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # `Proc` type for the OpenGL function *glInvalidateBufferData*.
    @[AlwaysInline]
    def invalidate_buffer_data : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glInvalidateFramebuffer*.
    @[AlwaysInline]
    def invalidate_framebuffer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), ::Void)
    end

    # `Proc` type for the OpenGL function *glInvalidateSubFramebuffer*.
    @[AlwaysInline]
    def invalidate_sub_framebuffer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiDrawArraysIndirect*.
    @[AlwaysInline]
    def multi_draw_arrays_indirect : ::Proc.class
      ::Proc(LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiDrawElementsIndirect*.
    @[AlwaysInline]
    def multi_draw_elements_indirect : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramInterfaceiv*.
    @[AlwaysInline]
    def get_program_interface_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::ProgramInterfacePName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramResourceIndex*.
    @[AlwaysInline]
    def get_program_resource_index : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glGetProgramResourceName*.
    @[AlwaysInline]
    def get_program_resource_name : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramResourceiv*.
    @[AlwaysInline]
    def get_program_resource_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::ProgramResourceProperty), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramResourceLocation*.
    @[AlwaysInline]
    def get_program_resource_location : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glGetProgramResourceLocationIndex*.
    @[AlwaysInline]
    def get_program_resource_location_index : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glShaderStorageBlockBinding*.
    @[AlwaysInline]
    def shader_storage_block_binding : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexBufferRange*.
    @[AlwaysInline]
    def tex_buffer_range : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexStorage2DMultisample*.
    @[AlwaysInline]
    def tex_storage_2d_multisample : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexStorage3DMultisample*.
    @[AlwaysInline]
    def tex_storage_3d_multisample : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glTextureView*.
    @[AlwaysInline]
    def texture_view : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::TextureTarget, LibGL::UInt, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindVertexBuffer*.
    @[AlwaysInline]
    def bind_vertex_buffer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribFormat*.
    @[AlwaysInline]
    def vertex_attrib_format : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribIFormat*.
    @[AlwaysInline]
    def vertex_attrib_i_format : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribLFormat*.
    @[AlwaysInline]
    def vertex_attrib_l_format : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexAttribBinding*.
    @[AlwaysInline]
    def vertex_attrib_binding : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexBindingDivisor*.
    @[AlwaysInline]
    def vertex_binding_divisor : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDebugMessageControl*.
    @[AlwaysInline]
    def debug_message_control : ::Proc.class
      ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glDebugMessageInsert*.
    @[AlwaysInline]
    def debug_message_insert : ::Proc.class
      ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::UInt, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glDebugMessageCallback*.
    @[AlwaysInline]
    def debug_message_callback : ::Proc.class
      ::Proc(::Pointer(::Void), ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetDebugMessageLog*.
    @[AlwaysInline]
    def get_debug_message_log : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::DebugSource), ::Pointer(LibGL::DebugType), ::Pointer(LibGL::UInt), ::Pointer(LibGL::DebugSeverity), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glPushDebugGroup*.
    @[AlwaysInline]
    def push_debug_group : ::Proc.class
      ::Proc(LibGL::DebugSource, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glPopDebugGroup*.
    @[AlwaysInline]
    def pop_debug_group : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glObjectLabel*.
    @[AlwaysInline]
    def object_label : ::Proc.class
      ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetObjectLabel*.
    @[AlwaysInline]
    def get_object_label : ::Proc.class
      ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glObjectPtrLabel*.
    @[AlwaysInline]
    def object_ptr_label : ::Proc.class
      ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetObjectPtrLabel*.
    @[AlwaysInline]
    def get_object_ptr_label : ::Proc.class
      ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPointerv*.
    @[AlwaysInline]
    def get_pointer_v : ::Proc.class
      ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
    end
  end
end
