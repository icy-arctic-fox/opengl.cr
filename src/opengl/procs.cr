module OpenGL
  module Procs
    extend self

    # `Proc` type for the OpenGL function *glActiveTexture*.
    @[AlwaysInline]
    def active_texture : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # `Proc` type for the OpenGL function *glAlphaFuncx*.
    @[AlwaysInline]
    def alpha_funcx : ::Proc.class
      ::Proc(LibGL::AlphaFunction, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindBuffer*.
    @[AlwaysInline]
    def bind_buffer : ::Proc.class
      ::Proc(LibGL::BufferTargetARB, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBindTexture*.
    @[AlwaysInline]
    def bind_texture : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glBlendFunc*.
    @[AlwaysInline]
    def blend_func : ::Proc.class
      ::Proc(LibGL::BlendingFactor, LibGL::BlendingFactor, ::Void)
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

    # `Proc` type for the OpenGL function *glClear*.
    @[AlwaysInline]
    def clear : ::Proc.class
      ::Proc(LibGL::ClearBufferMask, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearColorx*.
    @[AlwaysInline]
    def clear_colorx : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearDepthx*.
    @[AlwaysInline]
    def clear_depth_x : ::Proc.class
      ::Proc(LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glClearStencil*.
    @[AlwaysInline]
    def clear_stencil : ::Proc.class
      ::Proc(LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glClientActiveTexture*.
    @[AlwaysInline]
    def client_active_texture : ::Proc.class
      ::Proc(LibGL::TextureUnit, ::Void)
    end

    # `Proc` type for the OpenGL function *glClipPlanex*.
    @[AlwaysInline]
    def clip_planex : ::Proc.class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4ub*.
    @[AlwaysInline]
    def color_4ub : ::Proc.class
      ::Proc(LibGL::UByte, LibGL::UByte, LibGL::UByte, LibGL::UByte, ::Void)
    end

    # `Proc` type for the OpenGL function *glColor4x*.
    @[AlwaysInline]
    def color_4x : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorMask*.
    @[AlwaysInline]
    def color_mask : ::Proc.class
      ::Proc(LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glColorPointer*.
    @[AlwaysInline]
    def color_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::ColorPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexImage2D*.
    @[AlwaysInline]
    def compressed_tex_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCompressedTexSubImage2D*.
    @[AlwaysInline]
    def compressed_tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::InternalFormat, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexImage2D*.
    @[AlwaysInline]
    def copy_tex_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glCopyTexSubImage2D*.
    @[AlwaysInline]
    def copy_tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glCullFace*.
    @[AlwaysInline]
    def cull_face : ::Proc.class
      ::Proc(LibGL::TriangleFace, ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteBuffers*.
    @[AlwaysInline]
    def delete_buffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glDeleteTextures*.
    @[AlwaysInline]
    def delete_textures : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
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

    # `Proc` type for the OpenGL function *glDepthRangex*.
    @[AlwaysInline]
    def depth_rangex : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisable*.
    @[AlwaysInline]
    def disable : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glDisableClientState*.
    @[AlwaysInline]
    def disable_client_state : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
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

    # `Proc` type for the OpenGL function *glEnable*.
    @[AlwaysInline]
    def enable : ::Proc.class
      ::Proc(LibGL::EnableCap, ::Void)
    end

    # `Proc` type for the OpenGL function *glEnableClientState*.
    @[AlwaysInline]
    def enable_client_state : ::Proc.class
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

    # `Proc` type for the OpenGL function *glFogx*.
    @[AlwaysInline]
    def fog_x : ::Proc.class
      ::Proc(LibGL::FogPName, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glFogxv*.
    @[AlwaysInline]
    def fog_xv : ::Proc.class
      ::Proc(LibGL::FogPName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glFrontFace*.
    @[AlwaysInline]
    def front_face : ::Proc.class
      ::Proc(LibGL::FrontFaceDirection, ::Void)
    end

    # `Proc` type for the OpenGL function *glFrustumx*.
    @[AlwaysInline]
    def frustumx : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
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

    # `Proc` type for the OpenGL function *glGetClipPlanex*.
    @[AlwaysInline]
    def get_clip_plane_x : ::Proc.class
      ::Proc(LibGL::ClipPlaneName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenBuffers*.
    @[AlwaysInline]
    def gen_buffers : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGenTextures*.
    @[AlwaysInline]
    def gen_textures : ::Proc.class
      ::Proc(LibGL::SizeI, ::Pointer(LibGL::UInt), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetError*.
    @[AlwaysInline]
    def get_error : ::Proc.class
      ::Proc(LibGL::Enum)
    end

    # `Proc` type for the OpenGL function *glGetFixedv*.
    @[AlwaysInline]
    def get_fixedv : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetIntegerv*.
    @[AlwaysInline]
    def get_integer_v : ::Proc.class
      ::Proc(LibGL::GetPName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetLightxv*.
    @[AlwaysInline]
    def get_light_xv : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetMaterialxv*.
    @[AlwaysInline]
    def get_material_xv : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetPointerv*.
    @[AlwaysInline]
    def get_pointer_v : ::Proc.class
      ::Proc(LibGL::GetPointervPName, ::Pointer(Pointer(Void)), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetString*.
    @[AlwaysInline]
    def get_string : ::Proc.class
      ::Proc(LibGL::StringName, ::Pointer(LibGL::UByte))
    end

    # `Proc` type for the OpenGL function *glGetTexEnviv*.
    @[AlwaysInline]
    def get_tex_env_iv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexEnvxv*.
    @[AlwaysInline]
    def get_tex_env_xv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexParameteriv*.
    @[AlwaysInline]
    def get_tex_parameter_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glGetTexParameterxv*.
    @[AlwaysInline]
    def get_tex_parameter_xv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glHint*.
    @[AlwaysInline]
    def hint : ::Proc.class
      ::Proc(LibGL::HintTarget, LibGL::HintMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glIsBuffer*.
    @[AlwaysInline]
    def is_buffer : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glIsEnabled*.
    @[AlwaysInline]
    def is_enabled : ::Proc.class
      ::Proc(LibGL::EnableCap, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glIsTexture*.
    @[AlwaysInline]
    def is_texture : ::Proc.class
      ::Proc(LibGL::UInt, LibGL::Boolean)
    end

    # `Proc` type for the OpenGL function *glLightModelx*.
    @[AlwaysInline]
    def light_model_x : ::Proc.class
      ::Proc(LibGL::LightModelParameter, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glLightModelxv*.
    @[AlwaysInline]
    def light_model_xv : ::Proc.class
      ::Proc(LibGL::LightModelParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glLightx*.
    @[AlwaysInline]
    def light_x : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glLightxv*.
    @[AlwaysInline]
    def light_xv : ::Proc.class
      ::Proc(LibGL::LightName, LibGL::LightParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glLineWidthx*.
    @[AlwaysInline]
    def line_widthx : ::Proc.class
      ::Proc(LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glLoadIdentity*.
    @[AlwaysInline]
    def load_identity : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glLoadMatrixx*.
    @[AlwaysInline]
    def load_matrix_x : ::Proc.class
      ::Proc(::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glLogicOp*.
    @[AlwaysInline]
    def logic_op : ::Proc.class
      ::Proc(LibGL::LogicOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glMaterialx*.
    @[AlwaysInline]
    def material_x : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glMaterialxv*.
    @[AlwaysInline]
    def material_xv : ::Proc.class
      ::Proc(LibGL::TriangleFace, LibGL::MaterialParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glMatrixMode*.
    @[AlwaysInline]
    def matrix_mode : ::Proc.class
      ::Proc(LibGL::MatrixMode, ::Void)
    end

    # `Proc` type for the OpenGL function *glMultMatrixx*.
    @[AlwaysInline]
    def mult_matrix_x : ::Proc.class
      ::Proc(::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glMultiTexCoord4x*.
    @[AlwaysInline]
    def multi_tex_coord_4x : ::Proc.class
      ::Proc(LibGL::TextureUnit, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormal3x*.
    @[AlwaysInline]
    def normal_3x : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glNormalPointer*.
    @[AlwaysInline]
    def normal_pointer : ::Proc.class
      ::Proc(LibGL::NormalPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glOrthox*.
    @[AlwaysInline]
    def orthox : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glPixelStorei*.
    @[AlwaysInline]
    def pixel_store_i : ::Proc.class
      ::Proc(LibGL::PixelStoreParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glPointParameterx*.
    @[AlwaysInline]
    def point_parameter_x : ::Proc.class
      ::Proc(LibGL::PointParameterNameARB, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glPointParameterxv*.
    @[AlwaysInline]
    def point_parameter_xv : ::Proc.class
      ::Proc(LibGL::PointParameterNameARB, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glPointSizex*.
    @[AlwaysInline]
    def point_sizex : ::Proc.class
      ::Proc(LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glPolygonOffsetx*.
    @[AlwaysInline]
    def polygon_offsetx : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glPopMatrix*.
    @[AlwaysInline]
    def pop_matrix : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glPushMatrix*.
    @[AlwaysInline]
    def push_matrix : ::Proc.class
      ::Proc(::Void)
    end

    # `Proc` type for the OpenGL function *glReadPixels*.
    @[AlwaysInline]
    def read_pixels : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glRotatex*.
    @[AlwaysInline]
    def rotate_x : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glSampleCoverage*.
    @[AlwaysInline]
    def sample_coverage : ::Proc.class
      ::Proc(LibGL::Float, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glSampleCoveragex*.
    @[AlwaysInline]
    def sample_coveragex : ::Proc.class
      ::Proc(LibGL::Clampx, LibGL::Boolean, ::Void)
    end

    # `Proc` type for the OpenGL function *glScalex*.
    @[AlwaysInline]
    def scale_x : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glScissor*.
    @[AlwaysInline]
    def scissor : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end

    # `Proc` type for the OpenGL function *glShadeModel*.
    @[AlwaysInline]
    def shade_model : ::Proc.class
      ::Proc(LibGL::ShadingModel, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilFunc*.
    @[AlwaysInline]
    def stencil_func : ::Proc.class
      ::Proc(LibGL::StencilFunction, LibGL::Int, LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilMask*.
    @[AlwaysInline]
    def stencil_mask : ::Proc.class
      ::Proc(LibGL::UInt, ::Void)
    end

    # `Proc` type for the OpenGL function *glStencilOp*.
    @[AlwaysInline]
    def stencil_op : ::Proc.class
      ::Proc(LibGL::StencilOp, LibGL::StencilOp, LibGL::StencilOp, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexCoordPointer*.
    @[AlwaysInline]
    def tex_coord_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::TexCoordPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnvi*.
    @[AlwaysInline]
    def tex_env_i : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnvx*.
    @[AlwaysInline]
    def tex_env_x : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnviv*.
    @[AlwaysInline]
    def tex_env_iv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexEnvxv*.
    @[AlwaysInline]
    def tex_env_xv : ::Proc.class
      ::Proc(LibGL::TextureEnvTarget, LibGL::TextureEnvParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexImage2D*.
    @[AlwaysInline]
    def tex_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::InternalFormat, LibGL::SizeI, LibGL::SizeI, LibGL::Int, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameteri*.
    @[AlwaysInline]
    def tex_parameter_i : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, LibGL::Int, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameterx*.
    @[AlwaysInline]
    def tex_parameter_x : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameteriv*.
    @[AlwaysInline]
    def tex_parameter_iv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::TextureParameterName, ::Pointer(LibGL::Int), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexParameterxv*.
    @[AlwaysInline]
    def tex_parameter_xv : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::GetTextureParameter, ::Pointer(LibGL::Fixed), ::Void)
    end

    # `Proc` type for the OpenGL function *glTexSubImage2D*.
    @[AlwaysInline]
    def tex_sub_image_2d : ::Proc.class
      ::Proc(LibGL::TextureTarget, LibGL::Int, LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, LibGL::PixelFormat, LibGL::PixelType, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glTranslatex*.
    @[AlwaysInline]
    def translate_x : ::Proc.class
      ::Proc(LibGL::Fixed, LibGL::Fixed, LibGL::Fixed, ::Void)
    end

    # `Proc` type for the OpenGL function *glVertexPointer*.
    @[AlwaysInline]
    def vertex_pointer : ::Proc.class
      ::Proc(LibGL::Int, LibGL::VertexPointerType, LibGL::SizeI, ::Pointer(Void), ::Void)
    end

    # `Proc` type for the OpenGL function *glViewport*.
    @[AlwaysInline]
    def viewport : ::Proc.class
      ::Proc(LibGL::Int, LibGL::Int, LibGL::SizeI, LibGL::SizeI, ::Void)
    end
  end
end
