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
      null = ::Pointer(::Void).null
      @proc_active_texture = Procs.active_texture(null)
      @proc_alpha_funcx = Procs.alpha_funcx(null)
      @proc_bind_buffer = Procs.bind_buffer(null)
      @proc_bind_texture = Procs.bind_texture(null)
      @proc_blend_func = Procs.blend_func(null)
      @proc_buffer_data = Procs.buffer_data(null)
      @proc_buffer_sub_data = Procs.buffer_sub_data(null)
      @proc_clear = Procs.clear(null)
      @proc_clear_colorx = Procs.clear_colorx(null)
      @proc_clear_depth_x = Procs.clear_depth_x(null)
      @proc_clear_stencil = Procs.clear_stencil(null)
      @proc_client_active_texture = Procs.client_active_texture(null)
      @proc_clip_planex = Procs.clip_planex(null)
      @proc_color_4ub = Procs.color_4ub(null)
      @proc_color_4x = Procs.color_4x(null)
      @proc_color_mask = Procs.color_mask(null)
      @proc_color_pointer = Procs.color_pointer(null)
      @proc_compressed_tex_image_2d = Procs.compressed_tex_image_2d(null)
      @proc_compressed_tex_sub_image_2d = Procs.compressed_tex_sub_image_2d(null)
      @proc_copy_tex_image_2d = Procs.copy_tex_image_2d(null)
      @proc_copy_tex_sub_image_2d = Procs.copy_tex_sub_image_2d(null)
      @proc_cull_face = Procs.cull_face(null)
      @proc_delete_buffers = Procs.delete_buffers(null)
      @proc_delete_textures = Procs.delete_textures(null)
      @proc_depth_func = Procs.depth_func(null)
      @proc_depth_mask = Procs.depth_mask(null)
      @proc_depth_rangex = Procs.depth_rangex(null)
      @proc_disable = Procs.disable(null)
      @proc_disable_client_state = Procs.disable_client_state(null)
      @proc_draw_arrays = Procs.draw_arrays(null)
      @proc_draw_elements = Procs.draw_elements(null)
      @proc_enable = Procs.enable(null)
      @proc_enable_client_state = Procs.enable_client_state(null)
      @proc_finish = Procs.finish(null)
      @proc_flush = Procs.flush(null)
      @proc_fog_x = Procs.fog_x(null)
      @proc_fog_xv = Procs.fog_xv(null)
      @proc_front_face = Procs.front_face(null)
      @proc_frustumx = Procs.frustumx(null)
      @proc_get_boolean_v = Procs.get_boolean_v(null)
      @proc_get_buffer_parameter_iv = Procs.get_buffer_parameter_iv(null)
      @proc_get_clip_plane_x = Procs.get_clip_plane_x(null)
      @proc_gen_buffers = Procs.gen_buffers(null)
      @proc_gen_textures = Procs.gen_textures(null)
      @proc_get_error = Procs.get_error(null)
      @proc_get_fixedv = Procs.get_fixedv(null)
      @proc_get_integer_v = Procs.get_integer_v(null)
      @proc_get_light_xv = Procs.get_light_xv(null)
      @proc_get_material_xv = Procs.get_material_xv(null)
      @proc_get_pointer_v = Procs.get_pointer_v(null)
      @proc_get_string = Procs.get_string(null)
      @proc_get_tex_env_iv = Procs.get_tex_env_iv(null)
      @proc_get_tex_env_xv = Procs.get_tex_env_xv(null)
      @proc_get_tex_parameter_iv = Procs.get_tex_parameter_iv(null)
      @proc_get_tex_parameter_xv = Procs.get_tex_parameter_xv(null)
      @proc_hint = Procs.hint(null)
      @proc_is_buffer = Procs.is_buffer(null)
      @proc_is_enabled = Procs.is_enabled(null)
      @proc_is_texture = Procs.is_texture(null)
      @proc_light_model_x = Procs.light_model_x(null)
      @proc_light_model_xv = Procs.light_model_xv(null)
      @proc_light_x = Procs.light_x(null)
      @proc_light_xv = Procs.light_xv(null)
      @proc_line_widthx = Procs.line_widthx(null)
      @proc_load_identity = Procs.load_identity(null)
      @proc_load_matrix_x = Procs.load_matrix_x(null)
      @proc_logic_op = Procs.logic_op(null)
      @proc_material_x = Procs.material_x(null)
      @proc_material_xv = Procs.material_xv(null)
      @proc_matrix_mode = Procs.matrix_mode(null)
      @proc_mult_matrix_x = Procs.mult_matrix_x(null)
      @proc_multi_tex_coord_4x = Procs.multi_tex_coord_4x(null)
      @proc_normal_3x = Procs.normal_3x(null)
      @proc_normal_pointer = Procs.normal_pointer(null)
      @proc_orthox = Procs.orthox(null)
      @proc_pixel_store_i = Procs.pixel_store_i(null)
      @proc_point_parameter_x = Procs.point_parameter_x(null)
      @proc_point_parameter_xv = Procs.point_parameter_xv(null)
      @proc_point_sizex = Procs.point_sizex(null)
      @proc_polygon_offsetx = Procs.polygon_offsetx(null)
      @proc_pop_matrix = Procs.pop_matrix(null)
      @proc_push_matrix = Procs.push_matrix(null)
      @proc_read_pixels = Procs.read_pixels(null)
      @proc_rotate_x = Procs.rotate_x(null)
      @proc_sample_coverage = Procs.sample_coverage(null)
      @proc_sample_coveragex = Procs.sample_coveragex(null)
      @proc_scale_x = Procs.scale_x(null)
      @proc_scissor = Procs.scissor(null)
      @proc_shade_model = Procs.shade_model(null)
      @proc_stencil_func = Procs.stencil_func(null)
      @proc_stencil_mask = Procs.stencil_mask(null)
      @proc_stencil_op = Procs.stencil_op(null)
      @proc_tex_coord_pointer = Procs.tex_coord_pointer(null)
      @proc_tex_env_i = Procs.tex_env_i(null)
      @proc_tex_env_x = Procs.tex_env_x(null)
      @proc_tex_env_iv = Procs.tex_env_iv(null)
      @proc_tex_env_xv = Procs.tex_env_xv(null)
      @proc_tex_image_2d = Procs.tex_image_2d(null)
      @proc_tex_parameter_i = Procs.tex_parameter_i(null)
      @proc_tex_parameter_x = Procs.tex_parameter_x(null)
      @proc_tex_parameter_iv = Procs.tex_parameter_iv(null)
      @proc_tex_parameter_xv = Procs.tex_parameter_xv(null)
      @proc_tex_sub_image_2d = Procs.tex_sub_image_2d(null)
      @proc_translate_x = Procs.translate_x(null)
      @proc_vertex_pointer = Procs.vertex_pointer(null)
      @proc_viewport = Procs.viewport(null)
    end

    # Loads all functions.
    # The block takes an OpenGL function name and returns its address.
    # The address should be null if the function is unavailable.
    def load_all(& : String -> Void*)
      @proc_active_texture = Procs.active_texture(yield "glActiveTexture")
      @proc_alpha_funcx = Procs.alpha_funcx(yield "glAlphaFuncx")
      @proc_bind_buffer = Procs.bind_buffer(yield "glBindBuffer")
      @proc_bind_texture = Procs.bind_texture(yield "glBindTexture")
      @proc_blend_func = Procs.blend_func(yield "glBlendFunc")
      @proc_buffer_data = Procs.buffer_data(yield "glBufferData")
      @proc_buffer_sub_data = Procs.buffer_sub_data(yield "glBufferSubData")
      @proc_clear = Procs.clear(yield "glClear")
      @proc_clear_colorx = Procs.clear_colorx(yield "glClearColorx")
      @proc_clear_depth_x = Procs.clear_depth_x(yield "glClearDepthx")
      @proc_clear_stencil = Procs.clear_stencil(yield "glClearStencil")
      @proc_client_active_texture = Procs.client_active_texture(yield "glClientActiveTexture")
      @proc_clip_planex = Procs.clip_planex(yield "glClipPlanex")
      @proc_color_4ub = Procs.color_4ub(yield "glColor4ub")
      @proc_color_4x = Procs.color_4x(yield "glColor4x")
      @proc_color_mask = Procs.color_mask(yield "glColorMask")
      @proc_color_pointer = Procs.color_pointer(yield "glColorPointer")
      @proc_compressed_tex_image_2d = Procs.compressed_tex_image_2d(yield "glCompressedTexImage2D")
      @proc_compressed_tex_sub_image_2d = Procs.compressed_tex_sub_image_2d(yield "glCompressedTexSubImage2D")
      @proc_copy_tex_image_2d = Procs.copy_tex_image_2d(yield "glCopyTexImage2D")
      @proc_copy_tex_sub_image_2d = Procs.copy_tex_sub_image_2d(yield "glCopyTexSubImage2D")
      @proc_cull_face = Procs.cull_face(yield "glCullFace")
      @proc_delete_buffers = Procs.delete_buffers(yield "glDeleteBuffers")
      @proc_delete_textures = Procs.delete_textures(yield "glDeleteTextures")
      @proc_depth_func = Procs.depth_func(yield "glDepthFunc")
      @proc_depth_mask = Procs.depth_mask(yield "glDepthMask")
      @proc_depth_rangex = Procs.depth_rangex(yield "glDepthRangex")
      @proc_disable = Procs.disable(yield "glDisable")
      @proc_disable_client_state = Procs.disable_client_state(yield "glDisableClientState")
      @proc_draw_arrays = Procs.draw_arrays(yield "glDrawArrays")
      @proc_draw_elements = Procs.draw_elements(yield "glDrawElements")
      @proc_enable = Procs.enable(yield "glEnable")
      @proc_enable_client_state = Procs.enable_client_state(yield "glEnableClientState")
      @proc_finish = Procs.finish(yield "glFinish")
      @proc_flush = Procs.flush(yield "glFlush")
      @proc_fog_x = Procs.fog_x(yield "glFogx")
      @proc_fog_xv = Procs.fog_xv(yield "glFogxv")
      @proc_front_face = Procs.front_face(yield "glFrontFace")
      @proc_frustumx = Procs.frustumx(yield "glFrustumx")
      @proc_get_boolean_v = Procs.get_boolean_v(yield "glGetBooleanv")
      @proc_get_buffer_parameter_iv = Procs.get_buffer_parameter_iv(yield "glGetBufferParameteriv")
      @proc_get_clip_plane_x = Procs.get_clip_plane_x(yield "glGetClipPlanex")
      @proc_gen_buffers = Procs.gen_buffers(yield "glGenBuffers")
      @proc_gen_textures = Procs.gen_textures(yield "glGenTextures")
      @proc_get_error = Procs.get_error(yield "glGetError")
      @proc_get_fixedv = Procs.get_fixedv(yield "glGetFixedv")
      @proc_get_integer_v = Procs.get_integer_v(yield "glGetIntegerv")
      @proc_get_light_xv = Procs.get_light_xv(yield "glGetLightxv")
      @proc_get_material_xv = Procs.get_material_xv(yield "glGetMaterialxv")
      @proc_get_pointer_v = Procs.get_pointer_v(yield "glGetPointerv")
      @proc_get_string = Procs.get_string(yield "glGetString")
      @proc_get_tex_env_iv = Procs.get_tex_env_iv(yield "glGetTexEnviv")
      @proc_get_tex_env_xv = Procs.get_tex_env_xv(yield "glGetTexEnvxv")
      @proc_get_tex_parameter_iv = Procs.get_tex_parameter_iv(yield "glGetTexParameteriv")
      @proc_get_tex_parameter_xv = Procs.get_tex_parameter_xv(yield "glGetTexParameterxv")
      @proc_hint = Procs.hint(yield "glHint")
      @proc_is_buffer = Procs.is_buffer(yield "glIsBuffer")
      @proc_is_enabled = Procs.is_enabled(yield "glIsEnabled")
      @proc_is_texture = Procs.is_texture(yield "glIsTexture")
      @proc_light_model_x = Procs.light_model_x(yield "glLightModelx")
      @proc_light_model_xv = Procs.light_model_xv(yield "glLightModelxv")
      @proc_light_x = Procs.light_x(yield "glLightx")
      @proc_light_xv = Procs.light_xv(yield "glLightxv")
      @proc_line_widthx = Procs.line_widthx(yield "glLineWidthx")
      @proc_load_identity = Procs.load_identity(yield "glLoadIdentity")
      @proc_load_matrix_x = Procs.load_matrix_x(yield "glLoadMatrixx")
      @proc_logic_op = Procs.logic_op(yield "glLogicOp")
      @proc_material_x = Procs.material_x(yield "glMaterialx")
      @proc_material_xv = Procs.material_xv(yield "glMaterialxv")
      @proc_matrix_mode = Procs.matrix_mode(yield "glMatrixMode")
      @proc_mult_matrix_x = Procs.mult_matrix_x(yield "glMultMatrixx")
      @proc_multi_tex_coord_4x = Procs.multi_tex_coord_4x(yield "glMultiTexCoord4x")
      @proc_normal_3x = Procs.normal_3x(yield "glNormal3x")
      @proc_normal_pointer = Procs.normal_pointer(yield "glNormalPointer")
      @proc_orthox = Procs.orthox(yield "glOrthox")
      @proc_pixel_store_i = Procs.pixel_store_i(yield "glPixelStorei")
      @proc_point_parameter_x = Procs.point_parameter_x(yield "glPointParameterx")
      @proc_point_parameter_xv = Procs.point_parameter_xv(yield "glPointParameterxv")
      @proc_point_sizex = Procs.point_sizex(yield "glPointSizex")
      @proc_polygon_offsetx = Procs.polygon_offsetx(yield "glPolygonOffsetx")
      @proc_pop_matrix = Procs.pop_matrix(yield "glPopMatrix")
      @proc_push_matrix = Procs.push_matrix(yield "glPushMatrix")
      @proc_read_pixels = Procs.read_pixels(yield "glReadPixels")
      @proc_rotate_x = Procs.rotate_x(yield "glRotatex")
      @proc_sample_coverage = Procs.sample_coverage(yield "glSampleCoverage")
      @proc_sample_coveragex = Procs.sample_coveragex(yield "glSampleCoveragex")
      @proc_scale_x = Procs.scale_x(yield "glScalex")
      @proc_scissor = Procs.scissor(yield "glScissor")
      @proc_shade_model = Procs.shade_model(yield "glShadeModel")
      @proc_stencil_func = Procs.stencil_func(yield "glStencilFunc")
      @proc_stencil_mask = Procs.stencil_mask(yield "glStencilMask")
      @proc_stencil_op = Procs.stencil_op(yield "glStencilOp")
      @proc_tex_coord_pointer = Procs.tex_coord_pointer(yield "glTexCoordPointer")
      @proc_tex_env_i = Procs.tex_env_i(yield "glTexEnvi")
      @proc_tex_env_x = Procs.tex_env_x(yield "glTexEnvx")
      @proc_tex_env_iv = Procs.tex_env_iv(yield "glTexEnviv")
      @proc_tex_env_xv = Procs.tex_env_xv(yield "glTexEnvxv")
      @proc_tex_image_2d = Procs.tex_image_2d(yield "glTexImage2D")
      @proc_tex_parameter_i = Procs.tex_parameter_i(yield "glTexParameteri")
      @proc_tex_parameter_x = Procs.tex_parameter_x(yield "glTexParameterx")
      @proc_tex_parameter_iv = Procs.tex_parameter_iv(yield "glTexParameteriv")
      @proc_tex_parameter_xv = Procs.tex_parameter_xv(yield "glTexParameterxv")
      @proc_tex_sub_image_2d = Procs.tex_sub_image_2d(yield "glTexSubImage2D")
      @proc_translate_x = Procs.translate_x(yield "glTranslatex")
      @proc_vertex_pointer = Procs.vertex_pointer(yield "glVertexPointer")
      @proc_viewport = Procs.viewport(yield "glViewport")
    end

    # Invokes glActiveTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def active_texture!(*args)
      @proc_active_texture.call(*args)
    end

    # Invokes glActiveTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def active_texture(*args)
      raise FunctionUnavailableError.new("glActiveTexture") unless active_texture?

      @proc_active_texture.call(*args)
    end

    # Checks if the function "glActiveTexture" is loaded.
    @[AlwaysInline]
    def active_texture? : Bool
      !@proc_active_texture.pointer.null?
    end

    # Invokes glAlphaFuncx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def alpha_funcx!(*args)
      @proc_alpha_funcx.call(*args)
    end

    # Invokes glAlphaFuncx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def alpha_funcx(*args)
      raise FunctionUnavailableError.new("glAlphaFuncx") unless alpha_funcx?

      @proc_alpha_funcx.call(*args)
    end

    # Checks if the function "glAlphaFuncx" is loaded.
    @[AlwaysInline]
    def alpha_funcx? : Bool
      !@proc_alpha_funcx.pointer.null?
    end

    # Invokes glBindBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffer!(*args)
      @proc_bind_buffer.call(*args)
    end

    # Invokes glBindBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffer(*args)
      raise FunctionUnavailableError.new("glBindBuffer") unless bind_buffer?

      @proc_bind_buffer.call(*args)
    end

    # Checks if the function "glBindBuffer" is loaded.
    @[AlwaysInline]
    def bind_buffer? : Bool
      !@proc_bind_buffer.pointer.null?
    end

    # Invokes glBindTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_texture!(*args)
      @proc_bind_texture.call(*args)
    end

    # Invokes glBindTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_texture(*args)
      raise FunctionUnavailableError.new("glBindTexture") unless bind_texture?

      @proc_bind_texture.call(*args)
    end

    # Checks if the function "glBindTexture" is loaded.
    @[AlwaysInline]
    def bind_texture? : Bool
      !@proc_bind_texture.pointer.null?
    end

    # Invokes glBlendFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func!(*args)
      @proc_blend_func.call(*args)
    end

    # Invokes glBlendFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func(*args)
      raise FunctionUnavailableError.new("glBlendFunc") unless blend_func?

      @proc_blend_func.call(*args)
    end

    # Checks if the function "glBlendFunc" is loaded.
    @[AlwaysInline]
    def blend_func? : Bool
      !@proc_blend_func.pointer.null?
    end

    # Invokes glBufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def buffer_data!(*args)
      @proc_buffer_data.call(*args)
    end

    # Invokes glBufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def buffer_data(*args)
      raise FunctionUnavailableError.new("glBufferData") unless buffer_data?

      @proc_buffer_data.call(*args)
    end

    # Checks if the function "glBufferData" is loaded.
    @[AlwaysInline]
    def buffer_data? : Bool
      !@proc_buffer_data.pointer.null?
    end

    # Invokes glBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def buffer_sub_data!(*args)
      @proc_buffer_sub_data.call(*args)
    end

    # Invokes glBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glBufferSubData") unless buffer_sub_data?

      @proc_buffer_sub_data.call(*args)
    end

    # Checks if the function "glBufferSubData" is loaded.
    @[AlwaysInline]
    def buffer_sub_data? : Bool
      !@proc_buffer_sub_data.pointer.null?
    end

    # Invokes glClear.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear!(*args)
      @proc_clear.call(*args)
    end

    # Invokes glClear.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear(*args)
      raise FunctionUnavailableError.new("glClear") unless clear?

      @proc_clear.call(*args)
    end

    # Checks if the function "glClear" is loaded.
    @[AlwaysInline]
    def clear? : Bool
      !@proc_clear.pointer.null?
    end

    # Invokes glClearColorx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_colorx!(*args)
      @proc_clear_colorx.call(*args)
    end

    # Invokes glClearColorx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_colorx(*args)
      raise FunctionUnavailableError.new("glClearColorx") unless clear_colorx?

      @proc_clear_colorx.call(*args)
    end

    # Checks if the function "glClearColorx" is loaded.
    @[AlwaysInline]
    def clear_colorx? : Bool
      !@proc_clear_colorx.pointer.null?
    end

    # Invokes glClearDepthx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_depth_x!(*args)
      @proc_clear_depth_x.call(*args)
    end

    # Invokes glClearDepthx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_depth_x(*args)
      raise FunctionUnavailableError.new("glClearDepthx") unless clear_depth_x?

      @proc_clear_depth_x.call(*args)
    end

    # Checks if the function "glClearDepthx" is loaded.
    @[AlwaysInline]
    def clear_depth_x? : Bool
      !@proc_clear_depth_x.pointer.null?
    end

    # Invokes glClearStencil.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_stencil!(*args)
      @proc_clear_stencil.call(*args)
    end

    # Invokes glClearStencil.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_stencil(*args)
      raise FunctionUnavailableError.new("glClearStencil") unless clear_stencil?

      @proc_clear_stencil.call(*args)
    end

    # Checks if the function "glClearStencil" is loaded.
    @[AlwaysInline]
    def clear_stencil? : Bool
      !@proc_clear_stencil.pointer.null?
    end

    # Invokes glClientActiveTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def client_active_texture!(*args)
      @proc_client_active_texture.call(*args)
    end

    # Invokes glClientActiveTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def client_active_texture(*args)
      raise FunctionUnavailableError.new("glClientActiveTexture") unless client_active_texture?

      @proc_client_active_texture.call(*args)
    end

    # Checks if the function "glClientActiveTexture" is loaded.
    @[AlwaysInline]
    def client_active_texture? : Bool
      !@proc_client_active_texture.pointer.null?
    end

    # Invokes glClipPlanex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clip_planex!(*args)
      @proc_clip_planex.call(*args)
    end

    # Invokes glClipPlanex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clip_planex(*args)
      raise FunctionUnavailableError.new("glClipPlanex") unless clip_planex?

      @proc_clip_planex.call(*args)
    end

    # Checks if the function "glClipPlanex" is loaded.
    @[AlwaysInline]
    def clip_planex? : Bool
      !@proc_clip_planex.pointer.null?
    end

    # Invokes glColor4ub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4ub!(*args)
      @proc_color_4ub.call(*args)
    end

    # Invokes glColor4ub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4ub(*args)
      raise FunctionUnavailableError.new("glColor4ub") unless color_4ub?

      @proc_color_4ub.call(*args)
    end

    # Checks if the function "glColor4ub" is loaded.
    @[AlwaysInline]
    def color_4ub? : Bool
      !@proc_color_4ub.pointer.null?
    end

    # Invokes glColor4x.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4x!(*args)
      @proc_color_4x.call(*args)
    end

    # Invokes glColor4x.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4x(*args)
      raise FunctionUnavailableError.new("glColor4x") unless color_4x?

      @proc_color_4x.call(*args)
    end

    # Checks if the function "glColor4x" is loaded.
    @[AlwaysInline]
    def color_4x? : Bool
      !@proc_color_4x.pointer.null?
    end

    # Invokes glColorMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_mask!(*args)
      @proc_color_mask.call(*args)
    end

    # Invokes glColorMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_mask(*args)
      raise FunctionUnavailableError.new("glColorMask") unless color_mask?

      @proc_color_mask.call(*args)
    end

    # Checks if the function "glColorMask" is loaded.
    @[AlwaysInline]
    def color_mask? : Bool
      !@proc_color_mask.pointer.null?
    end

    # Invokes glColorPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_pointer!(*args)
      @proc_color_pointer.call(*args)
    end

    # Invokes glColorPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_pointer(*args)
      raise FunctionUnavailableError.new("glColorPointer") unless color_pointer?

      @proc_color_pointer.call(*args)
    end

    # Checks if the function "glColorPointer" is loaded.
    @[AlwaysInline]
    def color_pointer? : Bool
      !@proc_color_pointer.pointer.null?
    end

    # Invokes glCompressedTexImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_image_2d!(*args)
      @proc_compressed_tex_image_2d.call(*args)
    end

    # Invokes glCompressedTexImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_image_2d(*args)
      raise FunctionUnavailableError.new("glCompressedTexImage2D") unless compressed_tex_image_2d?

      @proc_compressed_tex_image_2d.call(*args)
    end

    # Checks if the function "glCompressedTexImage2D" is loaded.
    @[AlwaysInline]
    def compressed_tex_image_2d? : Bool
      !@proc_compressed_tex_image_2d.pointer.null?
    end

    # Invokes glCompressedTexSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_sub_image_2d!(*args)
      @proc_compressed_tex_sub_image_2d.call(*args)
    end

    # Invokes glCompressedTexSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glCompressedTexSubImage2D") unless compressed_tex_sub_image_2d?

      @proc_compressed_tex_sub_image_2d.call(*args)
    end

    # Checks if the function "glCompressedTexSubImage2D" is loaded.
    @[AlwaysInline]
    def compressed_tex_sub_image_2d? : Bool
      !@proc_compressed_tex_sub_image_2d.pointer.null?
    end

    # Invokes glCopyTexImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_image_2d!(*args)
      @proc_copy_tex_image_2d.call(*args)
    end

    # Invokes glCopyTexImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_image_2d(*args)
      raise FunctionUnavailableError.new("glCopyTexImage2D") unless copy_tex_image_2d?

      @proc_copy_tex_image_2d.call(*args)
    end

    # Checks if the function "glCopyTexImage2D" is loaded.
    @[AlwaysInline]
    def copy_tex_image_2d? : Bool
      !@proc_copy_tex_image_2d.pointer.null?
    end

    # Invokes glCopyTexSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_sub_image_2d!(*args)
      @proc_copy_tex_sub_image_2d.call(*args)
    end

    # Invokes glCopyTexSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glCopyTexSubImage2D") unless copy_tex_sub_image_2d?

      @proc_copy_tex_sub_image_2d.call(*args)
    end

    # Checks if the function "glCopyTexSubImage2D" is loaded.
    @[AlwaysInline]
    def copy_tex_sub_image_2d? : Bool
      !@proc_copy_tex_sub_image_2d.pointer.null?
    end

    # Invokes glCullFace.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def cull_face!(*args)
      @proc_cull_face.call(*args)
    end

    # Invokes glCullFace.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def cull_face(*args)
      raise FunctionUnavailableError.new("glCullFace") unless cull_face?

      @proc_cull_face.call(*args)
    end

    # Checks if the function "glCullFace" is loaded.
    @[AlwaysInline]
    def cull_face? : Bool
      !@proc_cull_face.pointer.null?
    end

    # Invokes glDeleteBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_buffers!(*args)
      @proc_delete_buffers.call(*args)
    end

    # Invokes glDeleteBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_buffers(*args)
      raise FunctionUnavailableError.new("glDeleteBuffers") unless delete_buffers?

      @proc_delete_buffers.call(*args)
    end

    # Checks if the function "glDeleteBuffers" is loaded.
    @[AlwaysInline]
    def delete_buffers? : Bool
      !@proc_delete_buffers.pointer.null?
    end

    # Invokes glDeleteTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_textures!(*args)
      @proc_delete_textures.call(*args)
    end

    # Invokes glDeleteTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_textures(*args)
      raise FunctionUnavailableError.new("glDeleteTextures") unless delete_textures?

      @proc_delete_textures.call(*args)
    end

    # Checks if the function "glDeleteTextures" is loaded.
    @[AlwaysInline]
    def delete_textures? : Bool
      !@proc_delete_textures.pointer.null?
    end

    # Invokes glDepthFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_func!(*args)
      @proc_depth_func.call(*args)
    end

    # Invokes glDepthFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_func(*args)
      raise FunctionUnavailableError.new("glDepthFunc") unless depth_func?

      @proc_depth_func.call(*args)
    end

    # Checks if the function "glDepthFunc" is loaded.
    @[AlwaysInline]
    def depth_func? : Bool
      !@proc_depth_func.pointer.null?
    end

    # Invokes glDepthMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_mask!(*args)
      @proc_depth_mask.call(*args)
    end

    # Invokes glDepthMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_mask(*args)
      raise FunctionUnavailableError.new("glDepthMask") unless depth_mask?

      @proc_depth_mask.call(*args)
    end

    # Checks if the function "glDepthMask" is loaded.
    @[AlwaysInline]
    def depth_mask? : Bool
      !@proc_depth_mask.pointer.null?
    end

    # Invokes glDepthRangex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_rangex!(*args)
      @proc_depth_rangex.call(*args)
    end

    # Invokes glDepthRangex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_rangex(*args)
      raise FunctionUnavailableError.new("glDepthRangex") unless depth_rangex?

      @proc_depth_rangex.call(*args)
    end

    # Checks if the function "glDepthRangex" is loaded.
    @[AlwaysInline]
    def depth_rangex? : Bool
      !@proc_depth_rangex.pointer.null?
    end

    # Invokes glDisable.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable!(*args)
      @proc_disable.call(*args)
    end

    # Invokes glDisable.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable(*args)
      raise FunctionUnavailableError.new("glDisable") unless disable?

      @proc_disable.call(*args)
    end

    # Checks if the function "glDisable" is loaded.
    @[AlwaysInline]
    def disable? : Bool
      !@proc_disable.pointer.null?
    end

    # Invokes glDisableClientState.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_client_state!(*args)
      @proc_disable_client_state.call(*args)
    end

    # Invokes glDisableClientState.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_client_state(*args)
      raise FunctionUnavailableError.new("glDisableClientState") unless disable_client_state?

      @proc_disable_client_state.call(*args)
    end

    # Checks if the function "glDisableClientState" is loaded.
    @[AlwaysInline]
    def disable_client_state? : Bool
      !@proc_disable_client_state.pointer.null?
    end

    # Invokes glDrawArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays!(*args)
      @proc_draw_arrays.call(*args)
    end

    # Invokes glDrawArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays(*args)
      raise FunctionUnavailableError.new("glDrawArrays") unless draw_arrays?

      @proc_draw_arrays.call(*args)
    end

    # Checks if the function "glDrawArrays" is loaded.
    @[AlwaysInline]
    def draw_arrays? : Bool
      !@proc_draw_arrays.pointer.null?
    end

    # Invokes glDrawElements.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements!(*args)
      @proc_draw_elements.call(*args)
    end

    # Invokes glDrawElements.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements(*args)
      raise FunctionUnavailableError.new("glDrawElements") unless draw_elements?

      @proc_draw_elements.call(*args)
    end

    # Checks if the function "glDrawElements" is loaded.
    @[AlwaysInline]
    def draw_elements? : Bool
      !@proc_draw_elements.pointer.null?
    end

    # Invokes glEnable.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable!(*args)
      @proc_enable.call(*args)
    end

    # Invokes glEnable.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable(*args)
      raise FunctionUnavailableError.new("glEnable") unless enable?

      @proc_enable.call(*args)
    end

    # Checks if the function "glEnable" is loaded.
    @[AlwaysInline]
    def enable? : Bool
      !@proc_enable.pointer.null?
    end

    # Invokes glEnableClientState.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_client_state!(*args)
      @proc_enable_client_state.call(*args)
    end

    # Invokes glEnableClientState.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_client_state(*args)
      raise FunctionUnavailableError.new("glEnableClientState") unless enable_client_state?

      @proc_enable_client_state.call(*args)
    end

    # Checks if the function "glEnableClientState" is loaded.
    @[AlwaysInline]
    def enable_client_state? : Bool
      !@proc_enable_client_state.pointer.null?
    end

    # Invokes glFinish.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def finish!(*args)
      @proc_finish.call(*args)
    end

    # Invokes glFinish.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def finish(*args)
      raise FunctionUnavailableError.new("glFinish") unless finish?

      @proc_finish.call(*args)
    end

    # Checks if the function "glFinish" is loaded.
    @[AlwaysInline]
    def finish? : Bool
      !@proc_finish.pointer.null?
    end

    # Invokes glFlush.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def flush!(*args)
      @proc_flush.call(*args)
    end

    # Invokes glFlush.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def flush(*args)
      raise FunctionUnavailableError.new("glFlush") unless flush?

      @proc_flush.call(*args)
    end

    # Checks if the function "glFlush" is loaded.
    @[AlwaysInline]
    def flush? : Bool
      !@proc_flush.pointer.null?
    end

    # Invokes glFogx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_x!(*args)
      @proc_fog_x.call(*args)
    end

    # Invokes glFogx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_x(*args)
      raise FunctionUnavailableError.new("glFogx") unless fog_x?

      @proc_fog_x.call(*args)
    end

    # Checks if the function "glFogx" is loaded.
    @[AlwaysInline]
    def fog_x? : Bool
      !@proc_fog_x.pointer.null?
    end

    # Invokes glFogxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_xv!(*args)
      @proc_fog_xv.call(*args)
    end

    # Invokes glFogxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_xv(*args)
      raise FunctionUnavailableError.new("glFogxv") unless fog_xv?

      @proc_fog_xv.call(*args)
    end

    # Checks if the function "glFogxv" is loaded.
    @[AlwaysInline]
    def fog_xv? : Bool
      !@proc_fog_xv.pointer.null?
    end

    # Invokes glFrontFace.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def front_face!(*args)
      @proc_front_face.call(*args)
    end

    # Invokes glFrontFace.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def front_face(*args)
      raise FunctionUnavailableError.new("glFrontFace") unless front_face?

      @proc_front_face.call(*args)
    end

    # Checks if the function "glFrontFace" is loaded.
    @[AlwaysInline]
    def front_face? : Bool
      !@proc_front_face.pointer.null?
    end

    # Invokes glFrustumx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def frustumx!(*args)
      @proc_frustumx.call(*args)
    end

    # Invokes glFrustumx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def frustumx(*args)
      raise FunctionUnavailableError.new("glFrustumx") unless frustumx?

      @proc_frustumx.call(*args)
    end

    # Checks if the function "glFrustumx" is loaded.
    @[AlwaysInline]
    def frustumx? : Bool
      !@proc_frustumx.pointer.null?
    end

    # Invokes glGetBooleanv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_boolean_v!(*args)
      @proc_get_boolean_v.call(*args)
    end

    # Invokes glGetBooleanv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_boolean_v(*args)
      raise FunctionUnavailableError.new("glGetBooleanv") unless get_boolean_v?

      @proc_get_boolean_v.call(*args)
    end

    # Checks if the function "glGetBooleanv" is loaded.
    @[AlwaysInline]
    def get_boolean_v? : Bool
      !@proc_get_boolean_v.pointer.null?
    end

    # Invokes glGetBufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_parameter_iv!(*args)
      @proc_get_buffer_parameter_iv.call(*args)
    end

    # Invokes glGetBufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetBufferParameteriv") unless get_buffer_parameter_iv?

      @proc_get_buffer_parameter_iv.call(*args)
    end

    # Checks if the function "glGetBufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_buffer_parameter_iv? : Bool
      !@proc_get_buffer_parameter_iv.pointer.null?
    end

    # Invokes glGetClipPlanex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_clip_plane_x!(*args)
      @proc_get_clip_plane_x.call(*args)
    end

    # Invokes glGetClipPlanex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_clip_plane_x(*args)
      raise FunctionUnavailableError.new("glGetClipPlanex") unless get_clip_plane_x?

      @proc_get_clip_plane_x.call(*args)
    end

    # Checks if the function "glGetClipPlanex" is loaded.
    @[AlwaysInline]
    def get_clip_plane_x? : Bool
      !@proc_get_clip_plane_x.pointer.null?
    end

    # Invokes glGenBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_buffers!(*args)
      @proc_gen_buffers.call(*args)
    end

    # Invokes glGenBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_buffers(*args)
      raise FunctionUnavailableError.new("glGenBuffers") unless gen_buffers?

      @proc_gen_buffers.call(*args)
    end

    # Checks if the function "glGenBuffers" is loaded.
    @[AlwaysInline]
    def gen_buffers? : Bool
      !@proc_gen_buffers.pointer.null?
    end

    # Invokes glGenTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_textures!(*args)
      @proc_gen_textures.call(*args)
    end

    # Invokes glGenTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_textures(*args)
      raise FunctionUnavailableError.new("glGenTextures") unless gen_textures?

      @proc_gen_textures.call(*args)
    end

    # Checks if the function "glGenTextures" is loaded.
    @[AlwaysInline]
    def gen_textures? : Bool
      !@proc_gen_textures.pointer.null?
    end

    # Invokes glGetError.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_error!(*args)
      @proc_get_error.call(*args)
    end

    # Invokes glGetError.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_error(*args)
      raise FunctionUnavailableError.new("glGetError") unless get_error?

      @proc_get_error.call(*args)
    end

    # Checks if the function "glGetError" is loaded.
    @[AlwaysInline]
    def get_error? : Bool
      !@proc_get_error.pointer.null?
    end

    # Invokes glGetFixedv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_fixedv!(*args)
      @proc_get_fixedv.call(*args)
    end

    # Invokes glGetFixedv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_fixedv(*args)
      raise FunctionUnavailableError.new("glGetFixedv") unless get_fixedv?

      @proc_get_fixedv.call(*args)
    end

    # Checks if the function "glGetFixedv" is loaded.
    @[AlwaysInline]
    def get_fixedv? : Bool
      !@proc_get_fixedv.pointer.null?
    end

    # Invokes glGetIntegerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_v!(*args)
      @proc_get_integer_v.call(*args)
    end

    # Invokes glGetIntegerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_v(*args)
      raise FunctionUnavailableError.new("glGetIntegerv") unless get_integer_v?

      @proc_get_integer_v.call(*args)
    end

    # Checks if the function "glGetIntegerv" is loaded.
    @[AlwaysInline]
    def get_integer_v? : Bool
      !@proc_get_integer_v.pointer.null?
    end

    # Invokes glGetLightxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_light_xv!(*args)
      @proc_get_light_xv.call(*args)
    end

    # Invokes glGetLightxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_light_xv(*args)
      raise FunctionUnavailableError.new("glGetLightxv") unless get_light_xv?

      @proc_get_light_xv.call(*args)
    end

    # Checks if the function "glGetLightxv" is loaded.
    @[AlwaysInline]
    def get_light_xv? : Bool
      !@proc_get_light_xv.pointer.null?
    end

    # Invokes glGetMaterialxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_material_xv!(*args)
      @proc_get_material_xv.call(*args)
    end

    # Invokes glGetMaterialxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_material_xv(*args)
      raise FunctionUnavailableError.new("glGetMaterialxv") unless get_material_xv?

      @proc_get_material_xv.call(*args)
    end

    # Checks if the function "glGetMaterialxv" is loaded.
    @[AlwaysInline]
    def get_material_xv? : Bool
      !@proc_get_material_xv.pointer.null?
    end

    # Invokes glGetPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pointer_v!(*args)
      @proc_get_pointer_v.call(*args)
    end

    # Invokes glGetPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetPointerv") unless get_pointer_v?

      @proc_get_pointer_v.call(*args)
    end

    # Checks if the function "glGetPointerv" is loaded.
    @[AlwaysInline]
    def get_pointer_v? : Bool
      !@proc_get_pointer_v.pointer.null?
    end

    # Invokes glGetString.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_string!(*args)
      @proc_get_string.call(*args)
    end

    # Invokes glGetString.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_string(*args)
      raise FunctionUnavailableError.new("glGetString") unless get_string?

      @proc_get_string.call(*args)
    end

    # Checks if the function "glGetString" is loaded.
    @[AlwaysInline]
    def get_string? : Bool
      !@proc_get_string.pointer.null?
    end

    # Invokes glGetTexEnviv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_env_iv!(*args)
      @proc_get_tex_env_iv.call(*args)
    end

    # Invokes glGetTexEnviv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_env_iv(*args)
      raise FunctionUnavailableError.new("glGetTexEnviv") unless get_tex_env_iv?

      @proc_get_tex_env_iv.call(*args)
    end

    # Checks if the function "glGetTexEnviv" is loaded.
    @[AlwaysInline]
    def get_tex_env_iv? : Bool
      !@proc_get_tex_env_iv.pointer.null?
    end

    # Invokes glGetTexEnvxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_env_xv!(*args)
      @proc_get_tex_env_xv.call(*args)
    end

    # Invokes glGetTexEnvxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_env_xv(*args)
      raise FunctionUnavailableError.new("glGetTexEnvxv") unless get_tex_env_xv?

      @proc_get_tex_env_xv.call(*args)
    end

    # Checks if the function "glGetTexEnvxv" is loaded.
    @[AlwaysInline]
    def get_tex_env_xv? : Bool
      !@proc_get_tex_env_xv.pointer.null?
    end

    # Invokes glGetTexParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_iv!(*args)
      @proc_get_tex_parameter_iv.call(*args)
    end

    # Invokes glGetTexParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetTexParameteriv") unless get_tex_parameter_iv?

      @proc_get_tex_parameter_iv.call(*args)
    end

    # Checks if the function "glGetTexParameteriv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_iv? : Bool
      !@proc_get_tex_parameter_iv.pointer.null?
    end

    # Invokes glGetTexParameterxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_xv!(*args)
      @proc_get_tex_parameter_xv.call(*args)
    end

    # Invokes glGetTexParameterxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_xv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterxv") unless get_tex_parameter_xv?

      @proc_get_tex_parameter_xv.call(*args)
    end

    # Checks if the function "glGetTexParameterxv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_xv? : Bool
      !@proc_get_tex_parameter_xv.pointer.null?
    end

    # Invokes glHint.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def hint!(*args)
      @proc_hint.call(*args)
    end

    # Invokes glHint.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def hint(*args)
      raise FunctionUnavailableError.new("glHint") unless hint?

      @proc_hint.call(*args)
    end

    # Checks if the function "glHint" is loaded.
    @[AlwaysInline]
    def hint? : Bool
      !@proc_hint.pointer.null?
    end

    # Invokes glIsBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_buffer!(*args)
      @proc_is_buffer.call(*args)
    end

    # Invokes glIsBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_buffer(*args)
      raise FunctionUnavailableError.new("glIsBuffer") unless is_buffer?

      @proc_is_buffer.call(*args)
    end

    # Checks if the function "glIsBuffer" is loaded.
    @[AlwaysInline]
    def is_buffer? : Bool
      !@proc_is_buffer.pointer.null?
    end

    # Invokes glIsEnabled.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_enabled!(*args)
      @proc_is_enabled.call(*args)
    end

    # Invokes glIsEnabled.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_enabled(*args)
      raise FunctionUnavailableError.new("glIsEnabled") unless is_enabled?

      @proc_is_enabled.call(*args)
    end

    # Checks if the function "glIsEnabled" is loaded.
    @[AlwaysInline]
    def is_enabled? : Bool
      !@proc_is_enabled.pointer.null?
    end

    # Invokes glIsTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_texture!(*args)
      @proc_is_texture.call(*args)
    end

    # Invokes glIsTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_texture(*args)
      raise FunctionUnavailableError.new("glIsTexture") unless is_texture?

      @proc_is_texture.call(*args)
    end

    # Checks if the function "glIsTexture" is loaded.
    @[AlwaysInline]
    def is_texture? : Bool
      !@proc_is_texture.pointer.null?
    end

    # Invokes glLightModelx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_x!(*args)
      @proc_light_model_x.call(*args)
    end

    # Invokes glLightModelx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_x(*args)
      raise FunctionUnavailableError.new("glLightModelx") unless light_model_x?

      @proc_light_model_x.call(*args)
    end

    # Checks if the function "glLightModelx" is loaded.
    @[AlwaysInline]
    def light_model_x? : Bool
      !@proc_light_model_x.pointer.null?
    end

    # Invokes glLightModelxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_xv!(*args)
      @proc_light_model_xv.call(*args)
    end

    # Invokes glLightModelxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_xv(*args)
      raise FunctionUnavailableError.new("glLightModelxv") unless light_model_xv?

      @proc_light_model_xv.call(*args)
    end

    # Checks if the function "glLightModelxv" is loaded.
    @[AlwaysInline]
    def light_model_xv? : Bool
      !@proc_light_model_xv.pointer.null?
    end

    # Invokes glLightx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_x!(*args)
      @proc_light_x.call(*args)
    end

    # Invokes glLightx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_x(*args)
      raise FunctionUnavailableError.new("glLightx") unless light_x?

      @proc_light_x.call(*args)
    end

    # Checks if the function "glLightx" is loaded.
    @[AlwaysInline]
    def light_x? : Bool
      !@proc_light_x.pointer.null?
    end

    # Invokes glLightxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_xv!(*args)
      @proc_light_xv.call(*args)
    end

    # Invokes glLightxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_xv(*args)
      raise FunctionUnavailableError.new("glLightxv") unless light_xv?

      @proc_light_xv.call(*args)
    end

    # Checks if the function "glLightxv" is loaded.
    @[AlwaysInline]
    def light_xv? : Bool
      !@proc_light_xv.pointer.null?
    end

    # Invokes glLineWidthx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def line_widthx!(*args)
      @proc_line_widthx.call(*args)
    end

    # Invokes glLineWidthx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def line_widthx(*args)
      raise FunctionUnavailableError.new("glLineWidthx") unless line_widthx?

      @proc_line_widthx.call(*args)
    end

    # Checks if the function "glLineWidthx" is loaded.
    @[AlwaysInline]
    def line_widthx? : Bool
      !@proc_line_widthx.pointer.null?
    end

    # Invokes glLoadIdentity.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_identity!(*args)
      @proc_load_identity.call(*args)
    end

    # Invokes glLoadIdentity.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_identity(*args)
      raise FunctionUnavailableError.new("glLoadIdentity") unless load_identity?

      @proc_load_identity.call(*args)
    end

    # Checks if the function "glLoadIdentity" is loaded.
    @[AlwaysInline]
    def load_identity? : Bool
      !@proc_load_identity.pointer.null?
    end

    # Invokes glLoadMatrixx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_matrix_x!(*args)
      @proc_load_matrix_x.call(*args)
    end

    # Invokes glLoadMatrixx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_matrix_x(*args)
      raise FunctionUnavailableError.new("glLoadMatrixx") unless load_matrix_x?

      @proc_load_matrix_x.call(*args)
    end

    # Checks if the function "glLoadMatrixx" is loaded.
    @[AlwaysInline]
    def load_matrix_x? : Bool
      !@proc_load_matrix_x.pointer.null?
    end

    # Invokes glLogicOp.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def logic_op!(*args)
      @proc_logic_op.call(*args)
    end

    # Invokes glLogicOp.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def logic_op(*args)
      raise FunctionUnavailableError.new("glLogicOp") unless logic_op?

      @proc_logic_op.call(*args)
    end

    # Checks if the function "glLogicOp" is loaded.
    @[AlwaysInline]
    def logic_op? : Bool
      !@proc_logic_op.pointer.null?
    end

    # Invokes glMaterialx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_x!(*args)
      @proc_material_x.call(*args)
    end

    # Invokes glMaterialx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_x(*args)
      raise FunctionUnavailableError.new("glMaterialx") unless material_x?

      @proc_material_x.call(*args)
    end

    # Checks if the function "glMaterialx" is loaded.
    @[AlwaysInline]
    def material_x? : Bool
      !@proc_material_x.pointer.null?
    end

    # Invokes glMaterialxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_xv!(*args)
      @proc_material_xv.call(*args)
    end

    # Invokes glMaterialxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_xv(*args)
      raise FunctionUnavailableError.new("glMaterialxv") unless material_xv?

      @proc_material_xv.call(*args)
    end

    # Checks if the function "glMaterialxv" is loaded.
    @[AlwaysInline]
    def material_xv? : Bool
      !@proc_material_xv.pointer.null?
    end

    # Invokes glMatrixMode.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def matrix_mode!(*args)
      @proc_matrix_mode.call(*args)
    end

    # Invokes glMatrixMode.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def matrix_mode(*args)
      raise FunctionUnavailableError.new("glMatrixMode") unless matrix_mode?

      @proc_matrix_mode.call(*args)
    end

    # Checks if the function "glMatrixMode" is loaded.
    @[AlwaysInline]
    def matrix_mode? : Bool
      !@proc_matrix_mode.pointer.null?
    end

    # Invokes glMultMatrixx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_matrix_x!(*args)
      @proc_mult_matrix_x.call(*args)
    end

    # Invokes glMultMatrixx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_matrix_x(*args)
      raise FunctionUnavailableError.new("glMultMatrixx") unless mult_matrix_x?

      @proc_mult_matrix_x.call(*args)
    end

    # Checks if the function "glMultMatrixx" is loaded.
    @[AlwaysInline]
    def mult_matrix_x? : Bool
      !@proc_mult_matrix_x.pointer.null?
    end

    # Invokes glMultiTexCoord4x.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4x!(*args)
      @proc_multi_tex_coord_4x.call(*args)
    end

    # Invokes glMultiTexCoord4x.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4x(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4x") unless multi_tex_coord_4x?

      @proc_multi_tex_coord_4x.call(*args)
    end

    # Checks if the function "glMultiTexCoord4x" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4x? : Bool
      !@proc_multi_tex_coord_4x.pointer.null?
    end

    # Invokes glNormal3x.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3x!(*args)
      @proc_normal_3x.call(*args)
    end

    # Invokes glNormal3x.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3x(*args)
      raise FunctionUnavailableError.new("glNormal3x") unless normal_3x?

      @proc_normal_3x.call(*args)
    end

    # Checks if the function "glNormal3x" is loaded.
    @[AlwaysInline]
    def normal_3x? : Bool
      !@proc_normal_3x.pointer.null?
    end

    # Invokes glNormalPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_pointer!(*args)
      @proc_normal_pointer.call(*args)
    end

    # Invokes glNormalPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_pointer(*args)
      raise FunctionUnavailableError.new("glNormalPointer") unless normal_pointer?

      @proc_normal_pointer.call(*args)
    end

    # Checks if the function "glNormalPointer" is loaded.
    @[AlwaysInline]
    def normal_pointer? : Bool
      !@proc_normal_pointer.pointer.null?
    end

    # Invokes glOrthox.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def orthox!(*args)
      @proc_orthox.call(*args)
    end

    # Invokes glOrthox.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def orthox(*args)
      raise FunctionUnavailableError.new("glOrthox") unless orthox?

      @proc_orthox.call(*args)
    end

    # Checks if the function "glOrthox" is loaded.
    @[AlwaysInline]
    def orthox? : Bool
      !@proc_orthox.pointer.null?
    end

    # Invokes glPixelStorei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_store_i!(*args)
      @proc_pixel_store_i.call(*args)
    end

    # Invokes glPixelStorei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_store_i(*args)
      raise FunctionUnavailableError.new("glPixelStorei") unless pixel_store_i?

      @proc_pixel_store_i.call(*args)
    end

    # Checks if the function "glPixelStorei" is loaded.
    @[AlwaysInline]
    def pixel_store_i? : Bool
      !@proc_pixel_store_i.pointer.null?
    end

    # Invokes glPointParameterx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_x!(*args)
      @proc_point_parameter_x.call(*args)
    end

    # Invokes glPointParameterx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_x(*args)
      raise FunctionUnavailableError.new("glPointParameterx") unless point_parameter_x?

      @proc_point_parameter_x.call(*args)
    end

    # Checks if the function "glPointParameterx" is loaded.
    @[AlwaysInline]
    def point_parameter_x? : Bool
      !@proc_point_parameter_x.pointer.null?
    end

    # Invokes glPointParameterxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_xv!(*args)
      @proc_point_parameter_xv.call(*args)
    end

    # Invokes glPointParameterxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_xv(*args)
      raise FunctionUnavailableError.new("glPointParameterxv") unless point_parameter_xv?

      @proc_point_parameter_xv.call(*args)
    end

    # Checks if the function "glPointParameterxv" is loaded.
    @[AlwaysInline]
    def point_parameter_xv? : Bool
      !@proc_point_parameter_xv.pointer.null?
    end

    # Invokes glPointSizex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_sizex!(*args)
      @proc_point_sizex.call(*args)
    end

    # Invokes glPointSizex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_sizex(*args)
      raise FunctionUnavailableError.new("glPointSizex") unless point_sizex?

      @proc_point_sizex.call(*args)
    end

    # Checks if the function "glPointSizex" is loaded.
    @[AlwaysInline]
    def point_sizex? : Bool
      !@proc_point_sizex.pointer.null?
    end

    # Invokes glPolygonOffsetx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_offsetx!(*args)
      @proc_polygon_offsetx.call(*args)
    end

    # Invokes glPolygonOffsetx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_offsetx(*args)
      raise FunctionUnavailableError.new("glPolygonOffsetx") unless polygon_offsetx?

      @proc_polygon_offsetx.call(*args)
    end

    # Checks if the function "glPolygonOffsetx" is loaded.
    @[AlwaysInline]
    def polygon_offsetx? : Bool
      !@proc_polygon_offsetx.pointer.null?
    end

    # Invokes glPopMatrix.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_matrix!(*args)
      @proc_pop_matrix.call(*args)
    end

    # Invokes glPopMatrix.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_matrix(*args)
      raise FunctionUnavailableError.new("glPopMatrix") unless pop_matrix?

      @proc_pop_matrix.call(*args)
    end

    # Checks if the function "glPopMatrix" is loaded.
    @[AlwaysInline]
    def pop_matrix? : Bool
      !@proc_pop_matrix.pointer.null?
    end

    # Invokes glPushMatrix.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_matrix!(*args)
      @proc_push_matrix.call(*args)
    end

    # Invokes glPushMatrix.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_matrix(*args)
      raise FunctionUnavailableError.new("glPushMatrix") unless push_matrix?

      @proc_push_matrix.call(*args)
    end

    # Checks if the function "glPushMatrix" is loaded.
    @[AlwaysInline]
    def push_matrix? : Bool
      !@proc_push_matrix.pointer.null?
    end

    # Invokes glReadPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def read_pixels!(*args)
      @proc_read_pixels.call(*args)
    end

    # Invokes glReadPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def read_pixels(*args)
      raise FunctionUnavailableError.new("glReadPixels") unless read_pixels?

      @proc_read_pixels.call(*args)
    end

    # Checks if the function "glReadPixels" is loaded.
    @[AlwaysInline]
    def read_pixels? : Bool
      !@proc_read_pixels.pointer.null?
    end

    # Invokes glRotatex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rotate_x!(*args)
      @proc_rotate_x.call(*args)
    end

    # Invokes glRotatex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rotate_x(*args)
      raise FunctionUnavailableError.new("glRotatex") unless rotate_x?

      @proc_rotate_x.call(*args)
    end

    # Checks if the function "glRotatex" is loaded.
    @[AlwaysInline]
    def rotate_x? : Bool
      !@proc_rotate_x.pointer.null?
    end

    # Invokes glSampleCoverage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sample_coverage!(*args)
      @proc_sample_coverage.call(*args)
    end

    # Invokes glSampleCoverage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sample_coverage(*args)
      raise FunctionUnavailableError.new("glSampleCoverage") unless sample_coverage?

      @proc_sample_coverage.call(*args)
    end

    # Checks if the function "glSampleCoverage" is loaded.
    @[AlwaysInline]
    def sample_coverage? : Bool
      !@proc_sample_coverage.pointer.null?
    end

    # Invokes glSampleCoveragex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sample_coveragex!(*args)
      @proc_sample_coveragex.call(*args)
    end

    # Invokes glSampleCoveragex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sample_coveragex(*args)
      raise FunctionUnavailableError.new("glSampleCoveragex") unless sample_coveragex?

      @proc_sample_coveragex.call(*args)
    end

    # Checks if the function "glSampleCoveragex" is loaded.
    @[AlwaysInline]
    def sample_coveragex? : Bool
      !@proc_sample_coveragex.pointer.null?
    end

    # Invokes glScalex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scale_x!(*args)
      @proc_scale_x.call(*args)
    end

    # Invokes glScalex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scale_x(*args)
      raise FunctionUnavailableError.new("glScalex") unless scale_x?

      @proc_scale_x.call(*args)
    end

    # Checks if the function "glScalex" is loaded.
    @[AlwaysInline]
    def scale_x? : Bool
      !@proc_scale_x.pointer.null?
    end

    # Invokes glScissor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor!(*args)
      @proc_scissor.call(*args)
    end

    # Invokes glScissor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor(*args)
      raise FunctionUnavailableError.new("glScissor") unless scissor?

      @proc_scissor.call(*args)
    end

    # Checks if the function "glScissor" is loaded.
    @[AlwaysInline]
    def scissor? : Bool
      !@proc_scissor.pointer.null?
    end

    # Invokes glShadeModel.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shade_model!(*args)
      @proc_shade_model.call(*args)
    end

    # Invokes glShadeModel.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shade_model(*args)
      raise FunctionUnavailableError.new("glShadeModel") unless shade_model?

      @proc_shade_model.call(*args)
    end

    # Checks if the function "glShadeModel" is loaded.
    @[AlwaysInline]
    def shade_model? : Bool
      !@proc_shade_model.pointer.null?
    end

    # Invokes glStencilFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_func!(*args)
      @proc_stencil_func.call(*args)
    end

    # Invokes glStencilFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_func(*args)
      raise FunctionUnavailableError.new("glStencilFunc") unless stencil_func?

      @proc_stencil_func.call(*args)
    end

    # Checks if the function "glStencilFunc" is loaded.
    @[AlwaysInline]
    def stencil_func? : Bool
      !@proc_stencil_func.pointer.null?
    end

    # Invokes glStencilMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_mask!(*args)
      @proc_stencil_mask.call(*args)
    end

    # Invokes glStencilMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_mask(*args)
      raise FunctionUnavailableError.new("glStencilMask") unless stencil_mask?

      @proc_stencil_mask.call(*args)
    end

    # Checks if the function "glStencilMask" is loaded.
    @[AlwaysInline]
    def stencil_mask? : Bool
      !@proc_stencil_mask.pointer.null?
    end

    # Invokes glStencilOp.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_op!(*args)
      @proc_stencil_op.call(*args)
    end

    # Invokes glStencilOp.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_op(*args)
      raise FunctionUnavailableError.new("glStencilOp") unless stencil_op?

      @proc_stencil_op.call(*args)
    end

    # Checks if the function "glStencilOp" is loaded.
    @[AlwaysInline]
    def stencil_op? : Bool
      !@proc_stencil_op.pointer.null?
    end

    # Invokes glTexCoordPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_pointer!(*args)
      @proc_tex_coord_pointer.call(*args)
    end

    # Invokes glTexCoordPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_pointer(*args)
      raise FunctionUnavailableError.new("glTexCoordPointer") unless tex_coord_pointer?

      @proc_tex_coord_pointer.call(*args)
    end

    # Checks if the function "glTexCoordPointer" is loaded.
    @[AlwaysInline]
    def tex_coord_pointer? : Bool
      !@proc_tex_coord_pointer.pointer.null?
    end

    # Invokes glTexEnvi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_i!(*args)
      @proc_tex_env_i.call(*args)
    end

    # Invokes glTexEnvi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_i(*args)
      raise FunctionUnavailableError.new("glTexEnvi") unless tex_env_i?

      @proc_tex_env_i.call(*args)
    end

    # Checks if the function "glTexEnvi" is loaded.
    @[AlwaysInline]
    def tex_env_i? : Bool
      !@proc_tex_env_i.pointer.null?
    end

    # Invokes glTexEnvx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_x!(*args)
      @proc_tex_env_x.call(*args)
    end

    # Invokes glTexEnvx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_x(*args)
      raise FunctionUnavailableError.new("glTexEnvx") unless tex_env_x?

      @proc_tex_env_x.call(*args)
    end

    # Checks if the function "glTexEnvx" is loaded.
    @[AlwaysInline]
    def tex_env_x? : Bool
      !@proc_tex_env_x.pointer.null?
    end

    # Invokes glTexEnviv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_iv!(*args)
      @proc_tex_env_iv.call(*args)
    end

    # Invokes glTexEnviv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_iv(*args)
      raise FunctionUnavailableError.new("glTexEnviv") unless tex_env_iv?

      @proc_tex_env_iv.call(*args)
    end

    # Checks if the function "glTexEnviv" is loaded.
    @[AlwaysInline]
    def tex_env_iv? : Bool
      !@proc_tex_env_iv.pointer.null?
    end

    # Invokes glTexEnvxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_xv!(*args)
      @proc_tex_env_xv.call(*args)
    end

    # Invokes glTexEnvxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_xv(*args)
      raise FunctionUnavailableError.new("glTexEnvxv") unless tex_env_xv?

      @proc_tex_env_xv.call(*args)
    end

    # Checks if the function "glTexEnvxv" is loaded.
    @[AlwaysInline]
    def tex_env_xv? : Bool
      !@proc_tex_env_xv.pointer.null?
    end

    # Invokes glTexImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_2d!(*args)
      @proc_tex_image_2d.call(*args)
    end

    # Invokes glTexImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_2d(*args)
      raise FunctionUnavailableError.new("glTexImage2D") unless tex_image_2d?

      @proc_tex_image_2d.call(*args)
    end

    # Checks if the function "glTexImage2D" is loaded.
    @[AlwaysInline]
    def tex_image_2d? : Bool
      !@proc_tex_image_2d.pointer.null?
    end

    # Invokes glTexParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_i!(*args)
      @proc_tex_parameter_i.call(*args)
    end

    # Invokes glTexParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_i(*args)
      raise FunctionUnavailableError.new("glTexParameteri") unless tex_parameter_i?

      @proc_tex_parameter_i.call(*args)
    end

    # Checks if the function "glTexParameteri" is loaded.
    @[AlwaysInline]
    def tex_parameter_i? : Bool
      !@proc_tex_parameter_i.pointer.null?
    end

    # Invokes glTexParameterx.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_x!(*args)
      @proc_tex_parameter_x.call(*args)
    end

    # Invokes glTexParameterx.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_x(*args)
      raise FunctionUnavailableError.new("glTexParameterx") unless tex_parameter_x?

      @proc_tex_parameter_x.call(*args)
    end

    # Checks if the function "glTexParameterx" is loaded.
    @[AlwaysInline]
    def tex_parameter_x? : Bool
      !@proc_tex_parameter_x.pointer.null?
    end

    # Invokes glTexParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_iv!(*args)
      @proc_tex_parameter_iv.call(*args)
    end

    # Invokes glTexParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_iv(*args)
      raise FunctionUnavailableError.new("glTexParameteriv") unless tex_parameter_iv?

      @proc_tex_parameter_iv.call(*args)
    end

    # Checks if the function "glTexParameteriv" is loaded.
    @[AlwaysInline]
    def tex_parameter_iv? : Bool
      !@proc_tex_parameter_iv.pointer.null?
    end

    # Invokes glTexParameterxv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_xv!(*args)
      @proc_tex_parameter_xv.call(*args)
    end

    # Invokes glTexParameterxv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_xv(*args)
      raise FunctionUnavailableError.new("glTexParameterxv") unless tex_parameter_xv?

      @proc_tex_parameter_xv.call(*args)
    end

    # Checks if the function "glTexParameterxv" is loaded.
    @[AlwaysInline]
    def tex_parameter_xv? : Bool
      !@proc_tex_parameter_xv.pointer.null?
    end

    # Invokes glTexSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_sub_image_2d!(*args)
      @proc_tex_sub_image_2d.call(*args)
    end

    # Invokes glTexSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glTexSubImage2D") unless tex_sub_image_2d?

      @proc_tex_sub_image_2d.call(*args)
    end

    # Checks if the function "glTexSubImage2D" is loaded.
    @[AlwaysInline]
    def tex_sub_image_2d? : Bool
      !@proc_tex_sub_image_2d.pointer.null?
    end

    # Invokes glTranslatex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def translate_x!(*args)
      @proc_translate_x.call(*args)
    end

    # Invokes glTranslatex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def translate_x(*args)
      raise FunctionUnavailableError.new("glTranslatex") unless translate_x?

      @proc_translate_x.call(*args)
    end

    # Checks if the function "glTranslatex" is loaded.
    @[AlwaysInline]
    def translate_x? : Bool
      !@proc_translate_x.pointer.null?
    end

    # Invokes glVertexPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_pointer!(*args)
      @proc_vertex_pointer.call(*args)
    end

    # Invokes glVertexPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_pointer(*args)
      raise FunctionUnavailableError.new("glVertexPointer") unless vertex_pointer?

      @proc_vertex_pointer.call(*args)
    end

    # Checks if the function "glVertexPointer" is loaded.
    @[AlwaysInline]
    def vertex_pointer? : Bool
      !@proc_vertex_pointer.pointer.null?
    end

    # Invokes glViewport.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport!(*args)
      @proc_viewport.call(*args)
    end

    # Invokes glViewport.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport(*args)
      raise FunctionUnavailableError.new("glViewport") unless viewport?

      @proc_viewport.call(*args)
    end

    # Checks if the function "glViewport" is loaded.
    @[AlwaysInline]
    def viewport? : Bool
      !@proc_viewport.pointer.null?
    end
  end
end
