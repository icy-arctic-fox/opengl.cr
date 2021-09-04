module OpenGL
  module Procs
    extend self

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

    # Proc type for the function glPointSize
    @[AlwaysInline]
    def point_size : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glPointSize
    @[AlwaysInline]
    def point_size(address) : ::Proc(LibGL::Float, ::Void)
      self.point_size.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPolygonMode
    @[AlwaysInline]
    def polygon_mode : ::Proc(LibGL::MaterialFace, LibGL::PolygonMode, ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::PolygonMode, ::Void)
    end

    # Proc type for the function glPolygonMode
    @[AlwaysInline]
    def polygon_mode(address) : ::Proc(LibGL::MaterialFace, LibGL::PolygonMode, ::Void)
      self.polygon_mode.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexImage1D
    @[AlwaysInline]
    def tex_image_1d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexImage1D
    @[AlwaysInline]
    def tex_image_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.tex_image_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexImage2D
    @[AlwaysInline]
    def tex_image_2d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexImage2D
    @[AlwaysInline]
    def tex_image_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.tex_image_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawBuffer
    @[AlwaysInline]
    def draw_buffer : ::Proc(LibGL::DrawBufferMode, ::Void).class
      ::Proc(LibGL::DrawBufferMode, ::Void)
    end

    # Proc type for the function glDrawBuffer
    @[AlwaysInline]
    def draw_buffer(address) : ::Proc(LibGL::DrawBufferMode, ::Void)
      self.draw_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glClearDepth
    @[AlwaysInline]
    def clear_depth : ::Proc(LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glClearDepth
    @[AlwaysInline]
    def clear_depth(address) : ::Proc(LibGL::Double, ::Void)
      self.clear_depth.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glLogicOp
    @[AlwaysInline]
    def logic_op : ::Proc(LibGL::LogicOp, ::Void).class
      ::Proc(LibGL::LogicOp, ::Void)
    end

    # Proc type for the function glLogicOp
    @[AlwaysInline]
    def logic_op(address) : ::Proc(LibGL::LogicOp, ::Void)
      self.logic_op.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glPixelStoref
    @[AlwaysInline]
    def pixel_store_f : ::Proc(LibGL::PixelStoreParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::PixelStoreParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelStoref
    @[AlwaysInline]
    def pixel_store_f(address) : ::Proc(LibGL::PixelStoreParameter, LibGL::Float, ::Void)
      self.pixel_store_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glReadBuffer
    @[AlwaysInline]
    def read_buffer : ::Proc(LibGL::ReadBufferMode, ::Void).class
      ::Proc(LibGL::ReadBufferMode, ::Void)
    end

    # Proc type for the function glReadBuffer
    @[AlwaysInline]
    def read_buffer(address) : ::Proc(LibGL::ReadBufferMode, ::Void)
      self.read_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glReadPixels
    @[AlwaysInline]
    def read_pixels : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glReadPixels
    @[AlwaysInline]
    def read_pixels(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.read_pixels.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetDoublev
    @[AlwaysInline]
    def get_double_v : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetDoublev
    @[AlwaysInline]
    def get_double_v(address) : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Double), ::Void)
      self.get_double_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetTexImage
    @[AlwaysInline]
    def get_tex_image : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetTexImage
    @[AlwaysInline]
    def get_tex_image(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.get_tex_image.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetTexLevelParameterfv
    @[AlwaysInline]
    def get_tex_level_parameter_fv : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexLevelParameterfv
    @[AlwaysInline]
    def get_tex_level_parameter_fv(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_tex_level_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexLevelParameteriv
    @[AlwaysInline]
    def get_tex_level_parameter_iv : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexLevelParameteriv
    @[AlwaysInline]
    def get_tex_level_parameter_iv(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_tex_level_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDepthRange
    @[AlwaysInline]
    def depth_range : ::Proc(LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glDepthRange
    @[AlwaysInline]
    def depth_range(address) : ::Proc(LibGL::Double, LibGL::Double, ::Void)
      self.depth_range.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glNewList
    @[AlwaysInline]
    def new_list : ::Proc(LibGL::UInt, LibGL::ListMode, ::Void).class
      ::Proc(LibGL::UInt, LibGL::ListMode, ::Void)
    end

    # Proc type for the function glNewList
    @[AlwaysInline]
    def new_list(address) : ::Proc(LibGL::UInt, LibGL::ListMode, ::Void)
      self.new_list.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEndList
    @[AlwaysInline]
    def end_list : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glEndList
    @[AlwaysInline]
    def end_list(address) : ::Proc(::Void)
      self.end_list.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCallList
    @[AlwaysInline]
    def call_list : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glCallList
    @[AlwaysInline]
    def call_list(address) : ::Proc(LibGL::UInt, ::Void)
      self.call_list.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCallLists
    @[AlwaysInline]
    def call_lists : ::Proc(LibGL::SizeI, LibGL::ListNameType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::SizeI, LibGL::ListNameType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCallLists
    @[AlwaysInline]
    def call_lists(address) : ::Proc(LibGL::SizeI, LibGL::ListNameType, ::Pointer(Void), ::Void)
      self.call_lists.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteLists
    @[AlwaysInline]
    def delete_lists : ::Proc(LibGL::UInt, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDeleteLists
    @[AlwaysInline]
    def delete_lists(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Void)
      self.delete_lists.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenLists
    @[AlwaysInline]
    def gen_lists : ::Proc(LibGL::SizeI, LibGL::UInt).class
      ::Proc(LibGL::SizeI, LibGL::UInt)
    end

    # Proc type for the function glGenLists
    @[AlwaysInline]
    def gen_lists(address) : ::Proc(LibGL::SizeI, LibGL::UInt)
      self.gen_lists.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glListBase
    @[AlwaysInline]
    def list_base : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glListBase
    @[AlwaysInline]
    def list_base(address) : ::Proc(LibGL::UInt, ::Void)
      self.list_base.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBegin
    @[AlwaysInline]
    def begin : ::Proc(LibGL::PrimitiveType, ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Void)
    end

    # Proc type for the function glBegin
    @[AlwaysInline]
    def begin(address) : ::Proc(LibGL::PrimitiveType, ::Void)
      self.begin.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBitmap
    @[AlwaysInline]
    def bitmap : ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Pointer(LibGL::UByte), ::Void).class
      ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glBitmap
    @[AlwaysInline]
    def bitmap(address) : ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Pointer(LibGL::UByte), ::Void)
      self.bitmap.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3b
    @[AlwaysInline]
    def color_3b : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void).class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glColor3b
    @[AlwaysInline]
    def color_3b(address) : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
      self.color_3b.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3bv
    @[AlwaysInline]
    def color_3bv : ::Proc(::Pointer(LibGL::Byte), ::Void).class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glColor3bv
    @[AlwaysInline]
    def color_3bv(address) : ::Proc(::Pointer(LibGL::Byte), ::Void)
      self.color_3bv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3d
    @[AlwaysInline]
    def color_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glColor3d
    @[AlwaysInline]
    def color_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.color_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3dv
    @[AlwaysInline]
    def color_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glColor3dv
    @[AlwaysInline]
    def color_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.color_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3f
    @[AlwaysInline]
    def color_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glColor3f
    @[AlwaysInline]
    def color_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.color_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3fv
    @[AlwaysInline]
    def color_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glColor3fv
    @[AlwaysInline]
    def color_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.color_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3i
    @[AlwaysInline]
    def color_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glColor3i
    @[AlwaysInline]
    def color_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.color_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3iv
    @[AlwaysInline]
    def color_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glColor3iv
    @[AlwaysInline]
    def color_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.color_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3s
    @[AlwaysInline]
    def color_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glColor3s
    @[AlwaysInline]
    def color_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.color_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3sv
    @[AlwaysInline]
    def color_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glColor3sv
    @[AlwaysInline]
    def color_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.color_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3ub
    @[AlwaysInline]
    def color_3ub : ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void).class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glColor3ub
    @[AlwaysInline]
    def color_3ub(address) : ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
      self.color_3ub.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3ubv
    @[AlwaysInline]
    def color_3ubv : ::Proc(::Pointer(LibGL::UByte), ::Void).class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glColor3ubv
    @[AlwaysInline]
    def color_3ubv(address) : ::Proc(::Pointer(LibGL::UByte), ::Void)
      self.color_3ubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3ui
    @[AlwaysInline]
    def color_3ui : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glColor3ui
    @[AlwaysInline]
    def color_3ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.color_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3uiv
    @[AlwaysInline]
    def color_3uiv : ::Proc(::Pointer(LibGL::UInt), ::Void).class
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glColor3uiv
    @[AlwaysInline]
    def color_3uiv(address) : ::Proc(::Pointer(LibGL::UInt), ::Void)
      self.color_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3us
    @[AlwaysInline]
    def color_3us : ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void).class
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # Proc type for the function glColor3us
    @[AlwaysInline]
    def color_3us(address) : ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
      self.color_3us.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor3usv
    @[AlwaysInline]
    def color_3usv : ::Proc(::Pointer(LibGL::UShort), ::Void).class
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glColor3usv
    @[AlwaysInline]
    def color_3usv(address) : ::Proc(::Pointer(LibGL::UShort), ::Void)
      self.color_3usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4b
    @[AlwaysInline]
    def color_4b : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void).class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glColor4b
    @[AlwaysInline]
    def color_4b(address) : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
      self.color_4b.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4bv
    @[AlwaysInline]
    def color_4bv : ::Proc(::Pointer(LibGL::Byte), ::Void).class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glColor4bv
    @[AlwaysInline]
    def color_4bv(address) : ::Proc(::Pointer(LibGL::Byte), ::Void)
      self.color_4bv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4d
    @[AlwaysInline]
    def color_4d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glColor4d
    @[AlwaysInline]
    def color_4d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.color_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4dv
    @[AlwaysInline]
    def color_4dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glColor4dv
    @[AlwaysInline]
    def color_4dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.color_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4f
    @[AlwaysInline]
    def color_4f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glColor4f
    @[AlwaysInline]
    def color_4f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.color_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4fv
    @[AlwaysInline]
    def color_4fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glColor4fv
    @[AlwaysInline]
    def color_4fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.color_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4i
    @[AlwaysInline]
    def color_4i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glColor4i
    @[AlwaysInline]
    def color_4i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.color_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4iv
    @[AlwaysInline]
    def color_4iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glColor4iv
    @[AlwaysInline]
    def color_4iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.color_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4s
    @[AlwaysInline]
    def color_4s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glColor4s
    @[AlwaysInline]
    def color_4s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.color_4s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4sv
    @[AlwaysInline]
    def color_4sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glColor4sv
    @[AlwaysInline]
    def color_4sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.color_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4ub
    @[AlwaysInline]
    def color_4ub : ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void).class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glColor4ub
    @[AlwaysInline]
    def color_4ub(address) : ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
      self.color_4ub.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4ubv
    @[AlwaysInline]
    def color_4ubv : ::Proc(::Pointer(LibGL::UByte), ::Void).class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glColor4ubv
    @[AlwaysInline]
    def color_4ubv(address) : ::Proc(::Pointer(LibGL::UByte), ::Void)
      self.color_4ubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4ui
    @[AlwaysInline]
    def color_4ui : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glColor4ui
    @[AlwaysInline]
    def color_4ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.color_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4uiv
    @[AlwaysInline]
    def color_4uiv : ::Proc(::Pointer(LibGL::UInt), ::Void).class
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glColor4uiv
    @[AlwaysInline]
    def color_4uiv(address) : ::Proc(::Pointer(LibGL::UInt), ::Void)
      self.color_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4us
    @[AlwaysInline]
    def color_4us : ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void).class
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # Proc type for the function glColor4us
    @[AlwaysInline]
    def color_4us(address) : ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
      self.color_4us.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColor4usv
    @[AlwaysInline]
    def color_4usv : ::Proc(::Pointer(LibGL::UShort), ::Void).class
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glColor4usv
    @[AlwaysInline]
    def color_4usv(address) : ::Proc(::Pointer(LibGL::UShort), ::Void)
      self.color_4usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEdgeFlag
    @[AlwaysInline]
    def edge_flag : ::Proc(LibGL::Boolean, ::Void).class
      ::Proc(LibGL::Boolean, ::Void)
    end

    # Proc type for the function glEdgeFlag
    @[AlwaysInline]
    def edge_flag(address) : ::Proc(LibGL::Boolean, ::Void)
      self.edge_flag.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEdgeFlagv
    @[AlwaysInline]
    def edge_flag_v : ::Proc(::Pointer(LibGL::Boolean), ::Void).class
      ::Proc(::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glEdgeFlagv
    @[AlwaysInline]
    def edge_flag_v(address) : ::Proc(::Pointer(LibGL::Boolean), ::Void)
      self.edge_flag_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEnd
    @[AlwaysInline]
    def end : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glEnd
    @[AlwaysInline]
    def end(address) : ::Proc(::Void)
      self.end.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexd
    @[AlwaysInline]
    def index_d : ::Proc(LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glIndexd
    @[AlwaysInline]
    def index_d(address) : ::Proc(LibGL::Double, ::Void)
      self.index_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexdv
    @[AlwaysInline]
    def index_dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glIndexdv
    @[AlwaysInline]
    def index_dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.index_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexf
    @[AlwaysInline]
    def index_f : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glIndexf
    @[AlwaysInline]
    def index_f(address) : ::Proc(LibGL::Float, ::Void)
      self.index_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexfv
    @[AlwaysInline]
    def index_fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glIndexfv
    @[AlwaysInline]
    def index_fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.index_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexi
    @[AlwaysInline]
    def index_i : ::Proc(LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glIndexi
    @[AlwaysInline]
    def index_i(address) : ::Proc(LibGL::Int, ::Void)
      self.index_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexiv
    @[AlwaysInline]
    def index_iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glIndexiv
    @[AlwaysInline]
    def index_iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.index_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexs
    @[AlwaysInline]
    def index_s : ::Proc(LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, ::Void)
    end

    # Proc type for the function glIndexs
    @[AlwaysInline]
    def index_s(address) : ::Proc(LibGL::Short, ::Void)
      self.index_s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexsv
    @[AlwaysInline]
    def index_sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glIndexsv
    @[AlwaysInline]
    def index_sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.index_sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3b
    @[AlwaysInline]
    def normal_3b : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void).class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glNormal3b
    @[AlwaysInline]
    def normal_3b(address) : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
      self.normal_3b.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3bv
    @[AlwaysInline]
    def normal_3bv : ::Proc(::Pointer(LibGL::Byte), ::Void).class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glNormal3bv
    @[AlwaysInline]
    def normal_3bv(address) : ::Proc(::Pointer(LibGL::Byte), ::Void)
      self.normal_3bv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3d
    @[AlwaysInline]
    def normal_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glNormal3d
    @[AlwaysInline]
    def normal_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.normal_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3dv
    @[AlwaysInline]
    def normal_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glNormal3dv
    @[AlwaysInline]
    def normal_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.normal_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3f
    @[AlwaysInline]
    def normal_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glNormal3f
    @[AlwaysInline]
    def normal_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.normal_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3fv
    @[AlwaysInline]
    def normal_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glNormal3fv
    @[AlwaysInline]
    def normal_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.normal_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3i
    @[AlwaysInline]
    def normal_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glNormal3i
    @[AlwaysInline]
    def normal_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.normal_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3iv
    @[AlwaysInline]
    def normal_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glNormal3iv
    @[AlwaysInline]
    def normal_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.normal_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3s
    @[AlwaysInline]
    def normal_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glNormal3s
    @[AlwaysInline]
    def normal_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.normal_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3sv
    @[AlwaysInline]
    def normal_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glNormal3sv
    @[AlwaysInline]
    def normal_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.normal_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2d
    @[AlwaysInline]
    def raster_pos_2d : ::Proc(LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRasterPos2d
    @[AlwaysInline]
    def raster_pos_2d(address) : ::Proc(LibGL::Double, LibGL::Double, ::Void)
      self.raster_pos_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2dv
    @[AlwaysInline]
    def raster_pos_2dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRasterPos2dv
    @[AlwaysInline]
    def raster_pos_2dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.raster_pos_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2f
    @[AlwaysInline]
    def raster_pos_2f : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRasterPos2f
    @[AlwaysInline]
    def raster_pos_2f(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.raster_pos_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2fv
    @[AlwaysInline]
    def raster_pos_2fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRasterPos2fv
    @[AlwaysInline]
    def raster_pos_2fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.raster_pos_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2i
    @[AlwaysInline]
    def raster_pos_2i : ::Proc(LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRasterPos2i
    @[AlwaysInline]
    def raster_pos_2i(address) : ::Proc(LibGL::Int, LibGL::Int, ::Void)
      self.raster_pos_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2iv
    @[AlwaysInline]
    def raster_pos_2iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRasterPos2iv
    @[AlwaysInline]
    def raster_pos_2iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.raster_pos_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2s
    @[AlwaysInline]
    def raster_pos_2s : ::Proc(LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRasterPos2s
    @[AlwaysInline]
    def raster_pos_2s(address) : ::Proc(LibGL::Short, LibGL::Short, ::Void)
      self.raster_pos_2s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos2sv
    @[AlwaysInline]
    def raster_pos_2sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRasterPos2sv
    @[AlwaysInline]
    def raster_pos_2sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.raster_pos_2sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3d
    @[AlwaysInline]
    def raster_pos_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRasterPos3d
    @[AlwaysInline]
    def raster_pos_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.raster_pos_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3dv
    @[AlwaysInline]
    def raster_pos_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRasterPos3dv
    @[AlwaysInline]
    def raster_pos_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.raster_pos_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3f
    @[AlwaysInline]
    def raster_pos_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRasterPos3f
    @[AlwaysInline]
    def raster_pos_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.raster_pos_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3fv
    @[AlwaysInline]
    def raster_pos_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRasterPos3fv
    @[AlwaysInline]
    def raster_pos_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.raster_pos_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3i
    @[AlwaysInline]
    def raster_pos_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRasterPos3i
    @[AlwaysInline]
    def raster_pos_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.raster_pos_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3iv
    @[AlwaysInline]
    def raster_pos_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRasterPos3iv
    @[AlwaysInline]
    def raster_pos_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.raster_pos_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3s
    @[AlwaysInline]
    def raster_pos_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRasterPos3s
    @[AlwaysInline]
    def raster_pos_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.raster_pos_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos3sv
    @[AlwaysInline]
    def raster_pos_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRasterPos3sv
    @[AlwaysInline]
    def raster_pos_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.raster_pos_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4d
    @[AlwaysInline]
    def raster_pos_4d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRasterPos4d
    @[AlwaysInline]
    def raster_pos_4d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.raster_pos_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4dv
    @[AlwaysInline]
    def raster_pos_4dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRasterPos4dv
    @[AlwaysInline]
    def raster_pos_4dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.raster_pos_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4f
    @[AlwaysInline]
    def raster_pos_4f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRasterPos4f
    @[AlwaysInline]
    def raster_pos_4f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.raster_pos_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4fv
    @[AlwaysInline]
    def raster_pos_4fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRasterPos4fv
    @[AlwaysInline]
    def raster_pos_4fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.raster_pos_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4i
    @[AlwaysInline]
    def raster_pos_4i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRasterPos4i
    @[AlwaysInline]
    def raster_pos_4i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.raster_pos_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4iv
    @[AlwaysInline]
    def raster_pos_4iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRasterPos4iv
    @[AlwaysInline]
    def raster_pos_4iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.raster_pos_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4s
    @[AlwaysInline]
    def raster_pos_4s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRasterPos4s
    @[AlwaysInline]
    def raster_pos_4s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.raster_pos_4s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRasterPos4sv
    @[AlwaysInline]
    def raster_pos_4sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRasterPos4sv
    @[AlwaysInline]
    def raster_pos_4sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.raster_pos_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRectd
    @[AlwaysInline]
    def rect_d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRectd
    @[AlwaysInline]
    def rect_d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.rect_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRectdv
    @[AlwaysInline]
    def rect_dv : ::Proc(::Pointer(LibGL::Double), ::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glRectdv
    @[AlwaysInline]
    def rect_dv(address) : ::Proc(::Pointer(LibGL::Double), ::Pointer(LibGL::Double), ::Void)
      self.rect_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRectf
    @[AlwaysInline]
    def rect_f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRectf
    @[AlwaysInline]
    def rect_f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.rect_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRectfv
    @[AlwaysInline]
    def rect_fv : ::Proc(::Pointer(LibGL::Float), ::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glRectfv
    @[AlwaysInline]
    def rect_fv(address) : ::Proc(::Pointer(LibGL::Float), ::Pointer(LibGL::Float), ::Void)
      self.rect_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRecti
    @[AlwaysInline]
    def rect_i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glRecti
    @[AlwaysInline]
    def rect_i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.rect_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRectiv
    @[AlwaysInline]
    def rect_iv : ::Proc(::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glRectiv
    @[AlwaysInline]
    def rect_iv(address) : ::Proc(::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
      self.rect_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRects
    @[AlwaysInline]
    def rect_s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glRects
    @[AlwaysInline]
    def rect_s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.rect_s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRectsv
    @[AlwaysInline]
    def rect_sv : ::Proc(::Pointer(LibGL::Short), ::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glRectsv
    @[AlwaysInline]
    def rect_sv(address) : ::Proc(::Pointer(LibGL::Short), ::Pointer(LibGL::Short), ::Void)
      self.rect_sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1d
    @[AlwaysInline]
    def tex_coord_1d : ::Proc(LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord1d
    @[AlwaysInline]
    def tex_coord_1d(address) : ::Proc(LibGL::Double, ::Void)
      self.tex_coord_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1dv
    @[AlwaysInline]
    def tex_coord_1dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord1dv
    @[AlwaysInline]
    def tex_coord_1dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.tex_coord_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1f
    @[AlwaysInline]
    def tex_coord_1f : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord1f
    @[AlwaysInline]
    def tex_coord_1f(address) : ::Proc(LibGL::Float, ::Void)
      self.tex_coord_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1fv
    @[AlwaysInline]
    def tex_coord_1fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord1fv
    @[AlwaysInline]
    def tex_coord_1fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.tex_coord_1fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1i
    @[AlwaysInline]
    def tex_coord_1i : ::Proc(LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord1i
    @[AlwaysInline]
    def tex_coord_1i(address) : ::Proc(LibGL::Int, ::Void)
      self.tex_coord_1i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1iv
    @[AlwaysInline]
    def tex_coord_1iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord1iv
    @[AlwaysInline]
    def tex_coord_1iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.tex_coord_1iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1s
    @[AlwaysInline]
    def tex_coord_1s : ::Proc(LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord1s
    @[AlwaysInline]
    def tex_coord_1s(address) : ::Proc(LibGL::Short, ::Void)
      self.tex_coord_1s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord1sv
    @[AlwaysInline]
    def tex_coord_1sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord1sv
    @[AlwaysInline]
    def tex_coord_1sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.tex_coord_1sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2d
    @[AlwaysInline]
    def tex_coord_2d : ::Proc(LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord2d
    @[AlwaysInline]
    def tex_coord_2d(address) : ::Proc(LibGL::Double, LibGL::Double, ::Void)
      self.tex_coord_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2dv
    @[AlwaysInline]
    def tex_coord_2dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord2dv
    @[AlwaysInline]
    def tex_coord_2dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.tex_coord_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2f
    @[AlwaysInline]
    def tex_coord_2f : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord2f
    @[AlwaysInline]
    def tex_coord_2f(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.tex_coord_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2fv
    @[AlwaysInline]
    def tex_coord_2fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord2fv
    @[AlwaysInline]
    def tex_coord_2fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.tex_coord_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2i
    @[AlwaysInline]
    def tex_coord_2i : ::Proc(LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord2i
    @[AlwaysInline]
    def tex_coord_2i(address) : ::Proc(LibGL::Int, LibGL::Int, ::Void)
      self.tex_coord_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2iv
    @[AlwaysInline]
    def tex_coord_2iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord2iv
    @[AlwaysInline]
    def tex_coord_2iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.tex_coord_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2s
    @[AlwaysInline]
    def tex_coord_2s : ::Proc(LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord2s
    @[AlwaysInline]
    def tex_coord_2s(address) : ::Proc(LibGL::Short, LibGL::Short, ::Void)
      self.tex_coord_2s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord2sv
    @[AlwaysInline]
    def tex_coord_2sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord2sv
    @[AlwaysInline]
    def tex_coord_2sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.tex_coord_2sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3d
    @[AlwaysInline]
    def tex_coord_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord3d
    @[AlwaysInline]
    def tex_coord_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.tex_coord_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3dv
    @[AlwaysInline]
    def tex_coord_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord3dv
    @[AlwaysInline]
    def tex_coord_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.tex_coord_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3f
    @[AlwaysInline]
    def tex_coord_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord3f
    @[AlwaysInline]
    def tex_coord_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.tex_coord_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3fv
    @[AlwaysInline]
    def tex_coord_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord3fv
    @[AlwaysInline]
    def tex_coord_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.tex_coord_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3i
    @[AlwaysInline]
    def tex_coord_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord3i
    @[AlwaysInline]
    def tex_coord_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.tex_coord_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3iv
    @[AlwaysInline]
    def tex_coord_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord3iv
    @[AlwaysInline]
    def tex_coord_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.tex_coord_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3s
    @[AlwaysInline]
    def tex_coord_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord3s
    @[AlwaysInline]
    def tex_coord_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.tex_coord_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord3sv
    @[AlwaysInline]
    def tex_coord_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord3sv
    @[AlwaysInline]
    def tex_coord_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.tex_coord_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4d
    @[AlwaysInline]
    def tex_coord_4d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexCoord4d
    @[AlwaysInline]
    def tex_coord_4d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.tex_coord_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4dv
    @[AlwaysInline]
    def tex_coord_4dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexCoord4dv
    @[AlwaysInline]
    def tex_coord_4dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.tex_coord_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4f
    @[AlwaysInline]
    def tex_coord_4f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexCoord4f
    @[AlwaysInline]
    def tex_coord_4f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.tex_coord_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4fv
    @[AlwaysInline]
    def tex_coord_4fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexCoord4fv
    @[AlwaysInline]
    def tex_coord_4fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.tex_coord_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4i
    @[AlwaysInline]
    def tex_coord_4i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexCoord4i
    @[AlwaysInline]
    def tex_coord_4i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.tex_coord_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4iv
    @[AlwaysInline]
    def tex_coord_4iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexCoord4iv
    @[AlwaysInline]
    def tex_coord_4iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.tex_coord_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4s
    @[AlwaysInline]
    def tex_coord_4s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glTexCoord4s
    @[AlwaysInline]
    def tex_coord_4s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.tex_coord_4s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoord4sv
    @[AlwaysInline]
    def tex_coord_4sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glTexCoord4sv
    @[AlwaysInline]
    def tex_coord_4sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.tex_coord_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2d
    @[AlwaysInline]
    def vertex_2d : ::Proc(LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertex2d
    @[AlwaysInline]
    def vertex_2d(address) : ::Proc(LibGL::Double, LibGL::Double, ::Void)
      self.vertex_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2dv
    @[AlwaysInline]
    def vertex_2dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertex2dv
    @[AlwaysInline]
    def vertex_2dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.vertex_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2f
    @[AlwaysInline]
    def vertex_2f : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertex2f
    @[AlwaysInline]
    def vertex_2f(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.vertex_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2fv
    @[AlwaysInline]
    def vertex_2fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertex2fv
    @[AlwaysInline]
    def vertex_2fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.vertex_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2i
    @[AlwaysInline]
    def vertex_2i : ::Proc(LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertex2i
    @[AlwaysInline]
    def vertex_2i(address) : ::Proc(LibGL::Int, LibGL::Int, ::Void)
      self.vertex_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2iv
    @[AlwaysInline]
    def vertex_2iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertex2iv
    @[AlwaysInline]
    def vertex_2iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.vertex_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2s
    @[AlwaysInline]
    def vertex_2s : ::Proc(LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertex2s
    @[AlwaysInline]
    def vertex_2s(address) : ::Proc(LibGL::Short, LibGL::Short, ::Void)
      self.vertex_2s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex2sv
    @[AlwaysInline]
    def vertex_2sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertex2sv
    @[AlwaysInline]
    def vertex_2sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.vertex_2sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3d
    @[AlwaysInline]
    def vertex_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertex3d
    @[AlwaysInline]
    def vertex_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3dv
    @[AlwaysInline]
    def vertex_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertex3dv
    @[AlwaysInline]
    def vertex_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.vertex_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3f
    @[AlwaysInline]
    def vertex_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertex3f
    @[AlwaysInline]
    def vertex_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.vertex_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3fv
    @[AlwaysInline]
    def vertex_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertex3fv
    @[AlwaysInline]
    def vertex_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.vertex_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3i
    @[AlwaysInline]
    def vertex_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertex3i
    @[AlwaysInline]
    def vertex_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.vertex_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3iv
    @[AlwaysInline]
    def vertex_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertex3iv
    @[AlwaysInline]
    def vertex_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.vertex_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3s
    @[AlwaysInline]
    def vertex_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertex3s
    @[AlwaysInline]
    def vertex_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.vertex_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex3sv
    @[AlwaysInline]
    def vertex_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertex3sv
    @[AlwaysInline]
    def vertex_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.vertex_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4d
    @[AlwaysInline]
    def vertex_4d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertex4d
    @[AlwaysInline]
    def vertex_4d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4dv
    @[AlwaysInline]
    def vertex_4dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertex4dv
    @[AlwaysInline]
    def vertex_4dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.vertex_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4f
    @[AlwaysInline]
    def vertex_4f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glVertex4f
    @[AlwaysInline]
    def vertex_4f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.vertex_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4fv
    @[AlwaysInline]
    def vertex_4fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glVertex4fv
    @[AlwaysInline]
    def vertex_4fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.vertex_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4i
    @[AlwaysInline]
    def vertex_4i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertex4i
    @[AlwaysInline]
    def vertex_4i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.vertex_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4iv
    @[AlwaysInline]
    def vertex_4iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertex4iv
    @[AlwaysInline]
    def vertex_4iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.vertex_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4s
    @[AlwaysInline]
    def vertex_4s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertex4s
    @[AlwaysInline]
    def vertex_4s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.vertex_4s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertex4sv
    @[AlwaysInline]
    def vertex_4sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertex4sv
    @[AlwaysInline]
    def vertex_4sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.vertex_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClipPlane
    @[AlwaysInline]
    def clip_plane : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glClipPlane
    @[AlwaysInline]
    def clip_plane(address) : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
      self.clip_plane.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorMaterial
    @[AlwaysInline]
    def color_material : ::Proc(LibGL::MaterialFace, LibGL::ColorMaterialParameter, ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::ColorMaterialParameter, ::Void)
    end

    # Proc type for the function glColorMaterial
    @[AlwaysInline]
    def color_material(address) : ::Proc(LibGL::MaterialFace, LibGL::ColorMaterialParameter, ::Void)
      self.color_material.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogf
    @[AlwaysInline]
    def fog_f : ::Proc(LibGL::FogParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::FogParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glFogf
    @[AlwaysInline]
    def fog_f(address) : ::Proc(LibGL::FogParameter, LibGL::Float, ::Void)
      self.fog_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogfv
    @[AlwaysInline]
    def fog_fv : ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glFogfv
    @[AlwaysInline]
    def fog_fv(address) : ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Float), ::Void)
      self.fog_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogi
    @[AlwaysInline]
    def fog_i : ::Proc(LibGL::FogParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::FogParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glFogi
    @[AlwaysInline]
    def fog_i(address) : ::Proc(LibGL::FogParameter, LibGL::Int, ::Void)
      self.fog_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogiv
    @[AlwaysInline]
    def fog_iv : ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glFogiv
    @[AlwaysInline]
    def fog_iv(address) : ::Proc(LibGL::FogParameter, ::Pointer(LibGL::Int), ::Void)
      self.fog_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightf
    @[AlwaysInline]
    def light_f : ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glLightf
    @[AlwaysInline]
    def light_f(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Float, ::Void)
      self.light_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightfv
    @[AlwaysInline]
    def light_fv : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLightfv
    @[AlwaysInline]
    def light_fv(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
      self.light_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLighti
    @[AlwaysInline]
    def light_i : ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glLighti
    @[AlwaysInline]
    def light_i(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Int, ::Void)
      self.light_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightiv
    @[AlwaysInline]
    def light_iv : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glLightiv
    @[AlwaysInline]
    def light_iv(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
      self.light_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightModelf
    @[AlwaysInline]
    def light_model_f : ::Proc(LibGL::LightModelParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::LightModelParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glLightModelf
    @[AlwaysInline]
    def light_model_f(address) : ::Proc(LibGL::LightModelParameter, LibGL::Float, ::Void)
      self.light_model_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightModelfv
    @[AlwaysInline]
    def light_model_fv : ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLightModelfv
    @[AlwaysInline]
    def light_model_fv(address) : ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Float), ::Void)
      self.light_model_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightModeli
    @[AlwaysInline]
    def light_model_i : ::Proc(LibGL::LightModelParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::LightModelParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glLightModeli
    @[AlwaysInline]
    def light_model_i(address) : ::Proc(LibGL::LightModelParameter, LibGL::Int, ::Void)
      self.light_model_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightModeliv
    @[AlwaysInline]
    def light_model_iv : ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glLightModeliv
    @[AlwaysInline]
    def light_model_iv(address) : ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Int), ::Void)
      self.light_model_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLineStipple
    @[AlwaysInline]
    def line_stipple : ::Proc(LibGL::Int, LibGL::UShort, ::Void).class
      ::Proc(LibGL::Int, LibGL::UShort, ::Void)
    end

    # Proc type for the function glLineStipple
    @[AlwaysInline]
    def line_stipple(address) : ::Proc(LibGL::Int, LibGL::UShort, ::Void)
      self.line_stipple.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMaterialf
    @[AlwaysInline]
    def material_f : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glMaterialf
    @[AlwaysInline]
    def material_f(address) : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Float, ::Void)
      self.material_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMaterialfv
    @[AlwaysInline]
    def material_fv : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMaterialfv
    @[AlwaysInline]
    def material_fv(address) : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
      self.material_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMateriali
    @[AlwaysInline]
    def material_i : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glMateriali
    @[AlwaysInline]
    def material_i(address) : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Int, ::Void)
      self.material_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMaterialiv
    @[AlwaysInline]
    def material_iv : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMaterialiv
    @[AlwaysInline]
    def material_iv(address) : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
      self.material_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPolygonStipple
    @[AlwaysInline]
    def polygon_stipple : ::Proc(::Pointer(LibGL::UByte), ::Void).class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glPolygonStipple
    @[AlwaysInline]
    def polygon_stipple(address) : ::Proc(::Pointer(LibGL::UByte), ::Void)
      self.polygon_stipple.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glShadeModel
    @[AlwaysInline]
    def shade_model : ::Proc(LibGL::ShadingModel, ::Void).class
      ::Proc(LibGL::ShadingModel, ::Void)
    end

    # Proc type for the function glShadeModel
    @[AlwaysInline]
    def shade_model(address) : ::Proc(LibGL::ShadingModel, ::Void)
      self.shade_model.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexEnvf
    @[AlwaysInline]
    def tex_env_f : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexEnvf
    @[AlwaysInline]
    def tex_env_f(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Float, ::Void)
      self.tex_env_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexEnvfv
    @[AlwaysInline]
    def tex_env_fv : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexEnvfv
    @[AlwaysInline]
    def tex_env_fv(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
      self.tex_env_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexEnvi
    @[AlwaysInline]
    def tex_env_i : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexEnvi
    @[AlwaysInline]
    def tex_env_i(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void)
      self.tex_env_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexEnviv
    @[AlwaysInline]
    def tex_env_iv : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexEnviv
    @[AlwaysInline]
    def tex_env_iv(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
      self.tex_env_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexGend
    @[AlwaysInline]
    def tex_gen_d : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Double, ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Double, ::Void)
    end

    # Proc type for the function glTexGend
    @[AlwaysInline]
    def tex_gen_d(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Double, ::Void)
      self.tex_gen_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexGendv
    @[AlwaysInline]
    def tex_gen_dv : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glTexGendv
    @[AlwaysInline]
    def tex_gen_dv(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
      self.tex_gen_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexGenf
    @[AlwaysInline]
    def tex_gen_f : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glTexGenf
    @[AlwaysInline]
    def tex_gen_f(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Float, ::Void)
      self.tex_gen_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexGenfv
    @[AlwaysInline]
    def tex_gen_fv : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glTexGenfv
    @[AlwaysInline]
    def tex_gen_fv(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
      self.tex_gen_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexGeni
    @[AlwaysInline]
    def tex_gen_i : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexGeni
    @[AlwaysInline]
    def tex_gen_i(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, LibGL::Int, ::Void)
      self.tex_gen_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexGeniv
    @[AlwaysInline]
    def tex_gen_iv : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexGeniv
    @[AlwaysInline]
    def tex_gen_iv(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
      self.tex_gen_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFeedbackBuffer
    @[AlwaysInline]
    def feedback_buffer : ::Proc(LibGL::SizeI, LibGL::FeedbackType, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::SizeI, LibGL::FeedbackType, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glFeedbackBuffer
    @[AlwaysInline]
    def feedback_buffer(address) : ::Proc(LibGL::SizeI, LibGL::FeedbackType, ::Pointer(LibGL::Float), ::Void)
      self.feedback_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSelectBuffer
    @[AlwaysInline]
    def select_buffer : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glSelectBuffer
    @[AlwaysInline]
    def select_buffer(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.select_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRenderMode
    @[AlwaysInline]
    def render_mode : ::Proc(LibGL::RenderingMode, LibGL::Int).class
      ::Proc(LibGL::RenderingMode, LibGL::Int)
    end

    # Proc type for the function glRenderMode
    @[AlwaysInline]
    def render_mode(address) : ::Proc(LibGL::RenderingMode, LibGL::Int)
      self.render_mode.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInitNames
    @[AlwaysInline]
    def init_names : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glInitNames
    @[AlwaysInline]
    def init_names(address) : ::Proc(::Void)
      self.init_names.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLoadName
    @[AlwaysInline]
    def load_name : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glLoadName
    @[AlwaysInline]
    def load_name(address) : ::Proc(LibGL::UInt, ::Void)
      self.load_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPassThrough
    @[AlwaysInline]
    def pass_through : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glPassThrough
    @[AlwaysInline]
    def pass_through(address) : ::Proc(LibGL::Float, ::Void)
      self.pass_through.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPopName
    @[AlwaysInline]
    def pop_name : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPopName
    @[AlwaysInline]
    def pop_name(address) : ::Proc(::Void)
      self.pop_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPushName
    @[AlwaysInline]
    def push_name : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glPushName
    @[AlwaysInline]
    def push_name(address) : ::Proc(LibGL::UInt, ::Void)
      self.push_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearAccum
    @[AlwaysInline]
    def clear_accum : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glClearAccum
    @[AlwaysInline]
    def clear_accum(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.clear_accum.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearIndex
    @[AlwaysInline]
    def clear_index : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glClearIndex
    @[AlwaysInline]
    def clear_index(address) : ::Proc(LibGL::Float, ::Void)
      self.clear_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexMask
    @[AlwaysInline]
    def index_mask : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glIndexMask
    @[AlwaysInline]
    def index_mask(address) : ::Proc(LibGL::UInt, ::Void)
      self.index_mask.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glAccum
    @[AlwaysInline]
    def accum : ::Proc(LibGL::AccumOp, LibGL::Float, ::Void).class
      ::Proc(LibGL::AccumOp, LibGL::Float, ::Void)
    end

    # Proc type for the function glAccum
    @[AlwaysInline]
    def accum(address) : ::Proc(LibGL::AccumOp, LibGL::Float, ::Void)
      self.accum.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPopAttrib
    @[AlwaysInline]
    def pop_attrib : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPopAttrib
    @[AlwaysInline]
    def pop_attrib(address) : ::Proc(::Void)
      self.pop_attrib.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPushAttrib
    @[AlwaysInline]
    def push_attrib : ::Proc(LibGL::AttribMask, ::Void).class
      ::Proc(LibGL::AttribMask, ::Void)
    end

    # Proc type for the function glPushAttrib
    @[AlwaysInline]
    def push_attrib(address) : ::Proc(LibGL::AttribMask, ::Void)
      self.push_attrib.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMap1d
    @[AlwaysInline]
    def map_1d : ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMap1d
    @[AlwaysInline]
    def map_1d(address) : ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
      self.map_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMap1f
    @[AlwaysInline]
    def map_1f : ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMap1f
    @[AlwaysInline]
    def map_1f(address) : ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
      self.map_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMap2d
    @[AlwaysInline]
    def map_2d : ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMap2d
    @[AlwaysInline]
    def map_2d(address) : ::Proc(LibGL::MapTarget, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
      self.map_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMap2f
    @[AlwaysInline]
    def map_2f : ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMap2f
    @[AlwaysInline]
    def map_2f(address) : ::Proc(LibGL::MapTarget, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
      self.map_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMapGrid1d
    @[AlwaysInline]
    def map_grid_1d : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMapGrid1d
    @[AlwaysInline]
    def map_grid_1d(address) : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
      self.map_grid_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMapGrid1f
    @[AlwaysInline]
    def map_grid_1f : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glMapGrid1f
    @[AlwaysInline]
    def map_grid_1f(address) : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
      self.map_grid_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMapGrid2d
    @[AlwaysInline]
    def map_grid_2d : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMapGrid2d
    @[AlwaysInline]
    def map_grid_2d(address) : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
      self.map_grid_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMapGrid2f
    @[AlwaysInline]
    def map_grid_2f : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glMapGrid2f
    @[AlwaysInline]
    def map_grid_2f(address) : ::Proc(LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
      self.map_grid_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord1d
    @[AlwaysInline]
    def eval_coord_1d : ::Proc(LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glEvalCoord1d
    @[AlwaysInline]
    def eval_coord_1d(address) : ::Proc(LibGL::Double, ::Void)
      self.eval_coord_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord1dv
    @[AlwaysInline]
    def eval_coord_1dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glEvalCoord1dv
    @[AlwaysInline]
    def eval_coord_1dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.eval_coord_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord1f
    @[AlwaysInline]
    def eval_coord_1f : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glEvalCoord1f
    @[AlwaysInline]
    def eval_coord_1f(address) : ::Proc(LibGL::Float, ::Void)
      self.eval_coord_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord1fv
    @[AlwaysInline]
    def eval_coord_1fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glEvalCoord1fv
    @[AlwaysInline]
    def eval_coord_1fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.eval_coord_1fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord2d
    @[AlwaysInline]
    def eval_coord_2d : ::Proc(LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glEvalCoord2d
    @[AlwaysInline]
    def eval_coord_2d(address) : ::Proc(LibGL::Double, LibGL::Double, ::Void)
      self.eval_coord_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord2dv
    @[AlwaysInline]
    def eval_coord_2dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glEvalCoord2dv
    @[AlwaysInline]
    def eval_coord_2dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.eval_coord_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord2f
    @[AlwaysInline]
    def eval_coord_2f : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glEvalCoord2f
    @[AlwaysInline]
    def eval_coord_2f(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.eval_coord_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalCoord2fv
    @[AlwaysInline]
    def eval_coord_2fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glEvalCoord2fv
    @[AlwaysInline]
    def eval_coord_2fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.eval_coord_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalMesh1
    @[AlwaysInline]
    def eval_mesh1 : ::Proc(LibGL::MeshMode1, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::MeshMode1, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalMesh1
    @[AlwaysInline]
    def eval_mesh1(address) : ::Proc(LibGL::MeshMode1, LibGL::Int, LibGL::Int, ::Void)
      self.eval_mesh1.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalPoint1
    @[AlwaysInline]
    def eval_point1 : ::Proc(LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalPoint1
    @[AlwaysInline]
    def eval_point1(address) : ::Proc(LibGL::Int, ::Void)
      self.eval_point1.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalMesh2
    @[AlwaysInline]
    def eval_mesh2 : ::Proc(LibGL::MeshMode2, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::MeshMode2, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalMesh2
    @[AlwaysInline]
    def eval_mesh2(address) : ::Proc(LibGL::MeshMode2, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.eval_mesh2.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEvalPoint2
    @[AlwaysInline]
    def eval_point2 : ::Proc(LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glEvalPoint2
    @[AlwaysInline]
    def eval_point2(address) : ::Proc(LibGL::Int, LibGL::Int, ::Void)
      self.eval_point2.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glAlphaFunc
    @[AlwaysInline]
    def alpha_func : ::Proc(LibGL::AlphaFunction, LibGL::Float, ::Void).class
      ::Proc(LibGL::AlphaFunction, LibGL::Float, ::Void)
    end

    # Proc type for the function glAlphaFunc
    @[AlwaysInline]
    def alpha_func(address) : ::Proc(LibGL::AlphaFunction, LibGL::Float, ::Void)
      self.alpha_func.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelZoom
    @[AlwaysInline]
    def pixel_zoom : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelZoom
    @[AlwaysInline]
    def pixel_zoom(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.pixel_zoom.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelTransferf
    @[AlwaysInline]
    def pixel_transfer_f : ::Proc(LibGL::PixelTransferParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::PixelTransferParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glPixelTransferf
    @[AlwaysInline]
    def pixel_transfer_f(address) : ::Proc(LibGL::PixelTransferParameter, LibGL::Float, ::Void)
      self.pixel_transfer_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelTransferi
    @[AlwaysInline]
    def pixel_transfer_i : ::Proc(LibGL::PixelTransferParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::PixelTransferParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glPixelTransferi
    @[AlwaysInline]
    def pixel_transfer_i(address) : ::Proc(LibGL::PixelTransferParameter, LibGL::Int, ::Void)
      self.pixel_transfer_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelMapfv
    @[AlwaysInline]
    def pixel_map_fv : ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glPixelMapfv
    @[AlwaysInline]
    def pixel_map_fv(address) : ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.pixel_map_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelMapuiv
    @[AlwaysInline]
    def pixel_map_uiv : ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glPixelMapuiv
    @[AlwaysInline]
    def pixel_map_uiv(address) : ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.pixel_map_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPixelMapusv
    @[AlwaysInline]
    def pixel_map_usv : ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UShort), ::Void).class
      ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glPixelMapusv
    @[AlwaysInline]
    def pixel_map_usv(address) : ::Proc(LibGL::PixelMap, LibGL::SizeI, ::Pointer(LibGL::UShort), ::Void)
      self.pixel_map_usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyPixels
    @[AlwaysInline]
    def copy_pixels : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelCopyType, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelCopyType, ::Void)
    end

    # Proc type for the function glCopyPixels
    @[AlwaysInline]
    def copy_pixels(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelCopyType, ::Void)
      self.copy_pixels.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawPixels
    @[AlwaysInline]
    def draw_pixels : ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawPixels
    @[AlwaysInline]
    def draw_pixels(address) : ::Proc(LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.draw_pixels.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetClipPlane
    @[AlwaysInline]
    def get_clip_plane : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetClipPlane
    @[AlwaysInline]
    def get_clip_plane(address) : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Double), ::Void)
      self.get_clip_plane.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetLightfv
    @[AlwaysInline]
    def get_light_fv : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetLightfv
    @[AlwaysInline]
    def get_light_fv(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_light_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetLightiv
    @[AlwaysInline]
    def get_light_iv : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetLightiv
    @[AlwaysInline]
    def get_light_iv(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_light_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMapdv
    @[AlwaysInline]
    def get_map_dv : ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetMapdv
    @[AlwaysInline]
    def get_map_dv(address) : ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Double), ::Void)
      self.get_map_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMapfv
    @[AlwaysInline]
    def get_map_fv : ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetMapfv
    @[AlwaysInline]
    def get_map_fv(address) : ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Float), ::Void)
      self.get_map_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMapiv
    @[AlwaysInline]
    def get_map_iv : ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetMapiv
    @[AlwaysInline]
    def get_map_iv(address) : ::Proc(LibGL::MapTarget, LibGL::GetMapQuery, ::Pointer(LibGL::Int), ::Void)
      self.get_map_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMaterialfv
    @[AlwaysInline]
    def get_material_fv : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetMaterialfv
    @[AlwaysInline]
    def get_material_fv(address) : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_material_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMaterialiv
    @[AlwaysInline]
    def get_material_iv : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetMaterialiv
    @[AlwaysInline]
    def get_material_iv(address) : ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_material_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetPixelMapfv
    @[AlwaysInline]
    def get_pixel_map_fv : ::Proc(LibGL::PixelMap, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetPixelMapfv
    @[AlwaysInline]
    def get_pixel_map_fv(address) : ::Proc(LibGL::PixelMap, ::Pointer(LibGL::Float), ::Void)
      self.get_pixel_map_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetPixelMapuiv
    @[AlwaysInline]
    def get_pixel_map_uiv : ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetPixelMapuiv
    @[AlwaysInline]
    def get_pixel_map_uiv(address) : ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UInt), ::Void)
      self.get_pixel_map_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetPixelMapusv
    @[AlwaysInline]
    def get_pixel_map_usv : ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UShort), ::Void).class
      ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glGetPixelMapusv
    @[AlwaysInline]
    def get_pixel_map_usv(address) : ::Proc(LibGL::PixelMap, ::Pointer(LibGL::UShort), ::Void)
      self.get_pixel_map_usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetPolygonStipple
    @[AlwaysInline]
    def get_polygon_stipple : ::Proc(::Pointer(LibGL::UByte), ::Void).class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glGetPolygonStipple
    @[AlwaysInline]
    def get_polygon_stipple(address) : ::Proc(::Pointer(LibGL::UByte), ::Void)
      self.get_polygon_stipple.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexEnvfv
    @[AlwaysInline]
    def get_tex_env_fv : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexEnvfv
    @[AlwaysInline]
    def get_tex_env_fv(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_tex_env_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexEnviv
    @[AlwaysInline]
    def get_tex_env_iv : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexEnviv
    @[AlwaysInline]
    def get_tex_env_iv(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_tex_env_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexGendv
    @[AlwaysInline]
    def get_tex_gen_dv : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetTexGendv
    @[AlwaysInline]
    def get_tex_gen_dv(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Double), ::Void)
      self.get_tex_gen_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexGenfv
    @[AlwaysInline]
    def get_tex_gen_fv : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetTexGenfv
    @[AlwaysInline]
    def get_tex_gen_fv(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_tex_gen_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexGeniv
    @[AlwaysInline]
    def get_tex_gen_iv : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexGeniv
    @[AlwaysInline]
    def get_tex_gen_iv(address) : ::Proc(LibGL::TextureCoordName, LibGL::TextureGenParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_tex_gen_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsList
    @[AlwaysInline]
    def is_list : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsList
    @[AlwaysInline]
    def is_list(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_list.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFrustum
    @[AlwaysInline]
    def frustum : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glFrustum
    @[AlwaysInline]
    def frustum(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.frustum.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLoadIdentity
    @[AlwaysInline]
    def load_identity : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glLoadIdentity
    @[AlwaysInline]
    def load_identity(address) : ::Proc(::Void)
      self.load_identity.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLoadMatrixf
    @[AlwaysInline]
    def load_matrix_f : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLoadMatrixf
    @[AlwaysInline]
    def load_matrix_f(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.load_matrix_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLoadMatrixd
    @[AlwaysInline]
    def load_matrix_d : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glLoadMatrixd
    @[AlwaysInline]
    def load_matrix_d(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.load_matrix_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMatrixMode
    @[AlwaysInline]
    def matrix_mode : ::Proc(LibGL::MatrixMode, ::Void).class
      ::Proc(LibGL::MatrixMode, ::Void)
    end

    # Proc type for the function glMatrixMode
    @[AlwaysInline]
    def matrix_mode(address) : ::Proc(LibGL::MatrixMode, ::Void)
      self.matrix_mode.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultMatrixf
    @[AlwaysInline]
    def mult_matrix_f : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultMatrixf
    @[AlwaysInline]
    def mult_matrix_f(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.mult_matrix_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultMatrixd
    @[AlwaysInline]
    def mult_matrix_d : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMultMatrixd
    @[AlwaysInline]
    def mult_matrix_d(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.mult_matrix_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glOrtho
    @[AlwaysInline]
    def ortho : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glOrtho
    @[AlwaysInline]
    def ortho(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.ortho.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPopMatrix
    @[AlwaysInline]
    def pop_matrix : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPopMatrix
    @[AlwaysInline]
    def pop_matrix(address) : ::Proc(::Void)
      self.pop_matrix.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPushMatrix
    @[AlwaysInline]
    def push_matrix : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPushMatrix
    @[AlwaysInline]
    def push_matrix(address) : ::Proc(::Void)
      self.push_matrix.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRotated
    @[AlwaysInline]
    def rotate_d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glRotated
    @[AlwaysInline]
    def rotate_d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.rotate_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRotatef
    @[AlwaysInline]
    def rotate_f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glRotatef
    @[AlwaysInline]
    def rotate_f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.rotate_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScaled
    @[AlwaysInline]
    def scale_d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glScaled
    @[AlwaysInline]
    def scale_d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.scale_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScalef
    @[AlwaysInline]
    def scale_f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glScalef
    @[AlwaysInline]
    def scale_f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.scale_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTranslated
    @[AlwaysInline]
    def translate_d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glTranslated
    @[AlwaysInline]
    def translate_d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.translate_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTranslatef
    @[AlwaysInline]
    def translate_f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glTranslatef
    @[AlwaysInline]
    def translate_f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.translate_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDrawElements
    @[AlwaysInline]
    def draw_elements : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawElements
    @[AlwaysInline]
    def draw_elements(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
      self.draw_elements.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetPointerv
    @[AlwaysInline]
    def get_pointer_v : ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void).class
      ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glGetPointerv
    @[AlwaysInline]
    def get_pointer_v(address) : ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
      self.get_pointer_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glCopyTexImage1D
    @[AlwaysInline]
    def copy_tex_image_1d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glCopyTexImage1D
    @[AlwaysInline]
    def copy_tex_image_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::Int, ::Void)
      self.copy_tex_image_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyTexImage2D
    @[AlwaysInline]
    def copy_tex_image_2d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glCopyTexImage2D
    @[AlwaysInline]
    def copy_tex_image_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void)
      self.copy_tex_image_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyTexSubImage1D
    @[AlwaysInline]
    def copy_tex_sub_image_1d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glCopyTexSubImage1D
    @[AlwaysInline]
    def copy_tex_sub_image_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, ::Void)
      self.copy_tex_sub_image_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyTexSubImage2D
    @[AlwaysInline]
    def copy_tex_sub_image_2d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glCopyTexSubImage2D
    @[AlwaysInline]
    def copy_tex_sub_image_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.copy_tex_sub_image_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexSubImage1D
    @[AlwaysInline]
    def tex_sub_image_1d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexSubImage1D
    @[AlwaysInline]
    def tex_sub_image_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.tex_sub_image_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDeleteTextures
    @[AlwaysInline]
    def delete_textures : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteTextures
    @[AlwaysInline]
    def delete_textures(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_textures.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glIsTexture
    @[AlwaysInline]
    def is_texture : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsTexture
    @[AlwaysInline]
    def is_texture(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_texture.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glArrayElement
    @[AlwaysInline]
    def array_element : ::Proc(LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glArrayElement
    @[AlwaysInline]
    def array_element(address) : ::Proc(LibGL::Int, ::Void)
      self.array_element.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorPointer
    @[AlwaysInline]
    def color_pointer : ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glColorPointer
    @[AlwaysInline]
    def color_pointer(address) : ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.color_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDisableClientState
    @[AlwaysInline]
    def disable_client_state : ::Proc(LibGL::EnableCap, ::Void).class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glDisableClientState
    @[AlwaysInline]
    def disable_client_state(address) : ::Proc(LibGL::EnableCap, ::Void)
      self.disable_client_state.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEdgeFlagPointer
    @[AlwaysInline]
    def edge_flag_pointer : ::Proc(LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glEdgeFlagPointer
    @[AlwaysInline]
    def edge_flag_pointer(address) : ::Proc(LibGL::SizeI, ::Pointer(Void), ::Void)
      self.edge_flag_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEnableClientState
    @[AlwaysInline]
    def enable_client_state : ::Proc(LibGL::EnableCap, ::Void).class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glEnableClientState
    @[AlwaysInline]
    def enable_client_state(address) : ::Proc(LibGL::EnableCap, ::Void)
      self.enable_client_state.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexPointer
    @[AlwaysInline]
    def index_pointer : ::Proc(LibGL::IndexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::IndexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glIndexPointer
    @[AlwaysInline]
    def index_pointer(address) : ::Proc(LibGL::IndexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.index_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInterleavedArrays
    @[AlwaysInline]
    def interleaved_arrays : ::Proc(LibGL::InterleavedArrayFormat, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::InterleavedArrayFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glInterleavedArrays
    @[AlwaysInline]
    def interleaved_arrays(address) : ::Proc(LibGL::InterleavedArrayFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.interleaved_arrays.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormalPointer
    @[AlwaysInline]
    def normal_pointer : ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glNormalPointer
    @[AlwaysInline]
    def normal_pointer(address) : ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.normal_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordPointer
    @[AlwaysInline]
    def tex_coord_pointer : ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexCoordPointer
    @[AlwaysInline]
    def tex_coord_pointer(address) : ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.tex_coord_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexPointer
    @[AlwaysInline]
    def vertex_pointer : ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glVertexPointer
    @[AlwaysInline]
    def vertex_pointer(address) : ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.vertex_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glAreTexturesResident
    @[AlwaysInline]
    def are_textures_resident : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Boolean), LibGL::Boolean).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Boolean), LibGL::Boolean)
    end

    # Proc type for the function glAreTexturesResident
    @[AlwaysInline]
    def are_textures_resident(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Boolean), LibGL::Boolean)
      self.are_textures_resident.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPrioritizeTextures
    @[AlwaysInline]
    def prioritize_textures : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glPrioritizeTextures
    @[AlwaysInline]
    def prioritize_textures(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Pointer(LibGL::Float), ::Void)
      self.prioritize_textures.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexub
    @[AlwaysInline]
    def index_ub : ::Proc(LibGL::UByte, ::Void).class
      ::Proc(LibGL::UByte, ::Void)
    end

    # Proc type for the function glIndexub
    @[AlwaysInline]
    def index_ub(address) : ::Proc(LibGL::UByte, ::Void)
      self.index_ub.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIndexubv
    @[AlwaysInline]
    def index_ubv : ::Proc(::Pointer(LibGL::UByte), ::Void).class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glIndexubv
    @[AlwaysInline]
    def index_ubv(address) : ::Proc(::Pointer(LibGL::UByte), ::Void)
      self.index_ubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPopClientAttrib
    @[AlwaysInline]
    def pop_client_attrib : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPopClientAttrib
    @[AlwaysInline]
    def pop_client_attrib(address) : ::Proc(::Void)
      self.pop_client_attrib.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPushClientAttrib
    @[AlwaysInline]
    def push_client_attrib : ::Proc(LibGL::ClientAttribMask, ::Void).class
      ::Proc(LibGL::ClientAttribMask, ::Void)
    end

    # Proc type for the function glPushClientAttrib
    @[AlwaysInline]
    def push_client_attrib(address) : ::Proc(LibGL::ClientAttribMask, ::Void)
      self.push_client_attrib.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexImage3D
    @[AlwaysInline]
    def tex_image_3d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexImage3D
    @[AlwaysInline]
    def tex_image_3d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.tex_image_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexSubImage3D
    @[AlwaysInline]
    def tex_sub_image_3d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexSubImage3D
    @[AlwaysInline]
    def tex_sub_image_3d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.tex_sub_image_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyTexSubImage3D
    @[AlwaysInline]
    def copy_tex_sub_image_3d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glCopyTexSubImage3D
    @[AlwaysInline]
    def copy_tex_sub_image_3d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.copy_tex_sub_image_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

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

    # Proc type for the function glCompressedTexImage3D
    @[AlwaysInline]
    def compressed_tex_image_3d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexImage3D
    @[AlwaysInline]
    def compressed_tex_image_3d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.compressed_tex_image_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCompressedTexImage2D
    @[AlwaysInline]
    def compressed_tex_image_2d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexImage2D
    @[AlwaysInline]
    def compressed_tex_image_2d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.compressed_tex_image_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCompressedTexImage1D
    @[AlwaysInline]
    def compressed_tex_image_1d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexImage1D
    @[AlwaysInline]
    def compressed_tex_image_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.compressed_tex_image_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCompressedTexSubImage3D
    @[AlwaysInline]
    def compressed_tex_sub_image_3d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage3D
    @[AlwaysInline]
    def compressed_tex_sub_image_3d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.compressed_tex_sub_image_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glCompressedTexSubImage1D
    @[AlwaysInline]
    def compressed_tex_sub_image_1d : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage1D
    @[AlwaysInline]
    def compressed_tex_sub_image_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.compressed_tex_sub_image_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetCompressedTexImage
    @[AlwaysInline]
    def get_compressed_tex_image : ::Proc(LibGL::TextureTarget, LibGL::Int, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::Int, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetCompressedTexImage
    @[AlwaysInline]
    def get_compressed_tex_image(address) : ::Proc(LibGL::TextureTarget, LibGL::Int, ::Pointer(Void), ::Void)
      self.get_compressed_tex_image.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClientActiveTexture
    @[AlwaysInline]
    def client_active_texture : ::Proc(LibGL::TextureUnit, ::Void).class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # Proc type for the function glClientActiveTexture
    @[AlwaysInline]
    def client_active_texture(address) : ::Proc(LibGL::TextureUnit, ::Void)
      self.client_active_texture.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1d
    @[AlwaysInline]
    def multi_tex_coord_1d : ::Proc(LibGL::TextureUnit, LibGL::Double, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Double, ::Void)
    end

    # Proc type for the function glMultiTexCoord1d
    @[AlwaysInline]
    def multi_tex_coord_1d(address) : ::Proc(LibGL::TextureUnit, LibGL::Double, ::Void)
      self.multi_tex_coord_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1dv
    @[AlwaysInline]
    def multi_tex_coord_1dv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMultiTexCoord1dv
    @[AlwaysInline]
    def multi_tex_coord_1dv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
      self.multi_tex_coord_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1f
    @[AlwaysInline]
    def multi_tex_coord_1f : ::Proc(LibGL::TextureUnit, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Float, ::Void)
    end

    # Proc type for the function glMultiTexCoord1f
    @[AlwaysInline]
    def multi_tex_coord_1f(address) : ::Proc(LibGL::TextureUnit, LibGL::Float, ::Void)
      self.multi_tex_coord_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1fv
    @[AlwaysInline]
    def multi_tex_coord_1fv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultiTexCoord1fv
    @[AlwaysInline]
    def multi_tex_coord_1fv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
      self.multi_tex_coord_1fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1i
    @[AlwaysInline]
    def multi_tex_coord_1i : ::Proc(LibGL::TextureUnit, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Int, ::Void)
    end

    # Proc type for the function glMultiTexCoord1i
    @[AlwaysInline]
    def multi_tex_coord_1i(address) : ::Proc(LibGL::TextureUnit, LibGL::Int, ::Void)
      self.multi_tex_coord_1i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1iv
    @[AlwaysInline]
    def multi_tex_coord_1iv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMultiTexCoord1iv
    @[AlwaysInline]
    def multi_tex_coord_1iv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
      self.multi_tex_coord_1iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1s
    @[AlwaysInline]
    def multi_tex_coord_1s : ::Proc(LibGL::TextureUnit, LibGL::Short, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Short, ::Void)
    end

    # Proc type for the function glMultiTexCoord1s
    @[AlwaysInline]
    def multi_tex_coord_1s(address) : ::Proc(LibGL::TextureUnit, LibGL::Short, ::Void)
      self.multi_tex_coord_1s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord1sv
    @[AlwaysInline]
    def multi_tex_coord_1sv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glMultiTexCoord1sv
    @[AlwaysInline]
    def multi_tex_coord_1sv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
      self.multi_tex_coord_1sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2d
    @[AlwaysInline]
    def multi_tex_coord_2d : ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMultiTexCoord2d
    @[AlwaysInline]
    def multi_tex_coord_2d(address) : ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, ::Void)
      self.multi_tex_coord_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2dv
    @[AlwaysInline]
    def multi_tex_coord_2dv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMultiTexCoord2dv
    @[AlwaysInline]
    def multi_tex_coord_2dv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
      self.multi_tex_coord_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2f
    @[AlwaysInline]
    def multi_tex_coord_2f : ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glMultiTexCoord2f
    @[AlwaysInline]
    def multi_tex_coord_2f(address) : ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, ::Void)
      self.multi_tex_coord_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2fv
    @[AlwaysInline]
    def multi_tex_coord_2fv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultiTexCoord2fv
    @[AlwaysInline]
    def multi_tex_coord_2fv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
      self.multi_tex_coord_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2i
    @[AlwaysInline]
    def multi_tex_coord_2i : ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glMultiTexCoord2i
    @[AlwaysInline]
    def multi_tex_coord_2i(address) : ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, ::Void)
      self.multi_tex_coord_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2iv
    @[AlwaysInline]
    def multi_tex_coord_2iv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMultiTexCoord2iv
    @[AlwaysInline]
    def multi_tex_coord_2iv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
      self.multi_tex_coord_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2s
    @[AlwaysInline]
    def multi_tex_coord_2s : ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glMultiTexCoord2s
    @[AlwaysInline]
    def multi_tex_coord_2s(address) : ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, ::Void)
      self.multi_tex_coord_2s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord2sv
    @[AlwaysInline]
    def multi_tex_coord_2sv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glMultiTexCoord2sv
    @[AlwaysInline]
    def multi_tex_coord_2sv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
      self.multi_tex_coord_2sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3d
    @[AlwaysInline]
    def multi_tex_coord_3d : ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMultiTexCoord3d
    @[AlwaysInline]
    def multi_tex_coord_3d(address) : ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.multi_tex_coord_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3dv
    @[AlwaysInline]
    def multi_tex_coord_3dv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMultiTexCoord3dv
    @[AlwaysInline]
    def multi_tex_coord_3dv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
      self.multi_tex_coord_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3f
    @[AlwaysInline]
    def multi_tex_coord_3f : ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glMultiTexCoord3f
    @[AlwaysInline]
    def multi_tex_coord_3f(address) : ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.multi_tex_coord_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3fv
    @[AlwaysInline]
    def multi_tex_coord_3fv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultiTexCoord3fv
    @[AlwaysInline]
    def multi_tex_coord_3fv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
      self.multi_tex_coord_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3i
    @[AlwaysInline]
    def multi_tex_coord_3i : ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glMultiTexCoord3i
    @[AlwaysInline]
    def multi_tex_coord_3i(address) : ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.multi_tex_coord_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3iv
    @[AlwaysInline]
    def multi_tex_coord_3iv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMultiTexCoord3iv
    @[AlwaysInline]
    def multi_tex_coord_3iv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
      self.multi_tex_coord_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3s
    @[AlwaysInline]
    def multi_tex_coord_3s : ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glMultiTexCoord3s
    @[AlwaysInline]
    def multi_tex_coord_3s(address) : ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.multi_tex_coord_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord3sv
    @[AlwaysInline]
    def multi_tex_coord_3sv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glMultiTexCoord3sv
    @[AlwaysInline]
    def multi_tex_coord_3sv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
      self.multi_tex_coord_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4d
    @[AlwaysInline]
    def multi_tex_coord_4d : ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glMultiTexCoord4d
    @[AlwaysInline]
    def multi_tex_coord_4d(address) : ::Proc(LibGL::TextureUnit, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.multi_tex_coord_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4dv
    @[AlwaysInline]
    def multi_tex_coord_4dv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMultiTexCoord4dv
    @[AlwaysInline]
    def multi_tex_coord_4dv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Double), ::Void)
      self.multi_tex_coord_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4f
    @[AlwaysInline]
    def multi_tex_coord_4f : ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glMultiTexCoord4f
    @[AlwaysInline]
    def multi_tex_coord_4f(address) : ::Proc(LibGL::TextureUnit, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.multi_tex_coord_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4fv
    @[AlwaysInline]
    def multi_tex_coord_4fv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultiTexCoord4fv
    @[AlwaysInline]
    def multi_tex_coord_4fv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Float), ::Void)
      self.multi_tex_coord_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4i
    @[AlwaysInline]
    def multi_tex_coord_4i : ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glMultiTexCoord4i
    @[AlwaysInline]
    def multi_tex_coord_4i(address) : ::Proc(LibGL::TextureUnit, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.multi_tex_coord_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4iv
    @[AlwaysInline]
    def multi_tex_coord_4iv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMultiTexCoord4iv
    @[AlwaysInline]
    def multi_tex_coord_4iv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Int), ::Void)
      self.multi_tex_coord_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4s
    @[AlwaysInline]
    def multi_tex_coord_4s : ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glMultiTexCoord4s
    @[AlwaysInline]
    def multi_tex_coord_4s(address) : ::Proc(LibGL::TextureUnit, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.multi_tex_coord_4s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4sv
    @[AlwaysInline]
    def multi_tex_coord_4sv : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glMultiTexCoord4sv
    @[AlwaysInline]
    def multi_tex_coord_4sv(address) : ::Proc(LibGL::TextureUnit, ::Pointer(LibGL::Short), ::Void)
      self.multi_tex_coord_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLoadTransposeMatrixf
    @[AlwaysInline]
    def load_transpose_matrix_f : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glLoadTransposeMatrixf
    @[AlwaysInline]
    def load_transpose_matrix_f(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.load_transpose_matrix_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLoadTransposeMatrixd
    @[AlwaysInline]
    def load_transpose_matrix_d : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glLoadTransposeMatrixd
    @[AlwaysInline]
    def load_transpose_matrix_d(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.load_transpose_matrix_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultTransposeMatrixf
    @[AlwaysInline]
    def mult_transpose_matrix_f : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMultTransposeMatrixf
    @[AlwaysInline]
    def mult_transpose_matrix_f(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.mult_transpose_matrix_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultTransposeMatrixd
    @[AlwaysInline]
    def mult_transpose_matrix_d : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glMultTransposeMatrixd
    @[AlwaysInline]
    def mult_transpose_matrix_d(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.mult_transpose_matrix_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glMultiDrawArrays
    @[AlwaysInline]
    def multi_draw_arrays : ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::Int), ::Pointer(LibGL::SizeI), LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::Int), ::Pointer(LibGL::SizeI), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glMultiDrawArrays
    @[AlwaysInline]
    def multi_draw_arrays(address) : ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::Int), ::Pointer(LibGL::SizeI), LibGL::SizeI, ::Void)
      self.multi_draw_arrays.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiDrawElements
    @[AlwaysInline]
    def multi_draw_elements : ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glMultiDrawElements
    @[AlwaysInline]
    def multi_draw_elements(address) : ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Void)
      self.multi_draw_elements.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPointParameterf
    @[AlwaysInline]
    def point_parameter_f : ::Proc(LibGL::PointParameterNameARB, LibGL::Float, ::Void).class
      ::Proc(LibGL::PointParameterNameARB, LibGL::Float, ::Void)
    end

    # Proc type for the function glPointParameterf
    @[AlwaysInline]
    def point_parameter_f(address) : ::Proc(LibGL::PointParameterNameARB, LibGL::Float, ::Void)
      self.point_parameter_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPointParameterfv
    @[AlwaysInline]
    def point_parameter_fv : ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glPointParameterfv
    @[AlwaysInline]
    def point_parameter_fv(address) : ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Float), ::Void)
      self.point_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPointParameteri
    @[AlwaysInline]
    def point_parameter_i : ::Proc(LibGL::PointParameterNameARB, LibGL::Int, ::Void).class
      ::Proc(LibGL::PointParameterNameARB, LibGL::Int, ::Void)
    end

    # Proc type for the function glPointParameteri
    @[AlwaysInline]
    def point_parameter_i(address) : ::Proc(LibGL::PointParameterNameARB, LibGL::Int, ::Void)
      self.point_parameter_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPointParameteriv
    @[AlwaysInline]
    def point_parameter_iv : ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glPointParameteriv
    @[AlwaysInline]
    def point_parameter_iv(address) : ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Int), ::Void)
      self.point_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogCoordf
    @[AlwaysInline]
    def fog_coord_f : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glFogCoordf
    @[AlwaysInline]
    def fog_coord_f(address) : ::Proc(LibGL::Float, ::Void)
      self.fog_coord_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogCoordfv
    @[AlwaysInline]
    def fog_coord_fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glFogCoordfv
    @[AlwaysInline]
    def fog_coord_fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.fog_coord_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogCoordd
    @[AlwaysInline]
    def fog_coord_d : ::Proc(LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, ::Void)
    end

    # Proc type for the function glFogCoordd
    @[AlwaysInline]
    def fog_coord_d(address) : ::Proc(LibGL::Double, ::Void)
      self.fog_coord_d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogCoorddv
    @[AlwaysInline]
    def fog_coord_dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glFogCoorddv
    @[AlwaysInline]
    def fog_coord_dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.fog_coord_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogCoordPointer
    @[AlwaysInline]
    def fog_coord_pointer : ::Proc(LibGL::FogPointerTypeEXT, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::FogPointerTypeEXT, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glFogCoordPointer
    @[AlwaysInline]
    def fog_coord_pointer(address) : ::Proc(LibGL::FogPointerTypeEXT, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.fog_coord_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3b
    @[AlwaysInline]
    def secondary_color_3b : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void).class
      ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
    end

    # Proc type for the function glSecondaryColor3b
    @[AlwaysInline]
    def secondary_color_3b(address) : ::Proc(LibGL::Byte, LibGL::Byte, LibGL::Byte, ::Void)
      self.secondary_color_3b.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3bv
    @[AlwaysInline]
    def secondary_color_3bv : ::Proc(::Pointer(LibGL::Byte), ::Void).class
      ::Proc(::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glSecondaryColor3bv
    @[AlwaysInline]
    def secondary_color_3bv(address) : ::Proc(::Pointer(LibGL::Byte), ::Void)
      self.secondary_color_3bv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3d
    @[AlwaysInline]
    def secondary_color_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glSecondaryColor3d
    @[AlwaysInline]
    def secondary_color_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.secondary_color_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3dv
    @[AlwaysInline]
    def secondary_color_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glSecondaryColor3dv
    @[AlwaysInline]
    def secondary_color_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.secondary_color_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3f
    @[AlwaysInline]
    def secondary_color_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glSecondaryColor3f
    @[AlwaysInline]
    def secondary_color_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.secondary_color_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3fv
    @[AlwaysInline]
    def secondary_color_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glSecondaryColor3fv
    @[AlwaysInline]
    def secondary_color_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.secondary_color_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3i
    @[AlwaysInline]
    def secondary_color_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glSecondaryColor3i
    @[AlwaysInline]
    def secondary_color_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.secondary_color_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3iv
    @[AlwaysInline]
    def secondary_color_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glSecondaryColor3iv
    @[AlwaysInline]
    def secondary_color_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.secondary_color_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3s
    @[AlwaysInline]
    def secondary_color_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glSecondaryColor3s
    @[AlwaysInline]
    def secondary_color_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.secondary_color_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3sv
    @[AlwaysInline]
    def secondary_color_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glSecondaryColor3sv
    @[AlwaysInline]
    def secondary_color_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.secondary_color_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3ub
    @[AlwaysInline]
    def secondary_color_3ub : ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void).class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glSecondaryColor3ub
    @[AlwaysInline]
    def secondary_color_3ub(address) : ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
      self.secondary_color_3ub.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3ubv
    @[AlwaysInline]
    def secondary_color_3ubv : ::Proc(::Pointer(LibGL::UByte), ::Void).class
      ::Proc(::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glSecondaryColor3ubv
    @[AlwaysInline]
    def secondary_color_3ubv(address) : ::Proc(::Pointer(LibGL::UByte), ::Void)
      self.secondary_color_3ubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3ui
    @[AlwaysInline]
    def secondary_color_3ui : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glSecondaryColor3ui
    @[AlwaysInline]
    def secondary_color_3ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.secondary_color_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3uiv
    @[AlwaysInline]
    def secondary_color_3uiv : ::Proc(::Pointer(LibGL::UInt), ::Void).class
      ::Proc(::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glSecondaryColor3uiv
    @[AlwaysInline]
    def secondary_color_3uiv(address) : ::Proc(::Pointer(LibGL::UInt), ::Void)
      self.secondary_color_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3us
    @[AlwaysInline]
    def secondary_color_3us : ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void).class
      ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
    end

    # Proc type for the function glSecondaryColor3us
    @[AlwaysInline]
    def secondary_color_3us(address) : ::Proc(LibGL::UShort, LibGL::UShort, LibGL::UShort, ::Void)
      self.secondary_color_3us.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColor3usv
    @[AlwaysInline]
    def secondary_color_3usv : ::Proc(::Pointer(LibGL::UShort), ::Void).class
      ::Proc(::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glSecondaryColor3usv
    @[AlwaysInline]
    def secondary_color_3usv(address) : ::Proc(::Pointer(LibGL::UShort), ::Void)
      self.secondary_color_3usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColorPointer
    @[AlwaysInline]
    def secondary_color_pointer : ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glSecondaryColorPointer
    @[AlwaysInline]
    def secondary_color_pointer(address) : ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.secondary_color_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2d
    @[AlwaysInline]
    def window_pos_2d : ::Proc(LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glWindowPos2d
    @[AlwaysInline]
    def window_pos_2d(address) : ::Proc(LibGL::Double, LibGL::Double, ::Void)
      self.window_pos_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2dv
    @[AlwaysInline]
    def window_pos_2dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glWindowPos2dv
    @[AlwaysInline]
    def window_pos_2dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.window_pos_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2f
    @[AlwaysInline]
    def window_pos_2f : ::Proc(LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glWindowPos2f
    @[AlwaysInline]
    def window_pos_2f(address) : ::Proc(LibGL::Float, LibGL::Float, ::Void)
      self.window_pos_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2fv
    @[AlwaysInline]
    def window_pos_2fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glWindowPos2fv
    @[AlwaysInline]
    def window_pos_2fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.window_pos_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2i
    @[AlwaysInline]
    def window_pos_2i : ::Proc(LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glWindowPos2i
    @[AlwaysInline]
    def window_pos_2i(address) : ::Proc(LibGL::Int, LibGL::Int, ::Void)
      self.window_pos_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2iv
    @[AlwaysInline]
    def window_pos_2iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glWindowPos2iv
    @[AlwaysInline]
    def window_pos_2iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.window_pos_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2s
    @[AlwaysInline]
    def window_pos_2s : ::Proc(LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glWindowPos2s
    @[AlwaysInline]
    def window_pos_2s(address) : ::Proc(LibGL::Short, LibGL::Short, ::Void)
      self.window_pos_2s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos2sv
    @[AlwaysInline]
    def window_pos_2sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glWindowPos2sv
    @[AlwaysInline]
    def window_pos_2sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.window_pos_2sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3d
    @[AlwaysInline]
    def window_pos_3d : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glWindowPos3d
    @[AlwaysInline]
    def window_pos_3d(address) : ::Proc(LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.window_pos_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3dv
    @[AlwaysInline]
    def window_pos_3dv : ::Proc(::Pointer(LibGL::Double), ::Void).class
      ::Proc(::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glWindowPos3dv
    @[AlwaysInline]
    def window_pos_3dv(address) : ::Proc(::Pointer(LibGL::Double), ::Void)
      self.window_pos_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3f
    @[AlwaysInline]
    def window_pos_3f : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glWindowPos3f
    @[AlwaysInline]
    def window_pos_3f(address) : ::Proc(LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.window_pos_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3fv
    @[AlwaysInline]
    def window_pos_3fv : ::Proc(::Pointer(LibGL::Float), ::Void).class
      ::Proc(::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glWindowPos3fv
    @[AlwaysInline]
    def window_pos_3fv(address) : ::Proc(::Pointer(LibGL::Float), ::Void)
      self.window_pos_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3i
    @[AlwaysInline]
    def window_pos_3i : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glWindowPos3i
    @[AlwaysInline]
    def window_pos_3i(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.window_pos_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3iv
    @[AlwaysInline]
    def window_pos_3iv : ::Proc(::Pointer(LibGL::Int), ::Void).class
      ::Proc(::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glWindowPos3iv
    @[AlwaysInline]
    def window_pos_3iv(address) : ::Proc(::Pointer(LibGL::Int), ::Void)
      self.window_pos_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3s
    @[AlwaysInline]
    def window_pos_3s : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glWindowPos3s
    @[AlwaysInline]
    def window_pos_3s(address) : ::Proc(LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.window_pos_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWindowPos3sv
    @[AlwaysInline]
    def window_pos_3sv : ::Proc(::Pointer(LibGL::Short), ::Void).class
      ::Proc(::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glWindowPos3sv
    @[AlwaysInline]
    def window_pos_3sv(address) : ::Proc(::Pointer(LibGL::Short), ::Void)
      self.window_pos_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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
  end
end
