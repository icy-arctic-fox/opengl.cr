module OpenGL
  module Procs
    extend self

    # Proc type for the function glActiveTexture
    @[AlwaysInline]
    def active_texture
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # Proc type for the function glBindBuffer
    @[AlwaysInline]
    def bind_buffer
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindFramebuffer
    @[AlwaysInline]
    def bind_framebuffer
      ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindRenderbuffer
    @[AlwaysInline]
    def bind_renderbuffer
      ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindTexture
    @[AlwaysInline]
    def bind_texture
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
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

    # Proc type for the function glBlendEquationSeparate
    @[AlwaysInline]
    def blend_equation_separate
      ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendFunc
    @[AlwaysInline]
    def blend_func
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glBlendFuncSeparate
    @[AlwaysInline]
    def blend_func_separate
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
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

    # Proc type for the function glCheckFramebufferStatus
    @[AlwaysInline]
    def check_framebuffer_status
      ::Proc(LibGL::FramebufferTarget, LibGL::Enum)
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

    # Proc type for the function glClearDepthf
    @[AlwaysInline]
    def clear_depth_f
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glClearStencil
    @[AlwaysInline]
    def clear_stencil
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glColorMask
    @[AlwaysInline]
    def color_mask
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glCompressedTexSubImage2D
    @[AlwaysInline]
    def compressed_tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCreateProgram
    @[AlwaysInline]
    def create_program
      ::Proc(LibGL::UInt)
    end

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face
      ::Proc(LibGL::CullFaceMode, ::Void)
    end

    # Proc type for the function glDepthFunc
    @[AlwaysInline]
    def depth_func
      ::Proc(LibGL::DepthFunction, ::Void)
    end

    # Proc type for the function glDepthMask
    @[AlwaysInline]
    def depth_mask
      ::Proc(LibGL::Boolean, ::Void)
    end

    # Proc type for the function glDepthRangef
    @[AlwaysInline]
    def depth_range_f
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glDisable
    @[AlwaysInline]
    def disable
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glDisableVertexAttribArray
    @[AlwaysInline]
    def disable_vertex_attrib_array
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawArrays
    @[AlwaysInline]
    def draw_arrays
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawRangeElements
    @[AlwaysInline]
    def draw_range_elements
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glEnable
    @[AlwaysInline]
    def enable
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glEnableVertexAttribArray
    @[AlwaysInline]
    def enable_vertex_attrib_array
      ::Proc(LibGL::UInt, ::Void)
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

    # Proc type for the function glFramebufferRenderbuffer
    @[AlwaysInline]
    def framebuffer_renderbuffer
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glFramebufferTexture2D
    @[AlwaysInline]
    def framebuffer_texture_2d
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glFrontFace
    @[AlwaysInline]
    def front_face
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # Proc type for the function glGenBuffers
    @[AlwaysInline]
    def gen_buffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenerateMipmap
    @[AlwaysInline]
    def generate_mipmap
      ::Proc(LibGL::TextureTarget, ::Void)
    end

    # Proc type for the function glGenFramebuffers
    @[AlwaysInline]
    def gen_framebuffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenRenderbuffers
    @[AlwaysInline]
    def gen_renderbuffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenTextures
    @[AlwaysInline]
    def gen_textures
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetAttribLocation
    @[AlwaysInline]
    def get_attrib_location
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetBooleanv
    @[AlwaysInline]
    def get_boolean_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glGetBufferParameteriv
    @[AlwaysInline]
    def get_buffer_parameter_iv
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void)
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

    # Proc type for the function glGetFramebufferAttachmentParameteriv
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetGraphicsResetStatus
    @[AlwaysInline]
    def get_graphics_reset_status
      ::Proc(LibGL::Enum)
    end

    # Proc type for the function glGetIntegerv
    @[AlwaysInline]
    def get_integer_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramiv
    @[AlwaysInline]
    def get_program_iv
      ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetRenderbufferParameteriv
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv
      ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetString
    @[AlwaysInline]
    def get_string
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
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

    # Proc type for the function glGetnUniformfv
    @[AlwaysInline]
    def getn_uniform_fv
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetnUniformiv
    @[AlwaysInline]
    def getn_uniform_iv
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetUniformLocation
    @[AlwaysInline]
    def get_uniform_location
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
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

    # Proc type for the function glHint
    @[AlwaysInline]
    def hint
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # Proc type for the function glIsEnabled
    @[AlwaysInline]
    def is_enabled
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # Proc type for the function glLineWidth
    @[AlwaysInline]
    def line_width
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelStorei
    @[AlwaysInline]
    def pixel_store_i
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glPolygonOffset
    @[AlwaysInline]
    def polygon_offset
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glProgramBinary
    @[AlwaysInline]
    def program_binary
      ::Proc(LibGL::UInt, LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glReadnPixels
    @[AlwaysInline]
    def readn_pixels
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glRenderbufferStorage
    @[AlwaysInline]
    def renderbuffer_storage
      ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glSampleCoverage
    @[AlwaysInline]
    def sample_coverage
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glScissor
    @[AlwaysInline]
    def scissor
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glStencilFunc
    @[AlwaysInline]
    def stencil_func
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilFuncSeparate
    @[AlwaysInline]
    def stencil_func_separate
      ::Proc(LibGL::StencilFaceDirection, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMask
    @[AlwaysInline]
    def stencil_mask
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMaskSeparate
    @[AlwaysInline]
    def stencil_mask_separate
      ::Proc(LibGL::StencilFaceDirection, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilOp
    @[AlwaysInline]
    def stencil_op
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glStencilOpSeparate
    @[AlwaysInline]
    def stencil_op_separate
      ::Proc(LibGL::StencilFaceDirection, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glTexStorage2D
    @[AlwaysInline]
    def tex_storage_2d
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
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

    # Proc type for the function glTexSubImage2D
    @[AlwaysInline]
    def tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glUniform1f
    @[AlwaysInline]
    def uniform_1f
      ::Proc(LibGL::Int, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform1fv
    @[AlwaysInline]
    def uniform_1fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform1i
    @[AlwaysInline]
    def uniform_1i
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform1iv
    @[AlwaysInline]
    def uniform_1iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform2f
    @[AlwaysInline]
    def uniform_2f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform2fv
    @[AlwaysInline]
    def uniform_2fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform2i
    @[AlwaysInline]
    def uniform_2i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform2iv
    @[AlwaysInline]
    def uniform_2iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform3f
    @[AlwaysInline]
    def uniform_3f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform3fv
    @[AlwaysInline]
    def uniform_3fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform3i
    @[AlwaysInline]
    def uniform_3i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform3iv
    @[AlwaysInline]
    def uniform_3iv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform4f
    @[AlwaysInline]
    def uniform_4f
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform4fv
    @[AlwaysInline]
    def uniform_4fv
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform4i
    @[AlwaysInline]
    def uniform_4i
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
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

    # Proc type for the function glUseProgram
    @[AlwaysInline]
    def use_program
      ::Proc(LibGL::UInt, ::Void)
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

    # Proc type for the function glVertexAttribPointer
    @[AlwaysInline]
    def vertex_attrib_pointer
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glViewport
    @[AlwaysInline]
    def viewport
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end
  end
end
