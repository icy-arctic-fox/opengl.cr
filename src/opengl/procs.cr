module OpenGL
  module Procs
    extend self

    # Proc type for the function glActiveTexture
    @[AlwaysInline]
    def active_texture
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # Proc type for the function glAlphaFuncx
    @[AlwaysInline]
    def alpha_funcx
      ::Proc(LibGL::AlphaFunction, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glBindBuffer
    @[AlwaysInline]
    def bind_buffer
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBindTexture
    @[AlwaysInline]
    def bind_texture
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
    end

    # Proc type for the function glBlendFunc
    @[AlwaysInline]
    def blend_func
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
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

    # Proc type for the function glClear
    @[AlwaysInline]
    def clear
      ::Proc(LibGL::ClearBufferMask, ::Void)
    end

    # Proc type for the function glClearColorx
    @[AlwaysInline]
    def clear_colorx
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glClearDepthx
    @[AlwaysInline]
    def clear_depth_x
      ::Proc(LibGL::Fixed, ::Void)
    end

    # Proc type for the function glClearStencil
    @[AlwaysInline]
    def clear_stencil
      ::Proc(LibGL::Int, ::Void)
    end

    # Proc type for the function glClientActiveTexture
    @[AlwaysInline]
    def client_active_texture
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # Proc type for the function glClipPlanex
    @[AlwaysInline]
    def clip_planex
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glColor4ub
    @[AlwaysInline]
    def color_4ub
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # Proc type for the function glColor4x
    @[AlwaysInline]
    def color_4x
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glColorMask
    @[AlwaysInline]
    def color_mask
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glColorPointer
    @[AlwaysInline]
    def color_pointer
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexImage2D
    @[AlwaysInline]
    def compressed_tex_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCompressedTexSubImage2D
    @[AlwaysInline]
    def compressed_tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glCopyTexImage2D
    @[AlwaysInline]
    def copy_tex_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # Proc type for the function glCopyTexSubImage2D
    @[AlwaysInline]
    def copy_tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glCullFace
    @[AlwaysInline]
    def cull_face
      ::Proc(LibGL::CullFaceMode, ::Void)
    end

    # Proc type for the function glDeleteBuffers
    @[AlwaysInline]
    def delete_buffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glDeleteTextures
    @[AlwaysInline]
    def delete_textures
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
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

    # Proc type for the function glDepthRangex
    @[AlwaysInline]
    def depth_rangex
      ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glDisable
    @[AlwaysInline]
    def disable
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glDisableClientState
    @[AlwaysInline]
    def disable_client_state
      ::Proc(LibGL::EnableCap, ::Void)
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

    # Proc type for the function glEnable
    @[AlwaysInline]
    def enable
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # Proc type for the function glEnableClientState
    @[AlwaysInline]
    def enable_client_state
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

    # Proc type for the function glFogx
    @[AlwaysInline]
    def fog_x
      ::Proc(LibGL::FogPName, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glFogxv
    @[AlwaysInline]
    def fog_xv
      ::Proc(LibGL::FogPName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glFrontFace
    @[AlwaysInline]
    def front_face
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # Proc type for the function glFrustumx
    @[AlwaysInline]
    def frustumx
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
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

    # Proc type for the function glGetClipPlanex
    @[AlwaysInline]
    def get_clip_plane_x
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGenBuffers
    @[AlwaysInline]
    def gen_buffers
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGenTextures
    @[AlwaysInline]
    def gen_textures
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # Proc type for the function glGetError
    @[AlwaysInline]
    def get_error
      ::Proc(LibGL::Enum)
    end

    # Proc type for the function glGetFixedv
    @[AlwaysInline]
    def get_fixedv
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetIntegerv
    @[AlwaysInline]
    def get_integer_v
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetLightxv
    @[AlwaysInline]
    def get_light_xv
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetMaterialxv
    @[AlwaysInline]
    def get_material_xv
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetPointerv
    @[AlwaysInline]
    def get_pointer_v
      ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
    end

    # Proc type for the function glGetString
    @[AlwaysInline]
    def get_string
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
    end

    # Proc type for the function glGetTexEnviv
    @[AlwaysInline]
    def get_tex_env_iv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexEnvxv
    @[AlwaysInline]
    def get_tex_env_xv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glGetTexParameteriv
    @[AlwaysInline]
    def get_tex_parameter_iv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glGetTexParameterxv
    @[AlwaysInline]
    def get_tex_parameter_xv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glHint
    @[AlwaysInline]
    def hint
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # Proc type for the function glIsBuffer
    @[AlwaysInline]
    def is_buffer
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glIsEnabled
    @[AlwaysInline]
    def is_enabled
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # Proc type for the function glIsTexture
    @[AlwaysInline]
    def is_texture
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # Proc type for the function glLightModelx
    @[AlwaysInline]
    def light_model_x
      ::Proc(LibGL::LightModelParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glLightModelxv
    @[AlwaysInline]
    def light_model_xv
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glLightx
    @[AlwaysInline]
    def light_x
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glLightxv
    @[AlwaysInline]
    def light_xv
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glLineWidthx
    @[AlwaysInline]
    def line_widthx
      ::Proc(LibGL::Fixed, ::Void)
    end

    # Proc type for the function glLoadIdentity
    @[AlwaysInline]
    def load_identity
      ::Proc(::Void)
    end

    # Proc type for the function glLoadMatrixx
    @[AlwaysInline]
    def load_matrix_x
      ::Proc(::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glLogicOp
    @[AlwaysInline]
    def logic_op
      ::Proc(LibGL::LogicOp, ::Void)
    end

    # Proc type for the function glMaterialx
    @[AlwaysInline]
    def material_x
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glMaterialxv
    @[AlwaysInline]
    def material_xv
      ::Proc(LibGL::MaterialFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glMatrixMode
    @[AlwaysInline]
    def matrix_mode
      ::Proc(LibGL::MatrixMode, ::Void)
    end

    # Proc type for the function glMultMatrixx
    @[AlwaysInline]
    def mult_matrix_x
      ::Proc(::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glMultiTexCoord4x
    @[AlwaysInline]
    def multi_tex_coord_4x
      ::Proc(LibGL::TextureUnit, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glNormal3x
    @[AlwaysInline]
    def normal_3x
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glNormalPointer
    @[AlwaysInline]
    def normal_pointer
      ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glOrthox
    @[AlwaysInline]
    def orthox
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glPixelStorei
    @[AlwaysInline]
    def pixel_store_i
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glPointParameterx
    @[AlwaysInline]
    def point_parameter_x
      ::Proc(LibGL::PointParameterNameARB, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glPointParameterxv
    @[AlwaysInline]
    def point_parameter_xv
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glPointSizex
    @[AlwaysInline]
    def point_sizex
      ::Proc(LibGL::Fixed, ::Void)
    end

    # Proc type for the function glPolygonOffsetx
    @[AlwaysInline]
    def polygon_offsetx
      ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
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

    # Proc type for the function glReadPixels
    @[AlwaysInline]
    def read_pixels
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glRotatex
    @[AlwaysInline]
    def rotate_x
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glSampleCoverage
    @[AlwaysInline]
    def sample_coverage
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glSampleCoveragex
    @[AlwaysInline]
    def sample_coveragex
      ::Proc(LibGL::Clampx, LibGL::Boolean, ::Void)
    end

    # Proc type for the function glScalex
    @[AlwaysInline]
    def scale_x
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glScissor
    @[AlwaysInline]
    def scissor
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # Proc type for the function glShadeModel
    @[AlwaysInline]
    def shade_model
      ::Proc(LibGL::ShadingModel, ::Void)
    end

    # Proc type for the function glStencilFunc
    @[AlwaysInline]
    def stencil_func
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilMask
    @[AlwaysInline]
    def stencil_mask
      ::Proc(LibGL::UInt, ::Void)
    end

    # Proc type for the function glStencilOp
    @[AlwaysInline]
    def stencil_op
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # Proc type for the function glTexCoordPointer
    @[AlwaysInline]
    def tex_coord_pointer
      ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexEnvi
    @[AlwaysInline]
    def tex_env_i
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexEnvx
    @[AlwaysInline]
    def tex_env_x
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glTexEnviv
    @[AlwaysInline]
    def tex_env_iv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexEnvxv
    @[AlwaysInline]
    def tex_env_xv
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glTexImage2D
    @[AlwaysInline]
    def tex_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTexParameteri
    @[AlwaysInline]
    def tex_parameter_i
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void)
    end

    # Proc type for the function glTexParameterx
    @[AlwaysInline]
    def tex_parameter_x
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glTexParameteriv
    @[AlwaysInline]
    def tex_parameter_iv
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # Proc type for the function glTexParameterxv
    @[AlwaysInline]
    def tex_parameter_xv
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # Proc type for the function glTexSubImage2D
    @[AlwaysInline]
    def tex_sub_image_2d
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glTranslatex
    @[AlwaysInline]
    def translate_x
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # Proc type for the function glVertexPointer
    @[AlwaysInline]
    def vertex_pointer
      ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # Proc type for the function glViewport
    @[AlwaysInline]
    def viewport
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end
  end
end
