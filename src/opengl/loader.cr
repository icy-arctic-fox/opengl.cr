require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime
  # and provides an interface for calling and querying availability.
  class Loader
    # Sets up the procs without loading any addresses.
    # No functions will be (safely) callable until they are loaded.
    def initialize
      @addr_active_texture = ::Pointer(::Void).null
      @addr_alpha_funcx = ::Pointer(::Void).null
      @addr_bind_buffer = ::Pointer(::Void).null
      @addr_bind_texture = ::Pointer(::Void).null
      @addr_blend_func = ::Pointer(::Void).null
      @addr_buffer_data = ::Pointer(::Void).null
      @addr_buffer_sub_data = ::Pointer(::Void).null
      @addr_clear = ::Pointer(::Void).null
      @addr_clear_colorx = ::Pointer(::Void).null
      @addr_clear_depth_x = ::Pointer(::Void).null
      @addr_clear_stencil = ::Pointer(::Void).null
      @addr_client_active_texture = ::Pointer(::Void).null
      @addr_clip_planex = ::Pointer(::Void).null
      @addr_color_4ub = ::Pointer(::Void).null
      @addr_color_4x = ::Pointer(::Void).null
      @addr_color_mask = ::Pointer(::Void).null
      @addr_color_pointer = ::Pointer(::Void).null
      @addr_compressed_tex_image_2d = ::Pointer(::Void).null
      @addr_compressed_tex_sub_image_2d = ::Pointer(::Void).null
      @addr_copy_tex_image_2d = ::Pointer(::Void).null
      @addr_copy_tex_sub_image_2d = ::Pointer(::Void).null
      @addr_cull_face = ::Pointer(::Void).null
      @addr_delete_buffers = ::Pointer(::Void).null
      @addr_delete_textures = ::Pointer(::Void).null
      @addr_depth_func = ::Pointer(::Void).null
      @addr_depth_mask = ::Pointer(::Void).null
      @addr_depth_rangex = ::Pointer(::Void).null
      @addr_disable = ::Pointer(::Void).null
      @addr_disable_client_state = ::Pointer(::Void).null
      @addr_draw_arrays = ::Pointer(::Void).null
      @addr_draw_elements = ::Pointer(::Void).null
      @addr_enable = ::Pointer(::Void).null
      @addr_enable_client_state = ::Pointer(::Void).null
      @addr_finish = ::Pointer(::Void).null
      @addr_flush = ::Pointer(::Void).null
      @addr_fog_x = ::Pointer(::Void).null
      @addr_fog_xv = ::Pointer(::Void).null
      @addr_front_face = ::Pointer(::Void).null
      @addr_frustumx = ::Pointer(::Void).null
      @addr_get_boolean_v = ::Pointer(::Void).null
      @addr_get_buffer_parameter_iv = ::Pointer(::Void).null
      @addr_get_clip_plane_x = ::Pointer(::Void).null
      @addr_gen_buffers = ::Pointer(::Void).null
      @addr_gen_textures = ::Pointer(::Void).null
      @addr_get_error = ::Pointer(::Void).null
      @addr_get_fixedv = ::Pointer(::Void).null
      @addr_get_integer_v = ::Pointer(::Void).null
      @addr_get_light_xv = ::Pointer(::Void).null
      @addr_get_material_xv = ::Pointer(::Void).null
      @addr_get_pointer_v = ::Pointer(::Void).null
      @addr_get_string = ::Pointer(::Void).null
      @addr_get_tex_env_iv = ::Pointer(::Void).null
      @addr_get_tex_env_xv = ::Pointer(::Void).null
      @addr_get_tex_parameter_iv = ::Pointer(::Void).null
      @addr_get_tex_parameter_xv = ::Pointer(::Void).null
      @addr_hint = ::Pointer(::Void).null
      @addr_is_buffer = ::Pointer(::Void).null
      @addr_is_enabled = ::Pointer(::Void).null
      @addr_is_texture = ::Pointer(::Void).null
      @addr_light_model_x = ::Pointer(::Void).null
      @addr_light_model_xv = ::Pointer(::Void).null
      @addr_light_x = ::Pointer(::Void).null
      @addr_light_xv = ::Pointer(::Void).null
      @addr_line_widthx = ::Pointer(::Void).null
      @addr_load_identity = ::Pointer(::Void).null
      @addr_load_matrix_x = ::Pointer(::Void).null
      @addr_logic_op = ::Pointer(::Void).null
      @addr_material_x = ::Pointer(::Void).null
      @addr_material_xv = ::Pointer(::Void).null
      @addr_matrix_mode = ::Pointer(::Void).null
      @addr_mult_matrix_x = ::Pointer(::Void).null
      @addr_multi_tex_coord_4x = ::Pointer(::Void).null
      @addr_normal_3x = ::Pointer(::Void).null
      @addr_normal_pointer = ::Pointer(::Void).null
      @addr_orthox = ::Pointer(::Void).null
      @addr_pixel_store_i = ::Pointer(::Void).null
      @addr_point_parameter_x = ::Pointer(::Void).null
      @addr_point_parameter_xv = ::Pointer(::Void).null
      @addr_point_sizex = ::Pointer(::Void).null
      @addr_polygon_offsetx = ::Pointer(::Void).null
      @addr_pop_matrix = ::Pointer(::Void).null
      @addr_push_matrix = ::Pointer(::Void).null
      @addr_read_pixels = ::Pointer(::Void).null
      @addr_rotate_x = ::Pointer(::Void).null
      @addr_sample_coverage = ::Pointer(::Void).null
      @addr_sample_coveragex = ::Pointer(::Void).null
      @addr_scale_x = ::Pointer(::Void).null
      @addr_scissor = ::Pointer(::Void).null
      @addr_shade_model = ::Pointer(::Void).null
      @addr_stencil_func = ::Pointer(::Void).null
      @addr_stencil_mask = ::Pointer(::Void).null
      @addr_stencil_op = ::Pointer(::Void).null
      @addr_tex_coord_pointer = ::Pointer(::Void).null
      @addr_tex_env_i = ::Pointer(::Void).null
      @addr_tex_env_x = ::Pointer(::Void).null
      @addr_tex_env_iv = ::Pointer(::Void).null
      @addr_tex_env_xv = ::Pointer(::Void).null
      @addr_tex_image_2d = ::Pointer(::Void).null
      @addr_tex_parameter_i = ::Pointer(::Void).null
      @addr_tex_parameter_x = ::Pointer(::Void).null
      @addr_tex_parameter_iv = ::Pointer(::Void).null
      @addr_tex_parameter_xv = ::Pointer(::Void).null
      @addr_tex_sub_image_2d = ::Pointer(::Void).null
      @addr_translate_x = ::Pointer(::Void).null
      @addr_vertex_pointer = ::Pointer(::Void).null
      @addr_viewport = ::Pointer(::Void).null
    end

    # Loads all functions.
    # The block takes an OpenGL function name and returns its address.
    # The address should be null if the function is unavailable.
    def load_all(& : String -> Void*)
      @addr_active_texture = yield "glActiveTexture"
      @addr_alpha_funcx = yield "glAlphaFuncx"
      @addr_bind_buffer = yield "glBindBuffer"
      @addr_bind_texture = yield "glBindTexture"
      @addr_blend_func = yield "glBlendFunc"
      @addr_buffer_data = yield "glBufferData"
      @addr_buffer_sub_data = yield "glBufferSubData"
      @addr_clear = yield "glClear"
      @addr_clear_colorx = yield "glClearColorx"
      @addr_clear_depth_x = yield "glClearDepthx"
      @addr_clear_stencil = yield "glClearStencil"
      @addr_client_active_texture = yield "glClientActiveTexture"
      @addr_clip_planex = yield "glClipPlanex"
      @addr_color_4ub = yield "glColor4ub"
      @addr_color_4x = yield "glColor4x"
      @addr_color_mask = yield "glColorMask"
      @addr_color_pointer = yield "glColorPointer"
      @addr_compressed_tex_image_2d = yield "glCompressedTexImage2D"
      @addr_compressed_tex_sub_image_2d = yield "glCompressedTexSubImage2D"
      @addr_copy_tex_image_2d = yield "glCopyTexImage2D"
      @addr_copy_tex_sub_image_2d = yield "glCopyTexSubImage2D"
      @addr_cull_face = yield "glCullFace"
      @addr_delete_buffers = yield "glDeleteBuffers"
      @addr_delete_textures = yield "glDeleteTextures"
      @addr_depth_func = yield "glDepthFunc"
      @addr_depth_mask = yield "glDepthMask"
      @addr_depth_rangex = yield "glDepthRangex"
      @addr_disable = yield "glDisable"
      @addr_disable_client_state = yield "glDisableClientState"
      @addr_draw_arrays = yield "glDrawArrays"
      @addr_draw_elements = yield "glDrawElements"
      @addr_enable = yield "glEnable"
      @addr_enable_client_state = yield "glEnableClientState"
      @addr_finish = yield "glFinish"
      @addr_flush = yield "glFlush"
      @addr_fog_x = yield "glFogx"
      @addr_fog_xv = yield "glFogxv"
      @addr_front_face = yield "glFrontFace"
      @addr_frustumx = yield "glFrustumx"
      @addr_get_boolean_v = yield "glGetBooleanv"
      @addr_get_buffer_parameter_iv = yield "glGetBufferParameteriv"
      @addr_get_clip_plane_x = yield "glGetClipPlanex"
      @addr_gen_buffers = yield "glGenBuffers"
      @addr_gen_textures = yield "glGenTextures"
      @addr_get_error = yield "glGetError"
      @addr_get_fixedv = yield "glGetFixedv"
      @addr_get_integer_v = yield "glGetIntegerv"
      @addr_get_light_xv = yield "glGetLightxv"
      @addr_get_material_xv = yield "glGetMaterialxv"
      @addr_get_pointer_v = yield "glGetPointerv"
      @addr_get_string = yield "glGetString"
      @addr_get_tex_env_iv = yield "glGetTexEnviv"
      @addr_get_tex_env_xv = yield "glGetTexEnvxv"
      @addr_get_tex_parameter_iv = yield "glGetTexParameteriv"
      @addr_get_tex_parameter_xv = yield "glGetTexParameterxv"
      @addr_hint = yield "glHint"
      @addr_is_buffer = yield "glIsBuffer"
      @addr_is_enabled = yield "glIsEnabled"
      @addr_is_texture = yield "glIsTexture"
      @addr_light_model_x = yield "glLightModelx"
      @addr_light_model_xv = yield "glLightModelxv"
      @addr_light_x = yield "glLightx"
      @addr_light_xv = yield "glLightxv"
      @addr_line_widthx = yield "glLineWidthx"
      @addr_load_identity = yield "glLoadIdentity"
      @addr_load_matrix_x = yield "glLoadMatrixx"
      @addr_logic_op = yield "glLogicOp"
      @addr_material_x = yield "glMaterialx"
      @addr_material_xv = yield "glMaterialxv"
      @addr_matrix_mode = yield "glMatrixMode"
      @addr_mult_matrix_x = yield "glMultMatrixx"
      @addr_multi_tex_coord_4x = yield "glMultiTexCoord4x"
      @addr_normal_3x = yield "glNormal3x"
      @addr_normal_pointer = yield "glNormalPointer"
      @addr_orthox = yield "glOrthox"
      @addr_pixel_store_i = yield "glPixelStorei"
      @addr_point_parameter_x = yield "glPointParameterx"
      @addr_point_parameter_xv = yield "glPointParameterxv"
      @addr_point_sizex = yield "glPointSizex"
      @addr_polygon_offsetx = yield "glPolygonOffsetx"
      @addr_pop_matrix = yield "glPopMatrix"
      @addr_push_matrix = yield "glPushMatrix"
      @addr_read_pixels = yield "glReadPixels"
      @addr_rotate_x = yield "glRotatex"
      @addr_sample_coverage = yield "glSampleCoverage"
      @addr_sample_coveragex = yield "glSampleCoveragex"
      @addr_scale_x = yield "glScalex"
      @addr_scissor = yield "glScissor"
      @addr_shade_model = yield "glShadeModel"
      @addr_stencil_func = yield "glStencilFunc"
      @addr_stencil_mask = yield "glStencilMask"
      @addr_stencil_op = yield "glStencilOp"
      @addr_tex_coord_pointer = yield "glTexCoordPointer"
      @addr_tex_env_i = yield "glTexEnvi"
      @addr_tex_env_x = yield "glTexEnvx"
      @addr_tex_env_iv = yield "glTexEnviv"
      @addr_tex_env_xv = yield "glTexEnvxv"
      @addr_tex_image_2d = yield "glTexImage2D"
      @addr_tex_parameter_i = yield "glTexParameteri"
      @addr_tex_parameter_x = yield "glTexParameterx"
      @addr_tex_parameter_iv = yield "glTexParameteriv"
      @addr_tex_parameter_xv = yield "glTexParameterxv"
      @addr_tex_sub_image_2d = yield "glTexSubImage2D"
      @addr_translate_x = yield "glTranslatex"
      @addr_vertex_pointer = yield "glVertexPointer"
      @addr_viewport = yield "glViewport"
    end

    # Invokes glActiveTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def active_texture!(*args)
      addr = @addr_active_texture
      proc = Procs.active_texture(addr)
      proc.call(*args)
    end

    # Invokes glActiveTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def active_texture(*args)
      raise FunctionUnavailableError.new("glActiveTexture") unless active_texture?

      active_texture!(*args)
    end

    # Checks if the function "glActiveTexture" is loaded.
    @[AlwaysInline]
    def active_texture? : Bool
      !@addr_active_texture.null?
    end

    # Invokes glAlphaFuncx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def alpha_funcx!(*args)
      addr = @addr_alpha_funcx
      proc = Procs.alpha_funcx(addr)
      proc.call(*args)
    end

    # Invokes glAlphaFuncx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def alpha_funcx(*args)
      raise FunctionUnavailableError.new("glAlphaFuncx") unless alpha_funcx?

      alpha_funcx!(*args)
    end

    # Checks if the function "glAlphaFuncx" is loaded.
    @[AlwaysInline]
    def alpha_funcx? : Bool
      !@addr_alpha_funcx.null?
    end

    # Invokes glBindBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffer!(*args)
      addr = @addr_bind_buffer
      proc = Procs.bind_buffer(addr)
      proc.call(*args)
    end

    # Invokes glBindBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffer(*args)
      raise FunctionUnavailableError.new("glBindBuffer") unless bind_buffer?

      bind_buffer!(*args)
    end

    # Checks if the function "glBindBuffer" is loaded.
    @[AlwaysInline]
    def bind_buffer? : Bool
      !@addr_bind_buffer.null?
    end

    # Invokes glBindTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_texture!(*args)
      addr = @addr_bind_texture
      proc = Procs.bind_texture(addr)
      proc.call(*args)
    end

    # Invokes glBindTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_texture(*args)
      raise FunctionUnavailableError.new("glBindTexture") unless bind_texture?

      bind_texture!(*args)
    end

    # Checks if the function "glBindTexture" is loaded.
    @[AlwaysInline]
    def bind_texture? : Bool
      !@addr_bind_texture.null?
    end

    # Invokes glBlendFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func!(*args)
      addr = @addr_blend_func
      proc = Procs.blend_func(addr)
      proc.call(*args)
    end

    # Invokes glBlendFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func(*args)
      raise FunctionUnavailableError.new("glBlendFunc") unless blend_func?

      blend_func!(*args)
    end

    # Checks if the function "glBlendFunc" is loaded.
    @[AlwaysInline]
    def blend_func? : Bool
      !@addr_blend_func.null?
    end

    # Invokes glBufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def buffer_data!(*args)
      addr = @addr_buffer_data
      proc = Procs.buffer_data(addr)
      proc.call(*args)
    end

    # Invokes glBufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def buffer_data(*args)
      raise FunctionUnavailableError.new("glBufferData") unless buffer_data?

      buffer_data!(*args)
    end

    # Checks if the function "glBufferData" is loaded.
    @[AlwaysInline]
    def buffer_data? : Bool
      !@addr_buffer_data.null?
    end

    # Invokes glBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def buffer_sub_data!(*args)
      addr = @addr_buffer_sub_data
      proc = Procs.buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glBufferSubData") unless buffer_sub_data?

      buffer_sub_data!(*args)
    end

    # Checks if the function "glBufferSubData" is loaded.
    @[AlwaysInline]
    def buffer_sub_data? : Bool
      !@addr_buffer_sub_data.null?
    end

    # Invokes glClear.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear!(*args)
      addr = @addr_clear
      proc = Procs.clear(addr)
      proc.call(*args)
    end

    # Invokes glClear.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear(*args)
      raise FunctionUnavailableError.new("glClear") unless clear?

      clear!(*args)
    end

    # Checks if the function "glClear" is loaded.
    @[AlwaysInline]
    def clear? : Bool
      !@addr_clear.null?
    end

    # Invokes glClearColorx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_colorx!(*args)
      addr = @addr_clear_colorx
      proc = Procs.clear_colorx(addr)
      proc.call(*args)
    end

    # Invokes glClearColorx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_colorx(*args)
      raise FunctionUnavailableError.new("glClearColorx") unless clear_colorx?

      clear_colorx!(*args)
    end

    # Checks if the function "glClearColorx" is loaded.
    @[AlwaysInline]
    def clear_colorx? : Bool
      !@addr_clear_colorx.null?
    end

    # Invokes glClearDepthx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_depth_x!(*args)
      addr = @addr_clear_depth_x
      proc = Procs.clear_depth_x(addr)
      proc.call(*args)
    end

    # Invokes glClearDepthx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_depth_x(*args)
      raise FunctionUnavailableError.new("glClearDepthx") unless clear_depth_x?

      clear_depth_x!(*args)
    end

    # Checks if the function "glClearDepthx" is loaded.
    @[AlwaysInline]
    def clear_depth_x? : Bool
      !@addr_clear_depth_x.null?
    end

    # Invokes glClearStencil.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_stencil!(*args)
      addr = @addr_clear_stencil
      proc = Procs.clear_stencil(addr)
      proc.call(*args)
    end

    # Invokes glClearStencil.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_stencil(*args)
      raise FunctionUnavailableError.new("glClearStencil") unless clear_stencil?

      clear_stencil!(*args)
    end

    # Checks if the function "glClearStencil" is loaded.
    @[AlwaysInline]
    def clear_stencil? : Bool
      !@addr_clear_stencil.null?
    end

    # Invokes glClientActiveTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def client_active_texture!(*args)
      addr = @addr_client_active_texture
      proc = Procs.client_active_texture(addr)
      proc.call(*args)
    end

    # Invokes glClientActiveTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def client_active_texture(*args)
      raise FunctionUnavailableError.new("glClientActiveTexture") unless client_active_texture?

      client_active_texture!(*args)
    end

    # Checks if the function "glClientActiveTexture" is loaded.
    @[AlwaysInline]
    def client_active_texture? : Bool
      !@addr_client_active_texture.null?
    end

    # Invokes glClipPlanex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clip_planex!(*args)
      addr = @addr_clip_planex
      proc = Procs.clip_planex(addr)
      proc.call(*args)
    end

    # Invokes glClipPlanex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clip_planex(*args)
      raise FunctionUnavailableError.new("glClipPlanex") unless clip_planex?

      clip_planex!(*args)
    end

    # Checks if the function "glClipPlanex" is loaded.
    @[AlwaysInline]
    def clip_planex? : Bool
      !@addr_clip_planex.null?
    end

    # Invokes glColor4ub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4ub!(*args)
      addr = @addr_color_4ub
      proc = Procs.color_4ub(addr)
      proc.call(*args)
    end

    # Invokes glColor4ub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4ub(*args)
      raise FunctionUnavailableError.new("glColor4ub") unless color_4ub?

      color_4ub!(*args)
    end

    # Checks if the function "glColor4ub" is loaded.
    @[AlwaysInline]
    def color_4ub? : Bool
      !@addr_color_4ub.null?
    end

    # Invokes glColor4x.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4x!(*args)
      addr = @addr_color_4x
      proc = Procs.color_4x(addr)
      proc.call(*args)
    end

    # Invokes glColor4x.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4x(*args)
      raise FunctionUnavailableError.new("glColor4x") unless color_4x?

      color_4x!(*args)
    end

    # Checks if the function "glColor4x" is loaded.
    @[AlwaysInline]
    def color_4x? : Bool
      !@addr_color_4x.null?
    end

    # Invokes glColorMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_mask!(*args)
      addr = @addr_color_mask
      proc = Procs.color_mask(addr)
      proc.call(*args)
    end

    # Invokes glColorMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_mask(*args)
      raise FunctionUnavailableError.new("glColorMask") unless color_mask?

      color_mask!(*args)
    end

    # Checks if the function "glColorMask" is loaded.
    @[AlwaysInline]
    def color_mask? : Bool
      !@addr_color_mask.null?
    end

    # Invokes glColorPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_pointer!(*args)
      addr = @addr_color_pointer
      proc = Procs.color_pointer(addr)
      proc.call(*args)
    end

    # Invokes glColorPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_pointer(*args)
      raise FunctionUnavailableError.new("glColorPointer") unless color_pointer?

      color_pointer!(*args)
    end

    # Checks if the function "glColorPointer" is loaded.
    @[AlwaysInline]
    def color_pointer? : Bool
      !@addr_color_pointer.null?
    end

    # Invokes glCompressedTexImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_image_2d!(*args)
      addr = @addr_compressed_tex_image_2d
      proc = Procs.compressed_tex_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTexImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_image_2d(*args)
      raise FunctionUnavailableError.new("glCompressedTexImage2D") unless compressed_tex_image_2d?

      compressed_tex_image_2d!(*args)
    end

    # Checks if the function "glCompressedTexImage2D" is loaded.
    @[AlwaysInline]
    def compressed_tex_image_2d? : Bool
      !@addr_compressed_tex_image_2d.null?
    end

    # Invokes glCompressedTexSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_sub_image_2d!(*args)
      addr = @addr_compressed_tex_sub_image_2d
      proc = Procs.compressed_tex_sub_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTexSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glCompressedTexSubImage2D") unless compressed_tex_sub_image_2d?

      compressed_tex_sub_image_2d!(*args)
    end

    # Checks if the function "glCompressedTexSubImage2D" is loaded.
    @[AlwaysInline]
    def compressed_tex_sub_image_2d? : Bool
      !@addr_compressed_tex_sub_image_2d.null?
    end

    # Invokes glCopyTexImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_image_2d!(*args)
      addr = @addr_copy_tex_image_2d
      proc = Procs.copy_tex_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTexImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_image_2d(*args)
      raise FunctionUnavailableError.new("glCopyTexImage2D") unless copy_tex_image_2d?

      copy_tex_image_2d!(*args)
    end

    # Checks if the function "glCopyTexImage2D" is loaded.
    @[AlwaysInline]
    def copy_tex_image_2d? : Bool
      !@addr_copy_tex_image_2d.null?
    end

    # Invokes glCopyTexSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_sub_image_2d!(*args)
      addr = @addr_copy_tex_sub_image_2d
      proc = Procs.copy_tex_sub_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTexSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glCopyTexSubImage2D") unless copy_tex_sub_image_2d?

      copy_tex_sub_image_2d!(*args)
    end

    # Checks if the function "glCopyTexSubImage2D" is loaded.
    @[AlwaysInline]
    def copy_tex_sub_image_2d? : Bool
      !@addr_copy_tex_sub_image_2d.null?
    end

    # Invokes glCullFace.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def cull_face!(*args)
      addr = @addr_cull_face
      proc = Procs.cull_face(addr)
      proc.call(*args)
    end

    # Invokes glCullFace.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def cull_face(*args)
      raise FunctionUnavailableError.new("glCullFace") unless cull_face?

      cull_face!(*args)
    end

    # Checks if the function "glCullFace" is loaded.
    @[AlwaysInline]
    def cull_face? : Bool
      !@addr_cull_face.null?
    end

    # Invokes glDeleteBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_buffers!(*args)
      addr = @addr_delete_buffers
      proc = Procs.delete_buffers(addr)
      proc.call(*args)
    end

    # Invokes glDeleteBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_buffers(*args)
      raise FunctionUnavailableError.new("glDeleteBuffers") unless delete_buffers?

      delete_buffers!(*args)
    end

    # Checks if the function "glDeleteBuffers" is loaded.
    @[AlwaysInline]
    def delete_buffers? : Bool
      !@addr_delete_buffers.null?
    end

    # Invokes glDeleteTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_textures!(*args)
      addr = @addr_delete_textures
      proc = Procs.delete_textures(addr)
      proc.call(*args)
    end

    # Invokes glDeleteTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_textures(*args)
      raise FunctionUnavailableError.new("glDeleteTextures") unless delete_textures?

      delete_textures!(*args)
    end

    # Checks if the function "glDeleteTextures" is loaded.
    @[AlwaysInline]
    def delete_textures? : Bool
      !@addr_delete_textures.null?
    end

    # Invokes glDepthFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_func!(*args)
      addr = @addr_depth_func
      proc = Procs.depth_func(addr)
      proc.call(*args)
    end

    # Invokes glDepthFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_func(*args)
      raise FunctionUnavailableError.new("glDepthFunc") unless depth_func?

      depth_func!(*args)
    end

    # Checks if the function "glDepthFunc" is loaded.
    @[AlwaysInline]
    def depth_func? : Bool
      !@addr_depth_func.null?
    end

    # Invokes glDepthMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_mask!(*args)
      addr = @addr_depth_mask
      proc = Procs.depth_mask(addr)
      proc.call(*args)
    end

    # Invokes glDepthMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_mask(*args)
      raise FunctionUnavailableError.new("glDepthMask") unless depth_mask?

      depth_mask!(*args)
    end

    # Checks if the function "glDepthMask" is loaded.
    @[AlwaysInline]
    def depth_mask? : Bool
      !@addr_depth_mask.null?
    end

    # Invokes glDepthRangex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_rangex!(*args)
      addr = @addr_depth_rangex
      proc = Procs.depth_rangex(addr)
      proc.call(*args)
    end

    # Invokes glDepthRangex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_rangex(*args)
      raise FunctionUnavailableError.new("glDepthRangex") unless depth_rangex?

      depth_rangex!(*args)
    end

    # Checks if the function "glDepthRangex" is loaded.
    @[AlwaysInline]
    def depth_rangex? : Bool
      !@addr_depth_rangex.null?
    end

    # Invokes glDisable.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable!(*args)
      addr = @addr_disable
      proc = Procs.disable(addr)
      proc.call(*args)
    end

    # Invokes glDisable.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable(*args)
      raise FunctionUnavailableError.new("glDisable") unless disable?

      disable!(*args)
    end

    # Checks if the function "glDisable" is loaded.
    @[AlwaysInline]
    def disable? : Bool
      !@addr_disable.null?
    end

    # Invokes glDisableClientState.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_client_state!(*args)
      addr = @addr_disable_client_state
      proc = Procs.disable_client_state(addr)
      proc.call(*args)
    end

    # Invokes glDisableClientState.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_client_state(*args)
      raise FunctionUnavailableError.new("glDisableClientState") unless disable_client_state?

      disable_client_state!(*args)
    end

    # Checks if the function "glDisableClientState" is loaded.
    @[AlwaysInline]
    def disable_client_state? : Bool
      !@addr_disable_client_state.null?
    end

    # Invokes glDrawArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays!(*args)
      addr = @addr_draw_arrays
      proc = Procs.draw_arrays(addr)
      proc.call(*args)
    end

    # Invokes glDrawArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays(*args)
      raise FunctionUnavailableError.new("glDrawArrays") unless draw_arrays?

      draw_arrays!(*args)
    end

    # Checks if the function "glDrawArrays" is loaded.
    @[AlwaysInline]
    def draw_arrays? : Bool
      !@addr_draw_arrays.null?
    end

    # Invokes glDrawElements.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements!(*args)
      addr = @addr_draw_elements
      proc = Procs.draw_elements(addr)
      proc.call(*args)
    end

    # Invokes glDrawElements.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements(*args)
      raise FunctionUnavailableError.new("glDrawElements") unless draw_elements?

      draw_elements!(*args)
    end

    # Checks if the function "glDrawElements" is loaded.
    @[AlwaysInline]
    def draw_elements? : Bool
      !@addr_draw_elements.null?
    end

    # Invokes glEnable.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable!(*args)
      addr = @addr_enable
      proc = Procs.enable(addr)
      proc.call(*args)
    end

    # Invokes glEnable.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable(*args)
      raise FunctionUnavailableError.new("glEnable") unless enable?

      enable!(*args)
    end

    # Checks if the function "glEnable" is loaded.
    @[AlwaysInline]
    def enable? : Bool
      !@addr_enable.null?
    end

    # Invokes glEnableClientState.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_client_state!(*args)
      addr = @addr_enable_client_state
      proc = Procs.enable_client_state(addr)
      proc.call(*args)
    end

    # Invokes glEnableClientState.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_client_state(*args)
      raise FunctionUnavailableError.new("glEnableClientState") unless enable_client_state?

      enable_client_state!(*args)
    end

    # Checks if the function "glEnableClientState" is loaded.
    @[AlwaysInline]
    def enable_client_state? : Bool
      !@addr_enable_client_state.null?
    end

    # Invokes glFinish.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def finish!(*args)
      addr = @addr_finish
      proc = Procs.finish(addr)
      proc.call(*args)
    end

    # Invokes glFinish.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def finish(*args)
      raise FunctionUnavailableError.new("glFinish") unless finish?

      finish!(*args)
    end

    # Checks if the function "glFinish" is loaded.
    @[AlwaysInline]
    def finish? : Bool
      !@addr_finish.null?
    end

    # Invokes glFlush.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def flush!(*args)
      addr = @addr_flush
      proc = Procs.flush(addr)
      proc.call(*args)
    end

    # Invokes glFlush.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def flush(*args)
      raise FunctionUnavailableError.new("glFlush") unless flush?

      flush!(*args)
    end

    # Checks if the function "glFlush" is loaded.
    @[AlwaysInline]
    def flush? : Bool
      !@addr_flush.null?
    end

    # Invokes glFogx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_x!(*args)
      addr = @addr_fog_x
      proc = Procs.fog_x(addr)
      proc.call(*args)
    end

    # Invokes glFogx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_x(*args)
      raise FunctionUnavailableError.new("glFogx") unless fog_x?

      fog_x!(*args)
    end

    # Checks if the function "glFogx" is loaded.
    @[AlwaysInline]
    def fog_x? : Bool
      !@addr_fog_x.null?
    end

    # Invokes glFogxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_xv!(*args)
      addr = @addr_fog_xv
      proc = Procs.fog_xv(addr)
      proc.call(*args)
    end

    # Invokes glFogxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_xv(*args)
      raise FunctionUnavailableError.new("glFogxv") unless fog_xv?

      fog_xv!(*args)
    end

    # Checks if the function "glFogxv" is loaded.
    @[AlwaysInline]
    def fog_xv? : Bool
      !@addr_fog_xv.null?
    end

    # Invokes glFrontFace.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def front_face!(*args)
      addr = @addr_front_face
      proc = Procs.front_face(addr)
      proc.call(*args)
    end

    # Invokes glFrontFace.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def front_face(*args)
      raise FunctionUnavailableError.new("glFrontFace") unless front_face?

      front_face!(*args)
    end

    # Checks if the function "glFrontFace" is loaded.
    @[AlwaysInline]
    def front_face? : Bool
      !@addr_front_face.null?
    end

    # Invokes glFrustumx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def frustumx!(*args)
      addr = @addr_frustumx
      proc = Procs.frustumx(addr)
      proc.call(*args)
    end

    # Invokes glFrustumx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def frustumx(*args)
      raise FunctionUnavailableError.new("glFrustumx") unless frustumx?

      frustumx!(*args)
    end

    # Checks if the function "glFrustumx" is loaded.
    @[AlwaysInline]
    def frustumx? : Bool
      !@addr_frustumx.null?
    end

    # Invokes glGetBooleanv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_boolean_v!(*args)
      addr = @addr_get_boolean_v
      proc = Procs.get_boolean_v(addr)
      proc.call(*args)
    end

    # Invokes glGetBooleanv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_boolean_v(*args)
      raise FunctionUnavailableError.new("glGetBooleanv") unless get_boolean_v?

      get_boolean_v!(*args)
    end

    # Checks if the function "glGetBooleanv" is loaded.
    @[AlwaysInline]
    def get_boolean_v? : Bool
      !@addr_get_boolean_v.null?
    end

    # Invokes glGetBufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_parameter_iv!(*args)
      addr = @addr_get_buffer_parameter_iv
      proc = Procs.get_buffer_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetBufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetBufferParameteriv") unless get_buffer_parameter_iv?

      get_buffer_parameter_iv!(*args)
    end

    # Checks if the function "glGetBufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_buffer_parameter_iv? : Bool
      !@addr_get_buffer_parameter_iv.null?
    end

    # Invokes glGetClipPlanex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_clip_plane_x!(*args)
      addr = @addr_get_clip_plane_x
      proc = Procs.get_clip_plane_x(addr)
      proc.call(*args)
    end

    # Invokes glGetClipPlanex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_clip_plane_x(*args)
      raise FunctionUnavailableError.new("glGetClipPlanex") unless get_clip_plane_x?

      get_clip_plane_x!(*args)
    end

    # Checks if the function "glGetClipPlanex" is loaded.
    @[AlwaysInline]
    def get_clip_plane_x? : Bool
      !@addr_get_clip_plane_x.null?
    end

    # Invokes glGenBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_buffers!(*args)
      addr = @addr_gen_buffers
      proc = Procs.gen_buffers(addr)
      proc.call(*args)
    end

    # Invokes glGenBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_buffers(*args)
      raise FunctionUnavailableError.new("glGenBuffers") unless gen_buffers?

      gen_buffers!(*args)
    end

    # Checks if the function "glGenBuffers" is loaded.
    @[AlwaysInline]
    def gen_buffers? : Bool
      !@addr_gen_buffers.null?
    end

    # Invokes glGenTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_textures!(*args)
      addr = @addr_gen_textures
      proc = Procs.gen_textures(addr)
      proc.call(*args)
    end

    # Invokes glGenTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_textures(*args)
      raise FunctionUnavailableError.new("glGenTextures") unless gen_textures?

      gen_textures!(*args)
    end

    # Checks if the function "glGenTextures" is loaded.
    @[AlwaysInline]
    def gen_textures? : Bool
      !@addr_gen_textures.null?
    end

    # Invokes glGetError.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_error!(*args)
      addr = @addr_get_error
      proc = Procs.get_error(addr)
      proc.call(*args)
    end

    # Invokes glGetError.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_error(*args)
      raise FunctionUnavailableError.new("glGetError") unless get_error?

      get_error!(*args)
    end

    # Checks if the function "glGetError" is loaded.
    @[AlwaysInline]
    def get_error? : Bool
      !@addr_get_error.null?
    end

    # Invokes glGetFixedv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_fixedv!(*args)
      addr = @addr_get_fixedv
      proc = Procs.get_fixedv(addr)
      proc.call(*args)
    end

    # Invokes glGetFixedv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_fixedv(*args)
      raise FunctionUnavailableError.new("glGetFixedv") unless get_fixedv?

      get_fixedv!(*args)
    end

    # Checks if the function "glGetFixedv" is loaded.
    @[AlwaysInline]
    def get_fixedv? : Bool
      !@addr_get_fixedv.null?
    end

    # Invokes glGetIntegerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_v!(*args)
      addr = @addr_get_integer_v
      proc = Procs.get_integer_v(addr)
      proc.call(*args)
    end

    # Invokes glGetIntegerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_v(*args)
      raise FunctionUnavailableError.new("glGetIntegerv") unless get_integer_v?

      get_integer_v!(*args)
    end

    # Checks if the function "glGetIntegerv" is loaded.
    @[AlwaysInline]
    def get_integer_v? : Bool
      !@addr_get_integer_v.null?
    end

    # Invokes glGetLightxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_light_xv!(*args)
      addr = @addr_get_light_xv
      proc = Procs.get_light_xv(addr)
      proc.call(*args)
    end

    # Invokes glGetLightxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_light_xv(*args)
      raise FunctionUnavailableError.new("glGetLightxv") unless get_light_xv?

      get_light_xv!(*args)
    end

    # Checks if the function "glGetLightxv" is loaded.
    @[AlwaysInline]
    def get_light_xv? : Bool
      !@addr_get_light_xv.null?
    end

    # Invokes glGetMaterialxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_material_xv!(*args)
      addr = @addr_get_material_xv
      proc = Procs.get_material_xv(addr)
      proc.call(*args)
    end

    # Invokes glGetMaterialxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_material_xv(*args)
      raise FunctionUnavailableError.new("glGetMaterialxv") unless get_material_xv?

      get_material_xv!(*args)
    end

    # Checks if the function "glGetMaterialxv" is loaded.
    @[AlwaysInline]
    def get_material_xv? : Bool
      !@addr_get_material_xv.null?
    end

    # Invokes glGetPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pointer_v!(*args)
      addr = @addr_get_pointer_v
      proc = Procs.get_pointer_v(addr)
      proc.call(*args)
    end

    # Invokes glGetPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetPointerv") unless get_pointer_v?

      get_pointer_v!(*args)
    end

    # Checks if the function "glGetPointerv" is loaded.
    @[AlwaysInline]
    def get_pointer_v? : Bool
      !@addr_get_pointer_v.null?
    end

    # Invokes glGetString.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_string!(*args)
      addr = @addr_get_string
      proc = Procs.get_string(addr)
      proc.call(*args)
    end

    # Invokes glGetString.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_string(*args)
      raise FunctionUnavailableError.new("glGetString") unless get_string?

      get_string!(*args)
    end

    # Checks if the function "glGetString" is loaded.
    @[AlwaysInline]
    def get_string? : Bool
      !@addr_get_string.null?
    end

    # Invokes glGetTexEnviv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_env_iv!(*args)
      addr = @addr_get_tex_env_iv
      proc = Procs.get_tex_env_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexEnviv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_env_iv(*args)
      raise FunctionUnavailableError.new("glGetTexEnviv") unless get_tex_env_iv?

      get_tex_env_iv!(*args)
    end

    # Checks if the function "glGetTexEnviv" is loaded.
    @[AlwaysInline]
    def get_tex_env_iv? : Bool
      !@addr_get_tex_env_iv.null?
    end

    # Invokes glGetTexEnvxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_env_xv!(*args)
      addr = @addr_get_tex_env_xv
      proc = Procs.get_tex_env_xv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexEnvxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_env_xv(*args)
      raise FunctionUnavailableError.new("glGetTexEnvxv") unless get_tex_env_xv?

      get_tex_env_xv!(*args)
    end

    # Checks if the function "glGetTexEnvxv" is loaded.
    @[AlwaysInline]
    def get_tex_env_xv? : Bool
      !@addr_get_tex_env_xv.null?
    end

    # Invokes glGetTexParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_iv!(*args)
      addr = @addr_get_tex_parameter_iv
      proc = Procs.get_tex_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetTexParameteriv") unless get_tex_parameter_iv?

      get_tex_parameter_iv!(*args)
    end

    # Checks if the function "glGetTexParameteriv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_iv? : Bool
      !@addr_get_tex_parameter_iv.null?
    end

    # Invokes glGetTexParameterxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_xv!(*args)
      addr = @addr_get_tex_parameter_xv
      proc = Procs.get_tex_parameter_xv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexParameterxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_xv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterxv") unless get_tex_parameter_xv?

      get_tex_parameter_xv!(*args)
    end

    # Checks if the function "glGetTexParameterxv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_xv? : Bool
      !@addr_get_tex_parameter_xv.null?
    end

    # Invokes glHint.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def hint!(*args)
      addr = @addr_hint
      proc = Procs.hint(addr)
      proc.call(*args)
    end

    # Invokes glHint.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def hint(*args)
      raise FunctionUnavailableError.new("glHint") unless hint?

      hint!(*args)
    end

    # Checks if the function "glHint" is loaded.
    @[AlwaysInline]
    def hint? : Bool
      !@addr_hint.null?
    end

    # Invokes glIsBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_buffer!(*args)
      addr = @addr_is_buffer
      proc = Procs.is_buffer(addr)
      proc.call(*args)
    end

    # Invokes glIsBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_buffer(*args)
      raise FunctionUnavailableError.new("glIsBuffer") unless is_buffer?

      is_buffer!(*args)
    end

    # Checks if the function "glIsBuffer" is loaded.
    @[AlwaysInline]
    def is_buffer? : Bool
      !@addr_is_buffer.null?
    end

    # Invokes glIsEnabled.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_enabled!(*args)
      addr = @addr_is_enabled
      proc = Procs.is_enabled(addr)
      proc.call(*args)
    end

    # Invokes glIsEnabled.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_enabled(*args)
      raise FunctionUnavailableError.new("glIsEnabled") unless is_enabled?

      is_enabled!(*args)
    end

    # Checks if the function "glIsEnabled" is loaded.
    @[AlwaysInline]
    def is_enabled? : Bool
      !@addr_is_enabled.null?
    end

    # Invokes glIsTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_texture!(*args)
      addr = @addr_is_texture
      proc = Procs.is_texture(addr)
      proc.call(*args)
    end

    # Invokes glIsTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_texture(*args)
      raise FunctionUnavailableError.new("glIsTexture") unless is_texture?

      is_texture!(*args)
    end

    # Checks if the function "glIsTexture" is loaded.
    @[AlwaysInline]
    def is_texture? : Bool
      !@addr_is_texture.null?
    end

    # Invokes glLightModelx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_x!(*args)
      addr = @addr_light_model_x
      proc = Procs.light_model_x(addr)
      proc.call(*args)
    end

    # Invokes glLightModelx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_x(*args)
      raise FunctionUnavailableError.new("glLightModelx") unless light_model_x?

      light_model_x!(*args)
    end

    # Checks if the function "glLightModelx" is loaded.
    @[AlwaysInline]
    def light_model_x? : Bool
      !@addr_light_model_x.null?
    end

    # Invokes glLightModelxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_xv!(*args)
      addr = @addr_light_model_xv
      proc = Procs.light_model_xv(addr)
      proc.call(*args)
    end

    # Invokes glLightModelxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_xv(*args)
      raise FunctionUnavailableError.new("glLightModelxv") unless light_model_xv?

      light_model_xv!(*args)
    end

    # Checks if the function "glLightModelxv" is loaded.
    @[AlwaysInline]
    def light_model_xv? : Bool
      !@addr_light_model_xv.null?
    end

    # Invokes glLightx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_x!(*args)
      addr = @addr_light_x
      proc = Procs.light_x(addr)
      proc.call(*args)
    end

    # Invokes glLightx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_x(*args)
      raise FunctionUnavailableError.new("glLightx") unless light_x?

      light_x!(*args)
    end

    # Checks if the function "glLightx" is loaded.
    @[AlwaysInline]
    def light_x? : Bool
      !@addr_light_x.null?
    end

    # Invokes glLightxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_xv!(*args)
      addr = @addr_light_xv
      proc = Procs.light_xv(addr)
      proc.call(*args)
    end

    # Invokes glLightxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_xv(*args)
      raise FunctionUnavailableError.new("glLightxv") unless light_xv?

      light_xv!(*args)
    end

    # Checks if the function "glLightxv" is loaded.
    @[AlwaysInline]
    def light_xv? : Bool
      !@addr_light_xv.null?
    end

    # Invokes glLineWidthx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def line_widthx!(*args)
      addr = @addr_line_widthx
      proc = Procs.line_widthx(addr)
      proc.call(*args)
    end

    # Invokes glLineWidthx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def line_widthx(*args)
      raise FunctionUnavailableError.new("glLineWidthx") unless line_widthx?

      line_widthx!(*args)
    end

    # Checks if the function "glLineWidthx" is loaded.
    @[AlwaysInline]
    def line_widthx? : Bool
      !@addr_line_widthx.null?
    end

    # Invokes glLoadIdentity.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_identity!(*args)
      addr = @addr_load_identity
      proc = Procs.load_identity(addr)
      proc.call(*args)
    end

    # Invokes glLoadIdentity.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_identity(*args)
      raise FunctionUnavailableError.new("glLoadIdentity") unless load_identity?

      load_identity!(*args)
    end

    # Checks if the function "glLoadIdentity" is loaded.
    @[AlwaysInline]
    def load_identity? : Bool
      !@addr_load_identity.null?
    end

    # Invokes glLoadMatrixx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_matrix_x!(*args)
      addr = @addr_load_matrix_x
      proc = Procs.load_matrix_x(addr)
      proc.call(*args)
    end

    # Invokes glLoadMatrixx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_matrix_x(*args)
      raise FunctionUnavailableError.new("glLoadMatrixx") unless load_matrix_x?

      load_matrix_x!(*args)
    end

    # Checks if the function "glLoadMatrixx" is loaded.
    @[AlwaysInline]
    def load_matrix_x? : Bool
      !@addr_load_matrix_x.null?
    end

    # Invokes glLogicOp.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def logic_op!(*args)
      addr = @addr_logic_op
      proc = Procs.logic_op(addr)
      proc.call(*args)
    end

    # Invokes glLogicOp.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def logic_op(*args)
      raise FunctionUnavailableError.new("glLogicOp") unless logic_op?

      logic_op!(*args)
    end

    # Checks if the function "glLogicOp" is loaded.
    @[AlwaysInline]
    def logic_op? : Bool
      !@addr_logic_op.null?
    end

    # Invokes glMaterialx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_x!(*args)
      addr = @addr_material_x
      proc = Procs.material_x(addr)
      proc.call(*args)
    end

    # Invokes glMaterialx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_x(*args)
      raise FunctionUnavailableError.new("glMaterialx") unless material_x?

      material_x!(*args)
    end

    # Checks if the function "glMaterialx" is loaded.
    @[AlwaysInline]
    def material_x? : Bool
      !@addr_material_x.null?
    end

    # Invokes glMaterialxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_xv!(*args)
      addr = @addr_material_xv
      proc = Procs.material_xv(addr)
      proc.call(*args)
    end

    # Invokes glMaterialxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_xv(*args)
      raise FunctionUnavailableError.new("glMaterialxv") unless material_xv?

      material_xv!(*args)
    end

    # Checks if the function "glMaterialxv" is loaded.
    @[AlwaysInline]
    def material_xv? : Bool
      !@addr_material_xv.null?
    end

    # Invokes glMatrixMode.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def matrix_mode!(*args)
      addr = @addr_matrix_mode
      proc = Procs.matrix_mode(addr)
      proc.call(*args)
    end

    # Invokes glMatrixMode.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def matrix_mode(*args)
      raise FunctionUnavailableError.new("glMatrixMode") unless matrix_mode?

      matrix_mode!(*args)
    end

    # Checks if the function "glMatrixMode" is loaded.
    @[AlwaysInline]
    def matrix_mode? : Bool
      !@addr_matrix_mode.null?
    end

    # Invokes glMultMatrixx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_matrix_x!(*args)
      addr = @addr_mult_matrix_x
      proc = Procs.mult_matrix_x(addr)
      proc.call(*args)
    end

    # Invokes glMultMatrixx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_matrix_x(*args)
      raise FunctionUnavailableError.new("glMultMatrixx") unless mult_matrix_x?

      mult_matrix_x!(*args)
    end

    # Checks if the function "glMultMatrixx" is loaded.
    @[AlwaysInline]
    def mult_matrix_x? : Bool
      !@addr_mult_matrix_x.null?
    end

    # Invokes glMultiTexCoord4x.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4x!(*args)
      addr = @addr_multi_tex_coord_4x
      proc = Procs.multi_tex_coord_4x(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4x.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4x(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4x") unless multi_tex_coord_4x?

      multi_tex_coord_4x!(*args)
    end

    # Checks if the function "glMultiTexCoord4x" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4x? : Bool
      !@addr_multi_tex_coord_4x.null?
    end

    # Invokes glNormal3x.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3x!(*args)
      addr = @addr_normal_3x
      proc = Procs.normal_3x(addr)
      proc.call(*args)
    end

    # Invokes glNormal3x.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3x(*args)
      raise FunctionUnavailableError.new("glNormal3x") unless normal_3x?

      normal_3x!(*args)
    end

    # Checks if the function "glNormal3x" is loaded.
    @[AlwaysInline]
    def normal_3x? : Bool
      !@addr_normal_3x.null?
    end

    # Invokes glNormalPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_pointer!(*args)
      addr = @addr_normal_pointer
      proc = Procs.normal_pointer(addr)
      proc.call(*args)
    end

    # Invokes glNormalPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_pointer(*args)
      raise FunctionUnavailableError.new("glNormalPointer") unless normal_pointer?

      normal_pointer!(*args)
    end

    # Checks if the function "glNormalPointer" is loaded.
    @[AlwaysInline]
    def normal_pointer? : Bool
      !@addr_normal_pointer.null?
    end

    # Invokes glOrthox.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def orthox!(*args)
      addr = @addr_orthox
      proc = Procs.orthox(addr)
      proc.call(*args)
    end

    # Invokes glOrthox.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def orthox(*args)
      raise FunctionUnavailableError.new("glOrthox") unless orthox?

      orthox!(*args)
    end

    # Checks if the function "glOrthox" is loaded.
    @[AlwaysInline]
    def orthox? : Bool
      !@addr_orthox.null?
    end

    # Invokes glPixelStorei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_store_i!(*args)
      addr = @addr_pixel_store_i
      proc = Procs.pixel_store_i(addr)
      proc.call(*args)
    end

    # Invokes glPixelStorei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_store_i(*args)
      raise FunctionUnavailableError.new("glPixelStorei") unless pixel_store_i?

      pixel_store_i!(*args)
    end

    # Checks if the function "glPixelStorei" is loaded.
    @[AlwaysInline]
    def pixel_store_i? : Bool
      !@addr_pixel_store_i.null?
    end

    # Invokes glPointParameterx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_x!(*args)
      addr = @addr_point_parameter_x
      proc = Procs.point_parameter_x(addr)
      proc.call(*args)
    end

    # Invokes glPointParameterx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_x(*args)
      raise FunctionUnavailableError.new("glPointParameterx") unless point_parameter_x?

      point_parameter_x!(*args)
    end

    # Checks if the function "glPointParameterx" is loaded.
    @[AlwaysInline]
    def point_parameter_x? : Bool
      !@addr_point_parameter_x.null?
    end

    # Invokes glPointParameterxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_xv!(*args)
      addr = @addr_point_parameter_xv
      proc = Procs.point_parameter_xv(addr)
      proc.call(*args)
    end

    # Invokes glPointParameterxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_xv(*args)
      raise FunctionUnavailableError.new("glPointParameterxv") unless point_parameter_xv?

      point_parameter_xv!(*args)
    end

    # Checks if the function "glPointParameterxv" is loaded.
    @[AlwaysInline]
    def point_parameter_xv? : Bool
      !@addr_point_parameter_xv.null?
    end

    # Invokes glPointSizex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_sizex!(*args)
      addr = @addr_point_sizex
      proc = Procs.point_sizex(addr)
      proc.call(*args)
    end

    # Invokes glPointSizex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_sizex(*args)
      raise FunctionUnavailableError.new("glPointSizex") unless point_sizex?

      point_sizex!(*args)
    end

    # Checks if the function "glPointSizex" is loaded.
    @[AlwaysInline]
    def point_sizex? : Bool
      !@addr_point_sizex.null?
    end

    # Invokes glPolygonOffsetx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_offsetx!(*args)
      addr = @addr_polygon_offsetx
      proc = Procs.polygon_offsetx(addr)
      proc.call(*args)
    end

    # Invokes glPolygonOffsetx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_offsetx(*args)
      raise FunctionUnavailableError.new("glPolygonOffsetx") unless polygon_offsetx?

      polygon_offsetx!(*args)
    end

    # Checks if the function "glPolygonOffsetx" is loaded.
    @[AlwaysInline]
    def polygon_offsetx? : Bool
      !@addr_polygon_offsetx.null?
    end

    # Invokes glPopMatrix.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_matrix!(*args)
      addr = @addr_pop_matrix
      proc = Procs.pop_matrix(addr)
      proc.call(*args)
    end

    # Invokes glPopMatrix.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_matrix(*args)
      raise FunctionUnavailableError.new("glPopMatrix") unless pop_matrix?

      pop_matrix!(*args)
    end

    # Checks if the function "glPopMatrix" is loaded.
    @[AlwaysInline]
    def pop_matrix? : Bool
      !@addr_pop_matrix.null?
    end

    # Invokes glPushMatrix.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_matrix!(*args)
      addr = @addr_push_matrix
      proc = Procs.push_matrix(addr)
      proc.call(*args)
    end

    # Invokes glPushMatrix.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_matrix(*args)
      raise FunctionUnavailableError.new("glPushMatrix") unless push_matrix?

      push_matrix!(*args)
    end

    # Checks if the function "glPushMatrix" is loaded.
    @[AlwaysInline]
    def push_matrix? : Bool
      !@addr_push_matrix.null?
    end

    # Invokes glReadPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def read_pixels!(*args)
      addr = @addr_read_pixels
      proc = Procs.read_pixels(addr)
      proc.call(*args)
    end

    # Invokes glReadPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def read_pixels(*args)
      raise FunctionUnavailableError.new("glReadPixels") unless read_pixels?

      read_pixels!(*args)
    end

    # Checks if the function "glReadPixels" is loaded.
    @[AlwaysInline]
    def read_pixels? : Bool
      !@addr_read_pixels.null?
    end

    # Invokes glRotatex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rotate_x!(*args)
      addr = @addr_rotate_x
      proc = Procs.rotate_x(addr)
      proc.call(*args)
    end

    # Invokes glRotatex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rotate_x(*args)
      raise FunctionUnavailableError.new("glRotatex") unless rotate_x?

      rotate_x!(*args)
    end

    # Checks if the function "glRotatex" is loaded.
    @[AlwaysInline]
    def rotate_x? : Bool
      !@addr_rotate_x.null?
    end

    # Invokes glSampleCoverage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sample_coverage!(*args)
      addr = @addr_sample_coverage
      proc = Procs.sample_coverage(addr)
      proc.call(*args)
    end

    # Invokes glSampleCoverage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sample_coverage(*args)
      raise FunctionUnavailableError.new("glSampleCoverage") unless sample_coverage?

      sample_coverage!(*args)
    end

    # Checks if the function "glSampleCoverage" is loaded.
    @[AlwaysInline]
    def sample_coverage? : Bool
      !@addr_sample_coverage.null?
    end

    # Invokes glSampleCoveragex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sample_coveragex!(*args)
      addr = @addr_sample_coveragex
      proc = Procs.sample_coveragex(addr)
      proc.call(*args)
    end

    # Invokes glSampleCoveragex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sample_coveragex(*args)
      raise FunctionUnavailableError.new("glSampleCoveragex") unless sample_coveragex?

      sample_coveragex!(*args)
    end

    # Checks if the function "glSampleCoveragex" is loaded.
    @[AlwaysInline]
    def sample_coveragex? : Bool
      !@addr_sample_coveragex.null?
    end

    # Invokes glScalex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scale_x!(*args)
      addr = @addr_scale_x
      proc = Procs.scale_x(addr)
      proc.call(*args)
    end

    # Invokes glScalex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scale_x(*args)
      raise FunctionUnavailableError.new("glScalex") unless scale_x?

      scale_x!(*args)
    end

    # Checks if the function "glScalex" is loaded.
    @[AlwaysInline]
    def scale_x? : Bool
      !@addr_scale_x.null?
    end

    # Invokes glScissor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor!(*args)
      addr = @addr_scissor
      proc = Procs.scissor(addr)
      proc.call(*args)
    end

    # Invokes glScissor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor(*args)
      raise FunctionUnavailableError.new("glScissor") unless scissor?

      scissor!(*args)
    end

    # Checks if the function "glScissor" is loaded.
    @[AlwaysInline]
    def scissor? : Bool
      !@addr_scissor.null?
    end

    # Invokes glShadeModel.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shade_model!(*args)
      addr = @addr_shade_model
      proc = Procs.shade_model(addr)
      proc.call(*args)
    end

    # Invokes glShadeModel.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shade_model(*args)
      raise FunctionUnavailableError.new("glShadeModel") unless shade_model?

      shade_model!(*args)
    end

    # Checks if the function "glShadeModel" is loaded.
    @[AlwaysInline]
    def shade_model? : Bool
      !@addr_shade_model.null?
    end

    # Invokes glStencilFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_func!(*args)
      addr = @addr_stencil_func
      proc = Procs.stencil_func(addr)
      proc.call(*args)
    end

    # Invokes glStencilFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_func(*args)
      raise FunctionUnavailableError.new("glStencilFunc") unless stencil_func?

      stencil_func!(*args)
    end

    # Checks if the function "glStencilFunc" is loaded.
    @[AlwaysInline]
    def stencil_func? : Bool
      !@addr_stencil_func.null?
    end

    # Invokes glStencilMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_mask!(*args)
      addr = @addr_stencil_mask
      proc = Procs.stencil_mask(addr)
      proc.call(*args)
    end

    # Invokes glStencilMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_mask(*args)
      raise FunctionUnavailableError.new("glStencilMask") unless stencil_mask?

      stencil_mask!(*args)
    end

    # Checks if the function "glStencilMask" is loaded.
    @[AlwaysInline]
    def stencil_mask? : Bool
      !@addr_stencil_mask.null?
    end

    # Invokes glStencilOp.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_op!(*args)
      addr = @addr_stencil_op
      proc = Procs.stencil_op(addr)
      proc.call(*args)
    end

    # Invokes glStencilOp.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_op(*args)
      raise FunctionUnavailableError.new("glStencilOp") unless stencil_op?

      stencil_op!(*args)
    end

    # Checks if the function "glStencilOp" is loaded.
    @[AlwaysInline]
    def stencil_op? : Bool
      !@addr_stencil_op.null?
    end

    # Invokes glTexCoordPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_pointer!(*args)
      addr = @addr_tex_coord_pointer
      proc = Procs.tex_coord_pointer(addr)
      proc.call(*args)
    end

    # Invokes glTexCoordPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_pointer(*args)
      raise FunctionUnavailableError.new("glTexCoordPointer") unless tex_coord_pointer?

      tex_coord_pointer!(*args)
    end

    # Checks if the function "glTexCoordPointer" is loaded.
    @[AlwaysInline]
    def tex_coord_pointer? : Bool
      !@addr_tex_coord_pointer.null?
    end

    # Invokes glTexEnvi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_i!(*args)
      addr = @addr_tex_env_i
      proc = Procs.tex_env_i(addr)
      proc.call(*args)
    end

    # Invokes glTexEnvi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_i(*args)
      raise FunctionUnavailableError.new("glTexEnvi") unless tex_env_i?

      tex_env_i!(*args)
    end

    # Checks if the function "glTexEnvi" is loaded.
    @[AlwaysInline]
    def tex_env_i? : Bool
      !@addr_tex_env_i.null?
    end

    # Invokes glTexEnvx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_x!(*args)
      addr = @addr_tex_env_x
      proc = Procs.tex_env_x(addr)
      proc.call(*args)
    end

    # Invokes glTexEnvx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_x(*args)
      raise FunctionUnavailableError.new("glTexEnvx") unless tex_env_x?

      tex_env_x!(*args)
    end

    # Checks if the function "glTexEnvx" is loaded.
    @[AlwaysInline]
    def tex_env_x? : Bool
      !@addr_tex_env_x.null?
    end

    # Invokes glTexEnviv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_iv!(*args)
      addr = @addr_tex_env_iv
      proc = Procs.tex_env_iv(addr)
      proc.call(*args)
    end

    # Invokes glTexEnviv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_iv(*args)
      raise FunctionUnavailableError.new("glTexEnviv") unless tex_env_iv?

      tex_env_iv!(*args)
    end

    # Checks if the function "glTexEnviv" is loaded.
    @[AlwaysInline]
    def tex_env_iv? : Bool
      !@addr_tex_env_iv.null?
    end

    # Invokes glTexEnvxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_xv!(*args)
      addr = @addr_tex_env_xv
      proc = Procs.tex_env_xv(addr)
      proc.call(*args)
    end

    # Invokes glTexEnvxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_xv(*args)
      raise FunctionUnavailableError.new("glTexEnvxv") unless tex_env_xv?

      tex_env_xv!(*args)
    end

    # Checks if the function "glTexEnvxv" is loaded.
    @[AlwaysInline]
    def tex_env_xv? : Bool
      !@addr_tex_env_xv.null?
    end

    # Invokes glTexImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_2d!(*args)
      addr = @addr_tex_image_2d
      proc = Procs.tex_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glTexImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_2d(*args)
      raise FunctionUnavailableError.new("glTexImage2D") unless tex_image_2d?

      tex_image_2d!(*args)
    end

    # Checks if the function "glTexImage2D" is loaded.
    @[AlwaysInline]
    def tex_image_2d? : Bool
      !@addr_tex_image_2d.null?
    end

    # Invokes glTexParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_i!(*args)
      addr = @addr_tex_parameter_i
      proc = Procs.tex_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glTexParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_i(*args)
      raise FunctionUnavailableError.new("glTexParameteri") unless tex_parameter_i?

      tex_parameter_i!(*args)
    end

    # Checks if the function "glTexParameteri" is loaded.
    @[AlwaysInline]
    def tex_parameter_i? : Bool
      !@addr_tex_parameter_i.null?
    end

    # Invokes glTexParameterx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_x!(*args)
      addr = @addr_tex_parameter_x
      proc = Procs.tex_parameter_x(addr)
      proc.call(*args)
    end

    # Invokes glTexParameterx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_x(*args)
      raise FunctionUnavailableError.new("glTexParameterx") unless tex_parameter_x?

      tex_parameter_x!(*args)
    end

    # Checks if the function "glTexParameterx" is loaded.
    @[AlwaysInline]
    def tex_parameter_x? : Bool
      !@addr_tex_parameter_x.null?
    end

    # Invokes glTexParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_iv!(*args)
      addr = @addr_tex_parameter_iv
      proc = Procs.tex_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glTexParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_iv(*args)
      raise FunctionUnavailableError.new("glTexParameteriv") unless tex_parameter_iv?

      tex_parameter_iv!(*args)
    end

    # Checks if the function "glTexParameteriv" is loaded.
    @[AlwaysInline]
    def tex_parameter_iv? : Bool
      !@addr_tex_parameter_iv.null?
    end

    # Invokes glTexParameterxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_xv!(*args)
      addr = @addr_tex_parameter_xv
      proc = Procs.tex_parameter_xv(addr)
      proc.call(*args)
    end

    # Invokes glTexParameterxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_xv(*args)
      raise FunctionUnavailableError.new("glTexParameterxv") unless tex_parameter_xv?

      tex_parameter_xv!(*args)
    end

    # Checks if the function "glTexParameterxv" is loaded.
    @[AlwaysInline]
    def tex_parameter_xv? : Bool
      !@addr_tex_parameter_xv.null?
    end

    # Invokes glTexSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_sub_image_2d!(*args)
      addr = @addr_tex_sub_image_2d
      proc = Procs.tex_sub_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glTexSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glTexSubImage2D") unless tex_sub_image_2d?

      tex_sub_image_2d!(*args)
    end

    # Checks if the function "glTexSubImage2D" is loaded.
    @[AlwaysInline]
    def tex_sub_image_2d? : Bool
      !@addr_tex_sub_image_2d.null?
    end

    # Invokes glTranslatex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def translate_x!(*args)
      addr = @addr_translate_x
      proc = Procs.translate_x(addr)
      proc.call(*args)
    end

    # Invokes glTranslatex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def translate_x(*args)
      raise FunctionUnavailableError.new("glTranslatex") unless translate_x?

      translate_x!(*args)
    end

    # Checks if the function "glTranslatex" is loaded.
    @[AlwaysInline]
    def translate_x? : Bool
      !@addr_translate_x.null?
    end

    # Invokes glVertexPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_pointer!(*args)
      addr = @addr_vertex_pointer
      proc = Procs.vertex_pointer(addr)
      proc.call(*args)
    end

    # Invokes glVertexPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_pointer(*args)
      raise FunctionUnavailableError.new("glVertexPointer") unless vertex_pointer?

      vertex_pointer!(*args)
    end

    # Checks if the function "glVertexPointer" is loaded.
    @[AlwaysInline]
    def vertex_pointer? : Bool
      !@addr_vertex_pointer.null?
    end

    # Invokes glViewport.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport!(*args)
      addr = @addr_viewport
      proc = Procs.viewport(addr)
      proc.call(*args)
    end

    # Invokes glViewport.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport(*args)
      raise FunctionUnavailableError.new("glViewport") unless viewport?

      viewport!(*args)
    end

    # Checks if the function "glViewport" is loaded.
    @[AlwaysInline]
    def viewport? : Bool
      !@addr_viewport.null?
    end
  end
end
