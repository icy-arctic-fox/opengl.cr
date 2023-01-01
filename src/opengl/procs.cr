module OpenGL
  module Procs
    extend self

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face : ::Proc(LibGL::TriangleFace, ::Void).class
      ::Proc(LibGL::TriangleFace, ::Void)
    end

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face(address) : ::Proc(LibGL::TriangleFace, ::Void)
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
    def polygon_mode : ::Proc(LibGL::TriangleFace, LibGL::PolygonMode, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::PolygonMode, ::Void)
    end

    # Proc type for the function glPolygonMode
    @[AlwaysInline]
    def polygon_mode(address) : ::Proc(LibGL::TriangleFace, LibGL::PolygonMode, ::Void)
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
    def color_material : ::Proc(LibGL::TriangleFace, LibGL::ColorMaterialParameter, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::ColorMaterialParameter, ::Void)
    end

    # Proc type for the function glColorMaterial
    @[AlwaysInline]
    def color_material(address) : ::Proc(LibGL::TriangleFace, LibGL::ColorMaterialParameter, ::Void)
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
    def material_f : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Float, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Float, ::Void)
    end

    # Proc type for the function glMaterialf
    @[AlwaysInline]
    def material_f(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Float, ::Void)
      self.material_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMaterialfv
    @[AlwaysInline]
    def material_fv : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glMaterialfv
    @[AlwaysInline]
    def material_fv(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
      self.material_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMateriali
    @[AlwaysInline]
    def material_i : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Int, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glMateriali
    @[AlwaysInline]
    def material_i(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Int, ::Void)
      self.material_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMaterialiv
    @[AlwaysInline]
    def material_iv : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMaterialiv
    @[AlwaysInline]
    def material_iv(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
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
    def get_material_fv : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetMaterialfv
    @[AlwaysInline]
    def get_material_fv(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Float), ::Void)
      self.get_material_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMaterialiv
    @[AlwaysInline]
    def get_material_iv : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetMaterialiv
    @[AlwaysInline]
    def get_material_iv(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Int), ::Void)
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

    # Proc type for the function glGenQueries
    @[AlwaysInline]
    def gen_queries : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenQueries
    @[AlwaysInline]
    def gen_queries(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_queries.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteQueries
    @[AlwaysInline]
    def delete_queries : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteQueries
    @[AlwaysInline]
    def delete_queries(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_queries.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsQuery
    @[AlwaysInline]
    def is_query : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsQuery
    @[AlwaysInline]
    def is_query(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_query.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBeginQuery
    @[AlwaysInline]
    def begin_query : ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBeginQuery
    @[AlwaysInline]
    def begin_query(address) : ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
      self.begin_query.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEndQuery
    @[AlwaysInline]
    def end_query : ::Proc(LibGL::QueryTarget, ::Void).class
      ::Proc(LibGL::QueryTarget, ::Void)
    end

    # Proc type for the function glEndQuery
    @[AlwaysInline]
    def end_query(address) : ::Proc(LibGL::QueryTarget, ::Void)
      self.end_query.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetQueryiv
    @[AlwaysInline]
    def get_query_iv : ::Proc(LibGL::QueryTarget, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::QueryTarget, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetQueryiv
    @[AlwaysInline]
    def get_query_iv(address) : ::Proc(LibGL::QueryTarget, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_query_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetQueryObjectiv
    @[AlwaysInline]
    def get_query_object_iv : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetQueryObjectiv
    @[AlwaysInline]
    def get_query_object_iv(address) : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_query_object_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetQueryObjectuiv
    @[AlwaysInline]
    def get_query_object_uiv : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetQueryObjectuiv
    @[AlwaysInline]
    def get_query_object_uiv(address) : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt), ::Void)
      self.get_query_object_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDeleteBuffers
    @[AlwaysInline]
    def delete_buffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteBuffers
    @[AlwaysInline]
    def delete_buffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_buffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glIsBuffer
    @[AlwaysInline]
    def is_buffer : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsBuffer
    @[AlwaysInline]
    def is_buffer(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetBufferSubData
    @[AlwaysInline]
    def get_buffer_sub_data : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetBufferSubData
    @[AlwaysInline]
    def get_buffer_sub_data(address) : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Pointer(Void), ::Void)
      self.get_buffer_sub_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMapBuffer
    @[AlwaysInline]
    def map_buffer : ::Proc(LibGL::BufferTargetARB, LibGL::BufferAccessARB, ::Pointer(Void)).class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferAccessARB, ::Pointer(Void))
    end

    # Proc type for the function glMapBuffer
    @[AlwaysInline]
    def map_buffer(address) : ::Proc(LibGL::BufferTargetARB, LibGL::BufferAccessARB, ::Pointer(Void))
      self.map_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUnmapBuffer
    @[AlwaysInline]
    def unmap_buffer : ::Proc(LibGL::BufferTargetARB, LibGL::Boolean).class
      ::Proc(LibGL::BufferTargetARB, LibGL::Boolean)
    end

    # Proc type for the function glUnmapBuffer
    @[AlwaysInline]
    def unmap_buffer(address) : ::Proc(LibGL::BufferTargetARB, LibGL::Boolean)
      self.unmap_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetBufferPointerv
    @[AlwaysInline]
    def get_buffer_pointer_v : ::Proc(LibGL::BufferTargetARB, LibGL::BufferPointerNameARB, ::Pointer(Pointer(Void)), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPointerNameARB, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glGetBufferPointerv
    @[AlwaysInline]
    def get_buffer_pointer_v(address) : ::Proc(LibGL::BufferTargetARB, LibGL::BufferPointerNameARB, ::Pointer(Pointer(Void)), ::Void)
      self.get_buffer_pointer_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDrawBuffers
    @[AlwaysInline]
    def draw_buffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::DrawBufferMode), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::DrawBufferMode), ::Void)
    end

    # Proc type for the function glDrawBuffers
    @[AlwaysInline]
    def draw_buffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::DrawBufferMode), ::Void)
      self.draw_buffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilOpSeparate
    @[AlwaysInline]
    def stencil_op_separate : ::Proc(LibGL::TriangleFace, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glStencilOpSeparate
    @[AlwaysInline]
    def stencil_op_separate(address) : ::Proc(LibGL::TriangleFace, LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
      self.stencil_op_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilFuncSeparate
    @[AlwaysInline]
    def stencil_func_separate : ::Proc(LibGL::TriangleFace, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilFuncSeparate
    @[AlwaysInline]
    def stencil_func_separate(address) : ::Proc(LibGL::TriangleFace, LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
      self.stencil_func_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glStencilMaskSeparate
    @[AlwaysInline]
    def stencil_mask_separate : ::Proc(LibGL::TriangleFace, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMaskSeparate
    @[AlwaysInline]
    def stencil_mask_separate(address) : ::Proc(LibGL::TriangleFace, LibGL::UInt, ::Void)
      self.stencil_mask_separate.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glAttachShader
    @[AlwaysInline]
    def attach_shader : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glAttachShader
    @[AlwaysInline]
    def attach_shader(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.attach_shader.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindAttribLocation
    @[AlwaysInline]
    def bind_attrib_location : ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glBindAttribLocation
    @[AlwaysInline]
    def bind_attrib_location(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
      self.bind_attrib_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCompileShader
    @[AlwaysInline]
    def compile_shader : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glCompileShader
    @[AlwaysInline]
    def compile_shader(address) : ::Proc(LibGL::UInt, ::Void)
      self.compile_shader.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glCreateShader
    @[AlwaysInline]
    def create_shader : ::Proc(LibGL::ShaderType, LibGL::UInt).class
      ::Proc(LibGL::ShaderType, LibGL::UInt)
    end

    # Proc type for the function glCreateShader
    @[AlwaysInline]
    def create_shader(address) : ::Proc(LibGL::ShaderType, LibGL::UInt)
      self.create_shader.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteProgram
    @[AlwaysInline]
    def delete_program : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteProgram
    @[AlwaysInline]
    def delete_program(address) : ::Proc(LibGL::UInt, ::Void)
      self.delete_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteShader
    @[AlwaysInline]
    def delete_shader : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glDeleteShader
    @[AlwaysInline]
    def delete_shader(address) : ::Proc(LibGL::UInt, ::Void)
      self.delete_shader.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDetachShader
    @[AlwaysInline]
    def detach_shader : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDetachShader
    @[AlwaysInline]
    def detach_shader(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.detach_shader.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetActiveAttrib
    @[AlwaysInline]
    def get_active_attrib : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveAttrib
    @[AlwaysInline]
    def get_active_attrib(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
      self.get_active_attrib.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveUniform
    @[AlwaysInline]
    def get_active_uniform : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::UniformType), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::UniformType), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveUniform
    @[AlwaysInline]
    def get_active_uniform(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Pointer(LibGL::UniformType), ::Pointer(LibGL::Char), ::Void)
      self.get_active_uniform.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetAttachedShaders
    @[AlwaysInline]
    def get_attached_shaders : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetAttachedShaders
    @[AlwaysInline]
    def get_attached_shaders(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::UInt), ::Void)
      self.get_attached_shaders.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetProgramInfoLog
    @[AlwaysInline]
    def get_program_info_log : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetProgramInfoLog
    @[AlwaysInline]
    def get_program_info_log(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_program_info_log.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetShaderiv
    @[AlwaysInline]
    def get_shader_iv : ::Proc(LibGL::UInt, LibGL::ShaderParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ShaderParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetShaderiv
    @[AlwaysInline]
    def get_shader_iv(address) : ::Proc(LibGL::UInt, LibGL::ShaderParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_shader_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetShaderInfoLog
    @[AlwaysInline]
    def get_shader_info_log : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetShaderInfoLog
    @[AlwaysInline]
    def get_shader_info_log(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_shader_info_log.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetShaderSource
    @[AlwaysInline]
    def get_shader_source : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetShaderSource
    @[AlwaysInline]
    def get_shader_source(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_shader_source.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetUniformfv
    @[AlwaysInline]
    def get_uniform_fv : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetUniformfv
    @[AlwaysInline]
    def get_uniform_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
      self.get_uniform_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformiv
    @[AlwaysInline]
    def get_uniform_iv : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetUniformiv
    @[AlwaysInline]
    def get_uniform_iv(address) : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
      self.get_uniform_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribdv
    @[AlwaysInline]
    def get_vertex_attrib_dv : ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetVertexAttribdv
    @[AlwaysInline]
    def get_vertex_attrib_dv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPropertyARB, ::Pointer(LibGL::Double), ::Void)
      self.get_vertex_attrib_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glIsProgram
    @[AlwaysInline]
    def is_program : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsProgram
    @[AlwaysInline]
    def is_program(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsShader
    @[AlwaysInline]
    def is_shader : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsShader
    @[AlwaysInline]
    def is_shader(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_shader.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLinkProgram
    @[AlwaysInline]
    def link_program : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glLinkProgram
    @[AlwaysInline]
    def link_program(address) : ::Proc(LibGL::UInt, ::Void)
      self.link_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glShaderSource
    @[AlwaysInline]
    def shader_source : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glShaderSource
    @[AlwaysInline]
    def shader_source(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::Int), ::Void)
      self.shader_source.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glValidateProgram
    @[AlwaysInline]
    def validate_program : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glValidateProgram
    @[AlwaysInline]
    def validate_program(address) : ::Proc(LibGL::UInt, ::Void)
      self.validate_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib1d
    @[AlwaysInline]
    def vertex_attrib_1d : ::Proc(LibGL::UInt, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib1d
    @[AlwaysInline]
    def vertex_attrib_1d(address) : ::Proc(LibGL::UInt, LibGL::Double, ::Void)
      self.vertex_attrib_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib1dv
    @[AlwaysInline]
    def vertex_attrib_1dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib1dv
    @[AlwaysInline]
    def vertex_attrib_1dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glVertexAttrib1s
    @[AlwaysInline]
    def vertex_attrib_1s : ::Proc(LibGL::UInt, LibGL::Short, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib1s
    @[AlwaysInline]
    def vertex_attrib_1s(address) : ::Proc(LibGL::UInt, LibGL::Short, ::Void)
      self.vertex_attrib_1s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib1sv
    @[AlwaysInline]
    def vertex_attrib_1sv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib1sv
    @[AlwaysInline]
    def vertex_attrib_1sv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
      self.vertex_attrib_1sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib2d
    @[AlwaysInline]
    def vertex_attrib_2d : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib2d
    @[AlwaysInline]
    def vertex_attrib_2d(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_attrib_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib2dv
    @[AlwaysInline]
    def vertex_attrib_2dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib2dv
    @[AlwaysInline]
    def vertex_attrib_2dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glVertexAttrib2s
    @[AlwaysInline]
    def vertex_attrib_2s : ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib2s
    @[AlwaysInline]
    def vertex_attrib_2s(address) : ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, ::Void)
      self.vertex_attrib_2s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib2sv
    @[AlwaysInline]
    def vertex_attrib_2sv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib2sv
    @[AlwaysInline]
    def vertex_attrib_2sv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
      self.vertex_attrib_2sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib3d
    @[AlwaysInline]
    def vertex_attrib_3d : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib3d
    @[AlwaysInline]
    def vertex_attrib_3d(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_attrib_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib3dv
    @[AlwaysInline]
    def vertex_attrib_3dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib3dv
    @[AlwaysInline]
    def vertex_attrib_3dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glVertexAttrib3s
    @[AlwaysInline]
    def vertex_attrib_3s : ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib3s
    @[AlwaysInline]
    def vertex_attrib_3s(address) : ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.vertex_attrib_3s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib3sv
    @[AlwaysInline]
    def vertex_attrib_3sv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib3sv
    @[AlwaysInline]
    def vertex_attrib_3sv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
      self.vertex_attrib_3sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Nbv
    @[AlwaysInline]
    def vertex_attrib_4nbv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nbv
    @[AlwaysInline]
    def vertex_attrib_4nbv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
      self.vertex_attrib_4nbv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Niv
    @[AlwaysInline]
    def vertex_attrib_4niv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttrib4Niv
    @[AlwaysInline]
    def vertex_attrib_4niv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.vertex_attrib_4niv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Nsv
    @[AlwaysInline]
    def vertex_attrib_4nsv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nsv
    @[AlwaysInline]
    def vertex_attrib_4nsv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
      self.vertex_attrib_4nsv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Nub
    @[AlwaysInline]
    def vertex_attrib_4nub : ::Proc(LibGL::UInt, LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glVertexAttrib4Nub
    @[AlwaysInline]
    def vertex_attrib_4nub(address) : ::Proc(LibGL::UInt, LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
      self.vertex_attrib_4nub.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Nubv
    @[AlwaysInline]
    def vertex_attrib_4nubv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nubv
    @[AlwaysInline]
    def vertex_attrib_4nubv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
      self.vertex_attrib_4nubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Nuiv
    @[AlwaysInline]
    def vertex_attrib_4nuiv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nuiv
    @[AlwaysInline]
    def vertex_attrib_4nuiv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_4nuiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4Nusv
    @[AlwaysInline]
    def vertex_attrib_4nusv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glVertexAttrib4Nusv
    @[AlwaysInline]
    def vertex_attrib_4nusv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
      self.vertex_attrib_4nusv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4bv
    @[AlwaysInline]
    def vertex_attrib_4bv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glVertexAttrib4bv
    @[AlwaysInline]
    def vertex_attrib_4bv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
      self.vertex_attrib_4bv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4d
    @[AlwaysInline]
    def vertex_attrib_4d : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttrib4d
    @[AlwaysInline]
    def vertex_attrib_4d(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_attrib_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4dv
    @[AlwaysInline]
    def vertex_attrib_4dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttrib4dv
    @[AlwaysInline]
    def vertex_attrib_4dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glVertexAttrib4iv
    @[AlwaysInline]
    def vertex_attrib_4iv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttrib4iv
    @[AlwaysInline]
    def vertex_attrib_4iv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.vertex_attrib_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4s
    @[AlwaysInline]
    def vertex_attrib_4s : ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
    end

    # Proc type for the function glVertexAttrib4s
    @[AlwaysInline]
    def vertex_attrib_4s(address) : ::Proc(LibGL::UInt, LibGL::Short, LibGL::Short, LibGL::Short, LibGL::Short, ::Void)
      self.vertex_attrib_4s.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4sv
    @[AlwaysInline]
    def vertex_attrib_4sv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttrib4sv
    @[AlwaysInline]
    def vertex_attrib_4sv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
      self.vertex_attrib_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4ubv
    @[AlwaysInline]
    def vertex_attrib_4ubv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glVertexAttrib4ubv
    @[AlwaysInline]
    def vertex_attrib_4ubv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
      self.vertex_attrib_4ubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4uiv
    @[AlwaysInline]
    def vertex_attrib_4uiv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttrib4uiv
    @[AlwaysInline]
    def vertex_attrib_4uiv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttrib4usv
    @[AlwaysInline]
    def vertex_attrib_4usv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glVertexAttrib4usv
    @[AlwaysInline]
    def vertex_attrib_4usv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
      self.vertex_attrib_4usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glUniformMatrix2x3fv
    @[AlwaysInline]
    def uniform_matrix2x3_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix2x3fv
    @[AlwaysInline]
    def uniform_matrix2x3_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix2x3_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix3x2fv
    @[AlwaysInline]
    def uniform_matrix3x2_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix3x2fv
    @[AlwaysInline]
    def uniform_matrix3x2_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix3x2_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix2x4fv
    @[AlwaysInline]
    def uniform_matrix2x4_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix2x4fv
    @[AlwaysInline]
    def uniform_matrix2x4_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix2x4_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix4x2fv
    @[AlwaysInline]
    def uniform_matrix4x2_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix4x2fv
    @[AlwaysInline]
    def uniform_matrix4x2_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix4x2_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix3x4fv
    @[AlwaysInline]
    def uniform_matrix3x4_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix3x4fv
    @[AlwaysInline]
    def uniform_matrix3x4_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix3x4_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix4x3fv
    @[AlwaysInline]
    def uniform_matrix4x3_fv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glUniformMatrix4x3fv
    @[AlwaysInline]
    def uniform_matrix4x3_fv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.uniform_matrix4x3_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorMaski
    @[AlwaysInline]
    def color_mask_i : ::Proc(LibGL::UInt, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glColorMaski
    @[AlwaysInline]
    def color_mask_i(address) : ::Proc(LibGL::UInt, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
      self.color_mask_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetBooleani_v
    @[AlwaysInline]
    def get_boolean_i_v : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Pointer(LibGL::Boolean), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Pointer(LibGL::Boolean), ::Void)
    end

    # Proc type for the function glGetBooleani_v
    @[AlwaysInline]
    def get_boolean_i_v(address) : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Pointer(LibGL::Boolean), ::Void)
      self.get_boolean_i_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetIntegeri_v
    @[AlwaysInline]
    def get_integer_i_v : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetIntegeri_v
    @[AlwaysInline]
    def get_integer_i_v(address) : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.get_integer_i_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEnablei
    @[AlwaysInline]
    def enable_i : ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void).class
      ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
    end

    # Proc type for the function glEnablei
    @[AlwaysInline]
    def enable_i(address) : ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
      self.enable_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDisablei
    @[AlwaysInline]
    def disable_i : ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void).class
      ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDisablei
    @[AlwaysInline]
    def disable_i(address) : ::Proc(LibGL::EnableCap, LibGL::UInt, ::Void)
      self.disable_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsEnabledi
    @[AlwaysInline]
    def is_enabled_i : ::Proc(LibGL::EnableCap, LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::EnableCap, LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsEnabledi
    @[AlwaysInline]
    def is_enabled_i(address) : ::Proc(LibGL::EnableCap, LibGL::UInt, LibGL::Boolean)
      self.is_enabled_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBeginTransformFeedback
    @[AlwaysInline]
    def begin_transform_feedback : ::Proc(LibGL::PrimitiveType, ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Void)
    end

    # Proc type for the function glBeginTransformFeedback
    @[AlwaysInline]
    def begin_transform_feedback(address) : ::Proc(LibGL::PrimitiveType, ::Void)
      self.begin_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEndTransformFeedback
    @[AlwaysInline]
    def end_transform_feedback : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glEndTransformFeedback
    @[AlwaysInline]
    def end_transform_feedback(address) : ::Proc(::Void)
      self.end_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindBufferRange
    @[AlwaysInline]
    def bind_buffer_range : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glBindBufferRange
    @[AlwaysInline]
    def bind_buffer_range(address) : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
      self.bind_buffer_range.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindBufferBase
    @[AlwaysInline]
    def bind_buffer_base : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindBufferBase
    @[AlwaysInline]
    def bind_buffer_base(address) : ::Proc(LibGL::BufferTargetARB, LibGL::UInt, LibGL::UInt, ::Void)
      self.bind_buffer_base.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTransformFeedbackVaryings
    @[AlwaysInline]
    def transform_feedback_varyings : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::TransformFeedbackBufferMode, ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::TransformFeedbackBufferMode, ::Void)
    end

    # Proc type for the function glTransformFeedbackVaryings
    @[AlwaysInline]
    def transform_feedback_varyings(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::TransformFeedbackBufferMode, ::Void)
      self.transform_feedback_varyings.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTransformFeedbackVarying
    @[AlwaysInline]
    def get_transform_feedback_varying : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetTransformFeedbackVarying
    @[AlwaysInline]
    def get_transform_feedback_varying(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::AttributeType), ::Pointer(LibGL::Char), ::Void)
      self.get_transform_feedback_varying.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClampColor
    @[AlwaysInline]
    def clamp_color : ::Proc(LibGL::ClampColorTargetARB, LibGL::ClampColorModeARB, ::Void).class
      ::Proc(LibGL::ClampColorTargetARB, LibGL::ClampColorModeARB, ::Void)
    end

    # Proc type for the function glClampColor
    @[AlwaysInline]
    def clamp_color(address) : ::Proc(LibGL::ClampColorTargetARB, LibGL::ClampColorModeARB, ::Void)
      self.clamp_color.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBeginConditionalRender
    @[AlwaysInline]
    def begin_conditional_render : ::Proc(LibGL::UInt, LibGL::ConditionalRenderMode, ::Void).class
      ::Proc(LibGL::UInt, LibGL::ConditionalRenderMode, ::Void)
    end

    # Proc type for the function glBeginConditionalRender
    @[AlwaysInline]
    def begin_conditional_render(address) : ::Proc(LibGL::UInt, LibGL::ConditionalRenderMode, ::Void)
      self.begin_conditional_render.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEndConditionalRender
    @[AlwaysInline]
    def end_conditional_render : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glEndConditionalRender
    @[AlwaysInline]
    def end_conditional_render(address) : ::Proc(::Void)
      self.end_conditional_render.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribIPointer
    @[AlwaysInline]
    def vertex_attrib_i_pointer : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glVertexAttribIPointer
    @[AlwaysInline]
    def vertex_attrib_i_pointer(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.vertex_attrib_i_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribIiv
    @[AlwaysInline]
    def get_vertex_attrib_i_iv : ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetVertexAttribIiv
    @[AlwaysInline]
    def get_vertex_attrib_i_iv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Int), ::Void)
      self.get_vertex_attrib_i_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribIuiv
    @[AlwaysInline]
    def get_vertex_attrib_i_uiv : ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetVertexAttribIuiv
    @[AlwaysInline]
    def get_vertex_attrib_i_uiv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::UInt), ::Void)
      self.get_vertex_attrib_i_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI1i
    @[AlwaysInline]
    def vertex_attrib_i_1i : ::Proc(LibGL::UInt, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI1i
    @[AlwaysInline]
    def vertex_attrib_i_1i(address) : ::Proc(LibGL::UInt, LibGL::Int, ::Void)
      self.vertex_attrib_i_1i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI2i
    @[AlwaysInline]
    def vertex_attrib_i_2i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI2i
    @[AlwaysInline]
    def vertex_attrib_i_2i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
      self.vertex_attrib_i_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI3i
    @[AlwaysInline]
    def vertex_attrib_i_3i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI3i
    @[AlwaysInline]
    def vertex_attrib_i_3i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.vertex_attrib_i_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4i
    @[AlwaysInline]
    def vertex_attrib_i_4i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glVertexAttribI4i
    @[AlwaysInline]
    def vertex_attrib_i_4i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.vertex_attrib_i_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI1ui
    @[AlwaysInline]
    def vertex_attrib_i_1ui : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI1ui
    @[AlwaysInline]
    def vertex_attrib_i_1ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_attrib_i_1ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI2ui
    @[AlwaysInline]
    def vertex_attrib_i_2ui : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI2ui
    @[AlwaysInline]
    def vertex_attrib_i_2ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_attrib_i_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI3ui
    @[AlwaysInline]
    def vertex_attrib_i_3ui : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI3ui
    @[AlwaysInline]
    def vertex_attrib_i_3ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_attrib_i_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4ui
    @[AlwaysInline]
    def vertex_attrib_i_4ui : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribI4ui
    @[AlwaysInline]
    def vertex_attrib_i_4ui(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_attrib_i_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI1iv
    @[AlwaysInline]
    def vertex_attrib_i_1iv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI1iv
    @[AlwaysInline]
    def vertex_attrib_i_1iv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.vertex_attrib_i_1iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI2iv
    @[AlwaysInline]
    def vertex_attrib_i_2iv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI2iv
    @[AlwaysInline]
    def vertex_attrib_i_2iv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.vertex_attrib_i_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI3iv
    @[AlwaysInline]
    def vertex_attrib_i_3iv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI3iv
    @[AlwaysInline]
    def vertex_attrib_i_3iv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.vertex_attrib_i_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4iv
    @[AlwaysInline]
    def vertex_attrib_i_4iv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glVertexAttribI4iv
    @[AlwaysInline]
    def vertex_attrib_i_4iv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.vertex_attrib_i_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI1uiv
    @[AlwaysInline]
    def vertex_attrib_i_1uiv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI1uiv
    @[AlwaysInline]
    def vertex_attrib_i_1uiv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_i_1uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI2uiv
    @[AlwaysInline]
    def vertex_attrib_i_2uiv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI2uiv
    @[AlwaysInline]
    def vertex_attrib_i_2uiv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_i_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI3uiv
    @[AlwaysInline]
    def vertex_attrib_i_3uiv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI3uiv
    @[AlwaysInline]
    def vertex_attrib_i_3uiv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_i_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4uiv
    @[AlwaysInline]
    def vertex_attrib_i_4uiv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribI4uiv
    @[AlwaysInline]
    def vertex_attrib_i_4uiv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_i_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4bv
    @[AlwaysInline]
    def vertex_attrib_i_4bv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
    end

    # Proc type for the function glVertexAttribI4bv
    @[AlwaysInline]
    def vertex_attrib_i_4bv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Byte), ::Void)
      self.vertex_attrib_i_4bv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4sv
    @[AlwaysInline]
    def vertex_attrib_i_4sv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
    end

    # Proc type for the function glVertexAttribI4sv
    @[AlwaysInline]
    def vertex_attrib_i_4sv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Short), ::Void)
      self.vertex_attrib_i_4sv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4ubv
    @[AlwaysInline]
    def vertex_attrib_i_4ubv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
    end

    # Proc type for the function glVertexAttribI4ubv
    @[AlwaysInline]
    def vertex_attrib_i_4ubv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UByte), ::Void)
      self.vertex_attrib_i_4ubv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribI4usv
    @[AlwaysInline]
    def vertex_attrib_i_4usv : ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
    end

    # Proc type for the function glVertexAttribI4usv
    @[AlwaysInline]
    def vertex_attrib_i_4usv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::UShort), ::Void)
      self.vertex_attrib_i_4usv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformuiv
    @[AlwaysInline]
    def get_uniform_uiv : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetUniformuiv
    @[AlwaysInline]
    def get_uniform_uiv(address) : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
      self.get_uniform_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindFragDataLocation
    @[AlwaysInline]
    def bind_frag_data_location : ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glBindFragDataLocation
    @[AlwaysInline]
    def bind_frag_data_location(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
      self.bind_frag_data_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetFragDataLocation
    @[AlwaysInline]
    def get_frag_data_location : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetFragDataLocation
    @[AlwaysInline]
    def get_frag_data_location(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_frag_data_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1ui
    @[AlwaysInline]
    def uniform_1ui : ::Proc(LibGL::Int, LibGL::UInt, ::Void).class
      ::Proc(LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform1ui
    @[AlwaysInline]
    def uniform_1ui(address) : ::Proc(LibGL::Int, LibGL::UInt, ::Void)
      self.uniform_1ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2ui
    @[AlwaysInline]
    def uniform_2ui : ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform2ui
    @[AlwaysInline]
    def uniform_2ui(address) : ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
      self.uniform_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3ui
    @[AlwaysInline]
    def uniform_3ui : ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform3ui
    @[AlwaysInline]
    def uniform_3ui(address) : ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.uniform_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4ui
    @[AlwaysInline]
    def uniform_4ui : ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniform4ui
    @[AlwaysInline]
    def uniform_4ui(address) : ::Proc(LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.uniform_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1uiv
    @[AlwaysInline]
    def uniform_1uiv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform1uiv
    @[AlwaysInline]
    def uniform_1uiv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.uniform_1uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2uiv
    @[AlwaysInline]
    def uniform_2uiv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform2uiv
    @[AlwaysInline]
    def uniform_2uiv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.uniform_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3uiv
    @[AlwaysInline]
    def uniform_3uiv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform3uiv
    @[AlwaysInline]
    def uniform_3uiv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.uniform_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4uiv
    @[AlwaysInline]
    def uniform_4uiv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniform4uiv
    @[AlwaysInline]
    def uniform_4uiv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.uniform_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexParameterIiv
    @[AlwaysInline]
    def tex_parameter_i_iv : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexParameterIiv
    @[AlwaysInline]
    def tex_parameter_i_iv(address) : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
      self.tex_parameter_i_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexParameterIuiv
    @[AlwaysInline]
    def tex_parameter_i_uiv : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glTexParameterIuiv
    @[AlwaysInline]
    def tex_parameter_i_uiv(address) : ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::UInt), ::Void)
      self.tex_parameter_i_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexParameterIiv
    @[AlwaysInline]
    def get_tex_parameter_i_iv : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexParameterIiv
    @[AlwaysInline]
    def get_tex_parameter_i_iv(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
      self.get_tex_parameter_i_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetTexParameterIuiv
    @[AlwaysInline]
    def get_tex_parameter_i_uiv : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetTexParameterIuiv
    @[AlwaysInline]
    def get_tex_parameter_i_uiv(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::UInt), ::Void)
      self.get_tex_parameter_i_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearBufferiv
    @[AlwaysInline]
    def clear_buffer_iv : ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glClearBufferiv
    @[AlwaysInline]
    def clear_buffer_iv(address) : ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Int), ::Void)
      self.clear_buffer_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearBufferuiv
    @[AlwaysInline]
    def clear_buffer_uiv : ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glClearBufferuiv
    @[AlwaysInline]
    def clear_buffer_uiv(address) : ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
      self.clear_buffer_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearBufferfv
    @[AlwaysInline]
    def clear_buffer_fv : ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glClearBufferfv
    @[AlwaysInline]
    def clear_buffer_fv(address) : ::Proc(LibGL::Buffer, LibGL::Int, ::Pointer(LibGL::Float), ::Void)
      self.clear_buffer_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearBufferfi
    @[AlwaysInline]
    def clear_buffer_fi : ::Proc(LibGL::Buffer, LibGL::Int, LibGL::Float, LibGL::Int, ::Void).class
      ::Proc(LibGL::Buffer, LibGL::Int, LibGL::Float, LibGL::Int, ::Void)
    end

    # Proc type for the function glClearBufferfi
    @[AlwaysInline]
    def clear_buffer_fi(address) : ::Proc(LibGL::Buffer, LibGL::Int, LibGL::Float, LibGL::Int, ::Void)
      self.clear_buffer_fi.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetStringi
    @[AlwaysInline]
    def get_string_i : ::Proc(LibGL::StringName, LibGL::UInt, ::Pointer(LibGL::UByte)).class
      ::Proc(LibGL::StringName, LibGL::UInt, ::Pointer(LibGL::UByte))
    end

    # Proc type for the function glGetStringi
    @[AlwaysInline]
    def get_string_i(address) : ::Proc(LibGL::StringName, LibGL::UInt, ::Pointer(LibGL::UByte))
      self.get_string_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsRenderbuffer
    @[AlwaysInline]
    def is_renderbuffer : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsRenderbuffer
    @[AlwaysInline]
    def is_renderbuffer(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_renderbuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDeleteRenderbuffers
    @[AlwaysInline]
    def delete_renderbuffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteRenderbuffers
    @[AlwaysInline]
    def delete_renderbuffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_renderbuffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glIsFramebuffer
    @[AlwaysInline]
    def is_framebuffer : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsFramebuffer
    @[AlwaysInline]
    def is_framebuffer(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_framebuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDeleteFramebuffers
    @[AlwaysInline]
    def delete_framebuffers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteFramebuffers
    @[AlwaysInline]
    def delete_framebuffers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_framebuffers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glFramebufferTexture1D
    @[AlwaysInline]
    def framebuffer_texture_1d : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTexture1D
    @[AlwaysInline]
    def framebuffer_texture_1d(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, ::Void)
      self.framebuffer_texture_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glFramebufferTexture3D
    @[AlwaysInline]
    def framebuffer_texture_3d : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTexture3D
    @[AlwaysInline]
    def framebuffer_texture_3d(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::TextureTarget, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
      self.framebuffer_texture_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glBlitFramebuffer
    @[AlwaysInline]
    def blit_framebuffer : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::ClearBufferMask, LibGL::BlitFramebufferFilter, ::Void).class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::ClearBufferMask, LibGL::BlitFramebufferFilter, ::Void)
    end

    # Proc type for the function glBlitFramebuffer
    @[AlwaysInline]
    def blit_framebuffer(address) : ::Proc(LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::ClearBufferMask, LibGL::BlitFramebufferFilter, ::Void)
      self.blit_framebuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glRenderbufferStorageMultisample
    @[AlwaysInline]
    def renderbuffer_storage_multisample : ::Proc(LibGL::RenderbufferTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::RenderbufferTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glRenderbufferStorageMultisample
    @[AlwaysInline]
    def renderbuffer_storage_multisample(address) : ::Proc(LibGL::RenderbufferTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.renderbuffer_storage_multisample.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFramebufferTextureLayer
    @[AlwaysInline]
    def framebuffer_texture_layer : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTextureLayer
    @[AlwaysInline]
    def framebuffer_texture_layer(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
      self.framebuffer_texture_layer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMapBufferRange
    @[AlwaysInline]
    def map_buffer_range : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::MapBufferAccessMask, ::Pointer(Void)).class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::MapBufferAccessMask, ::Pointer(Void))
    end

    # Proc type for the function glMapBufferRange
    @[AlwaysInline]
    def map_buffer_range(address) : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::MapBufferAccessMask, ::Pointer(Void))
      self.map_buffer_range.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFlushMappedBufferRange
    @[AlwaysInline]
    def flush_mapped_buffer_range : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glFlushMappedBufferRange
    @[AlwaysInline]
    def flush_mapped_buffer_range(address) : ::Proc(LibGL::BufferTargetARB, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
      self.flush_mapped_buffer_range.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindVertexArray
    @[AlwaysInline]
    def bind_vertex_array : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindVertexArray
    @[AlwaysInline]
    def bind_vertex_array(address) : ::Proc(LibGL::UInt, ::Void)
      self.bind_vertex_array.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteVertexArrays
    @[AlwaysInline]
    def delete_vertex_arrays : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteVertexArrays
    @[AlwaysInline]
    def delete_vertex_arrays(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_vertex_arrays.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenVertexArrays
    @[AlwaysInline]
    def gen_vertex_arrays : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenVertexArrays
    @[AlwaysInline]
    def gen_vertex_arrays(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_vertex_arrays.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsVertexArray
    @[AlwaysInline]
    def is_vertex_array : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsVertexArray
    @[AlwaysInline]
    def is_vertex_array(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_vertex_array.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawArraysInstanced
    @[AlwaysInline]
    def draw_arrays_instanced : ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawArraysInstanced
    @[AlwaysInline]
    def draw_arrays_instanced(address) : ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.draw_arrays_instanced.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawElementsInstanced
    @[AlwaysInline]
    def draw_elements_instanced : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawElementsInstanced
    @[AlwaysInline]
    def draw_elements_instanced(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, ::Void)
      self.draw_elements_instanced.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexBuffer
    @[AlwaysInline]
    def tex_buffer : ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTexBuffer
    @[AlwaysInline]
    def tex_buffer(address) : ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, ::Void)
      self.tex_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPrimitiveRestartIndex
    @[AlwaysInline]
    def primitive_restart_index : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glPrimitiveRestartIndex
    @[AlwaysInline]
    def primitive_restart_index(address) : ::Proc(LibGL::UInt, ::Void)
      self.primitive_restart_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyBufferSubData
    @[AlwaysInline]
    def copy_buffer_sub_data : ::Proc(LibGL::CopyBufferSubDataTarget, LibGL::CopyBufferSubDataTarget, LibGL::IntPtr, LibGL::IntPtr, LibGL::SizeIPtr, ::Void).class
      ::Proc(LibGL::CopyBufferSubDataTarget, LibGL::CopyBufferSubDataTarget, LibGL::IntPtr, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glCopyBufferSubData
    @[AlwaysInline]
    def copy_buffer_sub_data(address) : ::Proc(LibGL::CopyBufferSubDataTarget, LibGL::CopyBufferSubDataTarget, LibGL::IntPtr, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
      self.copy_buffer_sub_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformIndices
    @[AlwaysInline]
    def get_uniform_indices : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetUniformIndices
    @[AlwaysInline]
    def get_uniform_indices(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), ::Pointer(LibGL::UInt), ::Void)
      self.get_uniform_indices.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveUniformsiv
    @[AlwaysInline]
    def get_active_uniforms_iv : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::UniformPName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::UniformPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveUniformsiv
    @[AlwaysInline]
    def get_active_uniforms_iv(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::UniformPName, ::Pointer(LibGL::Int), ::Void)
      self.get_active_uniforms_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveUniformName
    @[AlwaysInline]
    def get_active_uniform_name : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveUniformName
    @[AlwaysInline]
    def get_active_uniform_name(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_active_uniform_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformBlockIndex
    @[AlwaysInline]
    def get_uniform_block_index : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::UInt).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # Proc type for the function glGetUniformBlockIndex
    @[AlwaysInline]
    def get_uniform_block_index(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::UInt)
      self.get_uniform_block_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveUniformBlockiv
    @[AlwaysInline]
    def get_active_uniform_block_iv : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UniformBlockPName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UniformBlockPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveUniformBlockiv
    @[AlwaysInline]
    def get_active_uniform_block_iv(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UniformBlockPName, ::Pointer(LibGL::Int), ::Void)
      self.get_active_uniform_block_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveUniformBlockName
    @[AlwaysInline]
    def get_active_uniform_block_name : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveUniformBlockName
    @[AlwaysInline]
    def get_active_uniform_block_name(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_active_uniform_block_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformBlockBinding
    @[AlwaysInline]
    def uniform_block_binding : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUniformBlockBinding
    @[AlwaysInline]
    def uniform_block_binding(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.uniform_block_binding.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawElementsBaseVertex
    @[AlwaysInline]
    def draw_elements_base_vertex : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
    end

    # Proc type for the function glDrawElementsBaseVertex
    @[AlwaysInline]
    def draw_elements_base_vertex(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
      self.draw_elements_base_vertex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawRangeElementsBaseVertex
    @[AlwaysInline]
    def draw_range_elements_base_vertex : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
    end

    # Proc type for the function glDrawRangeElementsBaseVertex
    @[AlwaysInline]
    def draw_range_elements_base_vertex(address) : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::Int, ::Void)
      self.draw_range_elements_base_vertex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawElementsInstancedBaseVertex
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glDrawElementsInstancedBaseVertex
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, ::Void)
      self.draw_elements_instanced_base_vertex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiDrawElementsBaseVertex
    @[AlwaysInline]
    def multi_draw_elements_base_vertex : ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glMultiDrawElementsBaseVertex
    @[AlwaysInline]
    def multi_draw_elements_base_vertex(address) : ::Proc(LibGL::PrimitiveType, ::Pointer(LibGL::SizeI), LibGL::DrawElementsType, ::Pointer(Pointer(Void)), LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.multi_draw_elements_base_vertex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProvokingVertex
    @[AlwaysInline]
    def provoking_vertex : ::Proc(LibGL::VertexProvokingMode, ::Void).class
      ::Proc(LibGL::VertexProvokingMode, ::Void)
    end

    # Proc type for the function glProvokingVertex
    @[AlwaysInline]
    def provoking_vertex(address) : ::Proc(LibGL::VertexProvokingMode, ::Void)
      self.provoking_vertex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFenceSync
    @[AlwaysInline]
    def fence_sync : ::Proc(LibGL::SyncCondition, LibGL::SyncBehaviorFlags, LibGL::Sync).class
      ::Proc(LibGL::SyncCondition, LibGL::SyncBehaviorFlags, LibGL::Sync)
    end

    # Proc type for the function glFenceSync
    @[AlwaysInline]
    def fence_sync(address) : ::Proc(LibGL::SyncCondition, LibGL::SyncBehaviorFlags, LibGL::Sync)
      self.fence_sync.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsSync
    @[AlwaysInline]
    def is_sync : ::Proc(LibGL::Sync, LibGL::Boolean).class
      ::Proc(LibGL::Sync, LibGL::Boolean)
    end

    # Proc type for the function glIsSync
    @[AlwaysInline]
    def is_sync(address) : ::Proc(LibGL::Sync, LibGL::Boolean)
      self.is_sync.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteSync
    @[AlwaysInline]
    def delete_sync : ::Proc(LibGL::Sync, ::Void).class
      ::Proc(LibGL::Sync, ::Void)
    end

    # Proc type for the function glDeleteSync
    @[AlwaysInline]
    def delete_sync(address) : ::Proc(LibGL::Sync, ::Void)
      self.delete_sync.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClientWaitSync
    @[AlwaysInline]
    def client_wait_sync : ::Proc(LibGL::Sync, LibGL::SyncObjectMask, LibGL::UInt64, LibGL::Enum).class
      ::Proc(LibGL::Sync, LibGL::SyncObjectMask, LibGL::UInt64, LibGL::Enum)
    end

    # Proc type for the function glClientWaitSync
    @[AlwaysInline]
    def client_wait_sync(address) : ::Proc(LibGL::Sync, LibGL::SyncObjectMask, LibGL::UInt64, LibGL::Enum)
      self.client_wait_sync.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glWaitSync
    @[AlwaysInline]
    def wait_sync : ::Proc(LibGL::Sync, LibGL::SyncBehaviorFlags, LibGL::UInt64, ::Void).class
      ::Proc(LibGL::Sync, LibGL::SyncBehaviorFlags, LibGL::UInt64, ::Void)
    end

    # Proc type for the function glWaitSync
    @[AlwaysInline]
    def wait_sync(address) : ::Proc(LibGL::Sync, LibGL::SyncBehaviorFlags, LibGL::UInt64, ::Void)
      self.wait_sync.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetInteger64v
    @[AlwaysInline]
    def get_integer_64v : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int64), ::Void).class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetInteger64v
    @[AlwaysInline]
    def get_integer_64v(address) : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int64), ::Void)
      self.get_integer_64v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSynciv
    @[AlwaysInline]
    def get_sync_iv : ::Proc(LibGL::Sync, LibGL::SyncParameterName, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::Sync, LibGL::SyncParameterName, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetSynciv
    @[AlwaysInline]
    def get_sync_iv(address) : ::Proc(LibGL::Sync, LibGL::SyncParameterName, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
      self.get_sync_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetInteger64i_v
    @[AlwaysInline]
    def get_integer_64i_v : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int64), ::Void).class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetInteger64i_v
    @[AlwaysInline]
    def get_integer_64i_v(address) : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Int64), ::Void)
      self.get_integer_64i_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetBufferParameteri64v
    @[AlwaysInline]
    def get_buffer_parameter_i64v : ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int64), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetBufferParameteri64v
    @[AlwaysInline]
    def get_buffer_parameter_i64v(address) : ::Proc(LibGL::BufferTargetARB, LibGL::BufferPNameARB, ::Pointer(LibGL::Int64), ::Void)
      self.get_buffer_parameter_i64v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFramebufferTexture
    @[AlwaysInline]
    def framebuffer_texture : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferTexture
    @[AlwaysInline]
    def framebuffer_texture(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachment, LibGL::UInt, LibGL::Int, ::Void)
      self.framebuffer_texture.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexImage2DMultisample
    @[AlwaysInline]
    def tex_image_2d_multisample : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glTexImage2DMultisample
    @[AlwaysInline]
    def tex_image_2d_multisample(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
      self.tex_image_2d_multisample.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexImage3DMultisample
    @[AlwaysInline]
    def tex_image_3d_multisample : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glTexImage3DMultisample
    @[AlwaysInline]
    def tex_image_3d_multisample(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
      self.tex_image_3d_multisample.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMultisamplefv
    @[AlwaysInline]
    def get_multisample_fv : ::Proc(LibGL::GetMultisamplePNameNV, LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::GetMultisamplePNameNV, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetMultisamplefv
    @[AlwaysInline]
    def get_multisample_fv(address) : ::Proc(LibGL::GetMultisamplePNameNV, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.get_multisample_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSampleMaski
    @[AlwaysInline]
    def sample_mask_i : ::Proc(LibGL::UInt, LibGL::Bitfield, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Bitfield, ::Void)
    end

    # Proc type for the function glSampleMaski
    @[AlwaysInline]
    def sample_mask_i(address) : ::Proc(LibGL::UInt, LibGL::Bitfield, ::Void)
      self.sample_mask_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindFragDataLocationIndexed
    @[AlwaysInline]
    def bind_frag_data_location_indexed : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glBindFragDataLocationIndexed
    @[AlwaysInline]
    def bind_frag_data_location_indexed(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Pointer(LibGL::Char), ::Void)
      self.bind_frag_data_location_indexed.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetFragDataIndex
    @[AlwaysInline]
    def get_frag_data_index : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetFragDataIndex
    @[AlwaysInline]
    def get_frag_data_index(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_frag_data_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenSamplers
    @[AlwaysInline]
    def gen_samplers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenSamplers
    @[AlwaysInline]
    def gen_samplers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_samplers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteSamplers
    @[AlwaysInline]
    def delete_samplers : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteSamplers
    @[AlwaysInline]
    def delete_samplers(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_samplers.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsSampler
    @[AlwaysInline]
    def is_sampler : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsSampler
    @[AlwaysInline]
    def is_sampler(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_sampler.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindSampler
    @[AlwaysInline]
    def bind_sampler : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindSampler
    @[AlwaysInline]
    def bind_sampler(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.bind_sampler.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSamplerParameteri
    @[AlwaysInline]
    def sampler_parameter_i : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, LibGL::Int, ::Void)
    end

    # Proc type for the function glSamplerParameteri
    @[AlwaysInline]
    def sampler_parameter_i(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, LibGL::Int, ::Void)
      self.sampler_parameter_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSamplerParameteriv
    @[AlwaysInline]
    def sampler_parameter_iv : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glSamplerParameteriv
    @[AlwaysInline]
    def sampler_parameter_iv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
      self.sampler_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSamplerParameterf
    @[AlwaysInline]
    def sampler_parameter_f : ::Proc(LibGL::UInt, LibGL::SamplerParameterF, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, LibGL::Float, ::Void)
    end

    # Proc type for the function glSamplerParameterf
    @[AlwaysInline]
    def sampler_parameter_f(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterF, LibGL::Float, ::Void)
      self.sampler_parameter_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSamplerParameterfv
    @[AlwaysInline]
    def sampler_parameter_fv : ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glSamplerParameterfv
    @[AlwaysInline]
    def sampler_parameter_fv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
      self.sampler_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSamplerParameterIiv
    @[AlwaysInline]
    def sampler_parameter_i_iv : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glSamplerParameterIiv
    @[AlwaysInline]
    def sampler_parameter_i_iv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
      self.sampler_parameter_i_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSamplerParameterIuiv
    @[AlwaysInline]
    def sampler_parameter_i_uiv : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glSamplerParameterIuiv
    @[AlwaysInline]
    def sampler_parameter_i_uiv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
      self.sampler_parameter_i_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSamplerParameteriv
    @[AlwaysInline]
    def get_sampler_parameter_iv : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetSamplerParameteriv
    @[AlwaysInline]
    def get_sampler_parameter_iv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
      self.get_sampler_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSamplerParameterIiv
    @[AlwaysInline]
    def get_sampler_parameter_i_iv : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetSamplerParameterIiv
    @[AlwaysInline]
    def get_sampler_parameter_i_iv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::Int), ::Void)
      self.get_sampler_parameter_i_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSamplerParameterfv
    @[AlwaysInline]
    def get_sampler_parameter_fv : ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetSamplerParameterfv
    @[AlwaysInline]
    def get_sampler_parameter_fv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterF, ::Pointer(LibGL::Float), ::Void)
      self.get_sampler_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSamplerParameterIuiv
    @[AlwaysInline]
    def get_sampler_parameter_i_uiv : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetSamplerParameterIuiv
    @[AlwaysInline]
    def get_sampler_parameter_i_uiv(address) : ::Proc(LibGL::UInt, LibGL::SamplerParameterI, ::Pointer(LibGL::UInt), ::Void)
      self.get_sampler_parameter_i_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glQueryCounter
    @[AlwaysInline]
    def query_counter : ::Proc(LibGL::UInt, LibGL::QueryCounterTarget, ::Void).class
      ::Proc(LibGL::UInt, LibGL::QueryCounterTarget, ::Void)
    end

    # Proc type for the function glQueryCounter
    @[AlwaysInline]
    def query_counter(address) : ::Proc(LibGL::UInt, LibGL::QueryCounterTarget, ::Void)
      self.query_counter.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetQueryObjecti64v
    @[AlwaysInline]
    def get_query_object_i64v : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int64), ::Void).class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetQueryObjecti64v
    @[AlwaysInline]
    def get_query_object_i64v(address) : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::Int64), ::Void)
      self.get_query_object_i64v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetQueryObjectui64v
    @[AlwaysInline]
    def get_query_object_ui64v : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt64), ::Void).class
      ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt64), ::Void)
    end

    # Proc type for the function glGetQueryObjectui64v
    @[AlwaysInline]
    def get_query_object_ui64v(address) : ::Proc(LibGL::UInt, LibGL::QueryObjectParameterName, ::Pointer(LibGL::UInt64), ::Void)
      self.get_query_object_ui64v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribDivisor
    @[AlwaysInline]
    def vertex_attrib_divisor : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribDivisor
    @[AlwaysInline]
    def vertex_attrib_divisor(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_attrib_divisor.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP1ui
    @[AlwaysInline]
    def vertex_attrib_p_1ui : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP1ui
    @[AlwaysInline]
    def vertex_attrib_p_1ui(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
      self.vertex_attrib_p_1ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP1uiv
    @[AlwaysInline]
    def vertex_attrib_p_1uiv : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP1uiv
    @[AlwaysInline]
    def vertex_attrib_p_1uiv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_p_1uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP2ui
    @[AlwaysInline]
    def vertex_attrib_p_2ui : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP2ui
    @[AlwaysInline]
    def vertex_attrib_p_2ui(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
      self.vertex_attrib_p_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP2uiv
    @[AlwaysInline]
    def vertex_attrib_p_2uiv : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP2uiv
    @[AlwaysInline]
    def vertex_attrib_p_2uiv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_p_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP3ui
    @[AlwaysInline]
    def vertex_attrib_p_3ui : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP3ui
    @[AlwaysInline]
    def vertex_attrib_p_3ui(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
      self.vertex_attrib_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP3uiv
    @[AlwaysInline]
    def vertex_attrib_p_3uiv : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP3uiv
    @[AlwaysInline]
    def vertex_attrib_p_3uiv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP4ui
    @[AlwaysInline]
    def vertex_attrib_p_4ui : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribP4ui
    @[AlwaysInline]
    def vertex_attrib_p_4ui(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, LibGL::UInt, ::Void)
      self.vertex_attrib_p_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribP4uiv
    @[AlwaysInline]
    def vertex_attrib_p_4uiv : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexAttribP4uiv
    @[AlwaysInline]
    def vertex_attrib_p_4uiv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribPointerType, LibGL::Boolean, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_attrib_p_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexP2ui
    @[AlwaysInline]
    def vertex_p_2ui : ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexP2ui
    @[AlwaysInline]
    def vertex_p_2ui(address) : ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
      self.vertex_p_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexP2uiv
    @[AlwaysInline]
    def vertex_p_2uiv : ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexP2uiv
    @[AlwaysInline]
    def vertex_p_2uiv(address) : ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_p_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexP3ui
    @[AlwaysInline]
    def vertex_p_3ui : ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexP3ui
    @[AlwaysInline]
    def vertex_p_3ui(address) : ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
      self.vertex_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexP3uiv
    @[AlwaysInline]
    def vertex_p_3uiv : ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexP3uiv
    @[AlwaysInline]
    def vertex_p_3uiv(address) : ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexP4ui
    @[AlwaysInline]
    def vertex_p_4ui : ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexP4ui
    @[AlwaysInline]
    def vertex_p_4ui(address) : ::Proc(LibGL::VertexPointerType, LibGL::UInt, ::Void)
      self.vertex_p_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexP4uiv
    @[AlwaysInline]
    def vertex_p_4uiv : ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glVertexP4uiv
    @[AlwaysInline]
    def vertex_p_4uiv(address) : ::Proc(LibGL::VertexPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.vertex_p_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP1ui
    @[AlwaysInline]
    def tex_coord_p_1ui : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTexCoordP1ui
    @[AlwaysInline]
    def tex_coord_p_1ui(address) : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.tex_coord_p_1ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP1uiv
    @[AlwaysInline]
    def tex_coord_p_1uiv : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glTexCoordP1uiv
    @[AlwaysInline]
    def tex_coord_p_1uiv(address) : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.tex_coord_p_1uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP2ui
    @[AlwaysInline]
    def tex_coord_p_2ui : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTexCoordP2ui
    @[AlwaysInline]
    def tex_coord_p_2ui(address) : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.tex_coord_p_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP2uiv
    @[AlwaysInline]
    def tex_coord_p_2uiv : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glTexCoordP2uiv
    @[AlwaysInline]
    def tex_coord_p_2uiv(address) : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.tex_coord_p_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP3ui
    @[AlwaysInline]
    def tex_coord_p_3ui : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTexCoordP3ui
    @[AlwaysInline]
    def tex_coord_p_3ui(address) : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.tex_coord_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP3uiv
    @[AlwaysInline]
    def tex_coord_p_3uiv : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glTexCoordP3uiv
    @[AlwaysInline]
    def tex_coord_p_3uiv(address) : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.tex_coord_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP4ui
    @[AlwaysInline]
    def tex_coord_p_4ui : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTexCoordP4ui
    @[AlwaysInline]
    def tex_coord_p_4ui(address) : ::Proc(LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.tex_coord_p_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexCoordP4uiv
    @[AlwaysInline]
    def tex_coord_p_4uiv : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glTexCoordP4uiv
    @[AlwaysInline]
    def tex_coord_p_4uiv(address) : ::Proc(LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.tex_coord_p_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP1ui
    @[AlwaysInline]
    def multi_tex_coord_p_1ui : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glMultiTexCoordP1ui
    @[AlwaysInline]
    def multi_tex_coord_p_1ui(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.multi_tex_coord_p_1ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP1uiv
    @[AlwaysInline]
    def multi_tex_coord_p_1uiv : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glMultiTexCoordP1uiv
    @[AlwaysInline]
    def multi_tex_coord_p_1uiv(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.multi_tex_coord_p_1uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP2ui
    @[AlwaysInline]
    def multi_tex_coord_p_2ui : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glMultiTexCoordP2ui
    @[AlwaysInline]
    def multi_tex_coord_p_2ui(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.multi_tex_coord_p_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP2uiv
    @[AlwaysInline]
    def multi_tex_coord_p_2uiv : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glMultiTexCoordP2uiv
    @[AlwaysInline]
    def multi_tex_coord_p_2uiv(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.multi_tex_coord_p_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP3ui
    @[AlwaysInline]
    def multi_tex_coord_p_3ui : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glMultiTexCoordP3ui
    @[AlwaysInline]
    def multi_tex_coord_p_3ui(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.multi_tex_coord_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP3uiv
    @[AlwaysInline]
    def multi_tex_coord_p_3uiv : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glMultiTexCoordP3uiv
    @[AlwaysInline]
    def multi_tex_coord_p_3uiv(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.multi_tex_coord_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP4ui
    @[AlwaysInline]
    def multi_tex_coord_p_4ui : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glMultiTexCoordP4ui
    @[AlwaysInline]
    def multi_tex_coord_p_4ui(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, LibGL::UInt, ::Void)
      self.multi_tex_coord_p_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoordP4uiv
    @[AlwaysInline]
    def multi_tex_coord_p_4uiv : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glMultiTexCoordP4uiv
    @[AlwaysInline]
    def multi_tex_coord_p_4uiv(address) : ::Proc(LibGL::TextureUnit, LibGL::TexCoordPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.multi_tex_coord_p_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormalP3ui
    @[AlwaysInline]
    def normal_p_3ui : ::Proc(LibGL::NormalPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::NormalPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glNormalP3ui
    @[AlwaysInline]
    def normal_p_3ui(address) : ::Proc(LibGL::NormalPointerType, LibGL::UInt, ::Void)
      self.normal_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormalP3uiv
    @[AlwaysInline]
    def normal_p_3uiv : ::Proc(LibGL::NormalPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::NormalPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glNormalP3uiv
    @[AlwaysInline]
    def normal_p_3uiv(address) : ::Proc(LibGL::NormalPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.normal_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorP3ui
    @[AlwaysInline]
    def color_p_3ui : ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glColorP3ui
    @[AlwaysInline]
    def color_p_3ui(address) : ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
      self.color_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorP3uiv
    @[AlwaysInline]
    def color_p_3uiv : ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glColorP3uiv
    @[AlwaysInline]
    def color_p_3uiv(address) : ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.color_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorP4ui
    @[AlwaysInline]
    def color_p_4ui : ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glColorP4ui
    @[AlwaysInline]
    def color_p_4ui(address) : ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
      self.color_p_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glColorP4uiv
    @[AlwaysInline]
    def color_p_4uiv : ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glColorP4uiv
    @[AlwaysInline]
    def color_p_4uiv(address) : ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.color_p_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColorP3ui
    @[AlwaysInline]
    def secondary_color_p_3ui : ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glSecondaryColorP3ui
    @[AlwaysInline]
    def secondary_color_p_3ui(address) : ::Proc(LibGL::ColorPointerType, LibGL::UInt, ::Void)
      self.secondary_color_p_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glSecondaryColorP3uiv
    @[AlwaysInline]
    def secondary_color_p_3uiv : ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glSecondaryColorP3uiv
    @[AlwaysInline]
    def secondary_color_p_3uiv(address) : ::Proc(LibGL::ColorPointerType, ::Pointer(LibGL::UInt), ::Void)
      self.secondary_color_p_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMinSampleShading
    @[AlwaysInline]
    def min_sample_shading : ::Proc(LibGL::Float, ::Void).class
      ::Proc(LibGL::Float, ::Void)
    end

    # Proc type for the function glMinSampleShading
    @[AlwaysInline]
    def min_sample_shading(address) : ::Proc(LibGL::Float, ::Void)
      self.min_sample_shading.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendEquationi
    @[AlwaysInline]
    def blend_equation_i : ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, ::Void).class
      ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendEquationi
    @[AlwaysInline]
    def blend_equation_i(address) : ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, ::Void)
      self.blend_equation_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendEquationSeparatei
    @[AlwaysInline]
    def blend_equation_separate_i : ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void).class
      ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
    end

    # Proc type for the function glBlendEquationSeparatei
    @[AlwaysInline]
    def blend_equation_separate_i(address) : ::Proc(LibGL::UInt, LibGL::BlendEquationModeEXT, LibGL::BlendEquationModeEXT, ::Void)
      self.blend_equation_separate_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendFunci
    @[AlwaysInline]
    def blend_func_i : ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void).class
      ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glBlendFunci
    @[AlwaysInline]
    def blend_func_i(address) : ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
      self.blend_func_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBlendFuncSeparatei
    @[AlwaysInline]
    def blend_func_separate_i : ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void).class
      ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
    end

    # Proc type for the function glBlendFuncSeparatei
    @[AlwaysInline]
    def blend_func_separate_i(address) : ::Proc(LibGL::UInt, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
      self.blend_func_separate_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawArraysIndirect
    @[AlwaysInline]
    def draw_arrays_indirect : ::Proc(LibGL::PrimitiveType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawArraysIndirect
    @[AlwaysInline]
    def draw_arrays_indirect(address) : ::Proc(LibGL::PrimitiveType, ::Pointer(Void), ::Void)
      self.draw_arrays_indirect.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawElementsIndirect
    @[AlwaysInline]
    def draw_elements_indirect : ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDrawElementsIndirect
    @[AlwaysInline]
    def draw_elements_indirect(address) : ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), ::Void)
      self.draw_elements_indirect.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1d
    @[AlwaysInline]
    def uniform_1d : ::Proc(LibGL::Int, LibGL::Double, ::Void).class
      ::Proc(LibGL::Int, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform1d
    @[AlwaysInline]
    def uniform_1d(address) : ::Proc(LibGL::Int, LibGL::Double, ::Void)
      self.uniform_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2d
    @[AlwaysInline]
    def uniform_2d : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform2d
    @[AlwaysInline]
    def uniform_2d(address) : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
      self.uniform_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3d
    @[AlwaysInline]
    def uniform_3d : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform3d
    @[AlwaysInline]
    def uniform_3d(address) : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.uniform_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4d
    @[AlwaysInline]
    def uniform_4d : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glUniform4d
    @[AlwaysInline]
    def uniform_4d(address) : ::Proc(LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.uniform_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform1dv
    @[AlwaysInline]
    def uniform_1dv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform1dv
    @[AlwaysInline]
    def uniform_1dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.uniform_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform2dv
    @[AlwaysInline]
    def uniform_2dv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform2dv
    @[AlwaysInline]
    def uniform_2dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.uniform_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform3dv
    @[AlwaysInline]
    def uniform_3dv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform3dv
    @[AlwaysInline]
    def uniform_3dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.uniform_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniform4dv
    @[AlwaysInline]
    def uniform_4dv : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniform4dv
    @[AlwaysInline]
    def uniform_4dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.uniform_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix2dv
    @[AlwaysInline]
    def uniform_matrix2_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix2dv
    @[AlwaysInline]
    def uniform_matrix2_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix2_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix3dv
    @[AlwaysInline]
    def uniform_matrix3_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix3dv
    @[AlwaysInline]
    def uniform_matrix3_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix3_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix4dv
    @[AlwaysInline]
    def uniform_matrix4_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix4dv
    @[AlwaysInline]
    def uniform_matrix4_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix4_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix2x3dv
    @[AlwaysInline]
    def uniform_matrix2x3_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix2x3dv
    @[AlwaysInline]
    def uniform_matrix2x3_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix2x3_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix2x4dv
    @[AlwaysInline]
    def uniform_matrix2x4_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix2x4dv
    @[AlwaysInline]
    def uniform_matrix2x4_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix2x4_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix3x2dv
    @[AlwaysInline]
    def uniform_matrix3x2_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix3x2dv
    @[AlwaysInline]
    def uniform_matrix3x2_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix3x2_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix3x4dv
    @[AlwaysInline]
    def uniform_matrix3x4_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix3x4dv
    @[AlwaysInline]
    def uniform_matrix3x4_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix3x4_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix4x2dv
    @[AlwaysInline]
    def uniform_matrix4x2_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix4x2dv
    @[AlwaysInline]
    def uniform_matrix4x2_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix4x2_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformMatrix4x3dv
    @[AlwaysInline]
    def uniform_matrix4x3_dv : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glUniformMatrix4x3dv
    @[AlwaysInline]
    def uniform_matrix4x3_dv(address) : ::Proc(LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.uniform_matrix4x3_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformdv
    @[AlwaysInline]
    def get_uniform_dv : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetUniformdv
    @[AlwaysInline]
    def get_uniform_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, ::Pointer(LibGL::Double), ::Void)
      self.get_uniform_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSubroutineUniformLocation
    @[AlwaysInline]
    def get_subroutine_uniform_location : ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetSubroutineUniformLocation
    @[AlwaysInline]
    def get_subroutine_uniform_location(address) : ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_subroutine_uniform_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetSubroutineIndex
    @[AlwaysInline]
    def get_subroutine_index : ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::UInt).class
      ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # Proc type for the function glGetSubroutineIndex
    @[AlwaysInline]
    def get_subroutine_index(address) : ::Proc(LibGL::UInt, LibGL::ShaderType, ::Pointer(LibGL::Char), LibGL::UInt)
      self.get_subroutine_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveSubroutineUniformiv
    @[AlwaysInline]
    def get_active_subroutine_uniform_iv : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SubroutineParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SubroutineParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveSubroutineUniformiv
    @[AlwaysInline]
    def get_active_subroutine_uniform_iv(address) : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SubroutineParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_active_subroutine_uniform_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveSubroutineUniformName
    @[AlwaysInline]
    def get_active_subroutine_uniform_name : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveSubroutineUniformName
    @[AlwaysInline]
    def get_active_subroutine_uniform_name(address) : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_active_subroutine_uniform_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveSubroutineName
    @[AlwaysInline]
    def get_active_subroutine_name : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetActiveSubroutineName
    @[AlwaysInline]
    def get_active_subroutine_name(address) : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_active_subroutine_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUniformSubroutinesuiv
    @[AlwaysInline]
    def uniform_subroutines_uiv : ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glUniformSubroutinesuiv
    @[AlwaysInline]
    def uniform_subroutines_uiv(address) : ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.uniform_subroutines_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetUniformSubroutineuiv
    @[AlwaysInline]
    def get_uniform_subroutine_uiv : ::Proc(LibGL::ShaderType, LibGL::Int, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::ShaderType, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetUniformSubroutineuiv
    @[AlwaysInline]
    def get_uniform_subroutine_uiv(address) : ::Proc(LibGL::ShaderType, LibGL::Int, ::Pointer(LibGL::UInt), ::Void)
      self.get_uniform_subroutine_uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramStageiv
    @[AlwaysInline]
    def get_program_stage_iv : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::ProgramStagePName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::ProgramStagePName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramStageiv
    @[AlwaysInline]
    def get_program_stage_iv(address) : ::Proc(LibGL::UInt, LibGL::ShaderType, LibGL::ProgramStagePName, ::Pointer(LibGL::Int), ::Void)
      self.get_program_stage_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPatchParameteri
    @[AlwaysInline]
    def patch_parameter_i : ::Proc(LibGL::PatchParameterName, LibGL::Int, ::Void).class
      ::Proc(LibGL::PatchParameterName, LibGL::Int, ::Void)
    end

    # Proc type for the function glPatchParameteri
    @[AlwaysInline]
    def patch_parameter_i(address) : ::Proc(LibGL::PatchParameterName, LibGL::Int, ::Void)
      self.patch_parameter_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPatchParameterfv
    @[AlwaysInline]
    def patch_parameter_fv : ::Proc(LibGL::PatchParameterName, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::PatchParameterName, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glPatchParameterfv
    @[AlwaysInline]
    def patch_parameter_fv(address) : ::Proc(LibGL::PatchParameterName, ::Pointer(LibGL::Float), ::Void)
      self.patch_parameter_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindTransformFeedback
    @[AlwaysInline]
    def bind_transform_feedback : ::Proc(LibGL::BindTransformFeedbackTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::BindTransformFeedbackTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindTransformFeedback
    @[AlwaysInline]
    def bind_transform_feedback(address) : ::Proc(LibGL::BindTransformFeedbackTarget, LibGL::UInt, ::Void)
      self.bind_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteTransformFeedbacks
    @[AlwaysInline]
    def delete_transform_feedbacks : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteTransformFeedbacks
    @[AlwaysInline]
    def delete_transform_feedbacks(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_transform_feedbacks.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenTransformFeedbacks
    @[AlwaysInline]
    def gen_transform_feedbacks : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenTransformFeedbacks
    @[AlwaysInline]
    def gen_transform_feedbacks(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_transform_feedbacks.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsTransformFeedback
    @[AlwaysInline]
    def is_transform_feedback : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsTransformFeedback
    @[AlwaysInline]
    def is_transform_feedback(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPauseTransformFeedback
    @[AlwaysInline]
    def pause_transform_feedback : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPauseTransformFeedback
    @[AlwaysInline]
    def pause_transform_feedback(address) : ::Proc(::Void)
      self.pause_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glResumeTransformFeedback
    @[AlwaysInline]
    def resume_transform_feedback : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glResumeTransformFeedback
    @[AlwaysInline]
    def resume_transform_feedback(address) : ::Proc(::Void)
      self.resume_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawTransformFeedback
    @[AlwaysInline]
    def draw_transform_feedback : ::Proc(LibGL::PrimitiveType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawTransformFeedback
    @[AlwaysInline]
    def draw_transform_feedback(address) : ::Proc(LibGL::PrimitiveType, LibGL::UInt, ::Void)
      self.draw_transform_feedback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawTransformFeedbackStream
    @[AlwaysInline]
    def draw_transform_feedback_stream : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawTransformFeedbackStream
    @[AlwaysInline]
    def draw_transform_feedback_stream(address) : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, ::Void)
      self.draw_transform_feedback_stream.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBeginQueryIndexed
    @[AlwaysInline]
    def begin_query_indexed : ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBeginQueryIndexed
    @[AlwaysInline]
    def begin_query_indexed(address) : ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::UInt, ::Void)
      self.begin_query_indexed.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glEndQueryIndexed
    @[AlwaysInline]
    def end_query_indexed : ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void).class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glEndQueryIndexed
    @[AlwaysInline]
    def end_query_indexed(address) : ::Proc(LibGL::QueryTarget, LibGL::UInt, ::Void)
      self.end_query_indexed.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetQueryIndexediv
    @[AlwaysInline]
    def get_query_indexed_iv : ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetQueryIndexediv
    @[AlwaysInline]
    def get_query_indexed_iv(address) : ::Proc(LibGL::QueryTarget, LibGL::UInt, LibGL::QueryParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_query_indexed_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glReleaseShaderCompiler
    @[AlwaysInline]
    def release_shader_compiler : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glReleaseShaderCompiler
    @[AlwaysInline]
    def release_shader_compiler(address) : ::Proc(::Void)
      self.release_shader_compiler.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glShaderBinary
    @[AlwaysInline]
    def shader_binary : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
    end

    # Proc type for the function glShaderBinary
    @[AlwaysInline]
    def shader_binary(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Enum, ::Pointer(Void), LibGL::SizeI, ::Void)
      self.shader_binary.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetShaderPrecisionFormat
    @[AlwaysInline]
    def get_shader_precision_format : ::Proc(LibGL::ShaderType, LibGL::PrecisionType, ::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::ShaderType, LibGL::PrecisionType, ::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetShaderPrecisionFormat
    @[AlwaysInline]
    def get_shader_precision_format(address) : ::Proc(LibGL::ShaderType, LibGL::PrecisionType, ::Pointer(LibGL::Int), ::Pointer(LibGL::Int), ::Void)
      self.get_shader_precision_format.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetProgramBinary
    @[AlwaysInline]
    def get_program_binary : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Enum), ::Pointer(Void), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Enum), ::Pointer(Void), ::Void)
    end

    # Proc type for the function glGetProgramBinary
    @[AlwaysInline]
    def get_program_binary(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Enum), ::Pointer(Void), ::Void)
      self.get_program_binary.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glProgramParameteri
    @[AlwaysInline]
    def program_parameter_i : ::Proc(LibGL::UInt, LibGL::ProgramParameterPName, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::ProgramParameterPName, LibGL::Int, ::Void)
    end

    # Proc type for the function glProgramParameteri
    @[AlwaysInline]
    def program_parameter_i(address) : ::Proc(LibGL::UInt, LibGL::ProgramParameterPName, LibGL::Int, ::Void)
      self.program_parameter_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glUseProgramStages
    @[AlwaysInline]
    def use_program_stages : ::Proc(LibGL::UInt, LibGL::UseProgramStageMask, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UseProgramStageMask, LibGL::UInt, ::Void)
    end

    # Proc type for the function glUseProgramStages
    @[AlwaysInline]
    def use_program_stages(address) : ::Proc(LibGL::UInt, LibGL::UseProgramStageMask, LibGL::UInt, ::Void)
      self.use_program_stages.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glActiveShaderProgram
    @[AlwaysInline]
    def active_shader_program : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glActiveShaderProgram
    @[AlwaysInline]
    def active_shader_program(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.active_shader_program.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCreateShaderProgramv
    @[AlwaysInline]
    def create_shader_program_v : ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::UInt).class
      ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::UInt)
    end

    # Proc type for the function glCreateShaderProgramv
    @[AlwaysInline]
    def create_shader_program_v(address) : ::Proc(LibGL::ShaderType, LibGL::SizeI, ::Pointer(::Pointer(LibGL::Char)), LibGL::UInt)
      self.create_shader_program_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindProgramPipeline
    @[AlwaysInline]
    def bind_program_pipeline : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindProgramPipeline
    @[AlwaysInline]
    def bind_program_pipeline(address) : ::Proc(LibGL::UInt, ::Void)
      self.bind_program_pipeline.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDeleteProgramPipelines
    @[AlwaysInline]
    def delete_program_pipelines : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteProgramPipelines
    @[AlwaysInline]
    def delete_program_pipelines(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.delete_program_pipelines.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGenProgramPipelines
    @[AlwaysInline]
    def gen_program_pipelines : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenProgramPipelines
    @[AlwaysInline]
    def gen_program_pipelines(address) : ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.gen_program_pipelines.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glIsProgramPipeline
    @[AlwaysInline]
    def is_program_pipeline : ::Proc(LibGL::UInt, LibGL::Boolean).class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsProgramPipeline
    @[AlwaysInline]
    def is_program_pipeline(address) : ::Proc(LibGL::UInt, LibGL::Boolean)
      self.is_program_pipeline.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramPipelineiv
    @[AlwaysInline]
    def get_program_pipeline_iv : ::Proc(LibGL::UInt, LibGL::PipelineParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::PipelineParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramPipelineiv
    @[AlwaysInline]
    def get_program_pipeline_iv(address) : ::Proc(LibGL::UInt, LibGL::PipelineParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_program_pipeline_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1i
    @[AlwaysInline]
    def program_uniform_1i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glProgramUniform1i
    @[AlwaysInline]
    def program_uniform_1i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, ::Void)
      self.program_uniform_1i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1iv
    @[AlwaysInline]
    def program_uniform_1iv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glProgramUniform1iv
    @[AlwaysInline]
    def program_uniform_1iv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.program_uniform_1iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1f
    @[AlwaysInline]
    def program_uniform_1f : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, ::Void)
    end

    # Proc type for the function glProgramUniform1f
    @[AlwaysInline]
    def program_uniform_1f(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, ::Void)
      self.program_uniform_1f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1fv
    @[AlwaysInline]
    def program_uniform_1fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniform1fv
    @[AlwaysInline]
    def program_uniform_1fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_1fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1d
    @[AlwaysInline]
    def program_uniform_1d : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, ::Void)
    end

    # Proc type for the function glProgramUniform1d
    @[AlwaysInline]
    def program_uniform_1d(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, ::Void)
      self.program_uniform_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1dv
    @[AlwaysInline]
    def program_uniform_1dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniform1dv
    @[AlwaysInline]
    def program_uniform_1dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1ui
    @[AlwaysInline]
    def program_uniform_1ui : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glProgramUniform1ui
    @[AlwaysInline]
    def program_uniform_1ui(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, ::Void)
      self.program_uniform_1ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform1uiv
    @[AlwaysInline]
    def program_uniform_1uiv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glProgramUniform1uiv
    @[AlwaysInline]
    def program_uniform_1uiv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.program_uniform_1uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2i
    @[AlwaysInline]
    def program_uniform_2i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glProgramUniform2i
    @[AlwaysInline]
    def program_uniform_2i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.program_uniform_2i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2iv
    @[AlwaysInline]
    def program_uniform_2iv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glProgramUniform2iv
    @[AlwaysInline]
    def program_uniform_2iv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.program_uniform_2iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2f
    @[AlwaysInline]
    def program_uniform_2f : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glProgramUniform2f
    @[AlwaysInline]
    def program_uniform_2f(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, ::Void)
      self.program_uniform_2f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2fv
    @[AlwaysInline]
    def program_uniform_2fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniform2fv
    @[AlwaysInline]
    def program_uniform_2fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_2fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2d
    @[AlwaysInline]
    def program_uniform_2d : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glProgramUniform2d
    @[AlwaysInline]
    def program_uniform_2d(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, ::Void)
      self.program_uniform_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2dv
    @[AlwaysInline]
    def program_uniform_2dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniform2dv
    @[AlwaysInline]
    def program_uniform_2dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2ui
    @[AlwaysInline]
    def program_uniform_2ui : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glProgramUniform2ui
    @[AlwaysInline]
    def program_uniform_2ui(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, ::Void)
      self.program_uniform_2ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform2uiv
    @[AlwaysInline]
    def program_uniform_2uiv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glProgramUniform2uiv
    @[AlwaysInline]
    def program_uniform_2uiv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.program_uniform_2uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3i
    @[AlwaysInline]
    def program_uniform_3i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glProgramUniform3i
    @[AlwaysInline]
    def program_uniform_3i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.program_uniform_3i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3iv
    @[AlwaysInline]
    def program_uniform_3iv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glProgramUniform3iv
    @[AlwaysInline]
    def program_uniform_3iv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.program_uniform_3iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3f
    @[AlwaysInline]
    def program_uniform_3f : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glProgramUniform3f
    @[AlwaysInline]
    def program_uniform_3f(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.program_uniform_3f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3fv
    @[AlwaysInline]
    def program_uniform_3fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniform3fv
    @[AlwaysInline]
    def program_uniform_3fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_3fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3d
    @[AlwaysInline]
    def program_uniform_3d : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glProgramUniform3d
    @[AlwaysInline]
    def program_uniform_3d(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.program_uniform_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3dv
    @[AlwaysInline]
    def program_uniform_3dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniform3dv
    @[AlwaysInline]
    def program_uniform_3dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3ui
    @[AlwaysInline]
    def program_uniform_3ui : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glProgramUniform3ui
    @[AlwaysInline]
    def program_uniform_3ui(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.program_uniform_3ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform3uiv
    @[AlwaysInline]
    def program_uniform_3uiv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glProgramUniform3uiv
    @[AlwaysInline]
    def program_uniform_3uiv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.program_uniform_3uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4i
    @[AlwaysInline]
    def program_uniform_4i : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
    end

    # Proc type for the function glProgramUniform4i
    @[AlwaysInline]
    def program_uniform_4i(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, ::Void)
      self.program_uniform_4i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4iv
    @[AlwaysInline]
    def program_uniform_4iv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glProgramUniform4iv
    @[AlwaysInline]
    def program_uniform_4iv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.program_uniform_4iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4f
    @[AlwaysInline]
    def program_uniform_4f : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glProgramUniform4f
    @[AlwaysInline]
    def program_uniform_4f(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.program_uniform_4f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4fv
    @[AlwaysInline]
    def program_uniform_4fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniform4fv
    @[AlwaysInline]
    def program_uniform_4fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_4fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4d
    @[AlwaysInline]
    def program_uniform_4d : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glProgramUniform4d
    @[AlwaysInline]
    def program_uniform_4d(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.program_uniform_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4dv
    @[AlwaysInline]
    def program_uniform_4dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniform4dv
    @[AlwaysInline]
    def program_uniform_4dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4ui
    @[AlwaysInline]
    def program_uniform_4ui : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glProgramUniform4ui
    @[AlwaysInline]
    def program_uniform_4ui(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.program_uniform_4ui.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniform4uiv
    @[AlwaysInline]
    def program_uniform_4uiv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glProgramUniform4uiv
    @[AlwaysInline]
    def program_uniform_4uiv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
      self.program_uniform_4uiv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix2fv
    @[AlwaysInline]
    def program_uniform_matrix2_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix2fv
    @[AlwaysInline]
    def program_uniform_matrix2_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix2_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix3fv
    @[AlwaysInline]
    def program_uniform_matrix3_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix3fv
    @[AlwaysInline]
    def program_uniform_matrix3_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix3_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix4fv
    @[AlwaysInline]
    def program_uniform_matrix4_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix4fv
    @[AlwaysInline]
    def program_uniform_matrix4_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix4_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix2dv
    @[AlwaysInline]
    def program_uniform_matrix2_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix2dv
    @[AlwaysInline]
    def program_uniform_matrix2_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix2_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix3dv
    @[AlwaysInline]
    def program_uniform_matrix3_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix3dv
    @[AlwaysInline]
    def program_uniform_matrix3_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix3_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix4dv
    @[AlwaysInline]
    def program_uniform_matrix4_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix4dv
    @[AlwaysInline]
    def program_uniform_matrix4_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix4_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix2x3fv
    @[AlwaysInline]
    def program_uniform_matrix2x3_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix2x3fv
    @[AlwaysInline]
    def program_uniform_matrix2x3_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix2x3_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix3x2fv
    @[AlwaysInline]
    def program_uniform_matrix3x2_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix3x2fv
    @[AlwaysInline]
    def program_uniform_matrix3x2_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix3x2_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix2x4fv
    @[AlwaysInline]
    def program_uniform_matrix2x4_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix2x4fv
    @[AlwaysInline]
    def program_uniform_matrix2x4_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix2x4_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix4x2fv
    @[AlwaysInline]
    def program_uniform_matrix4x2_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix4x2fv
    @[AlwaysInline]
    def program_uniform_matrix4x2_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix4x2_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix3x4fv
    @[AlwaysInline]
    def program_uniform_matrix3x4_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix3x4fv
    @[AlwaysInline]
    def program_uniform_matrix3x4_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix3x4_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix4x3fv
    @[AlwaysInline]
    def program_uniform_matrix4x3_fv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix4x3fv
    @[AlwaysInline]
    def program_uniform_matrix4x3_fv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Float), ::Void)
      self.program_uniform_matrix4x3_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix2x3dv
    @[AlwaysInline]
    def program_uniform_matrix2x3_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix2x3dv
    @[AlwaysInline]
    def program_uniform_matrix2x3_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix2x3_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix3x2dv
    @[AlwaysInline]
    def program_uniform_matrix3x2_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix3x2dv
    @[AlwaysInline]
    def program_uniform_matrix3x2_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix3x2_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix2x4dv
    @[AlwaysInline]
    def program_uniform_matrix2x4_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix2x4dv
    @[AlwaysInline]
    def program_uniform_matrix2x4_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix2x4_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix4x2dv
    @[AlwaysInline]
    def program_uniform_matrix4x2_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix4x2dv
    @[AlwaysInline]
    def program_uniform_matrix4x2_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix4x2_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix3x4dv
    @[AlwaysInline]
    def program_uniform_matrix3x4_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix3x4dv
    @[AlwaysInline]
    def program_uniform_matrix3x4_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix3x4_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glProgramUniformMatrix4x3dv
    @[AlwaysInline]
    def program_uniform_matrix4x3_dv : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glProgramUniformMatrix4x3dv
    @[AlwaysInline]
    def program_uniform_matrix4x3_dv(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::SizeI, LibGL::Boolean, ::Pointer(LibGL::Double), ::Void)
      self.program_uniform_matrix4x3_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glValidateProgramPipeline
    @[AlwaysInline]
    def validate_program_pipeline : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glValidateProgramPipeline
    @[AlwaysInline]
    def validate_program_pipeline(address) : ::Proc(LibGL::UInt, ::Void)
      self.validate_program_pipeline.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramPipelineInfoLog
    @[AlwaysInline]
    def get_program_pipeline_info_log : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetProgramPipelineInfoLog
    @[AlwaysInline]
    def get_program_pipeline_info_log(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_program_pipeline_info_log.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL1d
    @[AlwaysInline]
    def vertex_attrib_l_1d : ::Proc(LibGL::UInt, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttribL1d
    @[AlwaysInline]
    def vertex_attrib_l_1d(address) : ::Proc(LibGL::UInt, LibGL::Double, ::Void)
      self.vertex_attrib_l_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL2d
    @[AlwaysInline]
    def vertex_attrib_l_2d : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttribL2d
    @[AlwaysInline]
    def vertex_attrib_l_2d(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_attrib_l_2d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL3d
    @[AlwaysInline]
    def vertex_attrib_l_3d : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttribL3d
    @[AlwaysInline]
    def vertex_attrib_l_3d(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_attrib_l_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL4d
    @[AlwaysInline]
    def vertex_attrib_l_4d : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glVertexAttribL4d
    @[AlwaysInline]
    def vertex_attrib_l_4d(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, LibGL::Double, LibGL::Double, ::Void)
      self.vertex_attrib_l_4d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL1dv
    @[AlwaysInline]
    def vertex_attrib_l_1dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttribL1dv
    @[AlwaysInline]
    def vertex_attrib_l_1dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_l_1dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL2dv
    @[AlwaysInline]
    def vertex_attrib_l_2dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttribL2dv
    @[AlwaysInline]
    def vertex_attrib_l_2dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_l_2dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL3dv
    @[AlwaysInline]
    def vertex_attrib_l_3dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttribL3dv
    @[AlwaysInline]
    def vertex_attrib_l_3dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_l_3dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribL4dv
    @[AlwaysInline]
    def vertex_attrib_l_4dv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glVertexAttribL4dv
    @[AlwaysInline]
    def vertex_attrib_l_4dv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.vertex_attrib_l_4dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribLPointer
    @[AlwaysInline]
    def vertex_attrib_l_pointer : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::SizeI, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glVertexAttribLPointer
    @[AlwaysInline]
    def vertex_attrib_l_pointer(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::SizeI, ::Pointer(Void), ::Void)
      self.vertex_attrib_l_pointer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetVertexAttribLdv
    @[AlwaysInline]
    def get_vertex_attrib_l_dv : ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetVertexAttribLdv
    @[AlwaysInline]
    def get_vertex_attrib_l_dv(address) : ::Proc(LibGL::UInt, LibGL::VertexAttribEnum, ::Pointer(LibGL::Double), ::Void)
      self.get_vertex_attrib_l_dv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glViewportArrayv
    @[AlwaysInline]
    def viewport_array_v : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glViewportArrayv
    @[AlwaysInline]
    def viewport_array_v(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Float), ::Void)
      self.viewport_array_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glViewportIndexedf
    @[AlwaysInline]
    def viewport_indexed_f : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
    end

    # Proc type for the function glViewportIndexedf
    @[AlwaysInline]
    def viewport_indexed_f(address) : ::Proc(LibGL::UInt, LibGL::Float, LibGL::Float, LibGL::Float, LibGL::Float, ::Void)
      self.viewport_indexed_f.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glViewportIndexedfv
    @[AlwaysInline]
    def viewport_indexed_fv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glViewportIndexedfv
    @[AlwaysInline]
    def viewport_indexed_fv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.viewport_indexed_fv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScissorArrayv
    @[AlwaysInline]
    def scissor_array_v : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glScissorArrayv
    @[AlwaysInline]
    def scissor_array_v(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.scissor_array_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScissorIndexed
    @[AlwaysInline]
    def scissor_indexed : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glScissorIndexed
    @[AlwaysInline]
    def scissor_indexed(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.scissor_indexed.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScissorIndexedv
    @[AlwaysInline]
    def scissor_indexedv : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glScissorIndexedv
    @[AlwaysInline]
    def scissor_indexedv(address) : ::Proc(LibGL::UInt, ::Pointer(LibGL::Int), ::Void)
      self.scissor_indexedv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDepthRangeArrayv
    @[AlwaysInline]
    def depth_range_array_v : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glDepthRangeArrayv
    @[AlwaysInline]
    def depth_range_array_v(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Double), ::Void)
      self.depth_range_array_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDepthRangeIndexed
    @[AlwaysInline]
    def depth_range_indexed : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
    end

    # Proc type for the function glDepthRangeIndexed
    @[AlwaysInline]
    def depth_range_indexed(address) : ::Proc(LibGL::UInt, LibGL::Double, LibGL::Double, ::Void)
      self.depth_range_indexed.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetFloati_v
    @[AlwaysInline]
    def get_float_i_v : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Float), ::Void).class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
    end

    # Proc type for the function glGetFloati_v
    @[AlwaysInline]
    def get_float_i_v(address) : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Float), ::Void)
      self.get_float_i_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetDoublei_v
    @[AlwaysInline]
    def get_double_i_v : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Double), ::Void).class
      ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
    end

    # Proc type for the function glGetDoublei_v
    @[AlwaysInline]
    def get_double_i_v(address) : ::Proc(LibGL::GetPName, LibGL::UInt, ::Pointer(LibGL::Double), ::Void)
      self.get_double_i_v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawArraysInstancedBaseInstance
    @[AlwaysInline]
    def draw_arrays_instanced_base_instance : ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::UInt, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawArraysInstancedBaseInstance
    @[AlwaysInline]
    def draw_arrays_instanced_base_instance(address) : ::Proc(LibGL::PrimitiveType, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::UInt, ::Void)
      self.draw_arrays_instanced_base_instance.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawElementsInstancedBaseInstance
    @[AlwaysInline]
    def draw_elements_instanced_base_instance : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawElementsInstancedBaseInstance
    @[AlwaysInline]
    def draw_elements_instanced_base_instance(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void)
      self.draw_elements_instanced_base_instance.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawElementsInstancedBaseVertexBaseInstance
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex_base_instance : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, LibGL::UInt, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawElementsInstancedBaseVertexBaseInstance
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex_base_instance(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::Int, LibGL::UInt, ::Void)
      self.draw_elements_instanced_base_vertex_base_instance.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetInternalformativ
    @[AlwaysInline]
    def get_internalformat_iv : ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetInternalformativ
    @[AlwaysInline]
    def get_internalformat_iv(address) : ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int), ::Void)
      self.get_internalformat_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetActiveAtomicCounterBufferiv
    @[AlwaysInline]
    def get_active_atomic_counter_buffer_iv : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::AtomicCounterBufferPName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::AtomicCounterBufferPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetActiveAtomicCounterBufferiv
    @[AlwaysInline]
    def get_active_atomic_counter_buffer_iv(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::AtomicCounterBufferPName, ::Pointer(LibGL::Int), ::Void)
      self.get_active_atomic_counter_buffer_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindImageTexture
    @[AlwaysInline]
    def bind_image_texture : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::Int, LibGL::Boolean, LibGL::Int, LibGL::BufferAccessARB, LibGL::InternalFormat, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::Int, LibGL::Boolean, LibGL::Int, LibGL::BufferAccessARB, LibGL::InternalFormat, ::Void)
    end

    # Proc type for the function glBindImageTexture
    @[AlwaysInline]
    def bind_image_texture(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::Int, LibGL::Boolean, LibGL::Int, LibGL::BufferAccessARB, LibGL::InternalFormat, ::Void)
      self.bind_image_texture.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMemoryBarrier
    @[AlwaysInline]
    def memory_barrier : ::Proc(LibGL::MemoryBarrierMask, ::Void).class
      ::Proc(LibGL::MemoryBarrierMask, ::Void)
    end

    # Proc type for the function glMemoryBarrier
    @[AlwaysInline]
    def memory_barrier(address) : ::Proc(LibGL::MemoryBarrierMask, ::Void)
      self.memory_barrier.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexStorage1D
    @[AlwaysInline]
    def tex_storage_1d : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glTexStorage1D
    @[AlwaysInline]
    def tex_storage_1d(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, ::Void)
      self.tex_storage_1d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexStorage3D
    @[AlwaysInline]
    def tex_storage_3d : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glTexStorage3D
    @[AlwaysInline]
    def tex_storage_3d(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.tex_storage_3d.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawTransformFeedbackInstanced
    @[AlwaysInline]
    def draw_transform_feedback_instanced : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawTransformFeedbackInstanced
    @[AlwaysInline]
    def draw_transform_feedback_instanced(address) : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::SizeI, ::Void)
      self.draw_transform_feedback_instanced.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDrawTransformFeedbackStreamInstanced
    @[AlwaysInline]
    def draw_transform_feedback_stream_instanced : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glDrawTransformFeedbackStreamInstanced
    @[AlwaysInline]
    def draw_transform_feedback_stream_instanced(address) : ::Proc(LibGL::PrimitiveType, LibGL::UInt, LibGL::UInt, LibGL::SizeI, ::Void)
      self.draw_transform_feedback_stream_instanced.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearBufferData
    @[AlwaysInline]
    def clear_buffer_data : ::Proc(LibGL::BufferStorageTarget, LibGL::SizedInternalFormat, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::BufferStorageTarget, LibGL::SizedInternalFormat, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glClearBufferData
    @[AlwaysInline]
    def clear_buffer_data(address) : ::Proc(LibGL::BufferStorageTarget, LibGL::SizedInternalFormat, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.clear_buffer_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearBufferSubData
    @[AlwaysInline]
    def clear_buffer_sub_data : ::Proc(LibGL::BufferTargetARB, LibGL::SizedInternalFormat, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void).class
      ::Proc(LibGL::BufferTargetARB, LibGL::SizedInternalFormat, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glClearBufferSubData
    @[AlwaysInline]
    def clear_buffer_sub_data(address) : ::Proc(LibGL::BufferTargetARB, LibGL::SizedInternalFormat, LibGL::IntPtr, LibGL::SizeIPtr, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
      self.clear_buffer_sub_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDispatchCompute
    @[AlwaysInline]
    def dispatch_compute : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDispatchCompute
    @[AlwaysInline]
    def dispatch_compute(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.dispatch_compute.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDispatchComputeIndirect
    @[AlwaysInline]
    def dispatch_compute_indirect : ::Proc(LibGL::IntPtr, ::Void).class
      ::Proc(LibGL::IntPtr, ::Void)
    end

    # Proc type for the function glDispatchComputeIndirect
    @[AlwaysInline]
    def dispatch_compute_indirect(address) : ::Proc(LibGL::IntPtr, ::Void)
      self.dispatch_compute_indirect.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glCopyImageSubData
    @[AlwaysInline]
    def copy_image_sub_data : ::Proc(LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glCopyImageSubData
    @[AlwaysInline]
    def copy_image_sub_data(address) : ::Proc(LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::UInt, LibGL::CopyImageSubDataTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.copy_image_sub_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFramebufferParameteri
    @[AlwaysInline]
    def framebuffer_parameter_i : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferParameterName, LibGL::Int, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferParameterName, LibGL::Int, ::Void)
    end

    # Proc type for the function glFramebufferParameteri
    @[AlwaysInline]
    def framebuffer_parameter_i(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferParameterName, LibGL::Int, ::Void)
      self.framebuffer_parameter_i.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetFramebufferParameteriv
    @[AlwaysInline]
    def get_framebuffer_parameter_iv : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetFramebufferParameteriv
    @[AlwaysInline]
    def get_framebuffer_parameter_iv(address) : ::Proc(LibGL::FramebufferTarget, LibGL::FramebufferAttachmentParameterName, ::Pointer(LibGL::Int), ::Void)
      self.get_framebuffer_parameter_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetInternalformati64v
    @[AlwaysInline]
    def get_internalformat_i64v : ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int64), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int64), ::Void)
    end

    # Proc type for the function glGetInternalformati64v
    @[AlwaysInline]
    def get_internalformat_i64v(address) : ::Proc(LibGL::TextureTarget, LibGL::InternalFormat, LibGL::InternalFormatPName, LibGL::SizeI, ::Pointer(LibGL::Int64), ::Void)
      self.get_internalformat_i64v.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInvalidateTexSubImage
    @[AlwaysInline]
    def invalidate_tex_sub_image : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glInvalidateTexSubImage
    @[AlwaysInline]
    def invalidate_tex_sub_image(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.invalidate_tex_sub_image.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInvalidateTexImage
    @[AlwaysInline]
    def invalidate_tex_image : ::Proc(LibGL::UInt, LibGL::Int, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, ::Void)
    end

    # Proc type for the function glInvalidateTexImage
    @[AlwaysInline]
    def invalidate_tex_image(address) : ::Proc(LibGL::UInt, LibGL::Int, ::Void)
      self.invalidate_tex_image.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInvalidateBufferSubData
    @[AlwaysInline]
    def invalidate_buffer_sub_data : ::Proc(LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void).class
      ::Proc(LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glInvalidateBufferSubData
    @[AlwaysInline]
    def invalidate_buffer_sub_data(address) : ::Proc(LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
      self.invalidate_buffer_sub_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInvalidateBufferData
    @[AlwaysInline]
    def invalidate_buffer_data : ::Proc(LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glInvalidateBufferData
    @[AlwaysInline]
    def invalidate_buffer_data(address) : ::Proc(LibGL::UInt, ::Void)
      self.invalidate_buffer_data.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInvalidateFramebuffer
    @[AlwaysInline]
    def invalidate_framebuffer : ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), ::Void)
    end

    # Proc type for the function glInvalidateFramebuffer
    @[AlwaysInline]
    def invalidate_framebuffer(address) : ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), ::Void)
      self.invalidate_framebuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glInvalidateSubFramebuffer
    @[AlwaysInline]
    def invalidate_sub_framebuffer : ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glInvalidateSubFramebuffer
    @[AlwaysInline]
    def invalidate_sub_framebuffer(address) : ::Proc(LibGL::FramebufferTarget, LibGL::SizeI, ::Pointer(LibGL::InvalidateFramebufferAttachment), LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
      self.invalidate_sub_framebuffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiDrawArraysIndirect
    @[AlwaysInline]
    def multi_draw_arrays_indirect : ::Proc(LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glMultiDrawArraysIndirect
    @[AlwaysInline]
    def multi_draw_arrays_indirect(address) : ::Proc(LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void)
      self.multi_draw_arrays_indirect.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiDrawElementsIndirect
    @[AlwaysInline]
    def multi_draw_elements_indirect : ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glMultiDrawElementsIndirect
    @[AlwaysInline]
    def multi_draw_elements_indirect(address) : ::Proc(LibGL::PrimitiveType, LibGL::DrawElementsType, ::Pointer(Void), LibGL::SizeI, LibGL::SizeI, ::Void)
      self.multi_draw_elements_indirect.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramInterfaceiv
    @[AlwaysInline]
    def get_program_interface_iv : ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::ProgramInterfacePName, ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::ProgramInterfacePName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramInterfaceiv
    @[AlwaysInline]
    def get_program_interface_iv(address) : ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::ProgramInterfacePName, ::Pointer(LibGL::Int), ::Void)
      self.get_program_interface_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramResourceIndex
    @[AlwaysInline]
    def get_program_resource_index : ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::UInt).class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # Proc type for the function glGetProgramResourceIndex
    @[AlwaysInline]
    def get_program_resource_index(address) : ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::UInt)
      self.get_program_resource_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramResourceName
    @[AlwaysInline]
    def get_program_resource_name : ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetProgramResourceName
    @[AlwaysInline]
    def get_program_resource_name(address) : ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_program_resource_name.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramResourceiv
    @[AlwaysInline]
    def get_program_resource_iv : ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::ProgramResourceProperty), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void).class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::ProgramResourceProperty), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetProgramResourceiv
    @[AlwaysInline]
    def get_program_resource_iv(address) : ::Proc(LibGL::UInt, LibGL::ProgramInterface, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::ProgramResourceProperty), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Int), ::Void)
      self.get_program_resource_iv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramResourceLocation
    @[AlwaysInline]
    def get_program_resource_location : ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetProgramResourceLocation
    @[AlwaysInline]
    def get_program_resource_location(address) : ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_program_resource_location.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetProgramResourceLocationIndex
    @[AlwaysInline]
    def get_program_resource_location_index : ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int).class
      ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int)
    end

    # Proc type for the function glGetProgramResourceLocationIndex
    @[AlwaysInline]
    def get_program_resource_location_index(address) : ::Proc(LibGL::UInt, LibGL::ProgramInterface, ::Pointer(LibGL::Char), LibGL::Int)
      self.get_program_resource_location_index.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glShaderStorageBlockBinding
    @[AlwaysInline]
    def shader_storage_block_binding : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glShaderStorageBlockBinding
    @[AlwaysInline]
    def shader_storage_block_binding(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.shader_storage_block_binding.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexBufferRange
    @[AlwaysInline]
    def tex_buffer_range : ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
    end

    # Proc type for the function glTexBufferRange
    @[AlwaysInline]
    def tex_buffer_range(address) : ::Proc(LibGL::TextureTarget, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::IntPtr, LibGL::SizeIPtr, ::Void)
      self.tex_buffer_range.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexStorage2DMultisample
    @[AlwaysInline]
    def tex_storage_2d_multisample : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glTexStorage2DMultisample
    @[AlwaysInline]
    def tex_storage_2d_multisample(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
      self.tex_storage_2d_multisample.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTexStorage3DMultisample
    @[AlwaysInline]
    def tex_storage_3d_multisample : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glTexStorage3DMultisample
    @[AlwaysInline]
    def tex_storage_3d_multisample(address) : ::Proc(LibGL::TextureTarget, LibGL::SizeI, LibGL::SizedInternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::SizeI, LibGL::Boolean, ::Void)
      self.tex_storage_3d_multisample.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glTextureView
    @[AlwaysInline]
    def texture_view : ::Proc(LibGL::UInt, LibGL::TextureTarget, LibGL::UInt, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::TextureTarget, LibGL::UInt, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glTextureView
    @[AlwaysInline]
    def texture_view(address) : ::Proc(LibGL::UInt, LibGL::TextureTarget, LibGL::UInt, LibGL::SizedInternalFormat, LibGL::UInt, LibGL::UInt, LibGL::UInt, LibGL::UInt, ::Void)
      self.texture_view.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glBindVertexBuffer
    @[AlwaysInline]
    def bind_vertex_buffer : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeI, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glBindVertexBuffer
    @[AlwaysInline]
    def bind_vertex_buffer(address) : ::Proc(LibGL::UInt, LibGL::UInt, LibGL::IntPtr, LibGL::SizeI, ::Void)
      self.bind_vertex_buffer.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribFormat
    @[AlwaysInline]
    def vertex_attrib_format : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribType, LibGL::Boolean, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribType, LibGL::Boolean, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribFormat
    @[AlwaysInline]
    def vertex_attrib_format(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribType, LibGL::Boolean, LibGL::UInt, ::Void)
      self.vertex_attrib_format.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribIFormat
    @[AlwaysInline]
    def vertex_attrib_i_format : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribIFormat
    @[AlwaysInline]
    def vertex_attrib_i_format(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribIType, LibGL::UInt, ::Void)
      self.vertex_attrib_i_format.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribLFormat
    @[AlwaysInline]
    def vertex_attrib_l_format : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribLFormat
    @[AlwaysInline]
    def vertex_attrib_l_format(address) : ::Proc(LibGL::UInt, LibGL::Int, LibGL::VertexAttribLType, LibGL::UInt, ::Void)
      self.vertex_attrib_l_format.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexAttribBinding
    @[AlwaysInline]
    def vertex_attrib_binding : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexAttribBinding
    @[AlwaysInline]
    def vertex_attrib_binding(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_attrib_binding.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glVertexBindingDivisor
    @[AlwaysInline]
    def vertex_binding_divisor : ::Proc(LibGL::UInt, LibGL::UInt, ::Void).class
      ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
    end

    # Proc type for the function glVertexBindingDivisor
    @[AlwaysInline]
    def vertex_binding_divisor(address) : ::Proc(LibGL::UInt, LibGL::UInt, ::Void)
      self.vertex_binding_divisor.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDebugMessageControl
    @[AlwaysInline]
    def debug_message_control : ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Boolean, ::Void).class
      ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Boolean, ::Void)
    end

    # Proc type for the function glDebugMessageControl
    @[AlwaysInline]
    def debug_message_control(address) : ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::UInt), LibGL::Boolean, ::Void)
      self.debug_message_control.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDebugMessageInsert
    @[AlwaysInline]
    def debug_message_insert : ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::UInt, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::UInt, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glDebugMessageInsert
    @[AlwaysInline]
    def debug_message_insert(address) : ::Proc(LibGL::DebugSource, LibGL::DebugType, LibGL::UInt, LibGL::DebugSeverity, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
      self.debug_message_insert.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glDebugMessageCallback
    @[AlwaysInline]
    def debug_message_callback : ::Proc(::Pointer(::Void), ::Pointer(Void), ::Void).class
      ::Proc(::Pointer(::Void), ::Pointer(Void), ::Void)
    end

    # Proc type for the function glDebugMessageCallback
    @[AlwaysInline]
    def debug_message_callback(address) : ::Proc(::Pointer(::Void), ::Pointer(Void), ::Void)
      self.debug_message_callback.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetDebugMessageLog
    @[AlwaysInline]
    def get_debug_message_log : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::DebugSource), ::Pointer(LibGL::DebugType), ::Pointer(LibGL::UInt), ::Pointer(LibGL::DebugSeverity), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), LibGL::UInt).class
      ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::DebugSource), ::Pointer(LibGL::DebugType), ::Pointer(LibGL::UInt), ::Pointer(LibGL::DebugSeverity), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), LibGL::UInt)
    end

    # Proc type for the function glGetDebugMessageLog
    @[AlwaysInline]
    def get_debug_message_log(address) : ::Proc(LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::DebugSource), ::Pointer(LibGL::DebugType), ::Pointer(LibGL::UInt), ::Pointer(LibGL::DebugSeverity), ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), LibGL::UInt)
      self.get_debug_message_log.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPushDebugGroup
    @[AlwaysInline]
    def push_debug_group : ::Proc(LibGL::DebugSource, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::DebugSource, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glPushDebugGroup
    @[AlwaysInline]
    def push_debug_group(address) : ::Proc(LibGL::DebugSource, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
      self.push_debug_group.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPopDebugGroup
    @[AlwaysInline]
    def pop_debug_group : ::Proc(::Void).class
      ::Proc(::Void)
    end

    # Proc type for the function glPopDebugGroup
    @[AlwaysInline]
    def pop_debug_group(address) : ::Proc(::Void)
      self.pop_debug_group.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glObjectLabel
    @[AlwaysInline]
    def object_label : ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glObjectLabel
    @[AlwaysInline]
    def object_label(address) : ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
      self.object_label.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetObjectLabel
    @[AlwaysInline]
    def get_object_label : ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetObjectLabel
    @[AlwaysInline]
    def get_object_label(address) : ::Proc(LibGL::ObjectIdentifier, LibGL::UInt, LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_object_label.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glObjectPtrLabel
    @[AlwaysInline]
    def object_ptr_label : ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::Char), ::Void).class
      ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glObjectPtrLabel
    @[AlwaysInline]
    def object_ptr_label(address) : ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::Char), ::Void)
      self.object_ptr_label.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetObjectPtrLabel
    @[AlwaysInline]
    def get_object_ptr_label : ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void).class
      ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
    end

    # Proc type for the function glGetObjectPtrLabel
    @[AlwaysInline]
    def get_object_ptr_label(address) : ::Proc(::Pointer(Void), LibGL::SizeI, ::Pointer(LibGL::SizeI), ::Pointer(LibGL::Char), ::Void)
      self.get_object_ptr_label.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end
  end
end
