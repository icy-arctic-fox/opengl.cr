module OpenGL
  module Procs
    extend self

    # `Proc` type for the OpenGL function *glActiveTexture*.
    @[AlwaysInline]
    def active_texture : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindBuffer*.
    @[AlwaysInline]
    def bind_buffer : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindFramebuffer*.
    @[AlwaysInline]
    def bind_framebuffer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindRenderbuffer*.
    @[AlwaysInline]
    def bind_renderbuffer : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindTexture*.
    @[AlwaysInline]
    def bind_texture : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
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

    # `Proc` type for the OpenGL function *glBlendEquationSeparate*.
    @[AlwaysInline]
    def blend_equation_separate : ::Proc.class
      ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFunc*.
    @[AlwaysInline]
    def blend_func : ::Proc.class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFuncSeparate*.
    @[AlwaysInline]
    def blend_func_separate : ::Proc.class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
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

    # `Proc` type for the OpenGL function *glCheckFramebufferStatus*.
    @[AlwaysInline]
    def check_framebuffer_status : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::Enum)
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

    # `Proc` type for the OpenGL function *glClearDepthf*.
    @[AlwaysInline]
    def clear_depth_f : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearStencil*.
    @[AlwaysInline]
    def clear_stencil : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorMask*.
    @[AlwaysInline]
    def color_mask : ::Proc.class
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexSubImage2D*.
    @[AlwaysInline]
    def compressed_tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCreateProgram*.
    @[AlwaysInline]
    def create_program : ::Proc.class
      ::Proc(LibGL::UInt)
    end

    # `Proc` type for the OpenGL function *glCullFace*.
    @[AlwaysInline]
    def cull_face : ::Proc.class
      ::Proc(LibGL::TriangleFace, ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthFunc*.
    @[AlwaysInline]
    def depth_func : ::Proc.class
      ::Proc(LibGL::DepthFunction, ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthMask*.
    @[AlwaysInline]
    def depth_mask : ::Proc.class
      ::Proc(LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glDepthRangef*.
    @[AlwaysInline]
    def depth_range_f : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisable*.
    @[AlwaysInline]
    def disable : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisableVertexAttribArray*.
    @[AlwaysInline]
    def disable_vertex_attrib_array : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawArrays*.
    @[AlwaysInline]
    def draw_arrays : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glDrawRangeElements*.
    @[AlwaysInline]
    def draw_range_elements : ::Proc.class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glEnable*.
    @[AlwaysInline]
    def enable : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glEnableVertexAttribArray*.
    @[AlwaysInline]
    def enable_vertex_attrib_array : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
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

    # `Proc` type for the OpenGL function *glFramebufferRenderbuffer*.
    @[AlwaysInline]
    def framebuffer_renderbuffer : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glFramebufferTexture2D*.
    @[AlwaysInline]
    def framebuffer_texture_2d : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glFrontFace*.
    @[AlwaysInline]
    def front_face : ::Proc.class
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # `Proc` type for the OpenGL function *glGenBuffers*.
    @[AlwaysInline]
    def gen_buffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenerateMipmap*.
    @[AlwaysInline]
    def generate_mipmap : ::Proc.class
      ::Proc(LibGL::TextureTarget, ::Void)
    end

    # `Proc` type for the OpenGL function *glGenFramebuffers*.
    @[AlwaysInline]
    def gen_framebuffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenRenderbuffers*.
    @[AlwaysInline]
    def gen_renderbuffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenTextures*.
    @[AlwaysInline]
    def gen_textures : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetAttribLocation*.
    @[AlwaysInline]
    def get_attrib_location : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # `Proc` type for the OpenGL function *glGetBooleanv*.
    @[AlwaysInline]
    def get_boolean_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetBufferParameteriv*.
    @[AlwaysInline]
    def get_buffer_parameter_iv : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void)
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

    # `Proc` type for the OpenGL function *glGetFramebufferAttachmentParameteriv*.
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv : ::Proc.class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetGraphicsResetStatus*.
    @[AlwaysInline]
    def get_graphics_reset_status : ::Proc.class
      ::Proc(LibGL::Enum)
    end

    # `Proc` type for the OpenGL function *glGetIntegerv*.
    @[AlwaysInline]
    def get_integer_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetProgramiv*.
    @[AlwaysInline]
    def get_program_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetRenderbufferParameteriv*.
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetString*.
    @[AlwaysInline]
    def get_string : ::Proc.class
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
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

    # `Proc` type for the OpenGL function *glGetnUniformfv*.
    @[AlwaysInline]
    def getn_uniform_fv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetnUniformiv*.
    @[AlwaysInline]
    def getn_uniform_iv : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetUniformLocation*.
    @[AlwaysInline]
    def get_uniform_location : ::Proc.class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
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

    # `Proc` type for the OpenGL function *glHint*.
    @[AlwaysInline]
    def hint : ::Proc.class
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glIsEnabled*.
    @[AlwaysInline]
    def is_enabled : ::Proc.class
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glLineWidth*.
    @[AlwaysInline]
    def line_width : ::Proc.class
      ::Proc(LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelStorei*.
    @[AlwaysInline]
    def pixel_store_i : ::Proc.class
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glPolygonOffset*.
    @[AlwaysInline]
    def polygon_offset : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glProgramBinary*.
    @[AlwaysInline]
    def program_binary : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glReadnPixels*.
    @[AlwaysInline]
    def readn_pixels : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glRenderbufferStorage*.
    @[AlwaysInline]
    def renderbuffer_storage : ::Proc.class
      ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glSampleCoverage*.
    @[AlwaysInline]
    def sample_coverage : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glScissor*.
    @[AlwaysInline]
    def scissor : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilFunc*.
    @[AlwaysInline]
    def stencil_func : ::Proc.class
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilFuncSeparate*.
    @[AlwaysInline]
    def stencil_func_separate : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilMask*.
    @[AlwaysInline]
    def stencil_mask : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilMaskSeparate*.
    @[AlwaysInline]
    def stencil_mask_separate : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilOp*.
    @[AlwaysInline]
    def stencil_op : ::Proc.class
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilOpSeparate*.
    @[AlwaysInline]
    def stencil_op_separate : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexStorage2D*.
    @[AlwaysInline]
    def tex_storage_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
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

    # `Proc` type for the OpenGL function *glTexSubImage2D*.
    @[AlwaysInline]
    def tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1f*.
    @[AlwaysInline]
    def uniform_1f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1fv*.
    @[AlwaysInline]
    def uniform_1fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1i*.
    @[AlwaysInline]
    def uniform_1i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform1iv*.
    @[AlwaysInline]
    def uniform_1iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2f*.
    @[AlwaysInline]
    def uniform_2f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2fv*.
    @[AlwaysInline]
    def uniform_2fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2i*.
    @[AlwaysInline]
    def uniform_2i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform2iv*.
    @[AlwaysInline]
    def uniform_2iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3f*.
    @[AlwaysInline]
    def uniform_3f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3fv*.
    @[AlwaysInline]
    def uniform_3fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3i*.
    @[AlwaysInline]
    def uniform_3i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform3iv*.
    @[AlwaysInline]
    def uniform_3iv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4f*.
    @[AlwaysInline]
    def uniform_4f : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4fv*.
    @[AlwaysInline]
    def uniform_4fv : ::Proc.class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # `Proc` type for the OpenGL function *glUniform4i*.
    @[AlwaysInline]
    def uniform_4i : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
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

    # `Proc` type for the OpenGL function *glUseProgram*.
    @[AlwaysInline]
    def use_program : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
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

    # `Proc` type for the OpenGL function *glVertexAttribPointer*.
    @[AlwaysInline]
    def vertex_attrib_pointer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glViewport*.
    @[AlwaysInline]
    def viewport : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end
  end
end
