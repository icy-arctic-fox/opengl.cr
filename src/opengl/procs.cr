module OpenGL
  module Procs
    extend self

    # Proc type for the function glActiveTexture
    @[AlwaysInline]
    def active_texture : ::Proc(LibGL::TextureUnit, ::Void).class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # Proc type for the function glActiveTexture
    @[AlwaysInline]
    def active_texture(address) : ::Proc(LibGL::TextureUnit, ::Void)
      self.active_texture.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindBuffer
    @[AlwaysInline]
    def bind_buffer : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindBuffer
    @[AlwaysInline]
    def bind_buffer(address) : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
      self.bind_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindFramebuffer
    @[AlwaysInline]
    def bind_framebuffer : ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindFramebuffer
    @[AlwaysInline]
    def bind_framebuffer(address) : ::Proc(LibGL::FramebufferTarget, LibGL::UInt, ::Void)
      self.bind_framebuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindRenderbuffer
    @[AlwaysInline]
    def bind_renderbuffer : ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindRenderbuffer
    @[AlwaysInline]
    def bind_renderbuffer(address) : ::Proc(LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
      self.bind_renderbuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindTexture
    @[AlwaysInline]
    def bind_texture : ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindTexture
    @[AlwaysInline]
    def bind_texture(address) : ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
      self.bind_texture.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendColor
    @[AlwaysInline]
    def blend_color : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glBlendColor
    @[AlwaysInline]
    def blend_color(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.blend_color.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendEquation
    @[AlwaysInline]
    def blend_equation : ::Proc(LibGL::BlendEquationModeEXT, ::Void).class
      ::Proc(LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendEquation
    @[AlwaysInline]
    def blend_equation(address) : ::Proc(LibGL::BlendEquationModeEXT, ::Void)
      self.blend_equation.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendEquationSeparate
    @[AlwaysInline]
    def blend_equation_separate : ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void).class
      ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendEquationSeparate
    @[AlwaysInline]
    def blend_equation_separate(address) : ::Proc(LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
      self.blend_equation_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendFunc
    @[AlwaysInline]
    def blend_func : ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void).class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glBlendFunc
    @[AlwaysInline]
    def blend_func(address) : ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
      self.blend_func.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendFuncSeparate
    @[AlwaysInline]
    def blend_func_separate : ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void).class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glBlendFuncSeparate
    @[AlwaysInline]
    def blend_func_separate(address) : ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
      self.blend_func_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBufferData
    @[AlwaysInline]
    def buffer_data : ::Proc(LibGL::BufferTargetARB, LibGL::SizeIPtr, ::Pointer(Void), LibGL::BufferUsageARB, ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::SizeIPtr, ::Pointer(Void), LibGL::BufferUsageARB, ::Void)
    end

    # Proc type for the function glBufferData
    @[AlwaysInline]
    def buffer_data(address) : ::Proc(LibGL::BufferTargetARB, LibGL::SizeIPtr, ::Pointer(Void), LibGL::BufferUsageARB, ::Void)
      self.buffer_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBufferSubData
    @[AlwaysInline]
    def buffer_sub_data : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glBufferSubData
    @[AlwaysInline]
    def buffer_sub_data(address) : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
      self.buffer_sub_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCheckFramebufferStatus
    @[AlwaysInline]
    def check_framebuffer_status : ::Proc(LibGL::FramebufferTarget, LibGL::Enum).class
      ::Proc(LibGL::FramebufferTarget, LibGL::Enum)
    end

    # Proc type for the function glCheckFramebufferStatus
    @[AlwaysInline]
    def check_framebuffer_status(address) : ::Proc(LibGL::FramebufferTarget, LibGL::Enum)
      self.check_framebuffer_status.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClear
    @[AlwaysInline]
    def clear : ::Proc(LibGL::ClearBufferMask, ::Void).class
      ::Proc(LibGL::ClearBufferMask, ::Void)
    end

    # Proc type for the function glClear
    @[AlwaysInline]
    def clear(address) : ::Proc(LibGL::ClearBufferMask, ::Void)
      self.clear.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearColor
    @[AlwaysInline]
    def clear_color : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glClearColor
    @[AlwaysInline]
    def clear_color(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.clear_color.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearDepthf
    @[AlwaysInline]
    def clear_depth_f : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glClearDepthf
    @[AlwaysInline]
    def clear_depth_f(address) : ::Proc(LibGL::Float, ::Void)
      self.clear_depth_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearStencil
    @[AlwaysInline]
    def clear_stencil : ::Proc(LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glClearStencil
    @[AlwaysInline]
    def clear_stencil(address) : ::Proc(LibGL::Int, ::Void)
      self.clear_stencil.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorMask
    @[AlwaysInline]
    def color_mask : ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glColorMask
    @[AlwaysInline]
    def color_mask(address) : ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
      self.color_mask.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCompressedTexSubImage2D
    @[AlwaysInline]
    def compressed_tex_sub_image_2d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage2D
    @[AlwaysInline]
    def compressed_tex_sub_image_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.compressed_tex_sub_image_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCreateProgram
    @[AlwaysInline]
    def create_program : ::Proc(LibGL::UInt).class
      ::Proc(LibGL::UInt)
    end

    # Proc type for the function glCreateProgram
    @[AlwaysInline]
    def create_program(address) : ::Proc(LibGL::UInt)
      self.create_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face : ::Proc(LibGL::CullFaceMode, ::Void).class
      ::Proc(LibGL::CullFaceMode, ::Void)
    end

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face(address) : ::Proc(LibGL::CullFaceMode, ::Void)
      self.cull_face.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDepthFunc
    @[AlwaysInline]
    def depth_func : ::Proc(LibGL::DepthFunction, ::Void).class
      ::Proc(LibGL::DepthFunction, ::Void)
    end

    # Proc type for the function glDepthFunc
    @[AlwaysInline]
    def depth_func(address) : ::Proc(LibGL::DepthFunction, ::Void)
      self.depth_func.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDepthMask
    @[AlwaysInline]
    def depth_mask : ::Proc(LibGL::Boolean, ::Void).class
      ::Proc(LibGL::Boolean, ::Void)
    end

    # Proc type for the function glDepthMask
    @[AlwaysInline]
    def depth_mask(address) : ::Proc(LibGL::Boolean, ::Void)
      self.depth_mask.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDepthRangef
    @[AlwaysInline]
    def depth_range_f : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glDepthRangef
    @[AlwaysInline]
    def depth_range_f(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.depth_range_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDisable
    @[AlwaysInline]
    def disable : ::Proc(LibGL::EnableCap, ::Void).class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glDisable
    @[AlwaysInline]
    def disable(address) : ::Proc(LibGL::EnableCap, ::Void)
      self.disable.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDisableVertexAttribArray
    @[AlwaysInline]
    def disable_vertex_attrib_array : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDisableVertexAttribArray
    @[AlwaysInline]
    def disable_vertex_attrib_array(address) : ::Proc(LibGL::UInt, ::Void)
      self.disable_vertex_attrib_array.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawArrays
    @[AlwaysInline]
    def draw_arrays : ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawArrays
    @[AlwaysInline]
    def draw_arrays(address) : ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, ::Void)
      self.draw_arrays.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawRangeElements
    @[AlwaysInline]
    def draw_range_elements : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawRangeElements
    @[AlwaysInline]
    def draw_range_elements(address) : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
      self.draw_range_elements.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEnable
    @[AlwaysInline]
    def enable : ::Proc(LibGL::EnableCap, ::Void).class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glEnable
    @[AlwaysInline]
    def enable(address) : ::Proc(LibGL::EnableCap, ::Void)
      self.enable.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEnableVertexAttribArray
    @[AlwaysInline]
    def enable_vertex_attrib_array : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glEnableVertexAttribArray
    @[AlwaysInline]
    def enable_vertex_attrib_array(address) : ::Proc(LibGL::UInt, ::Void)
      self.enable_vertex_attrib_array.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFinish
    @[AlwaysInline]
    def finish : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glFinish
    @[AlwaysInline]
    def finish(address) : ::Proc(::Void)
      self.finish.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFlush
    @[AlwaysInline]
    def flush : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glFlush
    @[AlwaysInline]
    def flush(address) : ::Proc(::Void)
      self.flush.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFramebufferRenderbuffer
    @[AlwaysInline]
    def framebuffer_renderbuffer : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glFramebufferRenderbuffer
    @[AlwaysInline]
    def framebuffer_renderbuffer(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::RenderbufferTarget, LibGL::UInt, ::Void)
      self.framebuffer_renderbuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFramebufferTexture2D
    @[AlwaysInline]
    def framebuffer_texture_2d : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTexture2D
    @[AlwaysInline]
    def framebuffer_texture_2d(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
      self.framebuffer_texture_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFrontFace
    @[AlwaysInline]
    def front_face : ::Proc(LibGL::FrontFaceDirection, ::Void).class
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # Proc type for the function glFrontFace
    @[AlwaysInline]
    def front_face(address) : ::Proc(LibGL::FrontFaceDirection, ::Void)
      self.front_face.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenBuffers
    @[AlwaysInline]
    def gen_buffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenBuffers
    @[AlwaysInline]
    def gen_buffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_buffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenerateMipmap
    @[AlwaysInline]
    def generate_mipmap : ::Proc(LibGL::TextureTarget, ::Void).class
      ::Proc(LibGL::TextureTarget, ::Void)
    end

    # Proc type for the function glGenerateMipmap
    @[AlwaysInline]
    def generate_mipmap(address) : ::Proc(LibGL::TextureTarget, ::Void)
      self.generate_mipmap.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenFramebuffers
    @[AlwaysInline]
    def gen_framebuffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenFramebuffers
    @[AlwaysInline]
    def gen_framebuffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_framebuffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenRenderbuffers
    @[AlwaysInline]
    def gen_renderbuffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenRenderbuffers
    @[AlwaysInline]
    def gen_renderbuffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_renderbuffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenTextures
    @[AlwaysInline]
    def gen_textures : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenTextures
    @[AlwaysInline]
    def gen_textures(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_textures.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetAttribLocation
    @[AlwaysInline]
    def get_attrib_location : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetAttribLocation
    @[AlwaysInline]
    def get_attrib_location(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_attrib_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetBooleanv
    @[AlwaysInline]
    def get_boolean_v : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void).class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glGetBooleanv
    @[AlwaysInline]
    def get_boolean_v(address) : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Boolean), ::Void)
      self.get_boolean_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetBufferParameteriv
    @[AlwaysInline]
    def get_buffer_parameter_iv : ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetBufferParameteriv
    @[AlwaysInline]
    def get_buffer_parameter_iv(address) : ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int), ::Void)
      self.get_buffer_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetError
    @[AlwaysInline]
    def get_error : ::Proc(LibGL::Enum).class
      ::Proc(LibGL::Enum)
    end

    # Proc type for the function glGetError
    @[AlwaysInline]
    def get_error(address) : ::Proc(LibGL::Enum)
      self.get_error.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetFloatv
    @[AlwaysInline]
    def get_float_v : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetFloatv
    @[AlwaysInline]
    def get_float_v(address) : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Float), ::Void)
      self.get_float_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetFramebufferAttachmentParameteriv
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetFramebufferAttachmentParameteriv
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_framebuffer_attachment_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetGraphicsResetStatus
    @[AlwaysInline]
    def get_graphics_reset_status : ::Proc(LibGL::Enum).class
      ::Proc(LibGL::Enum)
    end

    # Proc type for the function glGetGraphicsResetStatus
    @[AlwaysInline]
    def get_graphics_reset_status(address) : ::Proc(LibGL::Enum)
      self.get_graphics_reset_status.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetIntegerv
    @[AlwaysInline]
    def get_integer_v : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetIntegerv
    @[AlwaysInline]
    def get_integer_v(address) : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
      self.get_integer_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramiv
    @[AlwaysInline]
    def get_program_iv : ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramiv
    @[AlwaysInline]
    def get_program_iv(address) : ::Proc(LibGL::UInt, LibGL::ProgramPropertyARB, ::Pointer(LibGL::Int), ::Void)
      self.get_program_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetRenderbufferParameteriv
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv : ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetRenderbufferParameteriv
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv(address) : ::Proc(LibGL::RenderbufferTarget, LibGL::RenderbufferParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_renderbuffer_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetString
    @[AlwaysInline]
    def get_string : ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte)).class
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
    end

    # Proc type for the function glGetString
    @[AlwaysInline]
    def get_string(address) : ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
      self.get_string.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexParameterfv
    @[AlwaysInline]
    def get_tex_parameter_fv : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexParameterfv
    @[AlwaysInline]
    def get_tex_parameter_fv(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_tex_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexParameteriv
    @[AlwaysInline]
    def get_tex_parameter_iv : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexParameteriv
    @[AlwaysInline]
    def get_tex_parameter_iv(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_tex_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetnUniformfv
    @[AlwaysInline]
    def getn_uniform_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetnUniformfv
    @[AlwaysInline]
    def getn_uniform_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.getn_uniform_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetnUniformiv
    @[AlwaysInline]
    def getn_uniform_iv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetnUniformiv
    @[AlwaysInline]
    def getn_uniform_iv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.getn_uniform_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformLocation
    @[AlwaysInline]
    def get_uniform_location : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetUniformLocation
    @[AlwaysInline]
    def get_uniform_location(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_uniform_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribfv
    @[AlwaysInline]
    def get_vertex_attrib_fv : ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetVertexAttribfv
    @[AlwaysInline]
    def get_vertex_attrib_fv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Float), ::Void)
      self.get_vertex_attrib_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribiv
    @[AlwaysInline]
    def get_vertex_attrib_iv : ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetVertexAttribiv
    @[AlwaysInline]
    def get_vertex_attrib_iv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Int), ::Void)
      self.get_vertex_attrib_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribPointerv
    @[AlwaysInline]
    def get_vertex_attrib_pointer_v : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerPropertyARB, ::Pointer(Pointer(Void)), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerPropertyARB, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glGetVertexAttribPointerv
    @[AlwaysInline]
    def get_vertex_attrib_pointer_v(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerPropertyARB, ::Pointer(Pointer(Void)), ::Void)
      self.get_vertex_attrib_pointer_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glHint
    @[AlwaysInline]
    def hint : ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void).class
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # Proc type for the function glHint
    @[AlwaysInline]
    def hint(address) : ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
      self.hint.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsEnabled
    @[AlwaysInline]
    def is_enabled : ::Proc(LibGL::EnableCap, LibGL::Boolean).class
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # Proc type for the function glIsEnabled
    @[AlwaysInline]
    def is_enabled(address) : ::Proc(LibGL::EnableCap, LibGL::Boolean)
      self.is_enabled.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLineWidth
    @[AlwaysInline]
    def line_width : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glLineWidth
    @[AlwaysInline]
    def line_width(address) : ::Proc(LibGL::Float, ::Void)
      self.line_width.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelStorei
    @[AlwaysInline]
    def pixel_store_i : ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glPixelStorei
    @[AlwaysInline]
    def pixel_store_i(address) : ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
      self.pixel_store_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPolygonOffset
    @[AlwaysInline]
    def polygon_offset : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glPolygonOffset
    @[AlwaysInline]
    def polygon_offset(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.polygon_offset.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramBinary
    @[AlwaysInline]
    def program_binary : ::Proc(LibGL::UInt, LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glProgramBinary
    @[AlwaysInline]
    def program_binary(address) : ::Proc(LibGL::UInt, LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
      self.program_binary.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glReadnPixels
    @[AlwaysInline]
    def readn_pixels : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glReadnPixels
    @[AlwaysInline]
    def readn_pixels(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.readn_pixels.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRenderbufferStorage
    @[AlwaysInline]
    def renderbuffer_storage : ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glRenderbufferStorage
    @[AlwaysInline]
    def renderbuffer_storage(address) : ::Proc(LibGL::RenderbufferTarget, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.renderbuffer_storage.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSampleCoverage
    @[AlwaysInline]
    def sample_coverage : ::Proc(LibGL::Float, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glSampleCoverage
    @[AlwaysInline]
    def sample_coverage(address) : ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
      self.sample_coverage.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScissor
    @[AlwaysInline]
    def scissor : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glScissor
    @[AlwaysInline]
    def scissor(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.scissor.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilFunc
    @[AlwaysInline]
    def stencil_func : ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void).class
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilFunc
    @[AlwaysInline]
    def stencil_func(address) : ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
      self.stencil_func.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilFuncSeparate
    @[AlwaysInline]
    def stencil_func_separate : ::Proc(LibGL::StencilFaceDirection, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void).class
      ::Proc(LibGL::StencilFaceDirection, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilFuncSeparate
    @[AlwaysInline]
    def stencil_func_separate(address) : ::Proc(LibGL::StencilFaceDirection, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
      self.stencil_func_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilMask
    @[AlwaysInline]
    def stencil_mask : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMask
    @[AlwaysInline]
    def stencil_mask(address) : ::Proc(LibGL::UInt, ::Void)
      self.stencil_mask.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilMaskSeparate
    @[AlwaysInline]
    def stencil_mask_separate : ::Proc(LibGL::StencilFaceDirection, LibGL::UInt, ::Void).class
      ::Proc(LibGL::StencilFaceDirection, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMaskSeparate
    @[AlwaysInline]
    def stencil_mask_separate(address) : ::Proc(LibGL::StencilFaceDirection, LibGL::UInt, ::Void)
      self.stencil_mask_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilOp
    @[AlwaysInline]
    def stencil_op : ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void).class
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glStencilOp
    @[AlwaysInline]
    def stencil_op(address) : ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
      self.stencil_op.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilOpSeparate
    @[AlwaysInline]
    def stencil_op_separate : ::Proc(LibGL::StencilFaceDirection, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void).class
      ::Proc(LibGL::StencilFaceDirection, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glStencilOpSeparate
    @[AlwaysInline]
    def stencil_op_separate(address) : ::Proc(LibGL::StencilFaceDirection, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
      self.stencil_op_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexStorage2D
    @[AlwaysInline]
    def tex_storage_2d : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glTexStorage2D
    @[AlwaysInline]
    def tex_storage_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.tex_storage_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexParameterf
    @[AlwaysInline]
    def tex_parameter_f : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexParameterf
    @[AlwaysInline]
    def tex_parameter_f(address) : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Float, ::Void)
      self.tex_parameter_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexParameterfv
    @[AlwaysInline]
    def tex_parameter_fv : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexParameterfv
    @[AlwaysInline]
    def tex_parameter_fv(address) : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Float), ::Void)
      self.tex_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexParameteri
    @[AlwaysInline]
    def tex_parameter_i : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexParameteri
    @[AlwaysInline]
    def tex_parameter_i(address) : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void)
      self.tex_parameter_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexParameteriv
    @[AlwaysInline]
    def tex_parameter_iv : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexParameteriv
    @[AlwaysInline]
    def tex_parameter_iv(address) : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
      self.tex_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexSubImage2D
    @[AlwaysInline]
    def tex_sub_image_2d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexSubImage2D
    @[AlwaysInline]
    def tex_sub_image_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.tex_sub_image_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1f
    @[AlwaysInline]
    def uniform_1f : ::Proc(LibGL::Int, LibGL::Float, ::Void).class
      ::Proc(LibGL::Int, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform1f
    @[AlwaysInline]
    def uniform_1f(address) : ::Proc(LibGL::Int, LibGL::Float, ::Void)
      self.uniform_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1fv
    @[AlwaysInline]
    def uniform_1fv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform1fv
    @[AlwaysInline]
    def uniform_1fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.uniform_1fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1i
    @[AlwaysInline]
    def uniform_1i : ::Proc(LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform1i
    @[AlwaysInline]
    def uniform_1i(address) : ::Proc(LibGL::Int, LibGL::Int, ::Void)
      self.uniform_1i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1iv
    @[AlwaysInline]
    def uniform_1iv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform1iv
    @[AlwaysInline]
    def uniform_1iv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.uniform_1iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2f
    @[AlwaysInline]
    def uniform_2f : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform2f
    @[AlwaysInline]
    def uniform_2f(address) : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
      self.uniform_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2fv
    @[AlwaysInline]
    def uniform_2fv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform2fv
    @[AlwaysInline]
    def uniform_2fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.uniform_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2i
    @[AlwaysInline]
    def uniform_2i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform2i
    @[AlwaysInline]
    def uniform_2i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.uniform_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2iv
    @[AlwaysInline]
    def uniform_2iv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform2iv
    @[AlwaysInline]
    def uniform_2iv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.uniform_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3f
    @[AlwaysInline]
    def uniform_3f : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform3f
    @[AlwaysInline]
    def uniform_3f(address) : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.uniform_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3fv
    @[AlwaysInline]
    def uniform_3fv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform3fv
    @[AlwaysInline]
    def uniform_3fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.uniform_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3i
    @[AlwaysInline]
    def uniform_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform3i
    @[AlwaysInline]
    def uniform_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.uniform_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3iv
    @[AlwaysInline]
    def uniform_3iv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform3iv
    @[AlwaysInline]
    def uniform_3iv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.uniform_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4f
    @[AlwaysInline]
    def uniform_4f : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glUniform4f
    @[AlwaysInline]
    def uniform_4f(address) : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.uniform_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4fv
    @[AlwaysInline]
    def uniform_4fv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniform4fv
    @[AlwaysInline]
    def uniform_4fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.uniform_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4i
    @[AlwaysInline]
    def uniform_4i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glUniform4i
    @[AlwaysInline]
    def uniform_4i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.uniform_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4iv
    @[AlwaysInline]
    def uniform_4iv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glUniform4iv
    @[AlwaysInline]
    def uniform_4iv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.uniform_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix2fv
    @[AlwaysInline]
    def uniform_matrix2_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix2fv
    @[AlwaysInline]
    def uniform_matrix2_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix2_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix3fv
    @[AlwaysInline]
    def uniform_matrix3_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix3fv
    @[AlwaysInline]
    def uniform_matrix3_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix3_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix4fv
    @[AlwaysInline]
    def uniform_matrix4_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix4fv
    @[AlwaysInline]
    def uniform_matrix4_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix4_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUseProgram
    @[AlwaysInline]
    def use_program : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glUseProgram
    @[AlwaysInline]
    def use_program(address) : ::Proc(LibGL::UInt, ::Void)
      self.use_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib1f
    @[AlwaysInline]
    def vertex_attrib_1f : ::Proc(LibGL::UInt, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib1f
    @[AlwaysInline]
    def vertex_attrib_1f(address) : ::Proc(LibGL::UInt, LibGL::Float, ::Void)
      self.vertex_attrib_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib1fv
    @[AlwaysInline]
    def vertex_attrib_1fv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib1fv
    @[AlwaysInline]
    def vertex_attrib_1fv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.vertex_attrib_1fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib2f
    @[AlwaysInline]
    def vertex_attrib_2f : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib2f
    @[AlwaysInline]
    def vertex_attrib_2f(address) : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, ::Void)
      self.vertex_attrib_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib2fv
    @[AlwaysInline]
    def vertex_attrib_2fv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib2fv
    @[AlwaysInline]
    def vertex_attrib_2fv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.vertex_attrib_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib3f
    @[AlwaysInline]
    def vertex_attrib_3f : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib3f
    @[AlwaysInline]
    def vertex_attrib_3f(address) : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.vertex_attrib_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib3fv
    @[AlwaysInline]
    def vertex_attrib_3fv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib3fv
    @[AlwaysInline]
    def vertex_attrib_3fv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.vertex_attrib_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4f
    @[AlwaysInline]
    def vertex_attrib_4f : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertexAttrib4f
    @[AlwaysInline]
    def vertex_attrib_4f(address) : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.vertex_attrib_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4fv
    @[AlwaysInline]
    def vertex_attrib_4fv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertexAttrib4fv
    @[AlwaysInline]
    def vertex_attrib_4fv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.vertex_attrib_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribPointer
    @[AlwaysInline]
    def vertex_attrib_pointer : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glVertexAttribPointer
    @[AlwaysInline]
    def vertex_attrib_pointer(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.vertex_attrib_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glViewport
    @[AlwaysInline]
    def viewport : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glViewport
    @[AlwaysInline]
    def viewport(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.viewport.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end
  end
end
