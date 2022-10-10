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
    def draw_elements_instanced_base_instance : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void).class
      ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void)
    end

    # Proc type for the function glDrawElementsInstancedBaseInstance
    @[AlwaysInline]
    def draw_elements_instanced_base_instance(address) : ::Proc(LibGL::PrimitiveType, LibGL::SizeI, LibGL::PrimitiveType, ::Pointer(Void), LibGL::SizeI, LibGL::UInt, ::Void)
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
  end
end
