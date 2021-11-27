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
      @addr_cull_face = ::Pointer(::Void).null
      @addr_front_face = ::Pointer(::Void).null
      @addr_hint = ::Pointer(::Void).null
      @addr_line_width = ::Pointer(::Void).null
      @addr_point_size = ::Pointer(::Void).null
      @addr_polygon_mode = ::Pointer(::Void).null
      @addr_scissor = ::Pointer(::Void).null
      @addr_tex_parameter_f = ::Pointer(::Void).null
      @addr_tex_parameter_fv = ::Pointer(::Void).null
      @addr_tex_parameter_i = ::Pointer(::Void).null
      @addr_tex_parameter_iv = ::Pointer(::Void).null
      @addr_tex_image_1d = ::Pointer(::Void).null
      @addr_tex_image_2d = ::Pointer(::Void).null
      @addr_draw_buffer = ::Pointer(::Void).null
      @addr_clear = ::Pointer(::Void).null
      @addr_clear_color = ::Pointer(::Void).null
      @addr_clear_stencil = ::Pointer(::Void).null
      @addr_clear_depth = ::Pointer(::Void).null
      @addr_stencil_mask = ::Pointer(::Void).null
      @addr_color_mask = ::Pointer(::Void).null
      @addr_depth_mask = ::Pointer(::Void).null
      @addr_disable = ::Pointer(::Void).null
      @addr_enable = ::Pointer(::Void).null
      @addr_finish = ::Pointer(::Void).null
      @addr_flush = ::Pointer(::Void).null
      @addr_blend_func = ::Pointer(::Void).null
      @addr_logic_op = ::Pointer(::Void).null
      @addr_stencil_func = ::Pointer(::Void).null
      @addr_stencil_op = ::Pointer(::Void).null
      @addr_depth_func = ::Pointer(::Void).null
      @addr_pixel_store_f = ::Pointer(::Void).null
      @addr_pixel_store_i = ::Pointer(::Void).null
      @addr_read_buffer = ::Pointer(::Void).null
      @addr_read_pixels = ::Pointer(::Void).null
      @addr_get_boolean_v = ::Pointer(::Void).null
      @addr_get_double_v = ::Pointer(::Void).null
      @addr_get_error = ::Pointer(::Void).null
      @addr_get_float_v = ::Pointer(::Void).null
      @addr_get_integer_v = ::Pointer(::Void).null
      @addr_get_string = ::Pointer(::Void).null
      @addr_get_tex_image = ::Pointer(::Void).null
      @addr_get_tex_parameter_fv = ::Pointer(::Void).null
      @addr_get_tex_parameter_iv = ::Pointer(::Void).null
      @addr_get_tex_level_parameter_fv = ::Pointer(::Void).null
      @addr_get_tex_level_parameter_iv = ::Pointer(::Void).null
      @addr_is_enabled = ::Pointer(::Void).null
      @addr_depth_range = ::Pointer(::Void).null
      @addr_viewport = ::Pointer(::Void).null
      @addr_new_list = ::Pointer(::Void).null
      @addr_end_list = ::Pointer(::Void).null
      @addr_call_list = ::Pointer(::Void).null
      @addr_call_lists = ::Pointer(::Void).null
      @addr_delete_lists = ::Pointer(::Void).null
      @addr_gen_lists = ::Pointer(::Void).null
      @addr_list_base = ::Pointer(::Void).null
      @addr_begin = ::Pointer(::Void).null
      @addr_bitmap = ::Pointer(::Void).null
      @addr_color_3b = ::Pointer(::Void).null
      @addr_color_3bv = ::Pointer(::Void).null
      @addr_color_3d = ::Pointer(::Void).null
      @addr_color_3dv = ::Pointer(::Void).null
      @addr_color_3f = ::Pointer(::Void).null
      @addr_color_3fv = ::Pointer(::Void).null
      @addr_color_3i = ::Pointer(::Void).null
      @addr_color_3iv = ::Pointer(::Void).null
      @addr_color_3s = ::Pointer(::Void).null
      @addr_color_3sv = ::Pointer(::Void).null
      @addr_color_3ub = ::Pointer(::Void).null
      @addr_color_3ubv = ::Pointer(::Void).null
      @addr_color_3ui = ::Pointer(::Void).null
      @addr_color_3uiv = ::Pointer(::Void).null
      @addr_color_3us = ::Pointer(::Void).null
      @addr_color_3usv = ::Pointer(::Void).null
      @addr_color_4b = ::Pointer(::Void).null
      @addr_color_4bv = ::Pointer(::Void).null
      @addr_color_4d = ::Pointer(::Void).null
      @addr_color_4dv = ::Pointer(::Void).null
      @addr_color_4f = ::Pointer(::Void).null
      @addr_color_4fv = ::Pointer(::Void).null
      @addr_color_4i = ::Pointer(::Void).null
      @addr_color_4iv = ::Pointer(::Void).null
      @addr_color_4s = ::Pointer(::Void).null
      @addr_color_4sv = ::Pointer(::Void).null
      @addr_color_4ub = ::Pointer(::Void).null
      @addr_color_4ubv = ::Pointer(::Void).null
      @addr_color_4ui = ::Pointer(::Void).null
      @addr_color_4uiv = ::Pointer(::Void).null
      @addr_color_4us = ::Pointer(::Void).null
      @addr_color_4usv = ::Pointer(::Void).null
      @addr_edge_flag = ::Pointer(::Void).null
      @addr_edge_flag_v = ::Pointer(::Void).null
      @addr_end = ::Pointer(::Void).null
      @addr_index_d = ::Pointer(::Void).null
      @addr_index_dv = ::Pointer(::Void).null
      @addr_index_f = ::Pointer(::Void).null
      @addr_index_fv = ::Pointer(::Void).null
      @addr_index_i = ::Pointer(::Void).null
      @addr_index_iv = ::Pointer(::Void).null
      @addr_index_s = ::Pointer(::Void).null
      @addr_index_sv = ::Pointer(::Void).null
      @addr_normal_3b = ::Pointer(::Void).null
      @addr_normal_3bv = ::Pointer(::Void).null
      @addr_normal_3d = ::Pointer(::Void).null
      @addr_normal_3dv = ::Pointer(::Void).null
      @addr_normal_3f = ::Pointer(::Void).null
      @addr_normal_3fv = ::Pointer(::Void).null
      @addr_normal_3i = ::Pointer(::Void).null
      @addr_normal_3iv = ::Pointer(::Void).null
      @addr_normal_3s = ::Pointer(::Void).null
      @addr_normal_3sv = ::Pointer(::Void).null
      @addr_raster_pos_2d = ::Pointer(::Void).null
      @addr_raster_pos_2dv = ::Pointer(::Void).null
      @addr_raster_pos_2f = ::Pointer(::Void).null
      @addr_raster_pos_2fv = ::Pointer(::Void).null
      @addr_raster_pos_2i = ::Pointer(::Void).null
      @addr_raster_pos_2iv = ::Pointer(::Void).null
      @addr_raster_pos_2s = ::Pointer(::Void).null
      @addr_raster_pos_2sv = ::Pointer(::Void).null
      @addr_raster_pos_3d = ::Pointer(::Void).null
      @addr_raster_pos_3dv = ::Pointer(::Void).null
      @addr_raster_pos_3f = ::Pointer(::Void).null
      @addr_raster_pos_3fv = ::Pointer(::Void).null
      @addr_raster_pos_3i = ::Pointer(::Void).null
      @addr_raster_pos_3iv = ::Pointer(::Void).null
      @addr_raster_pos_3s = ::Pointer(::Void).null
      @addr_raster_pos_3sv = ::Pointer(::Void).null
      @addr_raster_pos_4d = ::Pointer(::Void).null
      @addr_raster_pos_4dv = ::Pointer(::Void).null
      @addr_raster_pos_4f = ::Pointer(::Void).null
      @addr_raster_pos_4fv = ::Pointer(::Void).null
      @addr_raster_pos_4i = ::Pointer(::Void).null
      @addr_raster_pos_4iv = ::Pointer(::Void).null
      @addr_raster_pos_4s = ::Pointer(::Void).null
      @addr_raster_pos_4sv = ::Pointer(::Void).null
      @addr_rect_d = ::Pointer(::Void).null
      @addr_rect_dv = ::Pointer(::Void).null
      @addr_rect_f = ::Pointer(::Void).null
      @addr_rect_fv = ::Pointer(::Void).null
      @addr_rect_i = ::Pointer(::Void).null
      @addr_rect_iv = ::Pointer(::Void).null
      @addr_rect_s = ::Pointer(::Void).null
      @addr_rect_sv = ::Pointer(::Void).null
      @addr_tex_coord_1d = ::Pointer(::Void).null
      @addr_tex_coord_1dv = ::Pointer(::Void).null
      @addr_tex_coord_1f = ::Pointer(::Void).null
      @addr_tex_coord_1fv = ::Pointer(::Void).null
      @addr_tex_coord_1i = ::Pointer(::Void).null
      @addr_tex_coord_1iv = ::Pointer(::Void).null
      @addr_tex_coord_1s = ::Pointer(::Void).null
      @addr_tex_coord_1sv = ::Pointer(::Void).null
      @addr_tex_coord_2d = ::Pointer(::Void).null
      @addr_tex_coord_2dv = ::Pointer(::Void).null
      @addr_tex_coord_2f = ::Pointer(::Void).null
      @addr_tex_coord_2fv = ::Pointer(::Void).null
      @addr_tex_coord_2i = ::Pointer(::Void).null
      @addr_tex_coord_2iv = ::Pointer(::Void).null
      @addr_tex_coord_2s = ::Pointer(::Void).null
      @addr_tex_coord_2sv = ::Pointer(::Void).null
      @addr_tex_coord_3d = ::Pointer(::Void).null
      @addr_tex_coord_3dv = ::Pointer(::Void).null
      @addr_tex_coord_3f = ::Pointer(::Void).null
      @addr_tex_coord_3fv = ::Pointer(::Void).null
      @addr_tex_coord_3i = ::Pointer(::Void).null
      @addr_tex_coord_3iv = ::Pointer(::Void).null
      @addr_tex_coord_3s = ::Pointer(::Void).null
      @addr_tex_coord_3sv = ::Pointer(::Void).null
      @addr_tex_coord_4d = ::Pointer(::Void).null
      @addr_tex_coord_4dv = ::Pointer(::Void).null
      @addr_tex_coord_4f = ::Pointer(::Void).null
      @addr_tex_coord_4fv = ::Pointer(::Void).null
      @addr_tex_coord_4i = ::Pointer(::Void).null
      @addr_tex_coord_4iv = ::Pointer(::Void).null
      @addr_tex_coord_4s = ::Pointer(::Void).null
      @addr_tex_coord_4sv = ::Pointer(::Void).null
      @addr_vertex_2d = ::Pointer(::Void).null
      @addr_vertex_2dv = ::Pointer(::Void).null
      @addr_vertex_2f = ::Pointer(::Void).null
      @addr_vertex_2fv = ::Pointer(::Void).null
      @addr_vertex_2i = ::Pointer(::Void).null
      @addr_vertex_2iv = ::Pointer(::Void).null
      @addr_vertex_2s = ::Pointer(::Void).null
      @addr_vertex_2sv = ::Pointer(::Void).null
      @addr_vertex_3d = ::Pointer(::Void).null
      @addr_vertex_3dv = ::Pointer(::Void).null
      @addr_vertex_3f = ::Pointer(::Void).null
      @addr_vertex_3fv = ::Pointer(::Void).null
      @addr_vertex_3i = ::Pointer(::Void).null
      @addr_vertex_3iv = ::Pointer(::Void).null
      @addr_vertex_3s = ::Pointer(::Void).null
      @addr_vertex_3sv = ::Pointer(::Void).null
      @addr_vertex_4d = ::Pointer(::Void).null
      @addr_vertex_4dv = ::Pointer(::Void).null
      @addr_vertex_4f = ::Pointer(::Void).null
      @addr_vertex_4fv = ::Pointer(::Void).null
      @addr_vertex_4i = ::Pointer(::Void).null
      @addr_vertex_4iv = ::Pointer(::Void).null
      @addr_vertex_4s = ::Pointer(::Void).null
      @addr_vertex_4sv = ::Pointer(::Void).null
      @addr_clip_plane = ::Pointer(::Void).null
      @addr_color_material = ::Pointer(::Void).null
      @addr_fog_f = ::Pointer(::Void).null
      @addr_fog_fv = ::Pointer(::Void).null
      @addr_fog_i = ::Pointer(::Void).null
      @addr_fog_iv = ::Pointer(::Void).null
      @addr_light_f = ::Pointer(::Void).null
      @addr_light_fv = ::Pointer(::Void).null
      @addr_light_i = ::Pointer(::Void).null
      @addr_light_iv = ::Pointer(::Void).null
      @addr_light_model_f = ::Pointer(::Void).null
      @addr_light_model_fv = ::Pointer(::Void).null
      @addr_light_model_i = ::Pointer(::Void).null
      @addr_light_model_iv = ::Pointer(::Void).null
      @addr_line_stipple = ::Pointer(::Void).null
      @addr_material_f = ::Pointer(::Void).null
      @addr_material_fv = ::Pointer(::Void).null
      @addr_material_i = ::Pointer(::Void).null
      @addr_material_iv = ::Pointer(::Void).null
      @addr_polygon_stipple = ::Pointer(::Void).null
      @addr_shade_model = ::Pointer(::Void).null
      @addr_tex_env_f = ::Pointer(::Void).null
      @addr_tex_env_fv = ::Pointer(::Void).null
      @addr_tex_env_i = ::Pointer(::Void).null
      @addr_tex_env_iv = ::Pointer(::Void).null
      @addr_tex_gen_d = ::Pointer(::Void).null
      @addr_tex_gen_dv = ::Pointer(::Void).null
      @addr_tex_gen_f = ::Pointer(::Void).null
      @addr_tex_gen_fv = ::Pointer(::Void).null
      @addr_tex_gen_i = ::Pointer(::Void).null
      @addr_tex_gen_iv = ::Pointer(::Void).null
      @addr_feedback_buffer = ::Pointer(::Void).null
      @addr_select_buffer = ::Pointer(::Void).null
      @addr_render_mode = ::Pointer(::Void).null
      @addr_init_names = ::Pointer(::Void).null
      @addr_load_name = ::Pointer(::Void).null
      @addr_pass_through = ::Pointer(::Void).null
      @addr_pop_name = ::Pointer(::Void).null
      @addr_push_name = ::Pointer(::Void).null
      @addr_clear_accum = ::Pointer(::Void).null
      @addr_clear_index = ::Pointer(::Void).null
      @addr_index_mask = ::Pointer(::Void).null
      @addr_accum = ::Pointer(::Void).null
      @addr_pop_attrib = ::Pointer(::Void).null
      @addr_push_attrib = ::Pointer(::Void).null
      @addr_map_1d = ::Pointer(::Void).null
      @addr_map_1f = ::Pointer(::Void).null
      @addr_map_2d = ::Pointer(::Void).null
      @addr_map_2f = ::Pointer(::Void).null
      @addr_map_grid_1d = ::Pointer(::Void).null
      @addr_map_grid_1f = ::Pointer(::Void).null
      @addr_map_grid_2d = ::Pointer(::Void).null
      @addr_map_grid_2f = ::Pointer(::Void).null
      @addr_eval_coord_1d = ::Pointer(::Void).null
      @addr_eval_coord_1dv = ::Pointer(::Void).null
      @addr_eval_coord_1f = ::Pointer(::Void).null
      @addr_eval_coord_1fv = ::Pointer(::Void).null
      @addr_eval_coord_2d = ::Pointer(::Void).null
      @addr_eval_coord_2dv = ::Pointer(::Void).null
      @addr_eval_coord_2f = ::Pointer(::Void).null
      @addr_eval_coord_2fv = ::Pointer(::Void).null
      @addr_eval_mesh1 = ::Pointer(::Void).null
      @addr_eval_point1 = ::Pointer(::Void).null
      @addr_eval_mesh2 = ::Pointer(::Void).null
      @addr_eval_point2 = ::Pointer(::Void).null
      @addr_alpha_func = ::Pointer(::Void).null
      @addr_pixel_zoom = ::Pointer(::Void).null
      @addr_pixel_transfer_f = ::Pointer(::Void).null
      @addr_pixel_transfer_i = ::Pointer(::Void).null
      @addr_pixel_map_fv = ::Pointer(::Void).null
      @addr_pixel_map_uiv = ::Pointer(::Void).null
      @addr_pixel_map_usv = ::Pointer(::Void).null
      @addr_copy_pixels = ::Pointer(::Void).null
      @addr_draw_pixels = ::Pointer(::Void).null
      @addr_get_clip_plane = ::Pointer(::Void).null
      @addr_get_light_fv = ::Pointer(::Void).null
      @addr_get_light_iv = ::Pointer(::Void).null
      @addr_get_map_dv = ::Pointer(::Void).null
      @addr_get_map_fv = ::Pointer(::Void).null
      @addr_get_map_iv = ::Pointer(::Void).null
      @addr_get_material_fv = ::Pointer(::Void).null
      @addr_get_material_iv = ::Pointer(::Void).null
      @addr_get_pixel_map_fv = ::Pointer(::Void).null
      @addr_get_pixel_map_uiv = ::Pointer(::Void).null
      @addr_get_pixel_map_usv = ::Pointer(::Void).null
      @addr_get_polygon_stipple = ::Pointer(::Void).null
      @addr_get_tex_env_fv = ::Pointer(::Void).null
      @addr_get_tex_env_iv = ::Pointer(::Void).null
      @addr_get_tex_gen_dv = ::Pointer(::Void).null
      @addr_get_tex_gen_fv = ::Pointer(::Void).null
      @addr_get_tex_gen_iv = ::Pointer(::Void).null
      @addr_is_list = ::Pointer(::Void).null
      @addr_frustum = ::Pointer(::Void).null
      @addr_load_identity = ::Pointer(::Void).null
      @addr_load_matrix_f = ::Pointer(::Void).null
      @addr_load_matrix_d = ::Pointer(::Void).null
      @addr_matrix_mode = ::Pointer(::Void).null
      @addr_mult_matrix_f = ::Pointer(::Void).null
      @addr_mult_matrix_d = ::Pointer(::Void).null
      @addr_ortho = ::Pointer(::Void).null
      @addr_pop_matrix = ::Pointer(::Void).null
      @addr_push_matrix = ::Pointer(::Void).null
      @addr_rotate_d = ::Pointer(::Void).null
      @addr_rotate_f = ::Pointer(::Void).null
      @addr_scale_d = ::Pointer(::Void).null
      @addr_scale_f = ::Pointer(::Void).null
      @addr_translate_d = ::Pointer(::Void).null
      @addr_translate_f = ::Pointer(::Void).null
      @addr_draw_arrays = ::Pointer(::Void).null
      @addr_draw_elements = ::Pointer(::Void).null
      @addr_get_pointer_v = ::Pointer(::Void).null
      @addr_polygon_offset = ::Pointer(::Void).null
      @addr_copy_tex_image_1d = ::Pointer(::Void).null
      @addr_copy_tex_image_2d = ::Pointer(::Void).null
      @addr_copy_tex_sub_image_1d = ::Pointer(::Void).null
      @addr_copy_tex_sub_image_2d = ::Pointer(::Void).null
      @addr_tex_sub_image_1d = ::Pointer(::Void).null
      @addr_tex_sub_image_2d = ::Pointer(::Void).null
      @addr_bind_texture = ::Pointer(::Void).null
      @addr_delete_textures = ::Pointer(::Void).null
      @addr_gen_textures = ::Pointer(::Void).null
      @addr_is_texture = ::Pointer(::Void).null
      @addr_array_element = ::Pointer(::Void).null
      @addr_color_pointer = ::Pointer(::Void).null
      @addr_disable_client_state = ::Pointer(::Void).null
      @addr_edge_flag_pointer = ::Pointer(::Void).null
      @addr_enable_client_state = ::Pointer(::Void).null
      @addr_index_pointer = ::Pointer(::Void).null
      @addr_interleaved_arrays = ::Pointer(::Void).null
      @addr_normal_pointer = ::Pointer(::Void).null
      @addr_tex_coord_pointer = ::Pointer(::Void).null
      @addr_vertex_pointer = ::Pointer(::Void).null
      @addr_are_textures_resident = ::Pointer(::Void).null
      @addr_prioritize_textures = ::Pointer(::Void).null
      @addr_index_ub = ::Pointer(::Void).null
      @addr_index_ubv = ::Pointer(::Void).null
      @addr_pop_client_attrib = ::Pointer(::Void).null
      @addr_push_client_attrib = ::Pointer(::Void).null
      @addr_draw_range_elements = ::Pointer(::Void).null
      @addr_tex_image_3d = ::Pointer(::Void).null
      @addr_tex_sub_image_3d = ::Pointer(::Void).null
      @addr_copy_tex_sub_image_3d = ::Pointer(::Void).null
    end

    # Loads all functions.
    # The block takes an OpenGL function name and returns its address.
    # The address should be null if the function is unavailable.
    def load_all(& : String -> Void*)
      @addr_cull_face = yield "glCullFace"
      @addr_front_face = yield "glFrontFace"
      @addr_hint = yield "glHint"
      @addr_line_width = yield "glLineWidth"
      @addr_point_size = yield "glPointSize"
      @addr_polygon_mode = yield "glPolygonMode"
      @addr_scissor = yield "glScissor"
      @addr_tex_parameter_f = yield "glTexParameterf"
      @addr_tex_parameter_fv = yield "glTexParameterfv"
      @addr_tex_parameter_i = yield "glTexParameteri"
      @addr_tex_parameter_iv = yield "glTexParameteriv"
      @addr_tex_image_1d = yield "glTexImage1D"
      @addr_tex_image_2d = yield "glTexImage2D"
      @addr_draw_buffer = yield "glDrawBuffer"
      @addr_clear = yield "glClear"
      @addr_clear_color = yield "glClearColor"
      @addr_clear_stencil = yield "glClearStencil"
      @addr_clear_depth = yield "glClearDepth"
      @addr_stencil_mask = yield "glStencilMask"
      @addr_color_mask = yield "glColorMask"
      @addr_depth_mask = yield "glDepthMask"
      @addr_disable = yield "glDisable"
      @addr_enable = yield "glEnable"
      @addr_finish = yield "glFinish"
      @addr_flush = yield "glFlush"
      @addr_blend_func = yield "glBlendFunc"
      @addr_logic_op = yield "glLogicOp"
      @addr_stencil_func = yield "glStencilFunc"
      @addr_stencil_op = yield "glStencilOp"
      @addr_depth_func = yield "glDepthFunc"
      @addr_pixel_store_f = yield "glPixelStoref"
      @addr_pixel_store_i = yield "glPixelStorei"
      @addr_read_buffer = yield "glReadBuffer"
      @addr_read_pixels = yield "glReadPixels"
      @addr_get_boolean_v = yield "glGetBooleanv"
      @addr_get_double_v = yield "glGetDoublev"
      @addr_get_error = yield "glGetError"
      @addr_get_float_v = yield "glGetFloatv"
      @addr_get_integer_v = yield "glGetIntegerv"
      @addr_get_string = yield "glGetString"
      @addr_get_tex_image = yield "glGetTexImage"
      @addr_get_tex_parameter_fv = yield "glGetTexParameterfv"
      @addr_get_tex_parameter_iv = yield "glGetTexParameteriv"
      @addr_get_tex_level_parameter_fv = yield "glGetTexLevelParameterfv"
      @addr_get_tex_level_parameter_iv = yield "glGetTexLevelParameteriv"
      @addr_is_enabled = yield "glIsEnabled"
      @addr_depth_range = yield "glDepthRange"
      @addr_viewport = yield "glViewport"
      @addr_new_list = yield "glNewList"
      @addr_end_list = yield "glEndList"
      @addr_call_list = yield "glCallList"
      @addr_call_lists = yield "glCallLists"
      @addr_delete_lists = yield "glDeleteLists"
      @addr_gen_lists = yield "glGenLists"
      @addr_list_base = yield "glListBase"
      @addr_begin = yield "glBegin"
      @addr_bitmap = yield "glBitmap"
      @addr_color_3b = yield "glColor3b"
      @addr_color_3bv = yield "glColor3bv"
      @addr_color_3d = yield "glColor3d"
      @addr_color_3dv = yield "glColor3dv"
      @addr_color_3f = yield "glColor3f"
      @addr_color_3fv = yield "glColor3fv"
      @addr_color_3i = yield "glColor3i"
      @addr_color_3iv = yield "glColor3iv"
      @addr_color_3s = yield "glColor3s"
      @addr_color_3sv = yield "glColor3sv"
      @addr_color_3ub = yield "glColor3ub"
      @addr_color_3ubv = yield "glColor3ubv"
      @addr_color_3ui = yield "glColor3ui"
      @addr_color_3uiv = yield "glColor3uiv"
      @addr_color_3us = yield "glColor3us"
      @addr_color_3usv = yield "glColor3usv"
      @addr_color_4b = yield "glColor4b"
      @addr_color_4bv = yield "glColor4bv"
      @addr_color_4d = yield "glColor4d"
      @addr_color_4dv = yield "glColor4dv"
      @addr_color_4f = yield "glColor4f"
      @addr_color_4fv = yield "glColor4fv"
      @addr_color_4i = yield "glColor4i"
      @addr_color_4iv = yield "glColor4iv"
      @addr_color_4s = yield "glColor4s"
      @addr_color_4sv = yield "glColor4sv"
      @addr_color_4ub = yield "glColor4ub"
      @addr_color_4ubv = yield "glColor4ubv"
      @addr_color_4ui = yield "glColor4ui"
      @addr_color_4uiv = yield "glColor4uiv"
      @addr_color_4us = yield "glColor4us"
      @addr_color_4usv = yield "glColor4usv"
      @addr_edge_flag = yield "glEdgeFlag"
      @addr_edge_flag_v = yield "glEdgeFlagv"
      @addr_end = yield "glEnd"
      @addr_index_d = yield "glIndexd"
      @addr_index_dv = yield "glIndexdv"
      @addr_index_f = yield "glIndexf"
      @addr_index_fv = yield "glIndexfv"
      @addr_index_i = yield "glIndexi"
      @addr_index_iv = yield "glIndexiv"
      @addr_index_s = yield "glIndexs"
      @addr_index_sv = yield "glIndexsv"
      @addr_normal_3b = yield "glNormal3b"
      @addr_normal_3bv = yield "glNormal3bv"
      @addr_normal_3d = yield "glNormal3d"
      @addr_normal_3dv = yield "glNormal3dv"
      @addr_normal_3f = yield "glNormal3f"
      @addr_normal_3fv = yield "glNormal3fv"
      @addr_normal_3i = yield "glNormal3i"
      @addr_normal_3iv = yield "glNormal3iv"
      @addr_normal_3s = yield "glNormal3s"
      @addr_normal_3sv = yield "glNormal3sv"
      @addr_raster_pos_2d = yield "glRasterPos2d"
      @addr_raster_pos_2dv = yield "glRasterPos2dv"
      @addr_raster_pos_2f = yield "glRasterPos2f"
      @addr_raster_pos_2fv = yield "glRasterPos2fv"
      @addr_raster_pos_2i = yield "glRasterPos2i"
      @addr_raster_pos_2iv = yield "glRasterPos2iv"
      @addr_raster_pos_2s = yield "glRasterPos2s"
      @addr_raster_pos_2sv = yield "glRasterPos2sv"
      @addr_raster_pos_3d = yield "glRasterPos3d"
      @addr_raster_pos_3dv = yield "glRasterPos3dv"
      @addr_raster_pos_3f = yield "glRasterPos3f"
      @addr_raster_pos_3fv = yield "glRasterPos3fv"
      @addr_raster_pos_3i = yield "glRasterPos3i"
      @addr_raster_pos_3iv = yield "glRasterPos3iv"
      @addr_raster_pos_3s = yield "glRasterPos3s"
      @addr_raster_pos_3sv = yield "glRasterPos3sv"
      @addr_raster_pos_4d = yield "glRasterPos4d"
      @addr_raster_pos_4dv = yield "glRasterPos4dv"
      @addr_raster_pos_4f = yield "glRasterPos4f"
      @addr_raster_pos_4fv = yield "glRasterPos4fv"
      @addr_raster_pos_4i = yield "glRasterPos4i"
      @addr_raster_pos_4iv = yield "glRasterPos4iv"
      @addr_raster_pos_4s = yield "glRasterPos4s"
      @addr_raster_pos_4sv = yield "glRasterPos4sv"
      @addr_rect_d = yield "glRectd"
      @addr_rect_dv = yield "glRectdv"
      @addr_rect_f = yield "glRectf"
      @addr_rect_fv = yield "glRectfv"
      @addr_rect_i = yield "glRecti"
      @addr_rect_iv = yield "glRectiv"
      @addr_rect_s = yield "glRects"
      @addr_rect_sv = yield "glRectsv"
      @addr_tex_coord_1d = yield "glTexCoord1d"
      @addr_tex_coord_1dv = yield "glTexCoord1dv"
      @addr_tex_coord_1f = yield "glTexCoord1f"
      @addr_tex_coord_1fv = yield "glTexCoord1fv"
      @addr_tex_coord_1i = yield "glTexCoord1i"
      @addr_tex_coord_1iv = yield "glTexCoord1iv"
      @addr_tex_coord_1s = yield "glTexCoord1s"
      @addr_tex_coord_1sv = yield "glTexCoord1sv"
      @addr_tex_coord_2d = yield "glTexCoord2d"
      @addr_tex_coord_2dv = yield "glTexCoord2dv"
      @addr_tex_coord_2f = yield "glTexCoord2f"
      @addr_tex_coord_2fv = yield "glTexCoord2fv"
      @addr_tex_coord_2i = yield "glTexCoord2i"
      @addr_tex_coord_2iv = yield "glTexCoord2iv"
      @addr_tex_coord_2s = yield "glTexCoord2s"
      @addr_tex_coord_2sv = yield "glTexCoord2sv"
      @addr_tex_coord_3d = yield "glTexCoord3d"
      @addr_tex_coord_3dv = yield "glTexCoord3dv"
      @addr_tex_coord_3f = yield "glTexCoord3f"
      @addr_tex_coord_3fv = yield "glTexCoord3fv"
      @addr_tex_coord_3i = yield "glTexCoord3i"
      @addr_tex_coord_3iv = yield "glTexCoord3iv"
      @addr_tex_coord_3s = yield "glTexCoord3s"
      @addr_tex_coord_3sv = yield "glTexCoord3sv"
      @addr_tex_coord_4d = yield "glTexCoord4d"
      @addr_tex_coord_4dv = yield "glTexCoord4dv"
      @addr_tex_coord_4f = yield "glTexCoord4f"
      @addr_tex_coord_4fv = yield "glTexCoord4fv"
      @addr_tex_coord_4i = yield "glTexCoord4i"
      @addr_tex_coord_4iv = yield "glTexCoord4iv"
      @addr_tex_coord_4s = yield "glTexCoord4s"
      @addr_tex_coord_4sv = yield "glTexCoord4sv"
      @addr_vertex_2d = yield "glVertex2d"
      @addr_vertex_2dv = yield "glVertex2dv"
      @addr_vertex_2f = yield "glVertex2f"
      @addr_vertex_2fv = yield "glVertex2fv"
      @addr_vertex_2i = yield "glVertex2i"
      @addr_vertex_2iv = yield "glVertex2iv"
      @addr_vertex_2s = yield "glVertex2s"
      @addr_vertex_2sv = yield "glVertex2sv"
      @addr_vertex_3d = yield "glVertex3d"
      @addr_vertex_3dv = yield "glVertex3dv"
      @addr_vertex_3f = yield "glVertex3f"
      @addr_vertex_3fv = yield "glVertex3fv"
      @addr_vertex_3i = yield "glVertex3i"
      @addr_vertex_3iv = yield "glVertex3iv"
      @addr_vertex_3s = yield "glVertex3s"
      @addr_vertex_3sv = yield "glVertex3sv"
      @addr_vertex_4d = yield "glVertex4d"
      @addr_vertex_4dv = yield "glVertex4dv"
      @addr_vertex_4f = yield "glVertex4f"
      @addr_vertex_4fv = yield "glVertex4fv"
      @addr_vertex_4i = yield "glVertex4i"
      @addr_vertex_4iv = yield "glVertex4iv"
      @addr_vertex_4s = yield "glVertex4s"
      @addr_vertex_4sv = yield "glVertex4sv"
      @addr_clip_plane = yield "glClipPlane"
      @addr_color_material = yield "glColorMaterial"
      @addr_fog_f = yield "glFogf"
      @addr_fog_fv = yield "glFogfv"
      @addr_fog_i = yield "glFogi"
      @addr_fog_iv = yield "glFogiv"
      @addr_light_f = yield "glLightf"
      @addr_light_fv = yield "glLightfv"
      @addr_light_i = yield "glLighti"
      @addr_light_iv = yield "glLightiv"
      @addr_light_model_f = yield "glLightModelf"
      @addr_light_model_fv = yield "glLightModelfv"
      @addr_light_model_i = yield "glLightModeli"
      @addr_light_model_iv = yield "glLightModeliv"
      @addr_line_stipple = yield "glLineStipple"
      @addr_material_f = yield "glMaterialf"
      @addr_material_fv = yield "glMaterialfv"
      @addr_material_i = yield "glMateriali"
      @addr_material_iv = yield "glMaterialiv"
      @addr_polygon_stipple = yield "glPolygonStipple"
      @addr_shade_model = yield "glShadeModel"
      @addr_tex_env_f = yield "glTexEnvf"
      @addr_tex_env_fv = yield "glTexEnvfv"
      @addr_tex_env_i = yield "glTexEnvi"
      @addr_tex_env_iv = yield "glTexEnviv"
      @addr_tex_gen_d = yield "glTexGend"
      @addr_tex_gen_dv = yield "glTexGendv"
      @addr_tex_gen_f = yield "glTexGenf"
      @addr_tex_gen_fv = yield "glTexGenfv"
      @addr_tex_gen_i = yield "glTexGeni"
      @addr_tex_gen_iv = yield "glTexGeniv"
      @addr_feedback_buffer = yield "glFeedbackBuffer"
      @addr_select_buffer = yield "glSelectBuffer"
      @addr_render_mode = yield "glRenderMode"
      @addr_init_names = yield "glInitNames"
      @addr_load_name = yield "glLoadName"
      @addr_pass_through = yield "glPassThrough"
      @addr_pop_name = yield "glPopName"
      @addr_push_name = yield "glPushName"
      @addr_clear_accum = yield "glClearAccum"
      @addr_clear_index = yield "glClearIndex"
      @addr_index_mask = yield "glIndexMask"
      @addr_accum = yield "glAccum"
      @addr_pop_attrib = yield "glPopAttrib"
      @addr_push_attrib = yield "glPushAttrib"
      @addr_map_1d = yield "glMap1d"
      @addr_map_1f = yield "glMap1f"
      @addr_map_2d = yield "glMap2d"
      @addr_map_2f = yield "glMap2f"
      @addr_map_grid_1d = yield "glMapGrid1d"
      @addr_map_grid_1f = yield "glMapGrid1f"
      @addr_map_grid_2d = yield "glMapGrid2d"
      @addr_map_grid_2f = yield "glMapGrid2f"
      @addr_eval_coord_1d = yield "glEvalCoord1d"
      @addr_eval_coord_1dv = yield "glEvalCoord1dv"
      @addr_eval_coord_1f = yield "glEvalCoord1f"
      @addr_eval_coord_1fv = yield "glEvalCoord1fv"
      @addr_eval_coord_2d = yield "glEvalCoord2d"
      @addr_eval_coord_2dv = yield "glEvalCoord2dv"
      @addr_eval_coord_2f = yield "glEvalCoord2f"
      @addr_eval_coord_2fv = yield "glEvalCoord2fv"
      @addr_eval_mesh1 = yield "glEvalMesh1"
      @addr_eval_point1 = yield "glEvalPoint1"
      @addr_eval_mesh2 = yield "glEvalMesh2"
      @addr_eval_point2 = yield "glEvalPoint2"
      @addr_alpha_func = yield "glAlphaFunc"
      @addr_pixel_zoom = yield "glPixelZoom"
      @addr_pixel_transfer_f = yield "glPixelTransferf"
      @addr_pixel_transfer_i = yield "glPixelTransferi"
      @addr_pixel_map_fv = yield "glPixelMapfv"
      @addr_pixel_map_uiv = yield "glPixelMapuiv"
      @addr_pixel_map_usv = yield "glPixelMapusv"
      @addr_copy_pixels = yield "glCopyPixels"
      @addr_draw_pixels = yield "glDrawPixels"
      @addr_get_clip_plane = yield "glGetClipPlane"
      @addr_get_light_fv = yield "glGetLightfv"
      @addr_get_light_iv = yield "glGetLightiv"
      @addr_get_map_dv = yield "glGetMapdv"
      @addr_get_map_fv = yield "glGetMapfv"
      @addr_get_map_iv = yield "glGetMapiv"
      @addr_get_material_fv = yield "glGetMaterialfv"
      @addr_get_material_iv = yield "glGetMaterialiv"
      @addr_get_pixel_map_fv = yield "glGetPixelMapfv"
      @addr_get_pixel_map_uiv = yield "glGetPixelMapuiv"
      @addr_get_pixel_map_usv = yield "glGetPixelMapusv"
      @addr_get_polygon_stipple = yield "glGetPolygonStipple"
      @addr_get_tex_env_fv = yield "glGetTexEnvfv"
      @addr_get_tex_env_iv = yield "glGetTexEnviv"
      @addr_get_tex_gen_dv = yield "glGetTexGendv"
      @addr_get_tex_gen_fv = yield "glGetTexGenfv"
      @addr_get_tex_gen_iv = yield "glGetTexGeniv"
      @addr_is_list = yield "glIsList"
      @addr_frustum = yield "glFrustum"
      @addr_load_identity = yield "glLoadIdentity"
      @addr_load_matrix_f = yield "glLoadMatrixf"
      @addr_load_matrix_d = yield "glLoadMatrixd"
      @addr_matrix_mode = yield "glMatrixMode"
      @addr_mult_matrix_f = yield "glMultMatrixf"
      @addr_mult_matrix_d = yield "glMultMatrixd"
      @addr_ortho = yield "glOrtho"
      @addr_pop_matrix = yield "glPopMatrix"
      @addr_push_matrix = yield "glPushMatrix"
      @addr_rotate_d = yield "glRotated"
      @addr_rotate_f = yield "glRotatef"
      @addr_scale_d = yield "glScaled"
      @addr_scale_f = yield "glScalef"
      @addr_translate_d = yield "glTranslated"
      @addr_translate_f = yield "glTranslatef"
      @addr_draw_arrays = yield "glDrawArrays"
      @addr_draw_elements = yield "glDrawElements"
      @addr_get_pointer_v = yield "glGetPointerv"
      @addr_polygon_offset = yield "glPolygonOffset"
      @addr_copy_tex_image_1d = yield "glCopyTexImage1D"
      @addr_copy_tex_image_2d = yield "glCopyTexImage2D"
      @addr_copy_tex_sub_image_1d = yield "glCopyTexSubImage1D"
      @addr_copy_tex_sub_image_2d = yield "glCopyTexSubImage2D"
      @addr_tex_sub_image_1d = yield "glTexSubImage1D"
      @addr_tex_sub_image_2d = yield "glTexSubImage2D"
      @addr_bind_texture = yield "glBindTexture"
      @addr_delete_textures = yield "glDeleteTextures"
      @addr_gen_textures = yield "glGenTextures"
      @addr_is_texture = yield "glIsTexture"
      @addr_array_element = yield "glArrayElement"
      @addr_color_pointer = yield "glColorPointer"
      @addr_disable_client_state = yield "glDisableClientState"
      @addr_edge_flag_pointer = yield "glEdgeFlagPointer"
      @addr_enable_client_state = yield "glEnableClientState"
      @addr_index_pointer = yield "glIndexPointer"
      @addr_interleaved_arrays = yield "glInterleavedArrays"
      @addr_normal_pointer = yield "glNormalPointer"
      @addr_tex_coord_pointer = yield "glTexCoordPointer"
      @addr_vertex_pointer = yield "glVertexPointer"
      @addr_are_textures_resident = yield "glAreTexturesResident"
      @addr_prioritize_textures = yield "glPrioritizeTextures"
      @addr_index_ub = yield "glIndexub"
      @addr_index_ubv = yield "glIndexubv"
      @addr_pop_client_attrib = yield "glPopClientAttrib"
      @addr_push_client_attrib = yield "glPushClientAttrib"
      @addr_draw_range_elements = yield "glDrawRangeElements"
      @addr_tex_image_3d = yield "glTexImage3D"
      @addr_tex_sub_image_3d = yield "glTexSubImage3D"
      @addr_copy_tex_sub_image_3d = yield "glCopyTexSubImage3D"
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

    # Invokes glLineWidth.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def line_width!(*args)
      addr = @addr_line_width
      proc = Procs.line_width(addr)
      proc.call(*args)
    end

    # Invokes glLineWidth.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def line_width(*args)
      raise FunctionUnavailableError.new("glLineWidth") unless line_width?

      line_width!(*args)
    end

    # Checks if the function "glLineWidth" is loaded.
    @[AlwaysInline]
    def line_width? : Bool
      !@addr_line_width.null?
    end

    # Invokes glPointSize.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_size!(*args)
      addr = @addr_point_size
      proc = Procs.point_size(addr)
      proc.call(*args)
    end

    # Invokes glPointSize.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_size(*args)
      raise FunctionUnavailableError.new("glPointSize") unless point_size?

      point_size!(*args)
    end

    # Checks if the function "glPointSize" is loaded.
    @[AlwaysInline]
    def point_size? : Bool
      !@addr_point_size.null?
    end

    # Invokes glPolygonMode.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_mode!(*args)
      addr = @addr_polygon_mode
      proc = Procs.polygon_mode(addr)
      proc.call(*args)
    end

    # Invokes glPolygonMode.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_mode(*args)
      raise FunctionUnavailableError.new("glPolygonMode") unless polygon_mode?

      polygon_mode!(*args)
    end

    # Checks if the function "glPolygonMode" is loaded.
    @[AlwaysInline]
    def polygon_mode? : Bool
      !@addr_polygon_mode.null?
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

    # Invokes glTexParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_f!(*args)
      addr = @addr_tex_parameter_f
      proc = Procs.tex_parameter_f(addr)
      proc.call(*args)
    end

    # Invokes glTexParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_f(*args)
      raise FunctionUnavailableError.new("glTexParameterf") unless tex_parameter_f?

      tex_parameter_f!(*args)
    end

    # Checks if the function "glTexParameterf" is loaded.
    @[AlwaysInline]
    def tex_parameter_f? : Bool
      !@addr_tex_parameter_f.null?
    end

    # Invokes glTexParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_fv!(*args)
      addr = @addr_tex_parameter_fv
      proc = Procs.tex_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glTexParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_fv(*args)
      raise FunctionUnavailableError.new("glTexParameterfv") unless tex_parameter_fv?

      tex_parameter_fv!(*args)
    end

    # Checks if the function "glTexParameterfv" is loaded.
    @[AlwaysInline]
    def tex_parameter_fv? : Bool
      !@addr_tex_parameter_fv.null?
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

    # Invokes glTexImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_1d!(*args)
      addr = @addr_tex_image_1d
      proc = Procs.tex_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glTexImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_1d(*args)
      raise FunctionUnavailableError.new("glTexImage1D") unless tex_image_1d?

      tex_image_1d!(*args)
    end

    # Checks if the function "glTexImage1D" is loaded.
    @[AlwaysInline]
    def tex_image_1d? : Bool
      !@addr_tex_image_1d.null?
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

    # Invokes glDrawBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_buffer!(*args)
      addr = @addr_draw_buffer
      proc = Procs.draw_buffer(addr)
      proc.call(*args)
    end

    # Invokes glDrawBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_buffer(*args)
      raise FunctionUnavailableError.new("glDrawBuffer") unless draw_buffer?

      draw_buffer!(*args)
    end

    # Checks if the function "glDrawBuffer" is loaded.
    @[AlwaysInline]
    def draw_buffer? : Bool
      !@addr_draw_buffer.null?
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

    # Invokes glClearColor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_color!(*args)
      addr = @addr_clear_color
      proc = Procs.clear_color(addr)
      proc.call(*args)
    end

    # Invokes glClearColor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_color(*args)
      raise FunctionUnavailableError.new("glClearColor") unless clear_color?

      clear_color!(*args)
    end

    # Checks if the function "glClearColor" is loaded.
    @[AlwaysInline]
    def clear_color? : Bool
      !@addr_clear_color.null?
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

    # Invokes glClearDepth.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_depth!(*args)
      addr = @addr_clear_depth
      proc = Procs.clear_depth(addr)
      proc.call(*args)
    end

    # Invokes glClearDepth.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_depth(*args)
      raise FunctionUnavailableError.new("glClearDepth") unless clear_depth?

      clear_depth!(*args)
    end

    # Checks if the function "glClearDepth" is loaded.
    @[AlwaysInline]
    def clear_depth? : Bool
      !@addr_clear_depth.null?
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

    # Invokes glPixelStoref.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_store_f!(*args)
      addr = @addr_pixel_store_f
      proc = Procs.pixel_store_f(addr)
      proc.call(*args)
    end

    # Invokes glPixelStoref.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_store_f(*args)
      raise FunctionUnavailableError.new("glPixelStoref") unless pixel_store_f?

      pixel_store_f!(*args)
    end

    # Checks if the function "glPixelStoref" is loaded.
    @[AlwaysInline]
    def pixel_store_f? : Bool
      !@addr_pixel_store_f.null?
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

    # Invokes glReadBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def read_buffer!(*args)
      addr = @addr_read_buffer
      proc = Procs.read_buffer(addr)
      proc.call(*args)
    end

    # Invokes glReadBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def read_buffer(*args)
      raise FunctionUnavailableError.new("glReadBuffer") unless read_buffer?

      read_buffer!(*args)
    end

    # Checks if the function "glReadBuffer" is loaded.
    @[AlwaysInline]
    def read_buffer? : Bool
      !@addr_read_buffer.null?
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

    # Invokes glGetDoublev.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_double_v!(*args)
      addr = @addr_get_double_v
      proc = Procs.get_double_v(addr)
      proc.call(*args)
    end

    # Invokes glGetDoublev.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_double_v(*args)
      raise FunctionUnavailableError.new("glGetDoublev") unless get_double_v?

      get_double_v!(*args)
    end

    # Checks if the function "glGetDoublev" is loaded.
    @[AlwaysInline]
    def get_double_v? : Bool
      !@addr_get_double_v.null?
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

    # Invokes glGetFloatv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_float_v!(*args)
      addr = @addr_get_float_v
      proc = Procs.get_float_v(addr)
      proc.call(*args)
    end

    # Invokes glGetFloatv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_float_v(*args)
      raise FunctionUnavailableError.new("glGetFloatv") unless get_float_v?

      get_float_v!(*args)
    end

    # Checks if the function "glGetFloatv" is loaded.
    @[AlwaysInline]
    def get_float_v? : Bool
      !@addr_get_float_v.null?
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

    # Invokes glGetTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_image!(*args)
      addr = @addr_get_tex_image
      proc = Procs.get_tex_image(addr)
      proc.call(*args)
    end

    # Invokes glGetTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_image(*args)
      raise FunctionUnavailableError.new("glGetTexImage") unless get_tex_image?

      get_tex_image!(*args)
    end

    # Checks if the function "glGetTexImage" is loaded.
    @[AlwaysInline]
    def get_tex_image? : Bool
      !@addr_get_tex_image.null?
    end

    # Invokes glGetTexParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_fv!(*args)
      addr = @addr_get_tex_parameter_fv
      proc = Procs.get_tex_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterfv") unless get_tex_parameter_fv?

      get_tex_parameter_fv!(*args)
    end

    # Checks if the function "glGetTexParameterfv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_fv? : Bool
      !@addr_get_tex_parameter_fv.null?
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

    # Invokes glGetTexLevelParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_level_parameter_fv!(*args)
      addr = @addr_get_tex_level_parameter_fv
      proc = Procs.get_tex_level_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexLevelParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_level_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetTexLevelParameterfv") unless get_tex_level_parameter_fv?

      get_tex_level_parameter_fv!(*args)
    end

    # Checks if the function "glGetTexLevelParameterfv" is loaded.
    @[AlwaysInline]
    def get_tex_level_parameter_fv? : Bool
      !@addr_get_tex_level_parameter_fv.null?
    end

    # Invokes glGetTexLevelParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_level_parameter_iv!(*args)
      addr = @addr_get_tex_level_parameter_iv
      proc = Procs.get_tex_level_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexLevelParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_level_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetTexLevelParameteriv") unless get_tex_level_parameter_iv?

      get_tex_level_parameter_iv!(*args)
    end

    # Checks if the function "glGetTexLevelParameteriv" is loaded.
    @[AlwaysInline]
    def get_tex_level_parameter_iv? : Bool
      !@addr_get_tex_level_parameter_iv.null?
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

    # Invokes glDepthRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range!(*args)
      addr = @addr_depth_range
      proc = Procs.depth_range(addr)
      proc.call(*args)
    end

    # Invokes glDepthRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range(*args)
      raise FunctionUnavailableError.new("glDepthRange") unless depth_range?

      depth_range!(*args)
    end

    # Checks if the function "glDepthRange" is loaded.
    @[AlwaysInline]
    def depth_range? : Bool
      !@addr_depth_range.null?
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

    # Invokes glNewList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def new_list!(*args)
      addr = @addr_new_list
      proc = Procs.new_list(addr)
      proc.call(*args)
    end

    # Invokes glNewList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def new_list(*args)
      raise FunctionUnavailableError.new("glNewList") unless new_list?

      new_list!(*args)
    end

    # Checks if the function "glNewList" is loaded.
    @[AlwaysInline]
    def new_list? : Bool
      !@addr_new_list.null?
    end

    # Invokes glEndList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_list!(*args)
      addr = @addr_end_list
      proc = Procs.end_list(addr)
      proc.call(*args)
    end

    # Invokes glEndList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_list(*args)
      raise FunctionUnavailableError.new("glEndList") unless end_list?

      end_list!(*args)
    end

    # Checks if the function "glEndList" is loaded.
    @[AlwaysInline]
    def end_list? : Bool
      !@addr_end_list.null?
    end

    # Invokes glCallList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def call_list!(*args)
      addr = @addr_call_list
      proc = Procs.call_list(addr)
      proc.call(*args)
    end

    # Invokes glCallList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def call_list(*args)
      raise FunctionUnavailableError.new("glCallList") unless call_list?

      call_list!(*args)
    end

    # Checks if the function "glCallList" is loaded.
    @[AlwaysInline]
    def call_list? : Bool
      !@addr_call_list.null?
    end

    # Invokes glCallLists.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def call_lists!(*args)
      addr = @addr_call_lists
      proc = Procs.call_lists(addr)
      proc.call(*args)
    end

    # Invokes glCallLists.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def call_lists(*args)
      raise FunctionUnavailableError.new("glCallLists") unless call_lists?

      call_lists!(*args)
    end

    # Checks if the function "glCallLists" is loaded.
    @[AlwaysInline]
    def call_lists? : Bool
      !@addr_call_lists.null?
    end

    # Invokes glDeleteLists.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_lists!(*args)
      addr = @addr_delete_lists
      proc = Procs.delete_lists(addr)
      proc.call(*args)
    end

    # Invokes glDeleteLists.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_lists(*args)
      raise FunctionUnavailableError.new("glDeleteLists") unless delete_lists?

      delete_lists!(*args)
    end

    # Checks if the function "glDeleteLists" is loaded.
    @[AlwaysInline]
    def delete_lists? : Bool
      !@addr_delete_lists.null?
    end

    # Invokes glGenLists.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_lists!(*args)
      addr = @addr_gen_lists
      proc = Procs.gen_lists(addr)
      proc.call(*args)
    end

    # Invokes glGenLists.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_lists(*args)
      raise FunctionUnavailableError.new("glGenLists") unless gen_lists?

      gen_lists!(*args)
    end

    # Checks if the function "glGenLists" is loaded.
    @[AlwaysInline]
    def gen_lists? : Bool
      !@addr_gen_lists.null?
    end

    # Invokes glListBase.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def list_base!(*args)
      addr = @addr_list_base
      proc = Procs.list_base(addr)
      proc.call(*args)
    end

    # Invokes glListBase.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def list_base(*args)
      raise FunctionUnavailableError.new("glListBase") unless list_base?

      list_base!(*args)
    end

    # Checks if the function "glListBase" is loaded.
    @[AlwaysInline]
    def list_base? : Bool
      !@addr_list_base.null?
    end

    # Invokes glBegin.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin!(*args)
      addr = @addr_begin
      proc = Procs.begin(addr)
      proc.call(*args)
    end

    # Invokes glBegin.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin(*args)
      raise FunctionUnavailableError.new("glBegin") unless begin?

      begin!(*args)
    end

    # Checks if the function "glBegin" is loaded.
    @[AlwaysInline]
    def begin? : Bool
      !@addr_begin.null?
    end

    # Invokes glBitmap.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bitmap!(*args)
      addr = @addr_bitmap
      proc = Procs.bitmap(addr)
      proc.call(*args)
    end

    # Invokes glBitmap.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bitmap(*args)
      raise FunctionUnavailableError.new("glBitmap") unless bitmap?

      bitmap!(*args)
    end

    # Checks if the function "glBitmap" is loaded.
    @[AlwaysInline]
    def bitmap? : Bool
      !@addr_bitmap.null?
    end

    # Invokes glColor3b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3b!(*args)
      addr = @addr_color_3b
      proc = Procs.color_3b(addr)
      proc.call(*args)
    end

    # Invokes glColor3b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3b(*args)
      raise FunctionUnavailableError.new("glColor3b") unless color_3b?

      color_3b!(*args)
    end

    # Checks if the function "glColor3b" is loaded.
    @[AlwaysInline]
    def color_3b? : Bool
      !@addr_color_3b.null?
    end

    # Invokes glColor3bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3bv!(*args)
      addr = @addr_color_3bv
      proc = Procs.color_3bv(addr)
      proc.call(*args)
    end

    # Invokes glColor3bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3bv(*args)
      raise FunctionUnavailableError.new("glColor3bv") unless color_3bv?

      color_3bv!(*args)
    end

    # Checks if the function "glColor3bv" is loaded.
    @[AlwaysInline]
    def color_3bv? : Bool
      !@addr_color_3bv.null?
    end

    # Invokes glColor3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3d!(*args)
      addr = @addr_color_3d
      proc = Procs.color_3d(addr)
      proc.call(*args)
    end

    # Invokes glColor3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3d(*args)
      raise FunctionUnavailableError.new("glColor3d") unless color_3d?

      color_3d!(*args)
    end

    # Checks if the function "glColor3d" is loaded.
    @[AlwaysInline]
    def color_3d? : Bool
      !@addr_color_3d.null?
    end

    # Invokes glColor3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3dv!(*args)
      addr = @addr_color_3dv
      proc = Procs.color_3dv(addr)
      proc.call(*args)
    end

    # Invokes glColor3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3dv(*args)
      raise FunctionUnavailableError.new("glColor3dv") unless color_3dv?

      color_3dv!(*args)
    end

    # Checks if the function "glColor3dv" is loaded.
    @[AlwaysInline]
    def color_3dv? : Bool
      !@addr_color_3dv.null?
    end

    # Invokes glColor3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3f!(*args)
      addr = @addr_color_3f
      proc = Procs.color_3f(addr)
      proc.call(*args)
    end

    # Invokes glColor3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3f(*args)
      raise FunctionUnavailableError.new("glColor3f") unless color_3f?

      color_3f!(*args)
    end

    # Checks if the function "glColor3f" is loaded.
    @[AlwaysInline]
    def color_3f? : Bool
      !@addr_color_3f.null?
    end

    # Invokes glColor3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3fv!(*args)
      addr = @addr_color_3fv
      proc = Procs.color_3fv(addr)
      proc.call(*args)
    end

    # Invokes glColor3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3fv(*args)
      raise FunctionUnavailableError.new("glColor3fv") unless color_3fv?

      color_3fv!(*args)
    end

    # Checks if the function "glColor3fv" is loaded.
    @[AlwaysInline]
    def color_3fv? : Bool
      !@addr_color_3fv.null?
    end

    # Invokes glColor3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3i!(*args)
      addr = @addr_color_3i
      proc = Procs.color_3i(addr)
      proc.call(*args)
    end

    # Invokes glColor3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3i(*args)
      raise FunctionUnavailableError.new("glColor3i") unless color_3i?

      color_3i!(*args)
    end

    # Checks if the function "glColor3i" is loaded.
    @[AlwaysInline]
    def color_3i? : Bool
      !@addr_color_3i.null?
    end

    # Invokes glColor3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3iv!(*args)
      addr = @addr_color_3iv
      proc = Procs.color_3iv(addr)
      proc.call(*args)
    end

    # Invokes glColor3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3iv(*args)
      raise FunctionUnavailableError.new("glColor3iv") unless color_3iv?

      color_3iv!(*args)
    end

    # Checks if the function "glColor3iv" is loaded.
    @[AlwaysInline]
    def color_3iv? : Bool
      !@addr_color_3iv.null?
    end

    # Invokes glColor3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3s!(*args)
      addr = @addr_color_3s
      proc = Procs.color_3s(addr)
      proc.call(*args)
    end

    # Invokes glColor3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3s(*args)
      raise FunctionUnavailableError.new("glColor3s") unless color_3s?

      color_3s!(*args)
    end

    # Checks if the function "glColor3s" is loaded.
    @[AlwaysInline]
    def color_3s? : Bool
      !@addr_color_3s.null?
    end

    # Invokes glColor3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3sv!(*args)
      addr = @addr_color_3sv
      proc = Procs.color_3sv(addr)
      proc.call(*args)
    end

    # Invokes glColor3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3sv(*args)
      raise FunctionUnavailableError.new("glColor3sv") unless color_3sv?

      color_3sv!(*args)
    end

    # Checks if the function "glColor3sv" is loaded.
    @[AlwaysInline]
    def color_3sv? : Bool
      !@addr_color_3sv.null?
    end

    # Invokes glColor3ub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3ub!(*args)
      addr = @addr_color_3ub
      proc = Procs.color_3ub(addr)
      proc.call(*args)
    end

    # Invokes glColor3ub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3ub(*args)
      raise FunctionUnavailableError.new("glColor3ub") unless color_3ub?

      color_3ub!(*args)
    end

    # Checks if the function "glColor3ub" is loaded.
    @[AlwaysInline]
    def color_3ub? : Bool
      !@addr_color_3ub.null?
    end

    # Invokes glColor3ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3ubv!(*args)
      addr = @addr_color_3ubv
      proc = Procs.color_3ubv(addr)
      proc.call(*args)
    end

    # Invokes glColor3ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3ubv(*args)
      raise FunctionUnavailableError.new("glColor3ubv") unless color_3ubv?

      color_3ubv!(*args)
    end

    # Checks if the function "glColor3ubv" is loaded.
    @[AlwaysInline]
    def color_3ubv? : Bool
      !@addr_color_3ubv.null?
    end

    # Invokes glColor3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3ui!(*args)
      addr = @addr_color_3ui
      proc = Procs.color_3ui(addr)
      proc.call(*args)
    end

    # Invokes glColor3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3ui(*args)
      raise FunctionUnavailableError.new("glColor3ui") unless color_3ui?

      color_3ui!(*args)
    end

    # Checks if the function "glColor3ui" is loaded.
    @[AlwaysInline]
    def color_3ui? : Bool
      !@addr_color_3ui.null?
    end

    # Invokes glColor3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3uiv!(*args)
      addr = @addr_color_3uiv
      proc = Procs.color_3uiv(addr)
      proc.call(*args)
    end

    # Invokes glColor3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3uiv(*args)
      raise FunctionUnavailableError.new("glColor3uiv") unless color_3uiv?

      color_3uiv!(*args)
    end

    # Checks if the function "glColor3uiv" is loaded.
    @[AlwaysInline]
    def color_3uiv? : Bool
      !@addr_color_3uiv.null?
    end

    # Invokes glColor3us.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3us!(*args)
      addr = @addr_color_3us
      proc = Procs.color_3us(addr)
      proc.call(*args)
    end

    # Invokes glColor3us.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3us(*args)
      raise FunctionUnavailableError.new("glColor3us") unless color_3us?

      color_3us!(*args)
    end

    # Checks if the function "glColor3us" is loaded.
    @[AlwaysInline]
    def color_3us? : Bool
      !@addr_color_3us.null?
    end

    # Invokes glColor3usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3usv!(*args)
      addr = @addr_color_3usv
      proc = Procs.color_3usv(addr)
      proc.call(*args)
    end

    # Invokes glColor3usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3usv(*args)
      raise FunctionUnavailableError.new("glColor3usv") unless color_3usv?

      color_3usv!(*args)
    end

    # Checks if the function "glColor3usv" is loaded.
    @[AlwaysInline]
    def color_3usv? : Bool
      !@addr_color_3usv.null?
    end

    # Invokes glColor4b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4b!(*args)
      addr = @addr_color_4b
      proc = Procs.color_4b(addr)
      proc.call(*args)
    end

    # Invokes glColor4b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4b(*args)
      raise FunctionUnavailableError.new("glColor4b") unless color_4b?

      color_4b!(*args)
    end

    # Checks if the function "glColor4b" is loaded.
    @[AlwaysInline]
    def color_4b? : Bool
      !@addr_color_4b.null?
    end

    # Invokes glColor4bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4bv!(*args)
      addr = @addr_color_4bv
      proc = Procs.color_4bv(addr)
      proc.call(*args)
    end

    # Invokes glColor4bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4bv(*args)
      raise FunctionUnavailableError.new("glColor4bv") unless color_4bv?

      color_4bv!(*args)
    end

    # Checks if the function "glColor4bv" is loaded.
    @[AlwaysInline]
    def color_4bv? : Bool
      !@addr_color_4bv.null?
    end

    # Invokes glColor4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4d!(*args)
      addr = @addr_color_4d
      proc = Procs.color_4d(addr)
      proc.call(*args)
    end

    # Invokes glColor4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4d(*args)
      raise FunctionUnavailableError.new("glColor4d") unless color_4d?

      color_4d!(*args)
    end

    # Checks if the function "glColor4d" is loaded.
    @[AlwaysInline]
    def color_4d? : Bool
      !@addr_color_4d.null?
    end

    # Invokes glColor4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4dv!(*args)
      addr = @addr_color_4dv
      proc = Procs.color_4dv(addr)
      proc.call(*args)
    end

    # Invokes glColor4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4dv(*args)
      raise FunctionUnavailableError.new("glColor4dv") unless color_4dv?

      color_4dv!(*args)
    end

    # Checks if the function "glColor4dv" is loaded.
    @[AlwaysInline]
    def color_4dv? : Bool
      !@addr_color_4dv.null?
    end

    # Invokes glColor4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4f!(*args)
      addr = @addr_color_4f
      proc = Procs.color_4f(addr)
      proc.call(*args)
    end

    # Invokes glColor4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4f(*args)
      raise FunctionUnavailableError.new("glColor4f") unless color_4f?

      color_4f!(*args)
    end

    # Checks if the function "glColor4f" is loaded.
    @[AlwaysInline]
    def color_4f? : Bool
      !@addr_color_4f.null?
    end

    # Invokes glColor4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4fv!(*args)
      addr = @addr_color_4fv
      proc = Procs.color_4fv(addr)
      proc.call(*args)
    end

    # Invokes glColor4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4fv(*args)
      raise FunctionUnavailableError.new("glColor4fv") unless color_4fv?

      color_4fv!(*args)
    end

    # Checks if the function "glColor4fv" is loaded.
    @[AlwaysInline]
    def color_4fv? : Bool
      !@addr_color_4fv.null?
    end

    # Invokes glColor4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4i!(*args)
      addr = @addr_color_4i
      proc = Procs.color_4i(addr)
      proc.call(*args)
    end

    # Invokes glColor4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4i(*args)
      raise FunctionUnavailableError.new("glColor4i") unless color_4i?

      color_4i!(*args)
    end

    # Checks if the function "glColor4i" is loaded.
    @[AlwaysInline]
    def color_4i? : Bool
      !@addr_color_4i.null?
    end

    # Invokes glColor4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4iv!(*args)
      addr = @addr_color_4iv
      proc = Procs.color_4iv(addr)
      proc.call(*args)
    end

    # Invokes glColor4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4iv(*args)
      raise FunctionUnavailableError.new("glColor4iv") unless color_4iv?

      color_4iv!(*args)
    end

    # Checks if the function "glColor4iv" is loaded.
    @[AlwaysInline]
    def color_4iv? : Bool
      !@addr_color_4iv.null?
    end

    # Invokes glColor4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4s!(*args)
      addr = @addr_color_4s
      proc = Procs.color_4s(addr)
      proc.call(*args)
    end

    # Invokes glColor4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4s(*args)
      raise FunctionUnavailableError.new("glColor4s") unless color_4s?

      color_4s!(*args)
    end

    # Checks if the function "glColor4s" is loaded.
    @[AlwaysInline]
    def color_4s? : Bool
      !@addr_color_4s.null?
    end

    # Invokes glColor4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4sv!(*args)
      addr = @addr_color_4sv
      proc = Procs.color_4sv(addr)
      proc.call(*args)
    end

    # Invokes glColor4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4sv(*args)
      raise FunctionUnavailableError.new("glColor4sv") unless color_4sv?

      color_4sv!(*args)
    end

    # Checks if the function "glColor4sv" is loaded.
    @[AlwaysInline]
    def color_4sv? : Bool
      !@addr_color_4sv.null?
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

    # Invokes glColor4ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4ubv!(*args)
      addr = @addr_color_4ubv
      proc = Procs.color_4ubv(addr)
      proc.call(*args)
    end

    # Invokes glColor4ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4ubv(*args)
      raise FunctionUnavailableError.new("glColor4ubv") unless color_4ubv?

      color_4ubv!(*args)
    end

    # Checks if the function "glColor4ubv" is loaded.
    @[AlwaysInline]
    def color_4ubv? : Bool
      !@addr_color_4ubv.null?
    end

    # Invokes glColor4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4ui!(*args)
      addr = @addr_color_4ui
      proc = Procs.color_4ui(addr)
      proc.call(*args)
    end

    # Invokes glColor4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4ui(*args)
      raise FunctionUnavailableError.new("glColor4ui") unless color_4ui?

      color_4ui!(*args)
    end

    # Checks if the function "glColor4ui" is loaded.
    @[AlwaysInline]
    def color_4ui? : Bool
      !@addr_color_4ui.null?
    end

    # Invokes glColor4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4uiv!(*args)
      addr = @addr_color_4uiv
      proc = Procs.color_4uiv(addr)
      proc.call(*args)
    end

    # Invokes glColor4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4uiv(*args)
      raise FunctionUnavailableError.new("glColor4uiv") unless color_4uiv?

      color_4uiv!(*args)
    end

    # Checks if the function "glColor4uiv" is loaded.
    @[AlwaysInline]
    def color_4uiv? : Bool
      !@addr_color_4uiv.null?
    end

    # Invokes glColor4us.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4us!(*args)
      addr = @addr_color_4us
      proc = Procs.color_4us(addr)
      proc.call(*args)
    end

    # Invokes glColor4us.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4us(*args)
      raise FunctionUnavailableError.new("glColor4us") unless color_4us?

      color_4us!(*args)
    end

    # Checks if the function "glColor4us" is loaded.
    @[AlwaysInline]
    def color_4us? : Bool
      !@addr_color_4us.null?
    end

    # Invokes glColor4usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4usv!(*args)
      addr = @addr_color_4usv
      proc = Procs.color_4usv(addr)
      proc.call(*args)
    end

    # Invokes glColor4usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4usv(*args)
      raise FunctionUnavailableError.new("glColor4usv") unless color_4usv?

      color_4usv!(*args)
    end

    # Checks if the function "glColor4usv" is loaded.
    @[AlwaysInline]
    def color_4usv? : Bool
      !@addr_color_4usv.null?
    end

    # Invokes glEdgeFlag.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def edge_flag!(*args)
      addr = @addr_edge_flag
      proc = Procs.edge_flag(addr)
      proc.call(*args)
    end

    # Invokes glEdgeFlag.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def edge_flag(*args)
      raise FunctionUnavailableError.new("glEdgeFlag") unless edge_flag?

      edge_flag!(*args)
    end

    # Checks if the function "glEdgeFlag" is loaded.
    @[AlwaysInline]
    def edge_flag? : Bool
      !@addr_edge_flag.null?
    end

    # Invokes glEdgeFlagv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def edge_flag_v!(*args)
      addr = @addr_edge_flag_v
      proc = Procs.edge_flag_v(addr)
      proc.call(*args)
    end

    # Invokes glEdgeFlagv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def edge_flag_v(*args)
      raise FunctionUnavailableError.new("glEdgeFlagv") unless edge_flag_v?

      edge_flag_v!(*args)
    end

    # Checks if the function "glEdgeFlagv" is loaded.
    @[AlwaysInline]
    def edge_flag_v? : Bool
      !@addr_edge_flag_v.null?
    end

    # Invokes glEnd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end!(*args)
      addr = @addr_end
      proc = Procs.end(addr)
      proc.call(*args)
    end

    # Invokes glEnd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end(*args)
      raise FunctionUnavailableError.new("glEnd") unless end?

      end!(*args)
    end

    # Checks if the function "glEnd" is loaded.
    @[AlwaysInline]
    def end? : Bool
      !@addr_end.null?
    end

    # Invokes glIndexd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_d!(*args)
      addr = @addr_index_d
      proc = Procs.index_d(addr)
      proc.call(*args)
    end

    # Invokes glIndexd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_d(*args)
      raise FunctionUnavailableError.new("glIndexd") unless index_d?

      index_d!(*args)
    end

    # Checks if the function "glIndexd" is loaded.
    @[AlwaysInline]
    def index_d? : Bool
      !@addr_index_d.null?
    end

    # Invokes glIndexdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_dv!(*args)
      addr = @addr_index_dv
      proc = Procs.index_dv(addr)
      proc.call(*args)
    end

    # Invokes glIndexdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_dv(*args)
      raise FunctionUnavailableError.new("glIndexdv") unless index_dv?

      index_dv!(*args)
    end

    # Checks if the function "glIndexdv" is loaded.
    @[AlwaysInline]
    def index_dv? : Bool
      !@addr_index_dv.null?
    end

    # Invokes glIndexf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_f!(*args)
      addr = @addr_index_f
      proc = Procs.index_f(addr)
      proc.call(*args)
    end

    # Invokes glIndexf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_f(*args)
      raise FunctionUnavailableError.new("glIndexf") unless index_f?

      index_f!(*args)
    end

    # Checks if the function "glIndexf" is loaded.
    @[AlwaysInline]
    def index_f? : Bool
      !@addr_index_f.null?
    end

    # Invokes glIndexfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_fv!(*args)
      addr = @addr_index_fv
      proc = Procs.index_fv(addr)
      proc.call(*args)
    end

    # Invokes glIndexfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_fv(*args)
      raise FunctionUnavailableError.new("glIndexfv") unless index_fv?

      index_fv!(*args)
    end

    # Checks if the function "glIndexfv" is loaded.
    @[AlwaysInline]
    def index_fv? : Bool
      !@addr_index_fv.null?
    end

    # Invokes glIndexi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_i!(*args)
      addr = @addr_index_i
      proc = Procs.index_i(addr)
      proc.call(*args)
    end

    # Invokes glIndexi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_i(*args)
      raise FunctionUnavailableError.new("glIndexi") unless index_i?

      index_i!(*args)
    end

    # Checks if the function "glIndexi" is loaded.
    @[AlwaysInline]
    def index_i? : Bool
      !@addr_index_i.null?
    end

    # Invokes glIndexiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_iv!(*args)
      addr = @addr_index_iv
      proc = Procs.index_iv(addr)
      proc.call(*args)
    end

    # Invokes glIndexiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_iv(*args)
      raise FunctionUnavailableError.new("glIndexiv") unless index_iv?

      index_iv!(*args)
    end

    # Checks if the function "glIndexiv" is loaded.
    @[AlwaysInline]
    def index_iv? : Bool
      !@addr_index_iv.null?
    end

    # Invokes glIndexs.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_s!(*args)
      addr = @addr_index_s
      proc = Procs.index_s(addr)
      proc.call(*args)
    end

    # Invokes glIndexs.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_s(*args)
      raise FunctionUnavailableError.new("glIndexs") unless index_s?

      index_s!(*args)
    end

    # Checks if the function "glIndexs" is loaded.
    @[AlwaysInline]
    def index_s? : Bool
      !@addr_index_s.null?
    end

    # Invokes glIndexsv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_sv!(*args)
      addr = @addr_index_sv
      proc = Procs.index_sv(addr)
      proc.call(*args)
    end

    # Invokes glIndexsv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_sv(*args)
      raise FunctionUnavailableError.new("glIndexsv") unless index_sv?

      index_sv!(*args)
    end

    # Checks if the function "glIndexsv" is loaded.
    @[AlwaysInline]
    def index_sv? : Bool
      !@addr_index_sv.null?
    end

    # Invokes glNormal3b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3b!(*args)
      addr = @addr_normal_3b
      proc = Procs.normal_3b(addr)
      proc.call(*args)
    end

    # Invokes glNormal3b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3b(*args)
      raise FunctionUnavailableError.new("glNormal3b") unless normal_3b?

      normal_3b!(*args)
    end

    # Checks if the function "glNormal3b" is loaded.
    @[AlwaysInline]
    def normal_3b? : Bool
      !@addr_normal_3b.null?
    end

    # Invokes glNormal3bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3bv!(*args)
      addr = @addr_normal_3bv
      proc = Procs.normal_3bv(addr)
      proc.call(*args)
    end

    # Invokes glNormal3bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3bv(*args)
      raise FunctionUnavailableError.new("glNormal3bv") unless normal_3bv?

      normal_3bv!(*args)
    end

    # Checks if the function "glNormal3bv" is loaded.
    @[AlwaysInline]
    def normal_3bv? : Bool
      !@addr_normal_3bv.null?
    end

    # Invokes glNormal3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3d!(*args)
      addr = @addr_normal_3d
      proc = Procs.normal_3d(addr)
      proc.call(*args)
    end

    # Invokes glNormal3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3d(*args)
      raise FunctionUnavailableError.new("glNormal3d") unless normal_3d?

      normal_3d!(*args)
    end

    # Checks if the function "glNormal3d" is loaded.
    @[AlwaysInline]
    def normal_3d? : Bool
      !@addr_normal_3d.null?
    end

    # Invokes glNormal3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3dv!(*args)
      addr = @addr_normal_3dv
      proc = Procs.normal_3dv(addr)
      proc.call(*args)
    end

    # Invokes glNormal3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3dv(*args)
      raise FunctionUnavailableError.new("glNormal3dv") unless normal_3dv?

      normal_3dv!(*args)
    end

    # Checks if the function "glNormal3dv" is loaded.
    @[AlwaysInline]
    def normal_3dv? : Bool
      !@addr_normal_3dv.null?
    end

    # Invokes glNormal3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3f!(*args)
      addr = @addr_normal_3f
      proc = Procs.normal_3f(addr)
      proc.call(*args)
    end

    # Invokes glNormal3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3f(*args)
      raise FunctionUnavailableError.new("glNormal3f") unless normal_3f?

      normal_3f!(*args)
    end

    # Checks if the function "glNormal3f" is loaded.
    @[AlwaysInline]
    def normal_3f? : Bool
      !@addr_normal_3f.null?
    end

    # Invokes glNormal3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3fv!(*args)
      addr = @addr_normal_3fv
      proc = Procs.normal_3fv(addr)
      proc.call(*args)
    end

    # Invokes glNormal3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3fv(*args)
      raise FunctionUnavailableError.new("glNormal3fv") unless normal_3fv?

      normal_3fv!(*args)
    end

    # Checks if the function "glNormal3fv" is loaded.
    @[AlwaysInline]
    def normal_3fv? : Bool
      !@addr_normal_3fv.null?
    end

    # Invokes glNormal3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3i!(*args)
      addr = @addr_normal_3i
      proc = Procs.normal_3i(addr)
      proc.call(*args)
    end

    # Invokes glNormal3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3i(*args)
      raise FunctionUnavailableError.new("glNormal3i") unless normal_3i?

      normal_3i!(*args)
    end

    # Checks if the function "glNormal3i" is loaded.
    @[AlwaysInline]
    def normal_3i? : Bool
      !@addr_normal_3i.null?
    end

    # Invokes glNormal3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3iv!(*args)
      addr = @addr_normal_3iv
      proc = Procs.normal_3iv(addr)
      proc.call(*args)
    end

    # Invokes glNormal3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3iv(*args)
      raise FunctionUnavailableError.new("glNormal3iv") unless normal_3iv?

      normal_3iv!(*args)
    end

    # Checks if the function "glNormal3iv" is loaded.
    @[AlwaysInline]
    def normal_3iv? : Bool
      !@addr_normal_3iv.null?
    end

    # Invokes glNormal3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3s!(*args)
      addr = @addr_normal_3s
      proc = Procs.normal_3s(addr)
      proc.call(*args)
    end

    # Invokes glNormal3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3s(*args)
      raise FunctionUnavailableError.new("glNormal3s") unless normal_3s?

      normal_3s!(*args)
    end

    # Checks if the function "glNormal3s" is loaded.
    @[AlwaysInline]
    def normal_3s? : Bool
      !@addr_normal_3s.null?
    end

    # Invokes glNormal3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3sv!(*args)
      addr = @addr_normal_3sv
      proc = Procs.normal_3sv(addr)
      proc.call(*args)
    end

    # Invokes glNormal3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3sv(*args)
      raise FunctionUnavailableError.new("glNormal3sv") unless normal_3sv?

      normal_3sv!(*args)
    end

    # Checks if the function "glNormal3sv" is loaded.
    @[AlwaysInline]
    def normal_3sv? : Bool
      !@addr_normal_3sv.null?
    end

    # Invokes glRasterPos2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2d!(*args)
      addr = @addr_raster_pos_2d
      proc = Procs.raster_pos_2d(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2d(*args)
      raise FunctionUnavailableError.new("glRasterPos2d") unless raster_pos_2d?

      raster_pos_2d!(*args)
    end

    # Checks if the function "glRasterPos2d" is loaded.
    @[AlwaysInline]
    def raster_pos_2d? : Bool
      !@addr_raster_pos_2d.null?
    end

    # Invokes glRasterPos2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2dv!(*args)
      addr = @addr_raster_pos_2dv
      proc = Procs.raster_pos_2dv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2dv(*args)
      raise FunctionUnavailableError.new("glRasterPos2dv") unless raster_pos_2dv?

      raster_pos_2dv!(*args)
    end

    # Checks if the function "glRasterPos2dv" is loaded.
    @[AlwaysInline]
    def raster_pos_2dv? : Bool
      !@addr_raster_pos_2dv.null?
    end

    # Invokes glRasterPos2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2f!(*args)
      addr = @addr_raster_pos_2f
      proc = Procs.raster_pos_2f(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2f(*args)
      raise FunctionUnavailableError.new("glRasterPos2f") unless raster_pos_2f?

      raster_pos_2f!(*args)
    end

    # Checks if the function "glRasterPos2f" is loaded.
    @[AlwaysInline]
    def raster_pos_2f? : Bool
      !@addr_raster_pos_2f.null?
    end

    # Invokes glRasterPos2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2fv!(*args)
      addr = @addr_raster_pos_2fv
      proc = Procs.raster_pos_2fv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2fv(*args)
      raise FunctionUnavailableError.new("glRasterPos2fv") unless raster_pos_2fv?

      raster_pos_2fv!(*args)
    end

    # Checks if the function "glRasterPos2fv" is loaded.
    @[AlwaysInline]
    def raster_pos_2fv? : Bool
      !@addr_raster_pos_2fv.null?
    end

    # Invokes glRasterPos2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2i!(*args)
      addr = @addr_raster_pos_2i
      proc = Procs.raster_pos_2i(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2i(*args)
      raise FunctionUnavailableError.new("glRasterPos2i") unless raster_pos_2i?

      raster_pos_2i!(*args)
    end

    # Checks if the function "glRasterPos2i" is loaded.
    @[AlwaysInline]
    def raster_pos_2i? : Bool
      !@addr_raster_pos_2i.null?
    end

    # Invokes glRasterPos2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2iv!(*args)
      addr = @addr_raster_pos_2iv
      proc = Procs.raster_pos_2iv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2iv(*args)
      raise FunctionUnavailableError.new("glRasterPos2iv") unless raster_pos_2iv?

      raster_pos_2iv!(*args)
    end

    # Checks if the function "glRasterPos2iv" is loaded.
    @[AlwaysInline]
    def raster_pos_2iv? : Bool
      !@addr_raster_pos_2iv.null?
    end

    # Invokes glRasterPos2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2s!(*args)
      addr = @addr_raster_pos_2s
      proc = Procs.raster_pos_2s(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2s(*args)
      raise FunctionUnavailableError.new("glRasterPos2s") unless raster_pos_2s?

      raster_pos_2s!(*args)
    end

    # Checks if the function "glRasterPos2s" is loaded.
    @[AlwaysInline]
    def raster_pos_2s? : Bool
      !@addr_raster_pos_2s.null?
    end

    # Invokes glRasterPos2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2sv!(*args)
      addr = @addr_raster_pos_2sv
      proc = Procs.raster_pos_2sv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2sv(*args)
      raise FunctionUnavailableError.new("glRasterPos2sv") unless raster_pos_2sv?

      raster_pos_2sv!(*args)
    end

    # Checks if the function "glRasterPos2sv" is loaded.
    @[AlwaysInline]
    def raster_pos_2sv? : Bool
      !@addr_raster_pos_2sv.null?
    end

    # Invokes glRasterPos3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3d!(*args)
      addr = @addr_raster_pos_3d
      proc = Procs.raster_pos_3d(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3d(*args)
      raise FunctionUnavailableError.new("glRasterPos3d") unless raster_pos_3d?

      raster_pos_3d!(*args)
    end

    # Checks if the function "glRasterPos3d" is loaded.
    @[AlwaysInline]
    def raster_pos_3d? : Bool
      !@addr_raster_pos_3d.null?
    end

    # Invokes glRasterPos3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3dv!(*args)
      addr = @addr_raster_pos_3dv
      proc = Procs.raster_pos_3dv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3dv(*args)
      raise FunctionUnavailableError.new("glRasterPos3dv") unless raster_pos_3dv?

      raster_pos_3dv!(*args)
    end

    # Checks if the function "glRasterPos3dv" is loaded.
    @[AlwaysInline]
    def raster_pos_3dv? : Bool
      !@addr_raster_pos_3dv.null?
    end

    # Invokes glRasterPos3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3f!(*args)
      addr = @addr_raster_pos_3f
      proc = Procs.raster_pos_3f(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3f(*args)
      raise FunctionUnavailableError.new("glRasterPos3f") unless raster_pos_3f?

      raster_pos_3f!(*args)
    end

    # Checks if the function "glRasterPos3f" is loaded.
    @[AlwaysInline]
    def raster_pos_3f? : Bool
      !@addr_raster_pos_3f.null?
    end

    # Invokes glRasterPos3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3fv!(*args)
      addr = @addr_raster_pos_3fv
      proc = Procs.raster_pos_3fv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3fv(*args)
      raise FunctionUnavailableError.new("glRasterPos3fv") unless raster_pos_3fv?

      raster_pos_3fv!(*args)
    end

    # Checks if the function "glRasterPos3fv" is loaded.
    @[AlwaysInline]
    def raster_pos_3fv? : Bool
      !@addr_raster_pos_3fv.null?
    end

    # Invokes glRasterPos3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3i!(*args)
      addr = @addr_raster_pos_3i
      proc = Procs.raster_pos_3i(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3i(*args)
      raise FunctionUnavailableError.new("glRasterPos3i") unless raster_pos_3i?

      raster_pos_3i!(*args)
    end

    # Checks if the function "glRasterPos3i" is loaded.
    @[AlwaysInline]
    def raster_pos_3i? : Bool
      !@addr_raster_pos_3i.null?
    end

    # Invokes glRasterPos3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3iv!(*args)
      addr = @addr_raster_pos_3iv
      proc = Procs.raster_pos_3iv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3iv(*args)
      raise FunctionUnavailableError.new("glRasterPos3iv") unless raster_pos_3iv?

      raster_pos_3iv!(*args)
    end

    # Checks if the function "glRasterPos3iv" is loaded.
    @[AlwaysInline]
    def raster_pos_3iv? : Bool
      !@addr_raster_pos_3iv.null?
    end

    # Invokes glRasterPos3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3s!(*args)
      addr = @addr_raster_pos_3s
      proc = Procs.raster_pos_3s(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3s(*args)
      raise FunctionUnavailableError.new("glRasterPos3s") unless raster_pos_3s?

      raster_pos_3s!(*args)
    end

    # Checks if the function "glRasterPos3s" is loaded.
    @[AlwaysInline]
    def raster_pos_3s? : Bool
      !@addr_raster_pos_3s.null?
    end

    # Invokes glRasterPos3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3sv!(*args)
      addr = @addr_raster_pos_3sv
      proc = Procs.raster_pos_3sv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3sv(*args)
      raise FunctionUnavailableError.new("glRasterPos3sv") unless raster_pos_3sv?

      raster_pos_3sv!(*args)
    end

    # Checks if the function "glRasterPos3sv" is loaded.
    @[AlwaysInline]
    def raster_pos_3sv? : Bool
      !@addr_raster_pos_3sv.null?
    end

    # Invokes glRasterPos4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4d!(*args)
      addr = @addr_raster_pos_4d
      proc = Procs.raster_pos_4d(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4d(*args)
      raise FunctionUnavailableError.new("glRasterPos4d") unless raster_pos_4d?

      raster_pos_4d!(*args)
    end

    # Checks if the function "glRasterPos4d" is loaded.
    @[AlwaysInline]
    def raster_pos_4d? : Bool
      !@addr_raster_pos_4d.null?
    end

    # Invokes glRasterPos4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4dv!(*args)
      addr = @addr_raster_pos_4dv
      proc = Procs.raster_pos_4dv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4dv(*args)
      raise FunctionUnavailableError.new("glRasterPos4dv") unless raster_pos_4dv?

      raster_pos_4dv!(*args)
    end

    # Checks if the function "glRasterPos4dv" is loaded.
    @[AlwaysInline]
    def raster_pos_4dv? : Bool
      !@addr_raster_pos_4dv.null?
    end

    # Invokes glRasterPos4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4f!(*args)
      addr = @addr_raster_pos_4f
      proc = Procs.raster_pos_4f(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4f(*args)
      raise FunctionUnavailableError.new("glRasterPos4f") unless raster_pos_4f?

      raster_pos_4f!(*args)
    end

    # Checks if the function "glRasterPos4f" is loaded.
    @[AlwaysInline]
    def raster_pos_4f? : Bool
      !@addr_raster_pos_4f.null?
    end

    # Invokes glRasterPos4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4fv!(*args)
      addr = @addr_raster_pos_4fv
      proc = Procs.raster_pos_4fv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4fv(*args)
      raise FunctionUnavailableError.new("glRasterPos4fv") unless raster_pos_4fv?

      raster_pos_4fv!(*args)
    end

    # Checks if the function "glRasterPos4fv" is loaded.
    @[AlwaysInline]
    def raster_pos_4fv? : Bool
      !@addr_raster_pos_4fv.null?
    end

    # Invokes glRasterPos4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4i!(*args)
      addr = @addr_raster_pos_4i
      proc = Procs.raster_pos_4i(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4i(*args)
      raise FunctionUnavailableError.new("glRasterPos4i") unless raster_pos_4i?

      raster_pos_4i!(*args)
    end

    # Checks if the function "glRasterPos4i" is loaded.
    @[AlwaysInline]
    def raster_pos_4i? : Bool
      !@addr_raster_pos_4i.null?
    end

    # Invokes glRasterPos4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4iv!(*args)
      addr = @addr_raster_pos_4iv
      proc = Procs.raster_pos_4iv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4iv(*args)
      raise FunctionUnavailableError.new("glRasterPos4iv") unless raster_pos_4iv?

      raster_pos_4iv!(*args)
    end

    # Checks if the function "glRasterPos4iv" is loaded.
    @[AlwaysInline]
    def raster_pos_4iv? : Bool
      !@addr_raster_pos_4iv.null?
    end

    # Invokes glRasterPos4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4s!(*args)
      addr = @addr_raster_pos_4s
      proc = Procs.raster_pos_4s(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4s(*args)
      raise FunctionUnavailableError.new("glRasterPos4s") unless raster_pos_4s?

      raster_pos_4s!(*args)
    end

    # Checks if the function "glRasterPos4s" is loaded.
    @[AlwaysInline]
    def raster_pos_4s? : Bool
      !@addr_raster_pos_4s.null?
    end

    # Invokes glRasterPos4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4sv!(*args)
      addr = @addr_raster_pos_4sv
      proc = Procs.raster_pos_4sv(addr)
      proc.call(*args)
    end

    # Invokes glRasterPos4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4sv(*args)
      raise FunctionUnavailableError.new("glRasterPos4sv") unless raster_pos_4sv?

      raster_pos_4sv!(*args)
    end

    # Checks if the function "glRasterPos4sv" is loaded.
    @[AlwaysInline]
    def raster_pos_4sv? : Bool
      !@addr_raster_pos_4sv.null?
    end

    # Invokes glRectd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_d!(*args)
      addr = @addr_rect_d
      proc = Procs.rect_d(addr)
      proc.call(*args)
    end

    # Invokes glRectd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_d(*args)
      raise FunctionUnavailableError.new("glRectd") unless rect_d?

      rect_d!(*args)
    end

    # Checks if the function "glRectd" is loaded.
    @[AlwaysInline]
    def rect_d? : Bool
      !@addr_rect_d.null?
    end

    # Invokes glRectdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_dv!(*args)
      addr = @addr_rect_dv
      proc = Procs.rect_dv(addr)
      proc.call(*args)
    end

    # Invokes glRectdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_dv(*args)
      raise FunctionUnavailableError.new("glRectdv") unless rect_dv?

      rect_dv!(*args)
    end

    # Checks if the function "glRectdv" is loaded.
    @[AlwaysInline]
    def rect_dv? : Bool
      !@addr_rect_dv.null?
    end

    # Invokes glRectf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_f!(*args)
      addr = @addr_rect_f
      proc = Procs.rect_f(addr)
      proc.call(*args)
    end

    # Invokes glRectf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_f(*args)
      raise FunctionUnavailableError.new("glRectf") unless rect_f?

      rect_f!(*args)
    end

    # Checks if the function "glRectf" is loaded.
    @[AlwaysInline]
    def rect_f? : Bool
      !@addr_rect_f.null?
    end

    # Invokes glRectfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_fv!(*args)
      addr = @addr_rect_fv
      proc = Procs.rect_fv(addr)
      proc.call(*args)
    end

    # Invokes glRectfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_fv(*args)
      raise FunctionUnavailableError.new("glRectfv") unless rect_fv?

      rect_fv!(*args)
    end

    # Checks if the function "glRectfv" is loaded.
    @[AlwaysInline]
    def rect_fv? : Bool
      !@addr_rect_fv.null?
    end

    # Invokes glRecti.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_i!(*args)
      addr = @addr_rect_i
      proc = Procs.rect_i(addr)
      proc.call(*args)
    end

    # Invokes glRecti.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_i(*args)
      raise FunctionUnavailableError.new("glRecti") unless rect_i?

      rect_i!(*args)
    end

    # Checks if the function "glRecti" is loaded.
    @[AlwaysInline]
    def rect_i? : Bool
      !@addr_rect_i.null?
    end

    # Invokes glRectiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_iv!(*args)
      addr = @addr_rect_iv
      proc = Procs.rect_iv(addr)
      proc.call(*args)
    end

    # Invokes glRectiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_iv(*args)
      raise FunctionUnavailableError.new("glRectiv") unless rect_iv?

      rect_iv!(*args)
    end

    # Checks if the function "glRectiv" is loaded.
    @[AlwaysInline]
    def rect_iv? : Bool
      !@addr_rect_iv.null?
    end

    # Invokes glRects.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_s!(*args)
      addr = @addr_rect_s
      proc = Procs.rect_s(addr)
      proc.call(*args)
    end

    # Invokes glRects.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_s(*args)
      raise FunctionUnavailableError.new("glRects") unless rect_s?

      rect_s!(*args)
    end

    # Checks if the function "glRects" is loaded.
    @[AlwaysInline]
    def rect_s? : Bool
      !@addr_rect_s.null?
    end

    # Invokes glRectsv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_sv!(*args)
      addr = @addr_rect_sv
      proc = Procs.rect_sv(addr)
      proc.call(*args)
    end

    # Invokes glRectsv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_sv(*args)
      raise FunctionUnavailableError.new("glRectsv") unless rect_sv?

      rect_sv!(*args)
    end

    # Checks if the function "glRectsv" is loaded.
    @[AlwaysInline]
    def rect_sv? : Bool
      !@addr_rect_sv.null?
    end

    # Invokes glTexCoord1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1d!(*args)
      addr = @addr_tex_coord_1d
      proc = Procs.tex_coord_1d(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1d(*args)
      raise FunctionUnavailableError.new("glTexCoord1d") unless tex_coord_1d?

      tex_coord_1d!(*args)
    end

    # Checks if the function "glTexCoord1d" is loaded.
    @[AlwaysInline]
    def tex_coord_1d? : Bool
      !@addr_tex_coord_1d.null?
    end

    # Invokes glTexCoord1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1dv!(*args)
      addr = @addr_tex_coord_1dv
      proc = Procs.tex_coord_1dv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1dv(*args)
      raise FunctionUnavailableError.new("glTexCoord1dv") unless tex_coord_1dv?

      tex_coord_1dv!(*args)
    end

    # Checks if the function "glTexCoord1dv" is loaded.
    @[AlwaysInline]
    def tex_coord_1dv? : Bool
      !@addr_tex_coord_1dv.null?
    end

    # Invokes glTexCoord1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1f!(*args)
      addr = @addr_tex_coord_1f
      proc = Procs.tex_coord_1f(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1f(*args)
      raise FunctionUnavailableError.new("glTexCoord1f") unless tex_coord_1f?

      tex_coord_1f!(*args)
    end

    # Checks if the function "glTexCoord1f" is loaded.
    @[AlwaysInline]
    def tex_coord_1f? : Bool
      !@addr_tex_coord_1f.null?
    end

    # Invokes glTexCoord1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1fv!(*args)
      addr = @addr_tex_coord_1fv
      proc = Procs.tex_coord_1fv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1fv(*args)
      raise FunctionUnavailableError.new("glTexCoord1fv") unless tex_coord_1fv?

      tex_coord_1fv!(*args)
    end

    # Checks if the function "glTexCoord1fv" is loaded.
    @[AlwaysInline]
    def tex_coord_1fv? : Bool
      !@addr_tex_coord_1fv.null?
    end

    # Invokes glTexCoord1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1i!(*args)
      addr = @addr_tex_coord_1i
      proc = Procs.tex_coord_1i(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1i(*args)
      raise FunctionUnavailableError.new("glTexCoord1i") unless tex_coord_1i?

      tex_coord_1i!(*args)
    end

    # Checks if the function "glTexCoord1i" is loaded.
    @[AlwaysInline]
    def tex_coord_1i? : Bool
      !@addr_tex_coord_1i.null?
    end

    # Invokes glTexCoord1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1iv!(*args)
      addr = @addr_tex_coord_1iv
      proc = Procs.tex_coord_1iv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1iv(*args)
      raise FunctionUnavailableError.new("glTexCoord1iv") unless tex_coord_1iv?

      tex_coord_1iv!(*args)
    end

    # Checks if the function "glTexCoord1iv" is loaded.
    @[AlwaysInline]
    def tex_coord_1iv? : Bool
      !@addr_tex_coord_1iv.null?
    end

    # Invokes glTexCoord1s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1s!(*args)
      addr = @addr_tex_coord_1s
      proc = Procs.tex_coord_1s(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1s(*args)
      raise FunctionUnavailableError.new("glTexCoord1s") unless tex_coord_1s?

      tex_coord_1s!(*args)
    end

    # Checks if the function "glTexCoord1s" is loaded.
    @[AlwaysInline]
    def tex_coord_1s? : Bool
      !@addr_tex_coord_1s.null?
    end

    # Invokes glTexCoord1sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1sv!(*args)
      addr = @addr_tex_coord_1sv
      proc = Procs.tex_coord_1sv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord1sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1sv(*args)
      raise FunctionUnavailableError.new("glTexCoord1sv") unless tex_coord_1sv?

      tex_coord_1sv!(*args)
    end

    # Checks if the function "glTexCoord1sv" is loaded.
    @[AlwaysInline]
    def tex_coord_1sv? : Bool
      !@addr_tex_coord_1sv.null?
    end

    # Invokes glTexCoord2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2d!(*args)
      addr = @addr_tex_coord_2d
      proc = Procs.tex_coord_2d(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2d(*args)
      raise FunctionUnavailableError.new("glTexCoord2d") unless tex_coord_2d?

      tex_coord_2d!(*args)
    end

    # Checks if the function "glTexCoord2d" is loaded.
    @[AlwaysInline]
    def tex_coord_2d? : Bool
      !@addr_tex_coord_2d.null?
    end

    # Invokes glTexCoord2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2dv!(*args)
      addr = @addr_tex_coord_2dv
      proc = Procs.tex_coord_2dv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2dv(*args)
      raise FunctionUnavailableError.new("glTexCoord2dv") unless tex_coord_2dv?

      tex_coord_2dv!(*args)
    end

    # Checks if the function "glTexCoord2dv" is loaded.
    @[AlwaysInline]
    def tex_coord_2dv? : Bool
      !@addr_tex_coord_2dv.null?
    end

    # Invokes glTexCoord2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2f!(*args)
      addr = @addr_tex_coord_2f
      proc = Procs.tex_coord_2f(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2f(*args)
      raise FunctionUnavailableError.new("glTexCoord2f") unless tex_coord_2f?

      tex_coord_2f!(*args)
    end

    # Checks if the function "glTexCoord2f" is loaded.
    @[AlwaysInline]
    def tex_coord_2f? : Bool
      !@addr_tex_coord_2f.null?
    end

    # Invokes glTexCoord2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2fv!(*args)
      addr = @addr_tex_coord_2fv
      proc = Procs.tex_coord_2fv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2fv(*args)
      raise FunctionUnavailableError.new("glTexCoord2fv") unless tex_coord_2fv?

      tex_coord_2fv!(*args)
    end

    # Checks if the function "glTexCoord2fv" is loaded.
    @[AlwaysInline]
    def tex_coord_2fv? : Bool
      !@addr_tex_coord_2fv.null?
    end

    # Invokes glTexCoord2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2i!(*args)
      addr = @addr_tex_coord_2i
      proc = Procs.tex_coord_2i(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2i(*args)
      raise FunctionUnavailableError.new("glTexCoord2i") unless tex_coord_2i?

      tex_coord_2i!(*args)
    end

    # Checks if the function "glTexCoord2i" is loaded.
    @[AlwaysInline]
    def tex_coord_2i? : Bool
      !@addr_tex_coord_2i.null?
    end

    # Invokes glTexCoord2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2iv!(*args)
      addr = @addr_tex_coord_2iv
      proc = Procs.tex_coord_2iv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2iv(*args)
      raise FunctionUnavailableError.new("glTexCoord2iv") unless tex_coord_2iv?

      tex_coord_2iv!(*args)
    end

    # Checks if the function "glTexCoord2iv" is loaded.
    @[AlwaysInline]
    def tex_coord_2iv? : Bool
      !@addr_tex_coord_2iv.null?
    end

    # Invokes glTexCoord2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2s!(*args)
      addr = @addr_tex_coord_2s
      proc = Procs.tex_coord_2s(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2s(*args)
      raise FunctionUnavailableError.new("glTexCoord2s") unless tex_coord_2s?

      tex_coord_2s!(*args)
    end

    # Checks if the function "glTexCoord2s" is loaded.
    @[AlwaysInline]
    def tex_coord_2s? : Bool
      !@addr_tex_coord_2s.null?
    end

    # Invokes glTexCoord2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2sv!(*args)
      addr = @addr_tex_coord_2sv
      proc = Procs.tex_coord_2sv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2sv(*args)
      raise FunctionUnavailableError.new("glTexCoord2sv") unless tex_coord_2sv?

      tex_coord_2sv!(*args)
    end

    # Checks if the function "glTexCoord2sv" is loaded.
    @[AlwaysInline]
    def tex_coord_2sv? : Bool
      !@addr_tex_coord_2sv.null?
    end

    # Invokes glTexCoord3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3d!(*args)
      addr = @addr_tex_coord_3d
      proc = Procs.tex_coord_3d(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3d(*args)
      raise FunctionUnavailableError.new("glTexCoord3d") unless tex_coord_3d?

      tex_coord_3d!(*args)
    end

    # Checks if the function "glTexCoord3d" is loaded.
    @[AlwaysInline]
    def tex_coord_3d? : Bool
      !@addr_tex_coord_3d.null?
    end

    # Invokes glTexCoord3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3dv!(*args)
      addr = @addr_tex_coord_3dv
      proc = Procs.tex_coord_3dv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3dv(*args)
      raise FunctionUnavailableError.new("glTexCoord3dv") unless tex_coord_3dv?

      tex_coord_3dv!(*args)
    end

    # Checks if the function "glTexCoord3dv" is loaded.
    @[AlwaysInline]
    def tex_coord_3dv? : Bool
      !@addr_tex_coord_3dv.null?
    end

    # Invokes glTexCoord3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3f!(*args)
      addr = @addr_tex_coord_3f
      proc = Procs.tex_coord_3f(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3f(*args)
      raise FunctionUnavailableError.new("glTexCoord3f") unless tex_coord_3f?

      tex_coord_3f!(*args)
    end

    # Checks if the function "glTexCoord3f" is loaded.
    @[AlwaysInline]
    def tex_coord_3f? : Bool
      !@addr_tex_coord_3f.null?
    end

    # Invokes glTexCoord3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3fv!(*args)
      addr = @addr_tex_coord_3fv
      proc = Procs.tex_coord_3fv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3fv(*args)
      raise FunctionUnavailableError.new("glTexCoord3fv") unless tex_coord_3fv?

      tex_coord_3fv!(*args)
    end

    # Checks if the function "glTexCoord3fv" is loaded.
    @[AlwaysInline]
    def tex_coord_3fv? : Bool
      !@addr_tex_coord_3fv.null?
    end

    # Invokes glTexCoord3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3i!(*args)
      addr = @addr_tex_coord_3i
      proc = Procs.tex_coord_3i(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3i(*args)
      raise FunctionUnavailableError.new("glTexCoord3i") unless tex_coord_3i?

      tex_coord_3i!(*args)
    end

    # Checks if the function "glTexCoord3i" is loaded.
    @[AlwaysInline]
    def tex_coord_3i? : Bool
      !@addr_tex_coord_3i.null?
    end

    # Invokes glTexCoord3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3iv!(*args)
      addr = @addr_tex_coord_3iv
      proc = Procs.tex_coord_3iv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3iv(*args)
      raise FunctionUnavailableError.new("glTexCoord3iv") unless tex_coord_3iv?

      tex_coord_3iv!(*args)
    end

    # Checks if the function "glTexCoord3iv" is loaded.
    @[AlwaysInline]
    def tex_coord_3iv? : Bool
      !@addr_tex_coord_3iv.null?
    end

    # Invokes glTexCoord3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3s!(*args)
      addr = @addr_tex_coord_3s
      proc = Procs.tex_coord_3s(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3s(*args)
      raise FunctionUnavailableError.new("glTexCoord3s") unless tex_coord_3s?

      tex_coord_3s!(*args)
    end

    # Checks if the function "glTexCoord3s" is loaded.
    @[AlwaysInline]
    def tex_coord_3s? : Bool
      !@addr_tex_coord_3s.null?
    end

    # Invokes glTexCoord3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3sv!(*args)
      addr = @addr_tex_coord_3sv
      proc = Procs.tex_coord_3sv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3sv(*args)
      raise FunctionUnavailableError.new("glTexCoord3sv") unless tex_coord_3sv?

      tex_coord_3sv!(*args)
    end

    # Checks if the function "glTexCoord3sv" is loaded.
    @[AlwaysInline]
    def tex_coord_3sv? : Bool
      !@addr_tex_coord_3sv.null?
    end

    # Invokes glTexCoord4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4d!(*args)
      addr = @addr_tex_coord_4d
      proc = Procs.tex_coord_4d(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4d(*args)
      raise FunctionUnavailableError.new("glTexCoord4d") unless tex_coord_4d?

      tex_coord_4d!(*args)
    end

    # Checks if the function "glTexCoord4d" is loaded.
    @[AlwaysInline]
    def tex_coord_4d? : Bool
      !@addr_tex_coord_4d.null?
    end

    # Invokes glTexCoord4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4dv!(*args)
      addr = @addr_tex_coord_4dv
      proc = Procs.tex_coord_4dv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4dv(*args)
      raise FunctionUnavailableError.new("glTexCoord4dv") unless tex_coord_4dv?

      tex_coord_4dv!(*args)
    end

    # Checks if the function "glTexCoord4dv" is loaded.
    @[AlwaysInline]
    def tex_coord_4dv? : Bool
      !@addr_tex_coord_4dv.null?
    end

    # Invokes glTexCoord4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4f!(*args)
      addr = @addr_tex_coord_4f
      proc = Procs.tex_coord_4f(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4f(*args)
      raise FunctionUnavailableError.new("glTexCoord4f") unless tex_coord_4f?

      tex_coord_4f!(*args)
    end

    # Checks if the function "glTexCoord4f" is loaded.
    @[AlwaysInline]
    def tex_coord_4f? : Bool
      !@addr_tex_coord_4f.null?
    end

    # Invokes glTexCoord4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4fv!(*args)
      addr = @addr_tex_coord_4fv
      proc = Procs.tex_coord_4fv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4fv(*args)
      raise FunctionUnavailableError.new("glTexCoord4fv") unless tex_coord_4fv?

      tex_coord_4fv!(*args)
    end

    # Checks if the function "glTexCoord4fv" is loaded.
    @[AlwaysInline]
    def tex_coord_4fv? : Bool
      !@addr_tex_coord_4fv.null?
    end

    # Invokes glTexCoord4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4i!(*args)
      addr = @addr_tex_coord_4i
      proc = Procs.tex_coord_4i(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4i(*args)
      raise FunctionUnavailableError.new("glTexCoord4i") unless tex_coord_4i?

      tex_coord_4i!(*args)
    end

    # Checks if the function "glTexCoord4i" is loaded.
    @[AlwaysInline]
    def tex_coord_4i? : Bool
      !@addr_tex_coord_4i.null?
    end

    # Invokes glTexCoord4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4iv!(*args)
      addr = @addr_tex_coord_4iv
      proc = Procs.tex_coord_4iv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4iv(*args)
      raise FunctionUnavailableError.new("glTexCoord4iv") unless tex_coord_4iv?

      tex_coord_4iv!(*args)
    end

    # Checks if the function "glTexCoord4iv" is loaded.
    @[AlwaysInline]
    def tex_coord_4iv? : Bool
      !@addr_tex_coord_4iv.null?
    end

    # Invokes glTexCoord4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4s!(*args)
      addr = @addr_tex_coord_4s
      proc = Procs.tex_coord_4s(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4s(*args)
      raise FunctionUnavailableError.new("glTexCoord4s") unless tex_coord_4s?

      tex_coord_4s!(*args)
    end

    # Checks if the function "glTexCoord4s" is loaded.
    @[AlwaysInline]
    def tex_coord_4s? : Bool
      !@addr_tex_coord_4s.null?
    end

    # Invokes glTexCoord4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4sv!(*args)
      addr = @addr_tex_coord_4sv
      proc = Procs.tex_coord_4sv(addr)
      proc.call(*args)
    end

    # Invokes glTexCoord4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4sv(*args)
      raise FunctionUnavailableError.new("glTexCoord4sv") unless tex_coord_4sv?

      tex_coord_4sv!(*args)
    end

    # Checks if the function "glTexCoord4sv" is loaded.
    @[AlwaysInline]
    def tex_coord_4sv? : Bool
      !@addr_tex_coord_4sv.null?
    end

    # Invokes glVertex2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2d!(*args)
      addr = @addr_vertex_2d
      proc = Procs.vertex_2d(addr)
      proc.call(*args)
    end

    # Invokes glVertex2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2d(*args)
      raise FunctionUnavailableError.new("glVertex2d") unless vertex_2d?

      vertex_2d!(*args)
    end

    # Checks if the function "glVertex2d" is loaded.
    @[AlwaysInline]
    def vertex_2d? : Bool
      !@addr_vertex_2d.null?
    end

    # Invokes glVertex2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2dv!(*args)
      addr = @addr_vertex_2dv
      proc = Procs.vertex_2dv(addr)
      proc.call(*args)
    end

    # Invokes glVertex2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2dv(*args)
      raise FunctionUnavailableError.new("glVertex2dv") unless vertex_2dv?

      vertex_2dv!(*args)
    end

    # Checks if the function "glVertex2dv" is loaded.
    @[AlwaysInline]
    def vertex_2dv? : Bool
      !@addr_vertex_2dv.null?
    end

    # Invokes glVertex2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2f!(*args)
      addr = @addr_vertex_2f
      proc = Procs.vertex_2f(addr)
      proc.call(*args)
    end

    # Invokes glVertex2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2f(*args)
      raise FunctionUnavailableError.new("glVertex2f") unless vertex_2f?

      vertex_2f!(*args)
    end

    # Checks if the function "glVertex2f" is loaded.
    @[AlwaysInline]
    def vertex_2f? : Bool
      !@addr_vertex_2f.null?
    end

    # Invokes glVertex2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2fv!(*args)
      addr = @addr_vertex_2fv
      proc = Procs.vertex_2fv(addr)
      proc.call(*args)
    end

    # Invokes glVertex2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2fv(*args)
      raise FunctionUnavailableError.new("glVertex2fv") unless vertex_2fv?

      vertex_2fv!(*args)
    end

    # Checks if the function "glVertex2fv" is loaded.
    @[AlwaysInline]
    def vertex_2fv? : Bool
      !@addr_vertex_2fv.null?
    end

    # Invokes glVertex2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2i!(*args)
      addr = @addr_vertex_2i
      proc = Procs.vertex_2i(addr)
      proc.call(*args)
    end

    # Invokes glVertex2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2i(*args)
      raise FunctionUnavailableError.new("glVertex2i") unless vertex_2i?

      vertex_2i!(*args)
    end

    # Checks if the function "glVertex2i" is loaded.
    @[AlwaysInline]
    def vertex_2i? : Bool
      !@addr_vertex_2i.null?
    end

    # Invokes glVertex2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2iv!(*args)
      addr = @addr_vertex_2iv
      proc = Procs.vertex_2iv(addr)
      proc.call(*args)
    end

    # Invokes glVertex2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2iv(*args)
      raise FunctionUnavailableError.new("glVertex2iv") unless vertex_2iv?

      vertex_2iv!(*args)
    end

    # Checks if the function "glVertex2iv" is loaded.
    @[AlwaysInline]
    def vertex_2iv? : Bool
      !@addr_vertex_2iv.null?
    end

    # Invokes glVertex2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2s!(*args)
      addr = @addr_vertex_2s
      proc = Procs.vertex_2s(addr)
      proc.call(*args)
    end

    # Invokes glVertex2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2s(*args)
      raise FunctionUnavailableError.new("glVertex2s") unless vertex_2s?

      vertex_2s!(*args)
    end

    # Checks if the function "glVertex2s" is loaded.
    @[AlwaysInline]
    def vertex_2s? : Bool
      !@addr_vertex_2s.null?
    end

    # Invokes glVertex2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2sv!(*args)
      addr = @addr_vertex_2sv
      proc = Procs.vertex_2sv(addr)
      proc.call(*args)
    end

    # Invokes glVertex2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2sv(*args)
      raise FunctionUnavailableError.new("glVertex2sv") unless vertex_2sv?

      vertex_2sv!(*args)
    end

    # Checks if the function "glVertex2sv" is loaded.
    @[AlwaysInline]
    def vertex_2sv? : Bool
      !@addr_vertex_2sv.null?
    end

    # Invokes glVertex3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3d!(*args)
      addr = @addr_vertex_3d
      proc = Procs.vertex_3d(addr)
      proc.call(*args)
    end

    # Invokes glVertex3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3d(*args)
      raise FunctionUnavailableError.new("glVertex3d") unless vertex_3d?

      vertex_3d!(*args)
    end

    # Checks if the function "glVertex3d" is loaded.
    @[AlwaysInline]
    def vertex_3d? : Bool
      !@addr_vertex_3d.null?
    end

    # Invokes glVertex3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3dv!(*args)
      addr = @addr_vertex_3dv
      proc = Procs.vertex_3dv(addr)
      proc.call(*args)
    end

    # Invokes glVertex3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3dv(*args)
      raise FunctionUnavailableError.new("glVertex3dv") unless vertex_3dv?

      vertex_3dv!(*args)
    end

    # Checks if the function "glVertex3dv" is loaded.
    @[AlwaysInline]
    def vertex_3dv? : Bool
      !@addr_vertex_3dv.null?
    end

    # Invokes glVertex3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3f!(*args)
      addr = @addr_vertex_3f
      proc = Procs.vertex_3f(addr)
      proc.call(*args)
    end

    # Invokes glVertex3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3f(*args)
      raise FunctionUnavailableError.new("glVertex3f") unless vertex_3f?

      vertex_3f!(*args)
    end

    # Checks if the function "glVertex3f" is loaded.
    @[AlwaysInline]
    def vertex_3f? : Bool
      !@addr_vertex_3f.null?
    end

    # Invokes glVertex3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3fv!(*args)
      addr = @addr_vertex_3fv
      proc = Procs.vertex_3fv(addr)
      proc.call(*args)
    end

    # Invokes glVertex3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3fv(*args)
      raise FunctionUnavailableError.new("glVertex3fv") unless vertex_3fv?

      vertex_3fv!(*args)
    end

    # Checks if the function "glVertex3fv" is loaded.
    @[AlwaysInline]
    def vertex_3fv? : Bool
      !@addr_vertex_3fv.null?
    end

    # Invokes glVertex3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3i!(*args)
      addr = @addr_vertex_3i
      proc = Procs.vertex_3i(addr)
      proc.call(*args)
    end

    # Invokes glVertex3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3i(*args)
      raise FunctionUnavailableError.new("glVertex3i") unless vertex_3i?

      vertex_3i!(*args)
    end

    # Checks if the function "glVertex3i" is loaded.
    @[AlwaysInline]
    def vertex_3i? : Bool
      !@addr_vertex_3i.null?
    end

    # Invokes glVertex3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3iv!(*args)
      addr = @addr_vertex_3iv
      proc = Procs.vertex_3iv(addr)
      proc.call(*args)
    end

    # Invokes glVertex3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3iv(*args)
      raise FunctionUnavailableError.new("glVertex3iv") unless vertex_3iv?

      vertex_3iv!(*args)
    end

    # Checks if the function "glVertex3iv" is loaded.
    @[AlwaysInline]
    def vertex_3iv? : Bool
      !@addr_vertex_3iv.null?
    end

    # Invokes glVertex3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3s!(*args)
      addr = @addr_vertex_3s
      proc = Procs.vertex_3s(addr)
      proc.call(*args)
    end

    # Invokes glVertex3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3s(*args)
      raise FunctionUnavailableError.new("glVertex3s") unless vertex_3s?

      vertex_3s!(*args)
    end

    # Checks if the function "glVertex3s" is loaded.
    @[AlwaysInline]
    def vertex_3s? : Bool
      !@addr_vertex_3s.null?
    end

    # Invokes glVertex3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3sv!(*args)
      addr = @addr_vertex_3sv
      proc = Procs.vertex_3sv(addr)
      proc.call(*args)
    end

    # Invokes glVertex3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3sv(*args)
      raise FunctionUnavailableError.new("glVertex3sv") unless vertex_3sv?

      vertex_3sv!(*args)
    end

    # Checks if the function "glVertex3sv" is loaded.
    @[AlwaysInline]
    def vertex_3sv? : Bool
      !@addr_vertex_3sv.null?
    end

    # Invokes glVertex4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4d!(*args)
      addr = @addr_vertex_4d
      proc = Procs.vertex_4d(addr)
      proc.call(*args)
    end

    # Invokes glVertex4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4d(*args)
      raise FunctionUnavailableError.new("glVertex4d") unless vertex_4d?

      vertex_4d!(*args)
    end

    # Checks if the function "glVertex4d" is loaded.
    @[AlwaysInline]
    def vertex_4d? : Bool
      !@addr_vertex_4d.null?
    end

    # Invokes glVertex4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4dv!(*args)
      addr = @addr_vertex_4dv
      proc = Procs.vertex_4dv(addr)
      proc.call(*args)
    end

    # Invokes glVertex4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4dv(*args)
      raise FunctionUnavailableError.new("glVertex4dv") unless vertex_4dv?

      vertex_4dv!(*args)
    end

    # Checks if the function "glVertex4dv" is loaded.
    @[AlwaysInline]
    def vertex_4dv? : Bool
      !@addr_vertex_4dv.null?
    end

    # Invokes glVertex4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4f!(*args)
      addr = @addr_vertex_4f
      proc = Procs.vertex_4f(addr)
      proc.call(*args)
    end

    # Invokes glVertex4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4f(*args)
      raise FunctionUnavailableError.new("glVertex4f") unless vertex_4f?

      vertex_4f!(*args)
    end

    # Checks if the function "glVertex4f" is loaded.
    @[AlwaysInline]
    def vertex_4f? : Bool
      !@addr_vertex_4f.null?
    end

    # Invokes glVertex4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4fv!(*args)
      addr = @addr_vertex_4fv
      proc = Procs.vertex_4fv(addr)
      proc.call(*args)
    end

    # Invokes glVertex4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4fv(*args)
      raise FunctionUnavailableError.new("glVertex4fv") unless vertex_4fv?

      vertex_4fv!(*args)
    end

    # Checks if the function "glVertex4fv" is loaded.
    @[AlwaysInline]
    def vertex_4fv? : Bool
      !@addr_vertex_4fv.null?
    end

    # Invokes glVertex4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4i!(*args)
      addr = @addr_vertex_4i
      proc = Procs.vertex_4i(addr)
      proc.call(*args)
    end

    # Invokes glVertex4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4i(*args)
      raise FunctionUnavailableError.new("glVertex4i") unless vertex_4i?

      vertex_4i!(*args)
    end

    # Checks if the function "glVertex4i" is loaded.
    @[AlwaysInline]
    def vertex_4i? : Bool
      !@addr_vertex_4i.null?
    end

    # Invokes glVertex4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4iv!(*args)
      addr = @addr_vertex_4iv
      proc = Procs.vertex_4iv(addr)
      proc.call(*args)
    end

    # Invokes glVertex4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4iv(*args)
      raise FunctionUnavailableError.new("glVertex4iv") unless vertex_4iv?

      vertex_4iv!(*args)
    end

    # Checks if the function "glVertex4iv" is loaded.
    @[AlwaysInline]
    def vertex_4iv? : Bool
      !@addr_vertex_4iv.null?
    end

    # Invokes glVertex4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4s!(*args)
      addr = @addr_vertex_4s
      proc = Procs.vertex_4s(addr)
      proc.call(*args)
    end

    # Invokes glVertex4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4s(*args)
      raise FunctionUnavailableError.new("glVertex4s") unless vertex_4s?

      vertex_4s!(*args)
    end

    # Checks if the function "glVertex4s" is loaded.
    @[AlwaysInline]
    def vertex_4s? : Bool
      !@addr_vertex_4s.null?
    end

    # Invokes glVertex4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4sv!(*args)
      addr = @addr_vertex_4sv
      proc = Procs.vertex_4sv(addr)
      proc.call(*args)
    end

    # Invokes glVertex4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4sv(*args)
      raise FunctionUnavailableError.new("glVertex4sv") unless vertex_4sv?

      vertex_4sv!(*args)
    end

    # Checks if the function "glVertex4sv" is loaded.
    @[AlwaysInline]
    def vertex_4sv? : Bool
      !@addr_vertex_4sv.null?
    end

    # Invokes glClipPlane.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clip_plane!(*args)
      addr = @addr_clip_plane
      proc = Procs.clip_plane(addr)
      proc.call(*args)
    end

    # Invokes glClipPlane.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clip_plane(*args)
      raise FunctionUnavailableError.new("glClipPlane") unless clip_plane?

      clip_plane!(*args)
    end

    # Checks if the function "glClipPlane" is loaded.
    @[AlwaysInline]
    def clip_plane? : Bool
      !@addr_clip_plane.null?
    end

    # Invokes glColorMaterial.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_material!(*args)
      addr = @addr_color_material
      proc = Procs.color_material(addr)
      proc.call(*args)
    end

    # Invokes glColorMaterial.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_material(*args)
      raise FunctionUnavailableError.new("glColorMaterial") unless color_material?

      color_material!(*args)
    end

    # Checks if the function "glColorMaterial" is loaded.
    @[AlwaysInline]
    def color_material? : Bool
      !@addr_color_material.null?
    end

    # Invokes glFogf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_f!(*args)
      addr = @addr_fog_f
      proc = Procs.fog_f(addr)
      proc.call(*args)
    end

    # Invokes glFogf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_f(*args)
      raise FunctionUnavailableError.new("glFogf") unless fog_f?

      fog_f!(*args)
    end

    # Checks if the function "glFogf" is loaded.
    @[AlwaysInline]
    def fog_f? : Bool
      !@addr_fog_f.null?
    end

    # Invokes glFogfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_fv!(*args)
      addr = @addr_fog_fv
      proc = Procs.fog_fv(addr)
      proc.call(*args)
    end

    # Invokes glFogfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_fv(*args)
      raise FunctionUnavailableError.new("glFogfv") unless fog_fv?

      fog_fv!(*args)
    end

    # Checks if the function "glFogfv" is loaded.
    @[AlwaysInline]
    def fog_fv? : Bool
      !@addr_fog_fv.null?
    end

    # Invokes glFogi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_i!(*args)
      addr = @addr_fog_i
      proc = Procs.fog_i(addr)
      proc.call(*args)
    end

    # Invokes glFogi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_i(*args)
      raise FunctionUnavailableError.new("glFogi") unless fog_i?

      fog_i!(*args)
    end

    # Checks if the function "glFogi" is loaded.
    @[AlwaysInline]
    def fog_i? : Bool
      !@addr_fog_i.null?
    end

    # Invokes glFogiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_iv!(*args)
      addr = @addr_fog_iv
      proc = Procs.fog_iv(addr)
      proc.call(*args)
    end

    # Invokes glFogiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_iv(*args)
      raise FunctionUnavailableError.new("glFogiv") unless fog_iv?

      fog_iv!(*args)
    end

    # Checks if the function "glFogiv" is loaded.
    @[AlwaysInline]
    def fog_iv? : Bool
      !@addr_fog_iv.null?
    end

    # Invokes glLightf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_f!(*args)
      addr = @addr_light_f
      proc = Procs.light_f(addr)
      proc.call(*args)
    end

    # Invokes glLightf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_f(*args)
      raise FunctionUnavailableError.new("glLightf") unless light_f?

      light_f!(*args)
    end

    # Checks if the function "glLightf" is loaded.
    @[AlwaysInline]
    def light_f? : Bool
      !@addr_light_f.null?
    end

    # Invokes glLightfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_fv!(*args)
      addr = @addr_light_fv
      proc = Procs.light_fv(addr)
      proc.call(*args)
    end

    # Invokes glLightfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_fv(*args)
      raise FunctionUnavailableError.new("glLightfv") unless light_fv?

      light_fv!(*args)
    end

    # Checks if the function "glLightfv" is loaded.
    @[AlwaysInline]
    def light_fv? : Bool
      !@addr_light_fv.null?
    end

    # Invokes glLighti.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_i!(*args)
      addr = @addr_light_i
      proc = Procs.light_i(addr)
      proc.call(*args)
    end

    # Invokes glLighti.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_i(*args)
      raise FunctionUnavailableError.new("glLighti") unless light_i?

      light_i!(*args)
    end

    # Checks if the function "glLighti" is loaded.
    @[AlwaysInline]
    def light_i? : Bool
      !@addr_light_i.null?
    end

    # Invokes glLightiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_iv!(*args)
      addr = @addr_light_iv
      proc = Procs.light_iv(addr)
      proc.call(*args)
    end

    # Invokes glLightiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_iv(*args)
      raise FunctionUnavailableError.new("glLightiv") unless light_iv?

      light_iv!(*args)
    end

    # Checks if the function "glLightiv" is loaded.
    @[AlwaysInline]
    def light_iv? : Bool
      !@addr_light_iv.null?
    end

    # Invokes glLightModelf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_f!(*args)
      addr = @addr_light_model_f
      proc = Procs.light_model_f(addr)
      proc.call(*args)
    end

    # Invokes glLightModelf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_f(*args)
      raise FunctionUnavailableError.new("glLightModelf") unless light_model_f?

      light_model_f!(*args)
    end

    # Checks if the function "glLightModelf" is loaded.
    @[AlwaysInline]
    def light_model_f? : Bool
      !@addr_light_model_f.null?
    end

    # Invokes glLightModelfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_fv!(*args)
      addr = @addr_light_model_fv
      proc = Procs.light_model_fv(addr)
      proc.call(*args)
    end

    # Invokes glLightModelfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_fv(*args)
      raise FunctionUnavailableError.new("glLightModelfv") unless light_model_fv?

      light_model_fv!(*args)
    end

    # Checks if the function "glLightModelfv" is loaded.
    @[AlwaysInline]
    def light_model_fv? : Bool
      !@addr_light_model_fv.null?
    end

    # Invokes glLightModeli.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_i!(*args)
      addr = @addr_light_model_i
      proc = Procs.light_model_i(addr)
      proc.call(*args)
    end

    # Invokes glLightModeli.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_i(*args)
      raise FunctionUnavailableError.new("glLightModeli") unless light_model_i?

      light_model_i!(*args)
    end

    # Checks if the function "glLightModeli" is loaded.
    @[AlwaysInline]
    def light_model_i? : Bool
      !@addr_light_model_i.null?
    end

    # Invokes glLightModeliv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_iv!(*args)
      addr = @addr_light_model_iv
      proc = Procs.light_model_iv(addr)
      proc.call(*args)
    end

    # Invokes glLightModeliv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_iv(*args)
      raise FunctionUnavailableError.new("glLightModeliv") unless light_model_iv?

      light_model_iv!(*args)
    end

    # Checks if the function "glLightModeliv" is loaded.
    @[AlwaysInline]
    def light_model_iv? : Bool
      !@addr_light_model_iv.null?
    end

    # Invokes glLineStipple.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def line_stipple!(*args)
      addr = @addr_line_stipple
      proc = Procs.line_stipple(addr)
      proc.call(*args)
    end

    # Invokes glLineStipple.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def line_stipple(*args)
      raise FunctionUnavailableError.new("glLineStipple") unless line_stipple?

      line_stipple!(*args)
    end

    # Checks if the function "glLineStipple" is loaded.
    @[AlwaysInline]
    def line_stipple? : Bool
      !@addr_line_stipple.null?
    end

    # Invokes glMaterialf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_f!(*args)
      addr = @addr_material_f
      proc = Procs.material_f(addr)
      proc.call(*args)
    end

    # Invokes glMaterialf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_f(*args)
      raise FunctionUnavailableError.new("glMaterialf") unless material_f?

      material_f!(*args)
    end

    # Checks if the function "glMaterialf" is loaded.
    @[AlwaysInline]
    def material_f? : Bool
      !@addr_material_f.null?
    end

    # Invokes glMaterialfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_fv!(*args)
      addr = @addr_material_fv
      proc = Procs.material_fv(addr)
      proc.call(*args)
    end

    # Invokes glMaterialfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_fv(*args)
      raise FunctionUnavailableError.new("glMaterialfv") unless material_fv?

      material_fv!(*args)
    end

    # Checks if the function "glMaterialfv" is loaded.
    @[AlwaysInline]
    def material_fv? : Bool
      !@addr_material_fv.null?
    end

    # Invokes glMateriali.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_i!(*args)
      addr = @addr_material_i
      proc = Procs.material_i(addr)
      proc.call(*args)
    end

    # Invokes glMateriali.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_i(*args)
      raise FunctionUnavailableError.new("glMateriali") unless material_i?

      material_i!(*args)
    end

    # Checks if the function "glMateriali" is loaded.
    @[AlwaysInline]
    def material_i? : Bool
      !@addr_material_i.null?
    end

    # Invokes glMaterialiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_iv!(*args)
      addr = @addr_material_iv
      proc = Procs.material_iv(addr)
      proc.call(*args)
    end

    # Invokes glMaterialiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_iv(*args)
      raise FunctionUnavailableError.new("glMaterialiv") unless material_iv?

      material_iv!(*args)
    end

    # Checks if the function "glMaterialiv" is loaded.
    @[AlwaysInline]
    def material_iv? : Bool
      !@addr_material_iv.null?
    end

    # Invokes glPolygonStipple.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_stipple!(*args)
      addr = @addr_polygon_stipple
      proc = Procs.polygon_stipple(addr)
      proc.call(*args)
    end

    # Invokes glPolygonStipple.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_stipple(*args)
      raise FunctionUnavailableError.new("glPolygonStipple") unless polygon_stipple?

      polygon_stipple!(*args)
    end

    # Checks if the function "glPolygonStipple" is loaded.
    @[AlwaysInline]
    def polygon_stipple? : Bool
      !@addr_polygon_stipple.null?
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

    # Invokes glTexEnvf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_f!(*args)
      addr = @addr_tex_env_f
      proc = Procs.tex_env_f(addr)
      proc.call(*args)
    end

    # Invokes glTexEnvf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_f(*args)
      raise FunctionUnavailableError.new("glTexEnvf") unless tex_env_f?

      tex_env_f!(*args)
    end

    # Checks if the function "glTexEnvf" is loaded.
    @[AlwaysInline]
    def tex_env_f? : Bool
      !@addr_tex_env_f.null?
    end

    # Invokes glTexEnvfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_fv!(*args)
      addr = @addr_tex_env_fv
      proc = Procs.tex_env_fv(addr)
      proc.call(*args)
    end

    # Invokes glTexEnvfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_fv(*args)
      raise FunctionUnavailableError.new("glTexEnvfv") unless tex_env_fv?

      tex_env_fv!(*args)
    end

    # Checks if the function "glTexEnvfv" is loaded.
    @[AlwaysInline]
    def tex_env_fv? : Bool
      !@addr_tex_env_fv.null?
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

    # Invokes glTexGend.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_d!(*args)
      addr = @addr_tex_gen_d
      proc = Procs.tex_gen_d(addr)
      proc.call(*args)
    end

    # Invokes glTexGend.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_d(*args)
      raise FunctionUnavailableError.new("glTexGend") unless tex_gen_d?

      tex_gen_d!(*args)
    end

    # Checks if the function "glTexGend" is loaded.
    @[AlwaysInline]
    def tex_gen_d? : Bool
      !@addr_tex_gen_d.null?
    end

    # Invokes glTexGendv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_dv!(*args)
      addr = @addr_tex_gen_dv
      proc = Procs.tex_gen_dv(addr)
      proc.call(*args)
    end

    # Invokes glTexGendv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_dv(*args)
      raise FunctionUnavailableError.new("glTexGendv") unless tex_gen_dv?

      tex_gen_dv!(*args)
    end

    # Checks if the function "glTexGendv" is loaded.
    @[AlwaysInline]
    def tex_gen_dv? : Bool
      !@addr_tex_gen_dv.null?
    end

    # Invokes glTexGenf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_f!(*args)
      addr = @addr_tex_gen_f
      proc = Procs.tex_gen_f(addr)
      proc.call(*args)
    end

    # Invokes glTexGenf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_f(*args)
      raise FunctionUnavailableError.new("glTexGenf") unless tex_gen_f?

      tex_gen_f!(*args)
    end

    # Checks if the function "glTexGenf" is loaded.
    @[AlwaysInline]
    def tex_gen_f? : Bool
      !@addr_tex_gen_f.null?
    end

    # Invokes glTexGenfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_fv!(*args)
      addr = @addr_tex_gen_fv
      proc = Procs.tex_gen_fv(addr)
      proc.call(*args)
    end

    # Invokes glTexGenfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_fv(*args)
      raise FunctionUnavailableError.new("glTexGenfv") unless tex_gen_fv?

      tex_gen_fv!(*args)
    end

    # Checks if the function "glTexGenfv" is loaded.
    @[AlwaysInline]
    def tex_gen_fv? : Bool
      !@addr_tex_gen_fv.null?
    end

    # Invokes glTexGeni.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_i!(*args)
      addr = @addr_tex_gen_i
      proc = Procs.tex_gen_i(addr)
      proc.call(*args)
    end

    # Invokes glTexGeni.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_i(*args)
      raise FunctionUnavailableError.new("glTexGeni") unless tex_gen_i?

      tex_gen_i!(*args)
    end

    # Checks if the function "glTexGeni" is loaded.
    @[AlwaysInline]
    def tex_gen_i? : Bool
      !@addr_tex_gen_i.null?
    end

    # Invokes glTexGeniv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_iv!(*args)
      addr = @addr_tex_gen_iv
      proc = Procs.tex_gen_iv(addr)
      proc.call(*args)
    end

    # Invokes glTexGeniv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_iv(*args)
      raise FunctionUnavailableError.new("glTexGeniv") unless tex_gen_iv?

      tex_gen_iv!(*args)
    end

    # Checks if the function "glTexGeniv" is loaded.
    @[AlwaysInline]
    def tex_gen_iv? : Bool
      !@addr_tex_gen_iv.null?
    end

    # Invokes glFeedbackBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def feedback_buffer!(*args)
      addr = @addr_feedback_buffer
      proc = Procs.feedback_buffer(addr)
      proc.call(*args)
    end

    # Invokes glFeedbackBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def feedback_buffer(*args)
      raise FunctionUnavailableError.new("glFeedbackBuffer") unless feedback_buffer?

      feedback_buffer!(*args)
    end

    # Checks if the function "glFeedbackBuffer" is loaded.
    @[AlwaysInline]
    def feedback_buffer? : Bool
      !@addr_feedback_buffer.null?
    end

    # Invokes glSelectBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def select_buffer!(*args)
      addr = @addr_select_buffer
      proc = Procs.select_buffer(addr)
      proc.call(*args)
    end

    # Invokes glSelectBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def select_buffer(*args)
      raise FunctionUnavailableError.new("glSelectBuffer") unless select_buffer?

      select_buffer!(*args)
    end

    # Checks if the function "glSelectBuffer" is loaded.
    @[AlwaysInline]
    def select_buffer? : Bool
      !@addr_select_buffer.null?
    end

    # Invokes glRenderMode.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def render_mode!(*args)
      addr = @addr_render_mode
      proc = Procs.render_mode(addr)
      proc.call(*args)
    end

    # Invokes glRenderMode.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def render_mode(*args)
      raise FunctionUnavailableError.new("glRenderMode") unless render_mode?

      render_mode!(*args)
    end

    # Checks if the function "glRenderMode" is loaded.
    @[AlwaysInline]
    def render_mode? : Bool
      !@addr_render_mode.null?
    end

    # Invokes glInitNames.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def init_names!(*args)
      addr = @addr_init_names
      proc = Procs.init_names(addr)
      proc.call(*args)
    end

    # Invokes glInitNames.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def init_names(*args)
      raise FunctionUnavailableError.new("glInitNames") unless init_names?

      init_names!(*args)
    end

    # Checks if the function "glInitNames" is loaded.
    @[AlwaysInline]
    def init_names? : Bool
      !@addr_init_names.null?
    end

    # Invokes glLoadName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_name!(*args)
      addr = @addr_load_name
      proc = Procs.load_name(addr)
      proc.call(*args)
    end

    # Invokes glLoadName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_name(*args)
      raise FunctionUnavailableError.new("glLoadName") unless load_name?

      load_name!(*args)
    end

    # Checks if the function "glLoadName" is loaded.
    @[AlwaysInline]
    def load_name? : Bool
      !@addr_load_name.null?
    end

    # Invokes glPassThrough.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pass_through!(*args)
      addr = @addr_pass_through
      proc = Procs.pass_through(addr)
      proc.call(*args)
    end

    # Invokes glPassThrough.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pass_through(*args)
      raise FunctionUnavailableError.new("glPassThrough") unless pass_through?

      pass_through!(*args)
    end

    # Checks if the function "glPassThrough" is loaded.
    @[AlwaysInline]
    def pass_through? : Bool
      !@addr_pass_through.null?
    end

    # Invokes glPopName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_name!(*args)
      addr = @addr_pop_name
      proc = Procs.pop_name(addr)
      proc.call(*args)
    end

    # Invokes glPopName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_name(*args)
      raise FunctionUnavailableError.new("glPopName") unless pop_name?

      pop_name!(*args)
    end

    # Checks if the function "glPopName" is loaded.
    @[AlwaysInline]
    def pop_name? : Bool
      !@addr_pop_name.null?
    end

    # Invokes glPushName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_name!(*args)
      addr = @addr_push_name
      proc = Procs.push_name(addr)
      proc.call(*args)
    end

    # Invokes glPushName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_name(*args)
      raise FunctionUnavailableError.new("glPushName") unless push_name?

      push_name!(*args)
    end

    # Checks if the function "glPushName" is loaded.
    @[AlwaysInline]
    def push_name? : Bool
      !@addr_push_name.null?
    end

    # Invokes glClearAccum.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_accum!(*args)
      addr = @addr_clear_accum
      proc = Procs.clear_accum(addr)
      proc.call(*args)
    end

    # Invokes glClearAccum.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_accum(*args)
      raise FunctionUnavailableError.new("glClearAccum") unless clear_accum?

      clear_accum!(*args)
    end

    # Checks if the function "glClearAccum" is loaded.
    @[AlwaysInline]
    def clear_accum? : Bool
      !@addr_clear_accum.null?
    end

    # Invokes glClearIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_index!(*args)
      addr = @addr_clear_index
      proc = Procs.clear_index(addr)
      proc.call(*args)
    end

    # Invokes glClearIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_index(*args)
      raise FunctionUnavailableError.new("glClearIndex") unless clear_index?

      clear_index!(*args)
    end

    # Checks if the function "glClearIndex" is loaded.
    @[AlwaysInline]
    def clear_index? : Bool
      !@addr_clear_index.null?
    end

    # Invokes glIndexMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_mask!(*args)
      addr = @addr_index_mask
      proc = Procs.index_mask(addr)
      proc.call(*args)
    end

    # Invokes glIndexMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_mask(*args)
      raise FunctionUnavailableError.new("glIndexMask") unless index_mask?

      index_mask!(*args)
    end

    # Checks if the function "glIndexMask" is loaded.
    @[AlwaysInline]
    def index_mask? : Bool
      !@addr_index_mask.null?
    end

    # Invokes glAccum.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def accum!(*args)
      addr = @addr_accum
      proc = Procs.accum(addr)
      proc.call(*args)
    end

    # Invokes glAccum.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def accum(*args)
      raise FunctionUnavailableError.new("glAccum") unless accum?

      accum!(*args)
    end

    # Checks if the function "glAccum" is loaded.
    @[AlwaysInline]
    def accum? : Bool
      !@addr_accum.null?
    end

    # Invokes glPopAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_attrib!(*args)
      addr = @addr_pop_attrib
      proc = Procs.pop_attrib(addr)
      proc.call(*args)
    end

    # Invokes glPopAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_attrib(*args)
      raise FunctionUnavailableError.new("glPopAttrib") unless pop_attrib?

      pop_attrib!(*args)
    end

    # Checks if the function "glPopAttrib" is loaded.
    @[AlwaysInline]
    def pop_attrib? : Bool
      !@addr_pop_attrib.null?
    end

    # Invokes glPushAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_attrib!(*args)
      addr = @addr_push_attrib
      proc = Procs.push_attrib(addr)
      proc.call(*args)
    end

    # Invokes glPushAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_attrib(*args)
      raise FunctionUnavailableError.new("glPushAttrib") unless push_attrib?

      push_attrib!(*args)
    end

    # Checks if the function "glPushAttrib" is loaded.
    @[AlwaysInline]
    def push_attrib? : Bool
      !@addr_push_attrib.null?
    end

    # Invokes glMap1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_1d!(*args)
      addr = @addr_map_1d
      proc = Procs.map_1d(addr)
      proc.call(*args)
    end

    # Invokes glMap1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_1d(*args)
      raise FunctionUnavailableError.new("glMap1d") unless map_1d?

      map_1d!(*args)
    end

    # Checks if the function "glMap1d" is loaded.
    @[AlwaysInline]
    def map_1d? : Bool
      !@addr_map_1d.null?
    end

    # Invokes glMap1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_1f!(*args)
      addr = @addr_map_1f
      proc = Procs.map_1f(addr)
      proc.call(*args)
    end

    # Invokes glMap1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_1f(*args)
      raise FunctionUnavailableError.new("glMap1f") unless map_1f?

      map_1f!(*args)
    end

    # Checks if the function "glMap1f" is loaded.
    @[AlwaysInline]
    def map_1f? : Bool
      !@addr_map_1f.null?
    end

    # Invokes glMap2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_2d!(*args)
      addr = @addr_map_2d
      proc = Procs.map_2d(addr)
      proc.call(*args)
    end

    # Invokes glMap2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_2d(*args)
      raise FunctionUnavailableError.new("glMap2d") unless map_2d?

      map_2d!(*args)
    end

    # Checks if the function "glMap2d" is loaded.
    @[AlwaysInline]
    def map_2d? : Bool
      !@addr_map_2d.null?
    end

    # Invokes glMap2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_2f!(*args)
      addr = @addr_map_2f
      proc = Procs.map_2f(addr)
      proc.call(*args)
    end

    # Invokes glMap2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_2f(*args)
      raise FunctionUnavailableError.new("glMap2f") unless map_2f?

      map_2f!(*args)
    end

    # Checks if the function "glMap2f" is loaded.
    @[AlwaysInline]
    def map_2f? : Bool
      !@addr_map_2f.null?
    end

    # Invokes glMapGrid1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_1d!(*args)
      addr = @addr_map_grid_1d
      proc = Procs.map_grid_1d(addr)
      proc.call(*args)
    end

    # Invokes glMapGrid1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_1d(*args)
      raise FunctionUnavailableError.new("glMapGrid1d") unless map_grid_1d?

      map_grid_1d!(*args)
    end

    # Checks if the function "glMapGrid1d" is loaded.
    @[AlwaysInline]
    def map_grid_1d? : Bool
      !@addr_map_grid_1d.null?
    end

    # Invokes glMapGrid1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_1f!(*args)
      addr = @addr_map_grid_1f
      proc = Procs.map_grid_1f(addr)
      proc.call(*args)
    end

    # Invokes glMapGrid1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_1f(*args)
      raise FunctionUnavailableError.new("glMapGrid1f") unless map_grid_1f?

      map_grid_1f!(*args)
    end

    # Checks if the function "glMapGrid1f" is loaded.
    @[AlwaysInline]
    def map_grid_1f? : Bool
      !@addr_map_grid_1f.null?
    end

    # Invokes glMapGrid2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_2d!(*args)
      addr = @addr_map_grid_2d
      proc = Procs.map_grid_2d(addr)
      proc.call(*args)
    end

    # Invokes glMapGrid2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_2d(*args)
      raise FunctionUnavailableError.new("glMapGrid2d") unless map_grid_2d?

      map_grid_2d!(*args)
    end

    # Checks if the function "glMapGrid2d" is loaded.
    @[AlwaysInline]
    def map_grid_2d? : Bool
      !@addr_map_grid_2d.null?
    end

    # Invokes glMapGrid2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_2f!(*args)
      addr = @addr_map_grid_2f
      proc = Procs.map_grid_2f(addr)
      proc.call(*args)
    end

    # Invokes glMapGrid2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_2f(*args)
      raise FunctionUnavailableError.new("glMapGrid2f") unless map_grid_2f?

      map_grid_2f!(*args)
    end

    # Checks if the function "glMapGrid2f" is loaded.
    @[AlwaysInline]
    def map_grid_2f? : Bool
      !@addr_map_grid_2f.null?
    end

    # Invokes glEvalCoord1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1d!(*args)
      addr = @addr_eval_coord_1d
      proc = Procs.eval_coord_1d(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1d(*args)
      raise FunctionUnavailableError.new("glEvalCoord1d") unless eval_coord_1d?

      eval_coord_1d!(*args)
    end

    # Checks if the function "glEvalCoord1d" is loaded.
    @[AlwaysInline]
    def eval_coord_1d? : Bool
      !@addr_eval_coord_1d.null?
    end

    # Invokes glEvalCoord1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1dv!(*args)
      addr = @addr_eval_coord_1dv
      proc = Procs.eval_coord_1dv(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1dv(*args)
      raise FunctionUnavailableError.new("glEvalCoord1dv") unless eval_coord_1dv?

      eval_coord_1dv!(*args)
    end

    # Checks if the function "glEvalCoord1dv" is loaded.
    @[AlwaysInline]
    def eval_coord_1dv? : Bool
      !@addr_eval_coord_1dv.null?
    end

    # Invokes glEvalCoord1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1f!(*args)
      addr = @addr_eval_coord_1f
      proc = Procs.eval_coord_1f(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1f(*args)
      raise FunctionUnavailableError.new("glEvalCoord1f") unless eval_coord_1f?

      eval_coord_1f!(*args)
    end

    # Checks if the function "glEvalCoord1f" is loaded.
    @[AlwaysInline]
    def eval_coord_1f? : Bool
      !@addr_eval_coord_1f.null?
    end

    # Invokes glEvalCoord1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1fv!(*args)
      addr = @addr_eval_coord_1fv
      proc = Procs.eval_coord_1fv(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1fv(*args)
      raise FunctionUnavailableError.new("glEvalCoord1fv") unless eval_coord_1fv?

      eval_coord_1fv!(*args)
    end

    # Checks if the function "glEvalCoord1fv" is loaded.
    @[AlwaysInline]
    def eval_coord_1fv? : Bool
      !@addr_eval_coord_1fv.null?
    end

    # Invokes glEvalCoord2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2d!(*args)
      addr = @addr_eval_coord_2d
      proc = Procs.eval_coord_2d(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2d(*args)
      raise FunctionUnavailableError.new("glEvalCoord2d") unless eval_coord_2d?

      eval_coord_2d!(*args)
    end

    # Checks if the function "glEvalCoord2d" is loaded.
    @[AlwaysInline]
    def eval_coord_2d? : Bool
      !@addr_eval_coord_2d.null?
    end

    # Invokes glEvalCoord2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2dv!(*args)
      addr = @addr_eval_coord_2dv
      proc = Procs.eval_coord_2dv(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2dv(*args)
      raise FunctionUnavailableError.new("glEvalCoord2dv") unless eval_coord_2dv?

      eval_coord_2dv!(*args)
    end

    # Checks if the function "glEvalCoord2dv" is loaded.
    @[AlwaysInline]
    def eval_coord_2dv? : Bool
      !@addr_eval_coord_2dv.null?
    end

    # Invokes glEvalCoord2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2f!(*args)
      addr = @addr_eval_coord_2f
      proc = Procs.eval_coord_2f(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2f(*args)
      raise FunctionUnavailableError.new("glEvalCoord2f") unless eval_coord_2f?

      eval_coord_2f!(*args)
    end

    # Checks if the function "glEvalCoord2f" is loaded.
    @[AlwaysInline]
    def eval_coord_2f? : Bool
      !@addr_eval_coord_2f.null?
    end

    # Invokes glEvalCoord2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2fv!(*args)
      addr = @addr_eval_coord_2fv
      proc = Procs.eval_coord_2fv(addr)
      proc.call(*args)
    end

    # Invokes glEvalCoord2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2fv(*args)
      raise FunctionUnavailableError.new("glEvalCoord2fv") unless eval_coord_2fv?

      eval_coord_2fv!(*args)
    end

    # Checks if the function "glEvalCoord2fv" is loaded.
    @[AlwaysInline]
    def eval_coord_2fv? : Bool
      !@addr_eval_coord_2fv.null?
    end

    # Invokes glEvalMesh1.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_mesh1!(*args)
      addr = @addr_eval_mesh1
      proc = Procs.eval_mesh1(addr)
      proc.call(*args)
    end

    # Invokes glEvalMesh1.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_mesh1(*args)
      raise FunctionUnavailableError.new("glEvalMesh1") unless eval_mesh1?

      eval_mesh1!(*args)
    end

    # Checks if the function "glEvalMesh1" is loaded.
    @[AlwaysInline]
    def eval_mesh1? : Bool
      !@addr_eval_mesh1.null?
    end

    # Invokes glEvalPoint1.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_point1!(*args)
      addr = @addr_eval_point1
      proc = Procs.eval_point1(addr)
      proc.call(*args)
    end

    # Invokes glEvalPoint1.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_point1(*args)
      raise FunctionUnavailableError.new("glEvalPoint1") unless eval_point1?

      eval_point1!(*args)
    end

    # Checks if the function "glEvalPoint1" is loaded.
    @[AlwaysInline]
    def eval_point1? : Bool
      !@addr_eval_point1.null?
    end

    # Invokes glEvalMesh2.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_mesh2!(*args)
      addr = @addr_eval_mesh2
      proc = Procs.eval_mesh2(addr)
      proc.call(*args)
    end

    # Invokes glEvalMesh2.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_mesh2(*args)
      raise FunctionUnavailableError.new("glEvalMesh2") unless eval_mesh2?

      eval_mesh2!(*args)
    end

    # Checks if the function "glEvalMesh2" is loaded.
    @[AlwaysInline]
    def eval_mesh2? : Bool
      !@addr_eval_mesh2.null?
    end

    # Invokes glEvalPoint2.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_point2!(*args)
      addr = @addr_eval_point2
      proc = Procs.eval_point2(addr)
      proc.call(*args)
    end

    # Invokes glEvalPoint2.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_point2(*args)
      raise FunctionUnavailableError.new("glEvalPoint2") unless eval_point2?

      eval_point2!(*args)
    end

    # Checks if the function "glEvalPoint2" is loaded.
    @[AlwaysInline]
    def eval_point2? : Bool
      !@addr_eval_point2.null?
    end

    # Invokes glAlphaFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def alpha_func!(*args)
      addr = @addr_alpha_func
      proc = Procs.alpha_func(addr)
      proc.call(*args)
    end

    # Invokes glAlphaFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def alpha_func(*args)
      raise FunctionUnavailableError.new("glAlphaFunc") unless alpha_func?

      alpha_func!(*args)
    end

    # Checks if the function "glAlphaFunc" is loaded.
    @[AlwaysInline]
    def alpha_func? : Bool
      !@addr_alpha_func.null?
    end

    # Invokes glPixelZoom.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_zoom!(*args)
      addr = @addr_pixel_zoom
      proc = Procs.pixel_zoom(addr)
      proc.call(*args)
    end

    # Invokes glPixelZoom.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_zoom(*args)
      raise FunctionUnavailableError.new("glPixelZoom") unless pixel_zoom?

      pixel_zoom!(*args)
    end

    # Checks if the function "glPixelZoom" is loaded.
    @[AlwaysInline]
    def pixel_zoom? : Bool
      !@addr_pixel_zoom.null?
    end

    # Invokes glPixelTransferf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_transfer_f!(*args)
      addr = @addr_pixel_transfer_f
      proc = Procs.pixel_transfer_f(addr)
      proc.call(*args)
    end

    # Invokes glPixelTransferf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_transfer_f(*args)
      raise FunctionUnavailableError.new("glPixelTransferf") unless pixel_transfer_f?

      pixel_transfer_f!(*args)
    end

    # Checks if the function "glPixelTransferf" is loaded.
    @[AlwaysInline]
    def pixel_transfer_f? : Bool
      !@addr_pixel_transfer_f.null?
    end

    # Invokes glPixelTransferi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_transfer_i!(*args)
      addr = @addr_pixel_transfer_i
      proc = Procs.pixel_transfer_i(addr)
      proc.call(*args)
    end

    # Invokes glPixelTransferi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_transfer_i(*args)
      raise FunctionUnavailableError.new("glPixelTransferi") unless pixel_transfer_i?

      pixel_transfer_i!(*args)
    end

    # Checks if the function "glPixelTransferi" is loaded.
    @[AlwaysInline]
    def pixel_transfer_i? : Bool
      !@addr_pixel_transfer_i.null?
    end

    # Invokes glPixelMapfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_map_fv!(*args)
      addr = @addr_pixel_map_fv
      proc = Procs.pixel_map_fv(addr)
      proc.call(*args)
    end

    # Invokes glPixelMapfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_map_fv(*args)
      raise FunctionUnavailableError.new("glPixelMapfv") unless pixel_map_fv?

      pixel_map_fv!(*args)
    end

    # Checks if the function "glPixelMapfv" is loaded.
    @[AlwaysInline]
    def pixel_map_fv? : Bool
      !@addr_pixel_map_fv.null?
    end

    # Invokes glPixelMapuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_map_uiv!(*args)
      addr = @addr_pixel_map_uiv
      proc = Procs.pixel_map_uiv(addr)
      proc.call(*args)
    end

    # Invokes glPixelMapuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_map_uiv(*args)
      raise FunctionUnavailableError.new("glPixelMapuiv") unless pixel_map_uiv?

      pixel_map_uiv!(*args)
    end

    # Checks if the function "glPixelMapuiv" is loaded.
    @[AlwaysInline]
    def pixel_map_uiv? : Bool
      !@addr_pixel_map_uiv.null?
    end

    # Invokes glPixelMapusv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_map_usv!(*args)
      addr = @addr_pixel_map_usv
      proc = Procs.pixel_map_usv(addr)
      proc.call(*args)
    end

    # Invokes glPixelMapusv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_map_usv(*args)
      raise FunctionUnavailableError.new("glPixelMapusv") unless pixel_map_usv?

      pixel_map_usv!(*args)
    end

    # Checks if the function "glPixelMapusv" is loaded.
    @[AlwaysInline]
    def pixel_map_usv? : Bool
      !@addr_pixel_map_usv.null?
    end

    # Invokes glCopyPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_pixels!(*args)
      addr = @addr_copy_pixels
      proc = Procs.copy_pixels(addr)
      proc.call(*args)
    end

    # Invokes glCopyPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_pixels(*args)
      raise FunctionUnavailableError.new("glCopyPixels") unless copy_pixels?

      copy_pixels!(*args)
    end

    # Checks if the function "glCopyPixels" is loaded.
    @[AlwaysInline]
    def copy_pixels? : Bool
      !@addr_copy_pixels.null?
    end

    # Invokes glDrawPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_pixels!(*args)
      addr = @addr_draw_pixels
      proc = Procs.draw_pixels(addr)
      proc.call(*args)
    end

    # Invokes glDrawPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_pixels(*args)
      raise FunctionUnavailableError.new("glDrawPixels") unless draw_pixels?

      draw_pixels!(*args)
    end

    # Checks if the function "glDrawPixels" is loaded.
    @[AlwaysInline]
    def draw_pixels? : Bool
      !@addr_draw_pixels.null?
    end

    # Invokes glGetClipPlane.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_clip_plane!(*args)
      addr = @addr_get_clip_plane
      proc = Procs.get_clip_plane(addr)
      proc.call(*args)
    end

    # Invokes glGetClipPlane.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_clip_plane(*args)
      raise FunctionUnavailableError.new("glGetClipPlane") unless get_clip_plane?

      get_clip_plane!(*args)
    end

    # Checks if the function "glGetClipPlane" is loaded.
    @[AlwaysInline]
    def get_clip_plane? : Bool
      !@addr_get_clip_plane.null?
    end

    # Invokes glGetLightfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_light_fv!(*args)
      addr = @addr_get_light_fv
      proc = Procs.get_light_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetLightfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_light_fv(*args)
      raise FunctionUnavailableError.new("glGetLightfv") unless get_light_fv?

      get_light_fv!(*args)
    end

    # Checks if the function "glGetLightfv" is loaded.
    @[AlwaysInline]
    def get_light_fv? : Bool
      !@addr_get_light_fv.null?
    end

    # Invokes glGetLightiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_light_iv!(*args)
      addr = @addr_get_light_iv
      proc = Procs.get_light_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetLightiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_light_iv(*args)
      raise FunctionUnavailableError.new("glGetLightiv") unless get_light_iv?

      get_light_iv!(*args)
    end

    # Checks if the function "glGetLightiv" is loaded.
    @[AlwaysInline]
    def get_light_iv? : Bool
      !@addr_get_light_iv.null?
    end

    # Invokes glGetMapdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_map_dv!(*args)
      addr = @addr_get_map_dv
      proc = Procs.get_map_dv(addr)
      proc.call(*args)
    end

    # Invokes glGetMapdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_map_dv(*args)
      raise FunctionUnavailableError.new("glGetMapdv") unless get_map_dv?

      get_map_dv!(*args)
    end

    # Checks if the function "glGetMapdv" is loaded.
    @[AlwaysInline]
    def get_map_dv? : Bool
      !@addr_get_map_dv.null?
    end

    # Invokes glGetMapfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_map_fv!(*args)
      addr = @addr_get_map_fv
      proc = Procs.get_map_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetMapfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_map_fv(*args)
      raise FunctionUnavailableError.new("glGetMapfv") unless get_map_fv?

      get_map_fv!(*args)
    end

    # Checks if the function "glGetMapfv" is loaded.
    @[AlwaysInline]
    def get_map_fv? : Bool
      !@addr_get_map_fv.null?
    end

    # Invokes glGetMapiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_map_iv!(*args)
      addr = @addr_get_map_iv
      proc = Procs.get_map_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetMapiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_map_iv(*args)
      raise FunctionUnavailableError.new("glGetMapiv") unless get_map_iv?

      get_map_iv!(*args)
    end

    # Checks if the function "glGetMapiv" is loaded.
    @[AlwaysInline]
    def get_map_iv? : Bool
      !@addr_get_map_iv.null?
    end

    # Invokes glGetMaterialfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_material_fv!(*args)
      addr = @addr_get_material_fv
      proc = Procs.get_material_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetMaterialfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_material_fv(*args)
      raise FunctionUnavailableError.new("glGetMaterialfv") unless get_material_fv?

      get_material_fv!(*args)
    end

    # Checks if the function "glGetMaterialfv" is loaded.
    @[AlwaysInline]
    def get_material_fv? : Bool
      !@addr_get_material_fv.null?
    end

    # Invokes glGetMaterialiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_material_iv!(*args)
      addr = @addr_get_material_iv
      proc = Procs.get_material_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetMaterialiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_material_iv(*args)
      raise FunctionUnavailableError.new("glGetMaterialiv") unless get_material_iv?

      get_material_iv!(*args)
    end

    # Checks if the function "glGetMaterialiv" is loaded.
    @[AlwaysInline]
    def get_material_iv? : Bool
      !@addr_get_material_iv.null?
    end

    # Invokes glGetPixelMapfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pixel_map_fv!(*args)
      addr = @addr_get_pixel_map_fv
      proc = Procs.get_pixel_map_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetPixelMapfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pixel_map_fv(*args)
      raise FunctionUnavailableError.new("glGetPixelMapfv") unless get_pixel_map_fv?

      get_pixel_map_fv!(*args)
    end

    # Checks if the function "glGetPixelMapfv" is loaded.
    @[AlwaysInline]
    def get_pixel_map_fv? : Bool
      !@addr_get_pixel_map_fv.null?
    end

    # Invokes glGetPixelMapuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pixel_map_uiv!(*args)
      addr = @addr_get_pixel_map_uiv
      proc = Procs.get_pixel_map_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetPixelMapuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pixel_map_uiv(*args)
      raise FunctionUnavailableError.new("glGetPixelMapuiv") unless get_pixel_map_uiv?

      get_pixel_map_uiv!(*args)
    end

    # Checks if the function "glGetPixelMapuiv" is loaded.
    @[AlwaysInline]
    def get_pixel_map_uiv? : Bool
      !@addr_get_pixel_map_uiv.null?
    end

    # Invokes glGetPixelMapusv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pixel_map_usv!(*args)
      addr = @addr_get_pixel_map_usv
      proc = Procs.get_pixel_map_usv(addr)
      proc.call(*args)
    end

    # Invokes glGetPixelMapusv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pixel_map_usv(*args)
      raise FunctionUnavailableError.new("glGetPixelMapusv") unless get_pixel_map_usv?

      get_pixel_map_usv!(*args)
    end

    # Checks if the function "glGetPixelMapusv" is loaded.
    @[AlwaysInline]
    def get_pixel_map_usv? : Bool
      !@addr_get_pixel_map_usv.null?
    end

    # Invokes glGetPolygonStipple.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_polygon_stipple!(*args)
      addr = @addr_get_polygon_stipple
      proc = Procs.get_polygon_stipple(addr)
      proc.call(*args)
    end

    # Invokes glGetPolygonStipple.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_polygon_stipple(*args)
      raise FunctionUnavailableError.new("glGetPolygonStipple") unless get_polygon_stipple?

      get_polygon_stipple!(*args)
    end

    # Checks if the function "glGetPolygonStipple" is loaded.
    @[AlwaysInline]
    def get_polygon_stipple? : Bool
      !@addr_get_polygon_stipple.null?
    end

    # Invokes glGetTexEnvfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_env_fv!(*args)
      addr = @addr_get_tex_env_fv
      proc = Procs.get_tex_env_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexEnvfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_env_fv(*args)
      raise FunctionUnavailableError.new("glGetTexEnvfv") unless get_tex_env_fv?

      get_tex_env_fv!(*args)
    end

    # Checks if the function "glGetTexEnvfv" is loaded.
    @[AlwaysInline]
    def get_tex_env_fv? : Bool
      !@addr_get_tex_env_fv.null?
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

    # Invokes glGetTexGendv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_gen_dv!(*args)
      addr = @addr_get_tex_gen_dv
      proc = Procs.get_tex_gen_dv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexGendv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_gen_dv(*args)
      raise FunctionUnavailableError.new("glGetTexGendv") unless get_tex_gen_dv?

      get_tex_gen_dv!(*args)
    end

    # Checks if the function "glGetTexGendv" is loaded.
    @[AlwaysInline]
    def get_tex_gen_dv? : Bool
      !@addr_get_tex_gen_dv.null?
    end

    # Invokes glGetTexGenfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_gen_fv!(*args)
      addr = @addr_get_tex_gen_fv
      proc = Procs.get_tex_gen_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexGenfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_gen_fv(*args)
      raise FunctionUnavailableError.new("glGetTexGenfv") unless get_tex_gen_fv?

      get_tex_gen_fv!(*args)
    end

    # Checks if the function "glGetTexGenfv" is loaded.
    @[AlwaysInline]
    def get_tex_gen_fv? : Bool
      !@addr_get_tex_gen_fv.null?
    end

    # Invokes glGetTexGeniv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_gen_iv!(*args)
      addr = @addr_get_tex_gen_iv
      proc = Procs.get_tex_gen_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexGeniv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_gen_iv(*args)
      raise FunctionUnavailableError.new("glGetTexGeniv") unless get_tex_gen_iv?

      get_tex_gen_iv!(*args)
    end

    # Checks if the function "glGetTexGeniv" is loaded.
    @[AlwaysInline]
    def get_tex_gen_iv? : Bool
      !@addr_get_tex_gen_iv.null?
    end

    # Invokes glIsList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_list!(*args)
      addr = @addr_is_list
      proc = Procs.is_list(addr)
      proc.call(*args)
    end

    # Invokes glIsList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_list(*args)
      raise FunctionUnavailableError.new("glIsList") unless is_list?

      is_list!(*args)
    end

    # Checks if the function "glIsList" is loaded.
    @[AlwaysInline]
    def is_list? : Bool
      !@addr_is_list.null?
    end

    # Invokes glFrustum.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def frustum!(*args)
      addr = @addr_frustum
      proc = Procs.frustum(addr)
      proc.call(*args)
    end

    # Invokes glFrustum.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def frustum(*args)
      raise FunctionUnavailableError.new("glFrustum") unless frustum?

      frustum!(*args)
    end

    # Checks if the function "glFrustum" is loaded.
    @[AlwaysInline]
    def frustum? : Bool
      !@addr_frustum.null?
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

    # Invokes glLoadMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_matrix_f!(*args)
      addr = @addr_load_matrix_f
      proc = Procs.load_matrix_f(addr)
      proc.call(*args)
    end

    # Invokes glLoadMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_matrix_f(*args)
      raise FunctionUnavailableError.new("glLoadMatrixf") unless load_matrix_f?

      load_matrix_f!(*args)
    end

    # Checks if the function "glLoadMatrixf" is loaded.
    @[AlwaysInline]
    def load_matrix_f? : Bool
      !@addr_load_matrix_f.null?
    end

    # Invokes glLoadMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_matrix_d!(*args)
      addr = @addr_load_matrix_d
      proc = Procs.load_matrix_d(addr)
      proc.call(*args)
    end

    # Invokes glLoadMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_matrix_d(*args)
      raise FunctionUnavailableError.new("glLoadMatrixd") unless load_matrix_d?

      load_matrix_d!(*args)
    end

    # Checks if the function "glLoadMatrixd" is loaded.
    @[AlwaysInline]
    def load_matrix_d? : Bool
      !@addr_load_matrix_d.null?
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

    # Invokes glMultMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_matrix_f!(*args)
      addr = @addr_mult_matrix_f
      proc = Procs.mult_matrix_f(addr)
      proc.call(*args)
    end

    # Invokes glMultMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_matrix_f(*args)
      raise FunctionUnavailableError.new("glMultMatrixf") unless mult_matrix_f?

      mult_matrix_f!(*args)
    end

    # Checks if the function "glMultMatrixf" is loaded.
    @[AlwaysInline]
    def mult_matrix_f? : Bool
      !@addr_mult_matrix_f.null?
    end

    # Invokes glMultMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_matrix_d!(*args)
      addr = @addr_mult_matrix_d
      proc = Procs.mult_matrix_d(addr)
      proc.call(*args)
    end

    # Invokes glMultMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_matrix_d(*args)
      raise FunctionUnavailableError.new("glMultMatrixd") unless mult_matrix_d?

      mult_matrix_d!(*args)
    end

    # Checks if the function "glMultMatrixd" is loaded.
    @[AlwaysInline]
    def mult_matrix_d? : Bool
      !@addr_mult_matrix_d.null?
    end

    # Invokes glOrtho.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def ortho!(*args)
      addr = @addr_ortho
      proc = Procs.ortho(addr)
      proc.call(*args)
    end

    # Invokes glOrtho.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def ortho(*args)
      raise FunctionUnavailableError.new("glOrtho") unless ortho?

      ortho!(*args)
    end

    # Checks if the function "glOrtho" is loaded.
    @[AlwaysInline]
    def ortho? : Bool
      !@addr_ortho.null?
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

    # Invokes glRotated.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rotate_d!(*args)
      addr = @addr_rotate_d
      proc = Procs.rotate_d(addr)
      proc.call(*args)
    end

    # Invokes glRotated.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rotate_d(*args)
      raise FunctionUnavailableError.new("glRotated") unless rotate_d?

      rotate_d!(*args)
    end

    # Checks if the function "glRotated" is loaded.
    @[AlwaysInline]
    def rotate_d? : Bool
      !@addr_rotate_d.null?
    end

    # Invokes glRotatef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rotate_f!(*args)
      addr = @addr_rotate_f
      proc = Procs.rotate_f(addr)
      proc.call(*args)
    end

    # Invokes glRotatef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rotate_f(*args)
      raise FunctionUnavailableError.new("glRotatef") unless rotate_f?

      rotate_f!(*args)
    end

    # Checks if the function "glRotatef" is loaded.
    @[AlwaysInline]
    def rotate_f? : Bool
      !@addr_rotate_f.null?
    end

    # Invokes glScaled.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scale_d!(*args)
      addr = @addr_scale_d
      proc = Procs.scale_d(addr)
      proc.call(*args)
    end

    # Invokes glScaled.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scale_d(*args)
      raise FunctionUnavailableError.new("glScaled") unless scale_d?

      scale_d!(*args)
    end

    # Checks if the function "glScaled" is loaded.
    @[AlwaysInline]
    def scale_d? : Bool
      !@addr_scale_d.null?
    end

    # Invokes glScalef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scale_f!(*args)
      addr = @addr_scale_f
      proc = Procs.scale_f(addr)
      proc.call(*args)
    end

    # Invokes glScalef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scale_f(*args)
      raise FunctionUnavailableError.new("glScalef") unless scale_f?

      scale_f!(*args)
    end

    # Checks if the function "glScalef" is loaded.
    @[AlwaysInline]
    def scale_f? : Bool
      !@addr_scale_f.null?
    end

    # Invokes glTranslated.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def translate_d!(*args)
      addr = @addr_translate_d
      proc = Procs.translate_d(addr)
      proc.call(*args)
    end

    # Invokes glTranslated.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def translate_d(*args)
      raise FunctionUnavailableError.new("glTranslated") unless translate_d?

      translate_d!(*args)
    end

    # Checks if the function "glTranslated" is loaded.
    @[AlwaysInline]
    def translate_d? : Bool
      !@addr_translate_d.null?
    end

    # Invokes glTranslatef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def translate_f!(*args)
      addr = @addr_translate_f
      proc = Procs.translate_f(addr)
      proc.call(*args)
    end

    # Invokes glTranslatef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def translate_f(*args)
      raise FunctionUnavailableError.new("glTranslatef") unless translate_f?

      translate_f!(*args)
    end

    # Checks if the function "glTranslatef" is loaded.
    @[AlwaysInline]
    def translate_f? : Bool
      !@addr_translate_f.null?
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

    # Invokes glPolygonOffset.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_offset!(*args)
      addr = @addr_polygon_offset
      proc = Procs.polygon_offset(addr)
      proc.call(*args)
    end

    # Invokes glPolygonOffset.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_offset(*args)
      raise FunctionUnavailableError.new("glPolygonOffset") unless polygon_offset?

      polygon_offset!(*args)
    end

    # Checks if the function "glPolygonOffset" is loaded.
    @[AlwaysInline]
    def polygon_offset? : Bool
      !@addr_polygon_offset.null?
    end

    # Invokes glCopyTexImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_image_1d!(*args)
      addr = @addr_copy_tex_image_1d
      proc = Procs.copy_tex_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTexImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_image_1d(*args)
      raise FunctionUnavailableError.new("glCopyTexImage1D") unless copy_tex_image_1d?

      copy_tex_image_1d!(*args)
    end

    # Checks if the function "glCopyTexImage1D" is loaded.
    @[AlwaysInline]
    def copy_tex_image_1d? : Bool
      !@addr_copy_tex_image_1d.null?
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

    # Invokes glCopyTexSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_sub_image_1d!(*args)
      addr = @addr_copy_tex_sub_image_1d
      proc = Procs.copy_tex_sub_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTexSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glCopyTexSubImage1D") unless copy_tex_sub_image_1d?

      copy_tex_sub_image_1d!(*args)
    end

    # Checks if the function "glCopyTexSubImage1D" is loaded.
    @[AlwaysInline]
    def copy_tex_sub_image_1d? : Bool
      !@addr_copy_tex_sub_image_1d.null?
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

    # Invokes glTexSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_sub_image_1d!(*args)
      addr = @addr_tex_sub_image_1d
      proc = Procs.tex_sub_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glTexSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glTexSubImage1D") unless tex_sub_image_1d?

      tex_sub_image_1d!(*args)
    end

    # Checks if the function "glTexSubImage1D" is loaded.
    @[AlwaysInline]
    def tex_sub_image_1d? : Bool
      !@addr_tex_sub_image_1d.null?
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

    # Invokes glArrayElement.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def array_element!(*args)
      addr = @addr_array_element
      proc = Procs.array_element(addr)
      proc.call(*args)
    end

    # Invokes glArrayElement.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def array_element(*args)
      raise FunctionUnavailableError.new("glArrayElement") unless array_element?

      array_element!(*args)
    end

    # Checks if the function "glArrayElement" is loaded.
    @[AlwaysInline]
    def array_element? : Bool
      !@addr_array_element.null?
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

    # Invokes glEdgeFlagPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def edge_flag_pointer!(*args)
      addr = @addr_edge_flag_pointer
      proc = Procs.edge_flag_pointer(addr)
      proc.call(*args)
    end

    # Invokes glEdgeFlagPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def edge_flag_pointer(*args)
      raise FunctionUnavailableError.new("glEdgeFlagPointer") unless edge_flag_pointer?

      edge_flag_pointer!(*args)
    end

    # Checks if the function "glEdgeFlagPointer" is loaded.
    @[AlwaysInline]
    def edge_flag_pointer? : Bool
      !@addr_edge_flag_pointer.null?
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

    # Invokes glIndexPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_pointer!(*args)
      addr = @addr_index_pointer
      proc = Procs.index_pointer(addr)
      proc.call(*args)
    end

    # Invokes glIndexPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_pointer(*args)
      raise FunctionUnavailableError.new("glIndexPointer") unless index_pointer?

      index_pointer!(*args)
    end

    # Checks if the function "glIndexPointer" is loaded.
    @[AlwaysInline]
    def index_pointer? : Bool
      !@addr_index_pointer.null?
    end

    # Invokes glInterleavedArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def interleaved_arrays!(*args)
      addr = @addr_interleaved_arrays
      proc = Procs.interleaved_arrays(addr)
      proc.call(*args)
    end

    # Invokes glInterleavedArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def interleaved_arrays(*args)
      raise FunctionUnavailableError.new("glInterleavedArrays") unless interleaved_arrays?

      interleaved_arrays!(*args)
    end

    # Checks if the function "glInterleavedArrays" is loaded.
    @[AlwaysInline]
    def interleaved_arrays? : Bool
      !@addr_interleaved_arrays.null?
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

    # Invokes glAreTexturesResident.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def are_textures_resident!(*args)
      addr = @addr_are_textures_resident
      proc = Procs.are_textures_resident(addr)
      proc.call(*args)
    end

    # Invokes glAreTexturesResident.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def are_textures_resident(*args)
      raise FunctionUnavailableError.new("glAreTexturesResident") unless are_textures_resident?

      are_textures_resident!(*args)
    end

    # Checks if the function "glAreTexturesResident" is loaded.
    @[AlwaysInline]
    def are_textures_resident? : Bool
      !@addr_are_textures_resident.null?
    end

    # Invokes glPrioritizeTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def prioritize_textures!(*args)
      addr = @addr_prioritize_textures
      proc = Procs.prioritize_textures(addr)
      proc.call(*args)
    end

    # Invokes glPrioritizeTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def prioritize_textures(*args)
      raise FunctionUnavailableError.new("glPrioritizeTextures") unless prioritize_textures?

      prioritize_textures!(*args)
    end

    # Checks if the function "glPrioritizeTextures" is loaded.
    @[AlwaysInline]
    def prioritize_textures? : Bool
      !@addr_prioritize_textures.null?
    end

    # Invokes glIndexub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_ub!(*args)
      addr = @addr_index_ub
      proc = Procs.index_ub(addr)
      proc.call(*args)
    end

    # Invokes glIndexub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_ub(*args)
      raise FunctionUnavailableError.new("glIndexub") unless index_ub?

      index_ub!(*args)
    end

    # Checks if the function "glIndexub" is loaded.
    @[AlwaysInline]
    def index_ub? : Bool
      !@addr_index_ub.null?
    end

    # Invokes glIndexubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_ubv!(*args)
      addr = @addr_index_ubv
      proc = Procs.index_ubv(addr)
      proc.call(*args)
    end

    # Invokes glIndexubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_ubv(*args)
      raise FunctionUnavailableError.new("glIndexubv") unless index_ubv?

      index_ubv!(*args)
    end

    # Checks if the function "glIndexubv" is loaded.
    @[AlwaysInline]
    def index_ubv? : Bool
      !@addr_index_ubv.null?
    end

    # Invokes glPopClientAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_client_attrib!(*args)
      addr = @addr_pop_client_attrib
      proc = Procs.pop_client_attrib(addr)
      proc.call(*args)
    end

    # Invokes glPopClientAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_client_attrib(*args)
      raise FunctionUnavailableError.new("glPopClientAttrib") unless pop_client_attrib?

      pop_client_attrib!(*args)
    end

    # Checks if the function "glPopClientAttrib" is loaded.
    @[AlwaysInline]
    def pop_client_attrib? : Bool
      !@addr_pop_client_attrib.null?
    end

    # Invokes glPushClientAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_client_attrib!(*args)
      addr = @addr_push_client_attrib
      proc = Procs.push_client_attrib(addr)
      proc.call(*args)
    end

    # Invokes glPushClientAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_client_attrib(*args)
      raise FunctionUnavailableError.new("glPushClientAttrib") unless push_client_attrib?

      push_client_attrib!(*args)
    end

    # Checks if the function "glPushClientAttrib" is loaded.
    @[AlwaysInline]
    def push_client_attrib? : Bool
      !@addr_push_client_attrib.null?
    end

    # Invokes glDrawRangeElements.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_range_elements!(*args)
      addr = @addr_draw_range_elements
      proc = Procs.draw_range_elements(addr)
      proc.call(*args)
    end

    # Invokes glDrawRangeElements.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_range_elements(*args)
      raise FunctionUnavailableError.new("glDrawRangeElements") unless draw_range_elements?

      draw_range_elements!(*args)
    end

    # Checks if the function "glDrawRangeElements" is loaded.
    @[AlwaysInline]
    def draw_range_elements? : Bool
      !@addr_draw_range_elements.null?
    end

    # Invokes glTexImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_3d!(*args)
      addr = @addr_tex_image_3d
      proc = Procs.tex_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glTexImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_3d(*args)
      raise FunctionUnavailableError.new("glTexImage3D") unless tex_image_3d?

      tex_image_3d!(*args)
    end

    # Checks if the function "glTexImage3D" is loaded.
    @[AlwaysInline]
    def tex_image_3d? : Bool
      !@addr_tex_image_3d.null?
    end

    # Invokes glTexSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_sub_image_3d!(*args)
      addr = @addr_tex_sub_image_3d
      proc = Procs.tex_sub_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glTexSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glTexSubImage3D") unless tex_sub_image_3d?

      tex_sub_image_3d!(*args)
    end

    # Checks if the function "glTexSubImage3D" is loaded.
    @[AlwaysInline]
    def tex_sub_image_3d? : Bool
      !@addr_tex_sub_image_3d.null?
    end

    # Invokes glCopyTexSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_sub_image_3d!(*args)
      addr = @addr_copy_tex_sub_image_3d
      proc = Procs.copy_tex_sub_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTexSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glCopyTexSubImage3D") unless copy_tex_sub_image_3d?

      copy_tex_sub_image_3d!(*args)
    end

    # Checks if the function "glCopyTexSubImage3D" is loaded.
    @[AlwaysInline]
    def copy_tex_sub_image_3d? : Bool
      !@addr_copy_tex_sub_image_3d.null?
    end
  end
end
