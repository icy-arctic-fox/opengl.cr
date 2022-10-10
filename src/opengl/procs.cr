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

    # Proc type for the function glAlphaFuncx
    @[AlwaysInline]
    def alpha_funcx : ::Proc(LibGL::AlphaFunction, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::AlphaFunction, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glAlphaFuncx
    @[AlwaysInline]
    def alpha_funcx(address) : ::Proc(LibGL::AlphaFunction, LibGL::Fixed, ::Void)
      self.alpha_funcx.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glClearColorx
    @[AlwaysInline]
    def clear_colorx : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glClearColorx
    @[AlwaysInline]
    def clear_colorx(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.clear_colorx.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glClearDepthx
    @[AlwaysInline]
    def clear_depth_x : ::Proc(LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, ::Void)
    end

    # Proc type for the function glClearDepthx
    @[AlwaysInline]
    def clear_depth_x(address) : ::Proc(LibGL::Fixed, ::Void)
      self.clear_depth_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glClipPlanex
    @[AlwaysInline]
    def clip_planex : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glClipPlanex
    @[AlwaysInline]
    def clip_planex(address) : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
      self.clip_planex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glColor4x
    @[AlwaysInline]
    def color_4x : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glColor4x
    @[AlwaysInline]
    def color_4x(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.color_4x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glDepthRangex
    @[AlwaysInline]
    def depth_rangex : ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glDepthRangex
    @[AlwaysInline]
    def depth_rangex(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
      self.depth_rangex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glFogx
    @[AlwaysInline]
    def fog_x : ::Proc(LibGL::FogPName, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::FogPName, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glFogx
    @[AlwaysInline]
    def fog_x(address) : ::Proc(LibGL::FogPName, LibGL::Fixed, ::Void)
      self.fog_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glFogxv
    @[AlwaysInline]
    def fog_xv : ::Proc(LibGL::FogPName, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::FogPName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glFogxv
    @[AlwaysInline]
    def fog_xv(address) : ::Proc(LibGL::FogPName, ::Pointer(LibGL::Fixed), ::Void)
      self.fog_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glFrustumx
    @[AlwaysInline]
    def frustumx : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glFrustumx
    @[AlwaysInline]
    def frustumx(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.frustumx.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetClipPlanex
    @[AlwaysInline]
    def get_clip_plane_x : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetClipPlanex
    @[AlwaysInline]
    def get_clip_plane_x(address) : ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
      self.get_clip_plane_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetFixedv
    @[AlwaysInline]
    def get_fixedv : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetFixedv
    @[AlwaysInline]
    def get_fixedv(address) : ::Proc(LibGL::GetPName, ::Pointer(LibGL::Fixed), ::Void)
      self.get_fixedv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetLightxv
    @[AlwaysInline]
    def get_light_xv : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetLightxv
    @[AlwaysInline]
    def get_light_xv(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.get_light_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glGetMaterialxv
    @[AlwaysInline]
    def get_material_xv : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetMaterialxv
    @[AlwaysInline]
    def get_material_xv(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.get_material_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetTexEnvxv
    @[AlwaysInline]
    def get_tex_env_xv : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetTexEnvxv
    @[AlwaysInline]
    def get_tex_env_xv(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.get_tex_env_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glGetTexParameterxv
    @[AlwaysInline]
    def get_tex_parameter_xv : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetTexParameterxv
    @[AlwaysInline]
    def get_tex_parameter_xv(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.get_tex_parameter_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glLightModelx
    @[AlwaysInline]
    def light_model_x : ::Proc(LibGL::LightModelParameter, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::LightModelParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glLightModelx
    @[AlwaysInline]
    def light_model_x(address) : ::Proc(LibGL::LightModelParameter, LibGL::Fixed, ::Void)
      self.light_model_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightModelxv
    @[AlwaysInline]
    def light_model_xv : ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glLightModelxv
    @[AlwaysInline]
    def light_model_xv(address) : ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.light_model_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightx
    @[AlwaysInline]
    def light_x : ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glLightx
    @[AlwaysInline]
    def light_x(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Fixed, ::Void)
      self.light_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLightxv
    @[AlwaysInline]
    def light_xv : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glLightxv
    @[AlwaysInline]
    def light_xv(address) : ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.light_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glLineWidthx
    @[AlwaysInline]
    def line_widthx : ::Proc(LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, ::Void)
    end

    # Proc type for the function glLineWidthx
    @[AlwaysInline]
    def line_widthx(address) : ::Proc(LibGL::Fixed, ::Void)
      self.line_widthx.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glLoadMatrixx
    @[AlwaysInline]
    def load_matrix_x : ::Proc(::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glLoadMatrixx
    @[AlwaysInline]
    def load_matrix_x(address) : ::Proc(::Pointer(LibGL::Fixed), ::Void)
      self.load_matrix_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glMaterialx
    @[AlwaysInline]
    def material_x : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glMaterialx
    @[AlwaysInline]
    def material_x(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Fixed, ::Void)
      self.material_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMaterialxv
    @[AlwaysInline]
    def material_xv : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glMaterialxv
    @[AlwaysInline]
    def material_xv(address) : ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.material_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glMultMatrixx
    @[AlwaysInline]
    def mult_matrix_x : ::Proc(::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glMultMatrixx
    @[AlwaysInline]
    def mult_matrix_x(address) : ::Proc(::Pointer(LibGL::Fixed), ::Void)
      self.mult_matrix_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glMultiTexCoord4x
    @[AlwaysInline]
    def multi_tex_coord_4x : ::Proc(LibGL::TextureUnit, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::TextureUnit, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glMultiTexCoord4x
    @[AlwaysInline]
    def multi_tex_coord_4x(address) : ::Proc(LibGL::TextureUnit, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.multi_tex_coord_4x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glNormal3x
    @[AlwaysInline]
    def normal_3x : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glNormal3x
    @[AlwaysInline]
    def normal_3x(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.normal_3x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glOrthox
    @[AlwaysInline]
    def orthox : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glOrthox
    @[AlwaysInline]
    def orthox(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.orthox.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glPointParameterx
    @[AlwaysInline]
    def point_parameter_x : ::Proc(LibGL::PointParameterNameARB, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::PointParameterNameARB, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glPointParameterx
    @[AlwaysInline]
    def point_parameter_x(address) : ::Proc(LibGL::PointParameterNameARB, LibGL::Fixed, ::Void)
      self.point_parameter_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPointParameterxv
    @[AlwaysInline]
    def point_parameter_xv : ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glPointParameterxv
    @[AlwaysInline]
    def point_parameter_xv(address) : ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Fixed), ::Void)
      self.point_parameter_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPointSizex
    @[AlwaysInline]
    def point_sizex : ::Proc(LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, ::Void)
    end

    # Proc type for the function glPointSizex
    @[AlwaysInline]
    def point_sizex(address) : ::Proc(LibGL::Fixed, ::Void)
      self.point_sizex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glPolygonOffsetx
    @[AlwaysInline]
    def polygon_offsetx : ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glPolygonOffsetx
    @[AlwaysInline]
    def polygon_offsetx(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
      self.polygon_offsetx.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glRotatex
    @[AlwaysInline]
    def rotate_x : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glRotatex
    @[AlwaysInline]
    def rotate_x(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.rotate_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glSampleCoveragex
    @[AlwaysInline]
    def sample_coveragex : ::Proc(LibGL::Clampx, LibGL::Boolean, ::Void).class
      ::Proc(LibGL::Clampx, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glSampleCoveragex
    @[AlwaysInline]
    def sample_coveragex(address) : ::Proc(LibGL::Clampx, LibGL::Boolean, ::Void)
      self.sample_coveragex.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
    end

    # Proc type for the function glScalex
    @[AlwaysInline]
    def scale_x : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glScalex
    @[AlwaysInline]
    def scale_x(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.scale_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexEnvx
    @[AlwaysInline]
    def tex_env_x : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glTexEnvx
    @[AlwaysInline]
    def tex_env_x(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Fixed, ::Void)
      self.tex_env_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexEnvxv
    @[AlwaysInline]
    def tex_env_xv : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glTexEnvxv
    @[AlwaysInline]
    def tex_env_xv(address) : ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.tex_env_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexParameterx
    @[AlwaysInline]
    def tex_parameter_x : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glTexParameterx
    @[AlwaysInline]
    def tex_parameter_x(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, LibGL::Fixed, ::Void)
      self.tex_parameter_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTexParameterxv
    @[AlwaysInline]
    def tex_parameter_xv : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void).class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glTexParameterxv
    @[AlwaysInline]
    def tex_parameter_xv(address) : ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
      self.tex_parameter_xv.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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

    # Proc type for the function glTranslatex
    @[AlwaysInline]
    def translate_x : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void).class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glTranslatex
    @[AlwaysInline]
    def translate_x(address) : ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
      self.translate_x.new(address.as(::Pointer(::Void)), ::Pointer(::Void).null)
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
