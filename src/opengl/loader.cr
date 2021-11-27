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
      @addr_active_texture = ::Pointer(::Void).null
      @addr_sample_coverage = ::Pointer(::Void).null
      @addr_compressed_tex_image_3d = ::Pointer(::Void).null
      @addr_compressed_tex_image_2d = ::Pointer(::Void).null
      @addr_compressed_tex_image_1d = ::Pointer(::Void).null
      @addr_compressed_tex_sub_image_3d = ::Pointer(::Void).null
      @addr_compressed_tex_sub_image_2d = ::Pointer(::Void).null
      @addr_compressed_tex_sub_image_1d = ::Pointer(::Void).null
      @addr_get_compressed_tex_image = ::Pointer(::Void).null
      @addr_client_active_texture = ::Pointer(::Void).null
      @addr_multi_tex_coord_1d = ::Pointer(::Void).null
      @addr_multi_tex_coord_1dv = ::Pointer(::Void).null
      @addr_multi_tex_coord_1f = ::Pointer(::Void).null
      @addr_multi_tex_coord_1fv = ::Pointer(::Void).null
      @addr_multi_tex_coord_1i = ::Pointer(::Void).null
      @addr_multi_tex_coord_1iv = ::Pointer(::Void).null
      @addr_multi_tex_coord_1s = ::Pointer(::Void).null
      @addr_multi_tex_coord_1sv = ::Pointer(::Void).null
      @addr_multi_tex_coord_2d = ::Pointer(::Void).null
      @addr_multi_tex_coord_2dv = ::Pointer(::Void).null
      @addr_multi_tex_coord_2f = ::Pointer(::Void).null
      @addr_multi_tex_coord_2fv = ::Pointer(::Void).null
      @addr_multi_tex_coord_2i = ::Pointer(::Void).null
      @addr_multi_tex_coord_2iv = ::Pointer(::Void).null
      @addr_multi_tex_coord_2s = ::Pointer(::Void).null
      @addr_multi_tex_coord_2sv = ::Pointer(::Void).null
      @addr_multi_tex_coord_3d = ::Pointer(::Void).null
      @addr_multi_tex_coord_3dv = ::Pointer(::Void).null
      @addr_multi_tex_coord_3f = ::Pointer(::Void).null
      @addr_multi_tex_coord_3fv = ::Pointer(::Void).null
      @addr_multi_tex_coord_3i = ::Pointer(::Void).null
      @addr_multi_tex_coord_3iv = ::Pointer(::Void).null
      @addr_multi_tex_coord_3s = ::Pointer(::Void).null
      @addr_multi_tex_coord_3sv = ::Pointer(::Void).null
      @addr_multi_tex_coord_4d = ::Pointer(::Void).null
      @addr_multi_tex_coord_4dv = ::Pointer(::Void).null
      @addr_multi_tex_coord_4f = ::Pointer(::Void).null
      @addr_multi_tex_coord_4fv = ::Pointer(::Void).null
      @addr_multi_tex_coord_4i = ::Pointer(::Void).null
      @addr_multi_tex_coord_4iv = ::Pointer(::Void).null
      @addr_multi_tex_coord_4s = ::Pointer(::Void).null
      @addr_multi_tex_coord_4sv = ::Pointer(::Void).null
      @addr_load_transpose_matrix_f = ::Pointer(::Void).null
      @addr_load_transpose_matrix_d = ::Pointer(::Void).null
      @addr_mult_transpose_matrix_f = ::Pointer(::Void).null
      @addr_mult_transpose_matrix_d = ::Pointer(::Void).null
      @addr_blend_func_separate = ::Pointer(::Void).null
      @addr_multi_draw_arrays = ::Pointer(::Void).null
      @addr_multi_draw_elements = ::Pointer(::Void).null
      @addr_point_parameter_f = ::Pointer(::Void).null
      @addr_point_parameter_fv = ::Pointer(::Void).null
      @addr_point_parameter_i = ::Pointer(::Void).null
      @addr_point_parameter_iv = ::Pointer(::Void).null
      @addr_fog_coord_f = ::Pointer(::Void).null
      @addr_fog_coord_fv = ::Pointer(::Void).null
      @addr_fog_coord_d = ::Pointer(::Void).null
      @addr_fog_coord_dv = ::Pointer(::Void).null
      @addr_fog_coord_pointer = ::Pointer(::Void).null
      @addr_secondary_color_3b = ::Pointer(::Void).null
      @addr_secondary_color_3bv = ::Pointer(::Void).null
      @addr_secondary_color_3d = ::Pointer(::Void).null
      @addr_secondary_color_3dv = ::Pointer(::Void).null
      @addr_secondary_color_3f = ::Pointer(::Void).null
      @addr_secondary_color_3fv = ::Pointer(::Void).null
      @addr_secondary_color_3i = ::Pointer(::Void).null
      @addr_secondary_color_3iv = ::Pointer(::Void).null
      @addr_secondary_color_3s = ::Pointer(::Void).null
      @addr_secondary_color_3sv = ::Pointer(::Void).null
      @addr_secondary_color_3ub = ::Pointer(::Void).null
      @addr_secondary_color_3ubv = ::Pointer(::Void).null
      @addr_secondary_color_3ui = ::Pointer(::Void).null
      @addr_secondary_color_3uiv = ::Pointer(::Void).null
      @addr_secondary_color_3us = ::Pointer(::Void).null
      @addr_secondary_color_3usv = ::Pointer(::Void).null
      @addr_secondary_color_pointer = ::Pointer(::Void).null
      @addr_window_pos_2d = ::Pointer(::Void).null
      @addr_window_pos_2dv = ::Pointer(::Void).null
      @addr_window_pos_2f = ::Pointer(::Void).null
      @addr_window_pos_2fv = ::Pointer(::Void).null
      @addr_window_pos_2i = ::Pointer(::Void).null
      @addr_window_pos_2iv = ::Pointer(::Void).null
      @addr_window_pos_2s = ::Pointer(::Void).null
      @addr_window_pos_2sv = ::Pointer(::Void).null
      @addr_window_pos_3d = ::Pointer(::Void).null
      @addr_window_pos_3dv = ::Pointer(::Void).null
      @addr_window_pos_3f = ::Pointer(::Void).null
      @addr_window_pos_3fv = ::Pointer(::Void).null
      @addr_window_pos_3i = ::Pointer(::Void).null
      @addr_window_pos_3iv = ::Pointer(::Void).null
      @addr_window_pos_3s = ::Pointer(::Void).null
      @addr_window_pos_3sv = ::Pointer(::Void).null
      @addr_blend_color = ::Pointer(::Void).null
      @addr_blend_equation = ::Pointer(::Void).null
      @addr_gen_queries = ::Pointer(::Void).null
      @addr_delete_queries = ::Pointer(::Void).null
      @addr_is_query = ::Pointer(::Void).null
      @addr_begin_query = ::Pointer(::Void).null
      @addr_end_query = ::Pointer(::Void).null
      @addr_get_query_iv = ::Pointer(::Void).null
      @addr_get_query_object_iv = ::Pointer(::Void).null
      @addr_get_query_object_uiv = ::Pointer(::Void).null
      @addr_bind_buffer = ::Pointer(::Void).null
      @addr_delete_buffers = ::Pointer(::Void).null
      @addr_gen_buffers = ::Pointer(::Void).null
      @addr_is_buffer = ::Pointer(::Void).null
      @addr_buffer_data = ::Pointer(::Void).null
      @addr_buffer_sub_data = ::Pointer(::Void).null
      @addr_get_buffer_sub_data = ::Pointer(::Void).null
      @addr_map_buffer = ::Pointer(::Void).null
      @addr_unmap_buffer = ::Pointer(::Void).null
      @addr_get_buffer_parameter_iv = ::Pointer(::Void).null
      @addr_get_buffer_pointer_v = ::Pointer(::Void).null
      @addr_blend_equation_separate = ::Pointer(::Void).null
      @addr_draw_buffers = ::Pointer(::Void).null
      @addr_stencil_op_separate = ::Pointer(::Void).null
      @addr_stencil_func_separate = ::Pointer(::Void).null
      @addr_stencil_mask_separate = ::Pointer(::Void).null
      @addr_attach_shader = ::Pointer(::Void).null
      @addr_bind_attrib_location = ::Pointer(::Void).null
      @addr_compile_shader = ::Pointer(::Void).null
      @addr_create_program = ::Pointer(::Void).null
      @addr_create_shader = ::Pointer(::Void).null
      @addr_delete_program = ::Pointer(::Void).null
      @addr_delete_shader = ::Pointer(::Void).null
      @addr_detach_shader = ::Pointer(::Void).null
      @addr_disable_vertex_attrib_array = ::Pointer(::Void).null
      @addr_enable_vertex_attrib_array = ::Pointer(::Void).null
      @addr_get_active_attrib = ::Pointer(::Void).null
      @addr_get_active_uniform = ::Pointer(::Void).null
      @addr_get_attached_shaders = ::Pointer(::Void).null
      @addr_get_attrib_location = ::Pointer(::Void).null
      @addr_get_program_iv = ::Pointer(::Void).null
      @addr_get_program_info_log = ::Pointer(::Void).null
      @addr_get_shader_iv = ::Pointer(::Void).null
      @addr_get_shader_info_log = ::Pointer(::Void).null
      @addr_get_shader_source = ::Pointer(::Void).null
      @addr_get_uniform_location = ::Pointer(::Void).null
      @addr_get_uniform_fv = ::Pointer(::Void).null
      @addr_get_uniform_iv = ::Pointer(::Void).null
      @addr_get_vertex_attrib_dv = ::Pointer(::Void).null
      @addr_get_vertex_attrib_fv = ::Pointer(::Void).null
      @addr_get_vertex_attrib_iv = ::Pointer(::Void).null
      @addr_get_vertex_attrib_pointer_v = ::Pointer(::Void).null
      @addr_is_program = ::Pointer(::Void).null
      @addr_is_shader = ::Pointer(::Void).null
      @addr_link_program = ::Pointer(::Void).null
      @addr_shader_source = ::Pointer(::Void).null
      @addr_use_program = ::Pointer(::Void).null
      @addr_uniform_1f = ::Pointer(::Void).null
      @addr_uniform_2f = ::Pointer(::Void).null
      @addr_uniform_3f = ::Pointer(::Void).null
      @addr_uniform_4f = ::Pointer(::Void).null
      @addr_uniform_1i = ::Pointer(::Void).null
      @addr_uniform_2i = ::Pointer(::Void).null
      @addr_uniform_3i = ::Pointer(::Void).null
      @addr_uniform_4i = ::Pointer(::Void).null
      @addr_uniform_1fv = ::Pointer(::Void).null
      @addr_uniform_2fv = ::Pointer(::Void).null
      @addr_uniform_3fv = ::Pointer(::Void).null
      @addr_uniform_4fv = ::Pointer(::Void).null
      @addr_uniform_1iv = ::Pointer(::Void).null
      @addr_uniform_2iv = ::Pointer(::Void).null
      @addr_uniform_3iv = ::Pointer(::Void).null
      @addr_uniform_4iv = ::Pointer(::Void).null
      @addr_uniform_matrix2_fv = ::Pointer(::Void).null
      @addr_uniform_matrix3_fv = ::Pointer(::Void).null
      @addr_uniform_matrix4_fv = ::Pointer(::Void).null
      @addr_validate_program = ::Pointer(::Void).null
      @addr_vertex_attrib_1d = ::Pointer(::Void).null
      @addr_vertex_attrib_1dv = ::Pointer(::Void).null
      @addr_vertex_attrib_1f = ::Pointer(::Void).null
      @addr_vertex_attrib_1fv = ::Pointer(::Void).null
      @addr_vertex_attrib_1s = ::Pointer(::Void).null
      @addr_vertex_attrib_1sv = ::Pointer(::Void).null
      @addr_vertex_attrib_2d = ::Pointer(::Void).null
      @addr_vertex_attrib_2dv = ::Pointer(::Void).null
      @addr_vertex_attrib_2f = ::Pointer(::Void).null
      @addr_vertex_attrib_2fv = ::Pointer(::Void).null
      @addr_vertex_attrib_2s = ::Pointer(::Void).null
      @addr_vertex_attrib_2sv = ::Pointer(::Void).null
      @addr_vertex_attrib_3d = ::Pointer(::Void).null
      @addr_vertex_attrib_3dv = ::Pointer(::Void).null
      @addr_vertex_attrib_3f = ::Pointer(::Void).null
      @addr_vertex_attrib_3fv = ::Pointer(::Void).null
      @addr_vertex_attrib_3s = ::Pointer(::Void).null
      @addr_vertex_attrib_3sv = ::Pointer(::Void).null
      @addr_vertex_attrib_4nbv = ::Pointer(::Void).null
      @addr_vertex_attrib_4niv = ::Pointer(::Void).null
      @addr_vertex_attrib_4nsv = ::Pointer(::Void).null
      @addr_vertex_attrib_4nub = ::Pointer(::Void).null
      @addr_vertex_attrib_4nubv = ::Pointer(::Void).null
      @addr_vertex_attrib_4nuiv = ::Pointer(::Void).null
      @addr_vertex_attrib_4nusv = ::Pointer(::Void).null
      @addr_vertex_attrib_4bv = ::Pointer(::Void).null
      @addr_vertex_attrib_4d = ::Pointer(::Void).null
      @addr_vertex_attrib_4dv = ::Pointer(::Void).null
      @addr_vertex_attrib_4f = ::Pointer(::Void).null
      @addr_vertex_attrib_4fv = ::Pointer(::Void).null
      @addr_vertex_attrib_4iv = ::Pointer(::Void).null
      @addr_vertex_attrib_4s = ::Pointer(::Void).null
      @addr_vertex_attrib_4sv = ::Pointer(::Void).null
      @addr_vertex_attrib_4ubv = ::Pointer(::Void).null
      @addr_vertex_attrib_4uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_4usv = ::Pointer(::Void).null
      @addr_vertex_attrib_pointer = ::Pointer(::Void).null
      @addr_uniform_matrix2x3_fv = ::Pointer(::Void).null
      @addr_uniform_matrix3x2_fv = ::Pointer(::Void).null
      @addr_uniform_matrix2x4_fv = ::Pointer(::Void).null
      @addr_uniform_matrix4x2_fv = ::Pointer(::Void).null
      @addr_uniform_matrix3x4_fv = ::Pointer(::Void).null
      @addr_uniform_matrix4x3_fv = ::Pointer(::Void).null
      @addr_color_mask_i = ::Pointer(::Void).null
      @addr_get_boolean_i_v = ::Pointer(::Void).null
      @addr_get_integer_i_v = ::Pointer(::Void).null
      @addr_enable_i = ::Pointer(::Void).null
      @addr_disable_i = ::Pointer(::Void).null
      @addr_is_enabled_i = ::Pointer(::Void).null
      @addr_begin_transform_feedback = ::Pointer(::Void).null
      @addr_end_transform_feedback = ::Pointer(::Void).null
      @addr_bind_buffer_range = ::Pointer(::Void).null
      @addr_bind_buffer_base = ::Pointer(::Void).null
      @addr_transform_feedback_varyings = ::Pointer(::Void).null
      @addr_get_transform_feedback_varying = ::Pointer(::Void).null
      @addr_clamp_color = ::Pointer(::Void).null
      @addr_begin_conditional_render = ::Pointer(::Void).null
      @addr_end_conditional_render = ::Pointer(::Void).null
      @addr_vertex_attrib_i_pointer = ::Pointer(::Void).null
      @addr_get_vertex_attrib_i_iv = ::Pointer(::Void).null
      @addr_get_vertex_attrib_i_uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_1i = ::Pointer(::Void).null
      @addr_vertex_attrib_i_2i = ::Pointer(::Void).null
      @addr_vertex_attrib_i_3i = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4i = ::Pointer(::Void).null
      @addr_vertex_attrib_i_1ui = ::Pointer(::Void).null
      @addr_vertex_attrib_i_2ui = ::Pointer(::Void).null
      @addr_vertex_attrib_i_3ui = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4ui = ::Pointer(::Void).null
      @addr_vertex_attrib_i_1iv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_2iv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_3iv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4iv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_1uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_2uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_3uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4bv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4sv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4ubv = ::Pointer(::Void).null
      @addr_vertex_attrib_i_4usv = ::Pointer(::Void).null
      @addr_get_uniform_uiv = ::Pointer(::Void).null
      @addr_bind_frag_data_location = ::Pointer(::Void).null
      @addr_get_frag_data_location = ::Pointer(::Void).null
      @addr_uniform_1ui = ::Pointer(::Void).null
      @addr_uniform_2ui = ::Pointer(::Void).null
      @addr_uniform_3ui = ::Pointer(::Void).null
      @addr_uniform_4ui = ::Pointer(::Void).null
      @addr_uniform_1uiv = ::Pointer(::Void).null
      @addr_uniform_2uiv = ::Pointer(::Void).null
      @addr_uniform_3uiv = ::Pointer(::Void).null
      @addr_uniform_4uiv = ::Pointer(::Void).null
      @addr_tex_parameter_i_iv = ::Pointer(::Void).null
      @addr_tex_parameter_i_uiv = ::Pointer(::Void).null
      @addr_get_tex_parameter_i_iv = ::Pointer(::Void).null
      @addr_get_tex_parameter_i_uiv = ::Pointer(::Void).null
      @addr_clear_buffer_iv = ::Pointer(::Void).null
      @addr_clear_buffer_uiv = ::Pointer(::Void).null
      @addr_clear_buffer_fv = ::Pointer(::Void).null
      @addr_clear_buffer_fi = ::Pointer(::Void).null
      @addr_get_string_i = ::Pointer(::Void).null
      @addr_is_renderbuffer = ::Pointer(::Void).null
      @addr_bind_renderbuffer = ::Pointer(::Void).null
      @addr_delete_renderbuffers = ::Pointer(::Void).null
      @addr_gen_renderbuffers = ::Pointer(::Void).null
      @addr_renderbuffer_storage = ::Pointer(::Void).null
      @addr_get_renderbuffer_parameter_iv = ::Pointer(::Void).null
      @addr_is_framebuffer = ::Pointer(::Void).null
      @addr_bind_framebuffer = ::Pointer(::Void).null
      @addr_delete_framebuffers = ::Pointer(::Void).null
      @addr_gen_framebuffers = ::Pointer(::Void).null
      @addr_check_framebuffer_status = ::Pointer(::Void).null
      @addr_framebuffer_texture_1d = ::Pointer(::Void).null
      @addr_framebuffer_texture_2d = ::Pointer(::Void).null
      @addr_framebuffer_texture_3d = ::Pointer(::Void).null
      @addr_framebuffer_renderbuffer = ::Pointer(::Void).null
      @addr_get_framebuffer_attachment_parameter_iv = ::Pointer(::Void).null
      @addr_generate_mipmap = ::Pointer(::Void).null
      @addr_blit_framebuffer = ::Pointer(::Void).null
      @addr_renderbuffer_storage_multisample = ::Pointer(::Void).null
      @addr_framebuffer_texture_layer = ::Pointer(::Void).null
      @addr_map_buffer_range = ::Pointer(::Void).null
      @addr_flush_mapped_buffer_range = ::Pointer(::Void).null
      @addr_bind_vertex_array = ::Pointer(::Void).null
      @addr_delete_vertex_arrays = ::Pointer(::Void).null
      @addr_gen_vertex_arrays = ::Pointer(::Void).null
      @addr_is_vertex_array = ::Pointer(::Void).null
      @addr_draw_arrays_instanced = ::Pointer(::Void).null
      @addr_draw_elements_instanced = ::Pointer(::Void).null
      @addr_tex_buffer = ::Pointer(::Void).null
      @addr_primitive_restart_index = ::Pointer(::Void).null
      @addr_copy_buffer_sub_data = ::Pointer(::Void).null
      @addr_get_uniform_indices = ::Pointer(::Void).null
      @addr_get_active_uniforms_iv = ::Pointer(::Void).null
      @addr_get_active_uniform_name = ::Pointer(::Void).null
      @addr_get_uniform_block_index = ::Pointer(::Void).null
      @addr_get_active_uniform_block_iv = ::Pointer(::Void).null
      @addr_get_active_uniform_block_name = ::Pointer(::Void).null
      @addr_uniform_block_binding = ::Pointer(::Void).null
      @addr_draw_elements_base_vertex = ::Pointer(::Void).null
      @addr_draw_range_elements_base_vertex = ::Pointer(::Void).null
      @addr_draw_elements_instanced_base_vertex = ::Pointer(::Void).null
      @addr_multi_draw_elements_base_vertex = ::Pointer(::Void).null
      @addr_provoking_vertex = ::Pointer(::Void).null
      @addr_fence_sync = ::Pointer(::Void).null
      @addr_is_sync = ::Pointer(::Void).null
      @addr_delete_sync = ::Pointer(::Void).null
      @addr_client_wait_sync = ::Pointer(::Void).null
      @addr_wait_sync = ::Pointer(::Void).null
      @addr_get_integer_64v = ::Pointer(::Void).null
      @addr_get_sync_iv = ::Pointer(::Void).null
      @addr_get_integer_64i_v = ::Pointer(::Void).null
      @addr_get_buffer_parameter_i64v = ::Pointer(::Void).null
      @addr_framebuffer_texture = ::Pointer(::Void).null
      @addr_tex_image_2d_multisample = ::Pointer(::Void).null
      @addr_tex_image_3d_multisample = ::Pointer(::Void).null
      @addr_get_multisample_fv = ::Pointer(::Void).null
      @addr_sample_mask_i = ::Pointer(::Void).null
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
      @addr_active_texture = yield "glActiveTexture"
      @addr_sample_coverage = yield "glSampleCoverage"
      @addr_compressed_tex_image_3d = yield "glCompressedTexImage3D"
      @addr_compressed_tex_image_2d = yield "glCompressedTexImage2D"
      @addr_compressed_tex_image_1d = yield "glCompressedTexImage1D"
      @addr_compressed_tex_sub_image_3d = yield "glCompressedTexSubImage3D"
      @addr_compressed_tex_sub_image_2d = yield "glCompressedTexSubImage2D"
      @addr_compressed_tex_sub_image_1d = yield "glCompressedTexSubImage1D"
      @addr_get_compressed_tex_image = yield "glGetCompressedTexImage"
      @addr_client_active_texture = yield "glClientActiveTexture"
      @addr_multi_tex_coord_1d = yield "glMultiTexCoord1d"
      @addr_multi_tex_coord_1dv = yield "glMultiTexCoord1dv"
      @addr_multi_tex_coord_1f = yield "glMultiTexCoord1f"
      @addr_multi_tex_coord_1fv = yield "glMultiTexCoord1fv"
      @addr_multi_tex_coord_1i = yield "glMultiTexCoord1i"
      @addr_multi_tex_coord_1iv = yield "glMultiTexCoord1iv"
      @addr_multi_tex_coord_1s = yield "glMultiTexCoord1s"
      @addr_multi_tex_coord_1sv = yield "glMultiTexCoord1sv"
      @addr_multi_tex_coord_2d = yield "glMultiTexCoord2d"
      @addr_multi_tex_coord_2dv = yield "glMultiTexCoord2dv"
      @addr_multi_tex_coord_2f = yield "glMultiTexCoord2f"
      @addr_multi_tex_coord_2fv = yield "glMultiTexCoord2fv"
      @addr_multi_tex_coord_2i = yield "glMultiTexCoord2i"
      @addr_multi_tex_coord_2iv = yield "glMultiTexCoord2iv"
      @addr_multi_tex_coord_2s = yield "glMultiTexCoord2s"
      @addr_multi_tex_coord_2sv = yield "glMultiTexCoord2sv"
      @addr_multi_tex_coord_3d = yield "glMultiTexCoord3d"
      @addr_multi_tex_coord_3dv = yield "glMultiTexCoord3dv"
      @addr_multi_tex_coord_3f = yield "glMultiTexCoord3f"
      @addr_multi_tex_coord_3fv = yield "glMultiTexCoord3fv"
      @addr_multi_tex_coord_3i = yield "glMultiTexCoord3i"
      @addr_multi_tex_coord_3iv = yield "glMultiTexCoord3iv"
      @addr_multi_tex_coord_3s = yield "glMultiTexCoord3s"
      @addr_multi_tex_coord_3sv = yield "glMultiTexCoord3sv"
      @addr_multi_tex_coord_4d = yield "glMultiTexCoord4d"
      @addr_multi_tex_coord_4dv = yield "glMultiTexCoord4dv"
      @addr_multi_tex_coord_4f = yield "glMultiTexCoord4f"
      @addr_multi_tex_coord_4fv = yield "glMultiTexCoord4fv"
      @addr_multi_tex_coord_4i = yield "glMultiTexCoord4i"
      @addr_multi_tex_coord_4iv = yield "glMultiTexCoord4iv"
      @addr_multi_tex_coord_4s = yield "glMultiTexCoord4s"
      @addr_multi_tex_coord_4sv = yield "glMultiTexCoord4sv"
      @addr_load_transpose_matrix_f = yield "glLoadTransposeMatrixf"
      @addr_load_transpose_matrix_d = yield "glLoadTransposeMatrixd"
      @addr_mult_transpose_matrix_f = yield "glMultTransposeMatrixf"
      @addr_mult_transpose_matrix_d = yield "glMultTransposeMatrixd"
      @addr_blend_func_separate = yield "glBlendFuncSeparate"
      @addr_multi_draw_arrays = yield "glMultiDrawArrays"
      @addr_multi_draw_elements = yield "glMultiDrawElements"
      @addr_point_parameter_f = yield "glPointParameterf"
      @addr_point_parameter_fv = yield "glPointParameterfv"
      @addr_point_parameter_i = yield "glPointParameteri"
      @addr_point_parameter_iv = yield "glPointParameteriv"
      @addr_fog_coord_f = yield "glFogCoordf"
      @addr_fog_coord_fv = yield "glFogCoordfv"
      @addr_fog_coord_d = yield "glFogCoordd"
      @addr_fog_coord_dv = yield "glFogCoorddv"
      @addr_fog_coord_pointer = yield "glFogCoordPointer"
      @addr_secondary_color_3b = yield "glSecondaryColor3b"
      @addr_secondary_color_3bv = yield "glSecondaryColor3bv"
      @addr_secondary_color_3d = yield "glSecondaryColor3d"
      @addr_secondary_color_3dv = yield "glSecondaryColor3dv"
      @addr_secondary_color_3f = yield "glSecondaryColor3f"
      @addr_secondary_color_3fv = yield "glSecondaryColor3fv"
      @addr_secondary_color_3i = yield "glSecondaryColor3i"
      @addr_secondary_color_3iv = yield "glSecondaryColor3iv"
      @addr_secondary_color_3s = yield "glSecondaryColor3s"
      @addr_secondary_color_3sv = yield "glSecondaryColor3sv"
      @addr_secondary_color_3ub = yield "glSecondaryColor3ub"
      @addr_secondary_color_3ubv = yield "glSecondaryColor3ubv"
      @addr_secondary_color_3ui = yield "glSecondaryColor3ui"
      @addr_secondary_color_3uiv = yield "glSecondaryColor3uiv"
      @addr_secondary_color_3us = yield "glSecondaryColor3us"
      @addr_secondary_color_3usv = yield "glSecondaryColor3usv"
      @addr_secondary_color_pointer = yield "glSecondaryColorPointer"
      @addr_window_pos_2d = yield "glWindowPos2d"
      @addr_window_pos_2dv = yield "glWindowPos2dv"
      @addr_window_pos_2f = yield "glWindowPos2f"
      @addr_window_pos_2fv = yield "glWindowPos2fv"
      @addr_window_pos_2i = yield "glWindowPos2i"
      @addr_window_pos_2iv = yield "glWindowPos2iv"
      @addr_window_pos_2s = yield "glWindowPos2s"
      @addr_window_pos_2sv = yield "glWindowPos2sv"
      @addr_window_pos_3d = yield "glWindowPos3d"
      @addr_window_pos_3dv = yield "glWindowPos3dv"
      @addr_window_pos_3f = yield "glWindowPos3f"
      @addr_window_pos_3fv = yield "glWindowPos3fv"
      @addr_window_pos_3i = yield "glWindowPos3i"
      @addr_window_pos_3iv = yield "glWindowPos3iv"
      @addr_window_pos_3s = yield "glWindowPos3s"
      @addr_window_pos_3sv = yield "glWindowPos3sv"
      @addr_blend_color = yield "glBlendColor"
      @addr_blend_equation = yield "glBlendEquation"
      @addr_gen_queries = yield "glGenQueries"
      @addr_delete_queries = yield "glDeleteQueries"
      @addr_is_query = yield "glIsQuery"
      @addr_begin_query = yield "glBeginQuery"
      @addr_end_query = yield "glEndQuery"
      @addr_get_query_iv = yield "glGetQueryiv"
      @addr_get_query_object_iv = yield "glGetQueryObjectiv"
      @addr_get_query_object_uiv = yield "glGetQueryObjectuiv"
      @addr_bind_buffer = yield "glBindBuffer"
      @addr_delete_buffers = yield "glDeleteBuffers"
      @addr_gen_buffers = yield "glGenBuffers"
      @addr_is_buffer = yield "glIsBuffer"
      @addr_buffer_data = yield "glBufferData"
      @addr_buffer_sub_data = yield "glBufferSubData"
      @addr_get_buffer_sub_data = yield "glGetBufferSubData"
      @addr_map_buffer = yield "glMapBuffer"
      @addr_unmap_buffer = yield "glUnmapBuffer"
      @addr_get_buffer_parameter_iv = yield "glGetBufferParameteriv"
      @addr_get_buffer_pointer_v = yield "glGetBufferPointerv"
      @addr_blend_equation_separate = yield "glBlendEquationSeparate"
      @addr_draw_buffers = yield "glDrawBuffers"
      @addr_stencil_op_separate = yield "glStencilOpSeparate"
      @addr_stencil_func_separate = yield "glStencilFuncSeparate"
      @addr_stencil_mask_separate = yield "glStencilMaskSeparate"
      @addr_attach_shader = yield "glAttachShader"
      @addr_bind_attrib_location = yield "glBindAttribLocation"
      @addr_compile_shader = yield "glCompileShader"
      @addr_create_program = yield "glCreateProgram"
      @addr_create_shader = yield "glCreateShader"
      @addr_delete_program = yield "glDeleteProgram"
      @addr_delete_shader = yield "glDeleteShader"
      @addr_detach_shader = yield "glDetachShader"
      @addr_disable_vertex_attrib_array = yield "glDisableVertexAttribArray"
      @addr_enable_vertex_attrib_array = yield "glEnableVertexAttribArray"
      @addr_get_active_attrib = yield "glGetActiveAttrib"
      @addr_get_active_uniform = yield "glGetActiveUniform"
      @addr_get_attached_shaders = yield "glGetAttachedShaders"
      @addr_get_attrib_location = yield "glGetAttribLocation"
      @addr_get_program_iv = yield "glGetProgramiv"
      @addr_get_program_info_log = yield "glGetProgramInfoLog"
      @addr_get_shader_iv = yield "glGetShaderiv"
      @addr_get_shader_info_log = yield "glGetShaderInfoLog"
      @addr_get_shader_source = yield "glGetShaderSource"
      @addr_get_uniform_location = yield "glGetUniformLocation"
      @addr_get_uniform_fv = yield "glGetUniformfv"
      @addr_get_uniform_iv = yield "glGetUniformiv"
      @addr_get_vertex_attrib_dv = yield "glGetVertexAttribdv"
      @addr_get_vertex_attrib_fv = yield "glGetVertexAttribfv"
      @addr_get_vertex_attrib_iv = yield "glGetVertexAttribiv"
      @addr_get_vertex_attrib_pointer_v = yield "glGetVertexAttribPointerv"
      @addr_is_program = yield "glIsProgram"
      @addr_is_shader = yield "glIsShader"
      @addr_link_program = yield "glLinkProgram"
      @addr_shader_source = yield "glShaderSource"
      @addr_use_program = yield "glUseProgram"
      @addr_uniform_1f = yield "glUniform1f"
      @addr_uniform_2f = yield "glUniform2f"
      @addr_uniform_3f = yield "glUniform3f"
      @addr_uniform_4f = yield "glUniform4f"
      @addr_uniform_1i = yield "glUniform1i"
      @addr_uniform_2i = yield "glUniform2i"
      @addr_uniform_3i = yield "glUniform3i"
      @addr_uniform_4i = yield "glUniform4i"
      @addr_uniform_1fv = yield "glUniform1fv"
      @addr_uniform_2fv = yield "glUniform2fv"
      @addr_uniform_3fv = yield "glUniform3fv"
      @addr_uniform_4fv = yield "glUniform4fv"
      @addr_uniform_1iv = yield "glUniform1iv"
      @addr_uniform_2iv = yield "glUniform2iv"
      @addr_uniform_3iv = yield "glUniform3iv"
      @addr_uniform_4iv = yield "glUniform4iv"
      @addr_uniform_matrix2_fv = yield "glUniformMatrix2fv"
      @addr_uniform_matrix3_fv = yield "glUniformMatrix3fv"
      @addr_uniform_matrix4_fv = yield "glUniformMatrix4fv"
      @addr_validate_program = yield "glValidateProgram"
      @addr_vertex_attrib_1d = yield "glVertexAttrib1d"
      @addr_vertex_attrib_1dv = yield "glVertexAttrib1dv"
      @addr_vertex_attrib_1f = yield "glVertexAttrib1f"
      @addr_vertex_attrib_1fv = yield "glVertexAttrib1fv"
      @addr_vertex_attrib_1s = yield "glVertexAttrib1s"
      @addr_vertex_attrib_1sv = yield "glVertexAttrib1sv"
      @addr_vertex_attrib_2d = yield "glVertexAttrib2d"
      @addr_vertex_attrib_2dv = yield "glVertexAttrib2dv"
      @addr_vertex_attrib_2f = yield "glVertexAttrib2f"
      @addr_vertex_attrib_2fv = yield "glVertexAttrib2fv"
      @addr_vertex_attrib_2s = yield "glVertexAttrib2s"
      @addr_vertex_attrib_2sv = yield "glVertexAttrib2sv"
      @addr_vertex_attrib_3d = yield "glVertexAttrib3d"
      @addr_vertex_attrib_3dv = yield "glVertexAttrib3dv"
      @addr_vertex_attrib_3f = yield "glVertexAttrib3f"
      @addr_vertex_attrib_3fv = yield "glVertexAttrib3fv"
      @addr_vertex_attrib_3s = yield "glVertexAttrib3s"
      @addr_vertex_attrib_3sv = yield "glVertexAttrib3sv"
      @addr_vertex_attrib_4nbv = yield "glVertexAttrib4Nbv"
      @addr_vertex_attrib_4niv = yield "glVertexAttrib4Niv"
      @addr_vertex_attrib_4nsv = yield "glVertexAttrib4Nsv"
      @addr_vertex_attrib_4nub = yield "glVertexAttrib4Nub"
      @addr_vertex_attrib_4nubv = yield "glVertexAttrib4Nubv"
      @addr_vertex_attrib_4nuiv = yield "glVertexAttrib4Nuiv"
      @addr_vertex_attrib_4nusv = yield "glVertexAttrib4Nusv"
      @addr_vertex_attrib_4bv = yield "glVertexAttrib4bv"
      @addr_vertex_attrib_4d = yield "glVertexAttrib4d"
      @addr_vertex_attrib_4dv = yield "glVertexAttrib4dv"
      @addr_vertex_attrib_4f = yield "glVertexAttrib4f"
      @addr_vertex_attrib_4fv = yield "glVertexAttrib4fv"
      @addr_vertex_attrib_4iv = yield "glVertexAttrib4iv"
      @addr_vertex_attrib_4s = yield "glVertexAttrib4s"
      @addr_vertex_attrib_4sv = yield "glVertexAttrib4sv"
      @addr_vertex_attrib_4ubv = yield "glVertexAttrib4ubv"
      @addr_vertex_attrib_4uiv = yield "glVertexAttrib4uiv"
      @addr_vertex_attrib_4usv = yield "glVertexAttrib4usv"
      @addr_vertex_attrib_pointer = yield "glVertexAttribPointer"
      @addr_uniform_matrix2x3_fv = yield "glUniformMatrix2x3fv"
      @addr_uniform_matrix3x2_fv = yield "glUniformMatrix3x2fv"
      @addr_uniform_matrix2x4_fv = yield "glUniformMatrix2x4fv"
      @addr_uniform_matrix4x2_fv = yield "glUniformMatrix4x2fv"
      @addr_uniform_matrix3x4_fv = yield "glUniformMatrix3x4fv"
      @addr_uniform_matrix4x3_fv = yield "glUniformMatrix4x3fv"
      @addr_color_mask_i = yield "glColorMaski"
      @addr_get_boolean_i_v = yield "glGetBooleani_v"
      @addr_get_integer_i_v = yield "glGetIntegeri_v"
      @addr_enable_i = yield "glEnablei"
      @addr_disable_i = yield "glDisablei"
      @addr_is_enabled_i = yield "glIsEnabledi"
      @addr_begin_transform_feedback = yield "glBeginTransformFeedback"
      @addr_end_transform_feedback = yield "glEndTransformFeedback"
      @addr_bind_buffer_range = yield "glBindBufferRange"
      @addr_bind_buffer_base = yield "glBindBufferBase"
      @addr_transform_feedback_varyings = yield "glTransformFeedbackVaryings"
      @addr_get_transform_feedback_varying = yield "glGetTransformFeedbackVarying"
      @addr_clamp_color = yield "glClampColor"
      @addr_begin_conditional_render = yield "glBeginConditionalRender"
      @addr_end_conditional_render = yield "glEndConditionalRender"
      @addr_vertex_attrib_i_pointer = yield "glVertexAttribIPointer"
      @addr_get_vertex_attrib_i_iv = yield "glGetVertexAttribIiv"
      @addr_get_vertex_attrib_i_uiv = yield "glGetVertexAttribIuiv"
      @addr_vertex_attrib_i_1i = yield "glVertexAttribI1i"
      @addr_vertex_attrib_i_2i = yield "glVertexAttribI2i"
      @addr_vertex_attrib_i_3i = yield "glVertexAttribI3i"
      @addr_vertex_attrib_i_4i = yield "glVertexAttribI4i"
      @addr_vertex_attrib_i_1ui = yield "glVertexAttribI1ui"
      @addr_vertex_attrib_i_2ui = yield "glVertexAttribI2ui"
      @addr_vertex_attrib_i_3ui = yield "glVertexAttribI3ui"
      @addr_vertex_attrib_i_4ui = yield "glVertexAttribI4ui"
      @addr_vertex_attrib_i_1iv = yield "glVertexAttribI1iv"
      @addr_vertex_attrib_i_2iv = yield "glVertexAttribI2iv"
      @addr_vertex_attrib_i_3iv = yield "glVertexAttribI3iv"
      @addr_vertex_attrib_i_4iv = yield "glVertexAttribI4iv"
      @addr_vertex_attrib_i_1uiv = yield "glVertexAttribI1uiv"
      @addr_vertex_attrib_i_2uiv = yield "glVertexAttribI2uiv"
      @addr_vertex_attrib_i_3uiv = yield "glVertexAttribI3uiv"
      @addr_vertex_attrib_i_4uiv = yield "glVertexAttribI4uiv"
      @addr_vertex_attrib_i_4bv = yield "glVertexAttribI4bv"
      @addr_vertex_attrib_i_4sv = yield "glVertexAttribI4sv"
      @addr_vertex_attrib_i_4ubv = yield "glVertexAttribI4ubv"
      @addr_vertex_attrib_i_4usv = yield "glVertexAttribI4usv"
      @addr_get_uniform_uiv = yield "glGetUniformuiv"
      @addr_bind_frag_data_location = yield "glBindFragDataLocation"
      @addr_get_frag_data_location = yield "glGetFragDataLocation"
      @addr_uniform_1ui = yield "glUniform1ui"
      @addr_uniform_2ui = yield "glUniform2ui"
      @addr_uniform_3ui = yield "glUniform3ui"
      @addr_uniform_4ui = yield "glUniform4ui"
      @addr_uniform_1uiv = yield "glUniform1uiv"
      @addr_uniform_2uiv = yield "glUniform2uiv"
      @addr_uniform_3uiv = yield "glUniform3uiv"
      @addr_uniform_4uiv = yield "glUniform4uiv"
      @addr_tex_parameter_i_iv = yield "glTexParameterIiv"
      @addr_tex_parameter_i_uiv = yield "glTexParameterIuiv"
      @addr_get_tex_parameter_i_iv = yield "glGetTexParameterIiv"
      @addr_get_tex_parameter_i_uiv = yield "glGetTexParameterIuiv"
      @addr_clear_buffer_iv = yield "glClearBufferiv"
      @addr_clear_buffer_uiv = yield "glClearBufferuiv"
      @addr_clear_buffer_fv = yield "glClearBufferfv"
      @addr_clear_buffer_fi = yield "glClearBufferfi"
      @addr_get_string_i = yield "glGetStringi"
      @addr_is_renderbuffer = yield "glIsRenderbuffer"
      @addr_bind_renderbuffer = yield "glBindRenderbuffer"
      @addr_delete_renderbuffers = yield "glDeleteRenderbuffers"
      @addr_gen_renderbuffers = yield "glGenRenderbuffers"
      @addr_renderbuffer_storage = yield "glRenderbufferStorage"
      @addr_get_renderbuffer_parameter_iv = yield "glGetRenderbufferParameteriv"
      @addr_is_framebuffer = yield "glIsFramebuffer"
      @addr_bind_framebuffer = yield "glBindFramebuffer"
      @addr_delete_framebuffers = yield "glDeleteFramebuffers"
      @addr_gen_framebuffers = yield "glGenFramebuffers"
      @addr_check_framebuffer_status = yield "glCheckFramebufferStatus"
      @addr_framebuffer_texture_1d = yield "glFramebufferTexture1D"
      @addr_framebuffer_texture_2d = yield "glFramebufferTexture2D"
      @addr_framebuffer_texture_3d = yield "glFramebufferTexture3D"
      @addr_framebuffer_renderbuffer = yield "glFramebufferRenderbuffer"
      @addr_get_framebuffer_attachment_parameter_iv = yield "glGetFramebufferAttachmentParameteriv"
      @addr_generate_mipmap = yield "glGenerateMipmap"
      @addr_blit_framebuffer = yield "glBlitFramebuffer"
      @addr_renderbuffer_storage_multisample = yield "glRenderbufferStorageMultisample"
      @addr_framebuffer_texture_layer = yield "glFramebufferTextureLayer"
      @addr_map_buffer_range = yield "glMapBufferRange"
      @addr_flush_mapped_buffer_range = yield "glFlushMappedBufferRange"
      @addr_bind_vertex_array = yield "glBindVertexArray"
      @addr_delete_vertex_arrays = yield "glDeleteVertexArrays"
      @addr_gen_vertex_arrays = yield "glGenVertexArrays"
      @addr_is_vertex_array = yield "glIsVertexArray"
      @addr_draw_arrays_instanced = yield "glDrawArraysInstanced"
      @addr_draw_elements_instanced = yield "glDrawElementsInstanced"
      @addr_tex_buffer = yield "glTexBuffer"
      @addr_primitive_restart_index = yield "glPrimitiveRestartIndex"
      @addr_copy_buffer_sub_data = yield "glCopyBufferSubData"
      @addr_get_uniform_indices = yield "glGetUniformIndices"
      @addr_get_active_uniforms_iv = yield "glGetActiveUniformsiv"
      @addr_get_active_uniform_name = yield "glGetActiveUniformName"
      @addr_get_uniform_block_index = yield "glGetUniformBlockIndex"
      @addr_get_active_uniform_block_iv = yield "glGetActiveUniformBlockiv"
      @addr_get_active_uniform_block_name = yield "glGetActiveUniformBlockName"
      @addr_uniform_block_binding = yield "glUniformBlockBinding"
      @addr_draw_elements_base_vertex = yield "glDrawElementsBaseVertex"
      @addr_draw_range_elements_base_vertex = yield "glDrawRangeElementsBaseVertex"
      @addr_draw_elements_instanced_base_vertex = yield "glDrawElementsInstancedBaseVertex"
      @addr_multi_draw_elements_base_vertex = yield "glMultiDrawElementsBaseVertex"
      @addr_provoking_vertex = yield "glProvokingVertex"
      @addr_fence_sync = yield "glFenceSync"
      @addr_is_sync = yield "glIsSync"
      @addr_delete_sync = yield "glDeleteSync"
      @addr_client_wait_sync = yield "glClientWaitSync"
      @addr_wait_sync = yield "glWaitSync"
      @addr_get_integer_64v = yield "glGetInteger64v"
      @addr_get_sync_iv = yield "glGetSynciv"
      @addr_get_integer_64i_v = yield "glGetInteger64i_v"
      @addr_get_buffer_parameter_i64v = yield "glGetBufferParameteri64v"
      @addr_framebuffer_texture = yield "glFramebufferTexture"
      @addr_tex_image_2d_multisample = yield "glTexImage2DMultisample"
      @addr_tex_image_3d_multisample = yield "glTexImage3DMultisample"
      @addr_get_multisample_fv = yield "glGetMultisamplefv"
      @addr_sample_mask_i = yield "glSampleMaski"
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

    # Invokes glCompressedTexImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_image_3d!(*args)
      addr = @addr_compressed_tex_image_3d
      proc = Procs.compressed_tex_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTexImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_image_3d(*args)
      raise FunctionUnavailableError.new("glCompressedTexImage3D") unless compressed_tex_image_3d?

      compressed_tex_image_3d!(*args)
    end

    # Checks if the function "glCompressedTexImage3D" is loaded.
    @[AlwaysInline]
    def compressed_tex_image_3d? : Bool
      !@addr_compressed_tex_image_3d.null?
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

    # Invokes glCompressedTexImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_image_1d!(*args)
      addr = @addr_compressed_tex_image_1d
      proc = Procs.compressed_tex_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTexImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_image_1d(*args)
      raise FunctionUnavailableError.new("glCompressedTexImage1D") unless compressed_tex_image_1d?

      compressed_tex_image_1d!(*args)
    end

    # Checks if the function "glCompressedTexImage1D" is loaded.
    @[AlwaysInline]
    def compressed_tex_image_1d? : Bool
      !@addr_compressed_tex_image_1d.null?
    end

    # Invokes glCompressedTexSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_sub_image_3d!(*args)
      addr = @addr_compressed_tex_sub_image_3d
      proc = Procs.compressed_tex_sub_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTexSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glCompressedTexSubImage3D") unless compressed_tex_sub_image_3d?

      compressed_tex_sub_image_3d!(*args)
    end

    # Checks if the function "glCompressedTexSubImage3D" is loaded.
    @[AlwaysInline]
    def compressed_tex_sub_image_3d? : Bool
      !@addr_compressed_tex_sub_image_3d.null?
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

    # Invokes glCompressedTexSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_sub_image_1d!(*args)
      addr = @addr_compressed_tex_sub_image_1d
      proc = Procs.compressed_tex_sub_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTexSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glCompressedTexSubImage1D") unless compressed_tex_sub_image_1d?

      compressed_tex_sub_image_1d!(*args)
    end

    # Checks if the function "glCompressedTexSubImage1D" is loaded.
    @[AlwaysInline]
    def compressed_tex_sub_image_1d? : Bool
      !@addr_compressed_tex_sub_image_1d.null?
    end

    # Invokes glGetCompressedTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_compressed_tex_image!(*args)
      addr = @addr_get_compressed_tex_image
      proc = Procs.get_compressed_tex_image(addr)
      proc.call(*args)
    end

    # Invokes glGetCompressedTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_compressed_tex_image(*args)
      raise FunctionUnavailableError.new("glGetCompressedTexImage") unless get_compressed_tex_image?

      get_compressed_tex_image!(*args)
    end

    # Checks if the function "glGetCompressedTexImage" is loaded.
    @[AlwaysInline]
    def get_compressed_tex_image? : Bool
      !@addr_get_compressed_tex_image.null?
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

    # Invokes glMultiTexCoord1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1d!(*args)
      addr = @addr_multi_tex_coord_1d
      proc = Procs.multi_tex_coord_1d(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1d") unless multi_tex_coord_1d?

      multi_tex_coord_1d!(*args)
    end

    # Checks if the function "glMultiTexCoord1d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1d? : Bool
      !@addr_multi_tex_coord_1d.null?
    end

    # Invokes glMultiTexCoord1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1dv!(*args)
      addr = @addr_multi_tex_coord_1dv
      proc = Procs.multi_tex_coord_1dv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1dv") unless multi_tex_coord_1dv?

      multi_tex_coord_1dv!(*args)
    end

    # Checks if the function "glMultiTexCoord1dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1dv? : Bool
      !@addr_multi_tex_coord_1dv.null?
    end

    # Invokes glMultiTexCoord1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1f!(*args)
      addr = @addr_multi_tex_coord_1f
      proc = Procs.multi_tex_coord_1f(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1f") unless multi_tex_coord_1f?

      multi_tex_coord_1f!(*args)
    end

    # Checks if the function "glMultiTexCoord1f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1f? : Bool
      !@addr_multi_tex_coord_1f.null?
    end

    # Invokes glMultiTexCoord1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1fv!(*args)
      addr = @addr_multi_tex_coord_1fv
      proc = Procs.multi_tex_coord_1fv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1fv") unless multi_tex_coord_1fv?

      multi_tex_coord_1fv!(*args)
    end

    # Checks if the function "glMultiTexCoord1fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1fv? : Bool
      !@addr_multi_tex_coord_1fv.null?
    end

    # Invokes glMultiTexCoord1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1i!(*args)
      addr = @addr_multi_tex_coord_1i
      proc = Procs.multi_tex_coord_1i(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1i") unless multi_tex_coord_1i?

      multi_tex_coord_1i!(*args)
    end

    # Checks if the function "glMultiTexCoord1i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1i? : Bool
      !@addr_multi_tex_coord_1i.null?
    end

    # Invokes glMultiTexCoord1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1iv!(*args)
      addr = @addr_multi_tex_coord_1iv
      proc = Procs.multi_tex_coord_1iv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1iv") unless multi_tex_coord_1iv?

      multi_tex_coord_1iv!(*args)
    end

    # Checks if the function "glMultiTexCoord1iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1iv? : Bool
      !@addr_multi_tex_coord_1iv.null?
    end

    # Invokes glMultiTexCoord1s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1s!(*args)
      addr = @addr_multi_tex_coord_1s
      proc = Procs.multi_tex_coord_1s(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1s") unless multi_tex_coord_1s?

      multi_tex_coord_1s!(*args)
    end

    # Checks if the function "glMultiTexCoord1s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1s? : Bool
      !@addr_multi_tex_coord_1s.null?
    end

    # Invokes glMultiTexCoord1sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1sv!(*args)
      addr = @addr_multi_tex_coord_1sv
      proc = Procs.multi_tex_coord_1sv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord1sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1sv") unless multi_tex_coord_1sv?

      multi_tex_coord_1sv!(*args)
    end

    # Checks if the function "glMultiTexCoord1sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1sv? : Bool
      !@addr_multi_tex_coord_1sv.null?
    end

    # Invokes glMultiTexCoord2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2d!(*args)
      addr = @addr_multi_tex_coord_2d
      proc = Procs.multi_tex_coord_2d(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2d") unless multi_tex_coord_2d?

      multi_tex_coord_2d!(*args)
    end

    # Checks if the function "glMultiTexCoord2d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2d? : Bool
      !@addr_multi_tex_coord_2d.null?
    end

    # Invokes glMultiTexCoord2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2dv!(*args)
      addr = @addr_multi_tex_coord_2dv
      proc = Procs.multi_tex_coord_2dv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2dv") unless multi_tex_coord_2dv?

      multi_tex_coord_2dv!(*args)
    end

    # Checks if the function "glMultiTexCoord2dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2dv? : Bool
      !@addr_multi_tex_coord_2dv.null?
    end

    # Invokes glMultiTexCoord2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2f!(*args)
      addr = @addr_multi_tex_coord_2f
      proc = Procs.multi_tex_coord_2f(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2f") unless multi_tex_coord_2f?

      multi_tex_coord_2f!(*args)
    end

    # Checks if the function "glMultiTexCoord2f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2f? : Bool
      !@addr_multi_tex_coord_2f.null?
    end

    # Invokes glMultiTexCoord2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2fv!(*args)
      addr = @addr_multi_tex_coord_2fv
      proc = Procs.multi_tex_coord_2fv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2fv") unless multi_tex_coord_2fv?

      multi_tex_coord_2fv!(*args)
    end

    # Checks if the function "glMultiTexCoord2fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2fv? : Bool
      !@addr_multi_tex_coord_2fv.null?
    end

    # Invokes glMultiTexCoord2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2i!(*args)
      addr = @addr_multi_tex_coord_2i
      proc = Procs.multi_tex_coord_2i(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2i") unless multi_tex_coord_2i?

      multi_tex_coord_2i!(*args)
    end

    # Checks if the function "glMultiTexCoord2i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2i? : Bool
      !@addr_multi_tex_coord_2i.null?
    end

    # Invokes glMultiTexCoord2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2iv!(*args)
      addr = @addr_multi_tex_coord_2iv
      proc = Procs.multi_tex_coord_2iv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2iv") unless multi_tex_coord_2iv?

      multi_tex_coord_2iv!(*args)
    end

    # Checks if the function "glMultiTexCoord2iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2iv? : Bool
      !@addr_multi_tex_coord_2iv.null?
    end

    # Invokes glMultiTexCoord2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2s!(*args)
      addr = @addr_multi_tex_coord_2s
      proc = Procs.multi_tex_coord_2s(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2s") unless multi_tex_coord_2s?

      multi_tex_coord_2s!(*args)
    end

    # Checks if the function "glMultiTexCoord2s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2s? : Bool
      !@addr_multi_tex_coord_2s.null?
    end

    # Invokes glMultiTexCoord2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2sv!(*args)
      addr = @addr_multi_tex_coord_2sv
      proc = Procs.multi_tex_coord_2sv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2sv") unless multi_tex_coord_2sv?

      multi_tex_coord_2sv!(*args)
    end

    # Checks if the function "glMultiTexCoord2sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2sv? : Bool
      !@addr_multi_tex_coord_2sv.null?
    end

    # Invokes glMultiTexCoord3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3d!(*args)
      addr = @addr_multi_tex_coord_3d
      proc = Procs.multi_tex_coord_3d(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3d") unless multi_tex_coord_3d?

      multi_tex_coord_3d!(*args)
    end

    # Checks if the function "glMultiTexCoord3d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3d? : Bool
      !@addr_multi_tex_coord_3d.null?
    end

    # Invokes glMultiTexCoord3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3dv!(*args)
      addr = @addr_multi_tex_coord_3dv
      proc = Procs.multi_tex_coord_3dv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3dv") unless multi_tex_coord_3dv?

      multi_tex_coord_3dv!(*args)
    end

    # Checks if the function "glMultiTexCoord3dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3dv? : Bool
      !@addr_multi_tex_coord_3dv.null?
    end

    # Invokes glMultiTexCoord3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3f!(*args)
      addr = @addr_multi_tex_coord_3f
      proc = Procs.multi_tex_coord_3f(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3f") unless multi_tex_coord_3f?

      multi_tex_coord_3f!(*args)
    end

    # Checks if the function "glMultiTexCoord3f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3f? : Bool
      !@addr_multi_tex_coord_3f.null?
    end

    # Invokes glMultiTexCoord3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3fv!(*args)
      addr = @addr_multi_tex_coord_3fv
      proc = Procs.multi_tex_coord_3fv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3fv") unless multi_tex_coord_3fv?

      multi_tex_coord_3fv!(*args)
    end

    # Checks if the function "glMultiTexCoord3fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3fv? : Bool
      !@addr_multi_tex_coord_3fv.null?
    end

    # Invokes glMultiTexCoord3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3i!(*args)
      addr = @addr_multi_tex_coord_3i
      proc = Procs.multi_tex_coord_3i(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3i") unless multi_tex_coord_3i?

      multi_tex_coord_3i!(*args)
    end

    # Checks if the function "glMultiTexCoord3i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3i? : Bool
      !@addr_multi_tex_coord_3i.null?
    end

    # Invokes glMultiTexCoord3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3iv!(*args)
      addr = @addr_multi_tex_coord_3iv
      proc = Procs.multi_tex_coord_3iv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3iv") unless multi_tex_coord_3iv?

      multi_tex_coord_3iv!(*args)
    end

    # Checks if the function "glMultiTexCoord3iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3iv? : Bool
      !@addr_multi_tex_coord_3iv.null?
    end

    # Invokes glMultiTexCoord3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3s!(*args)
      addr = @addr_multi_tex_coord_3s
      proc = Procs.multi_tex_coord_3s(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3s") unless multi_tex_coord_3s?

      multi_tex_coord_3s!(*args)
    end

    # Checks if the function "glMultiTexCoord3s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3s? : Bool
      !@addr_multi_tex_coord_3s.null?
    end

    # Invokes glMultiTexCoord3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3sv!(*args)
      addr = @addr_multi_tex_coord_3sv
      proc = Procs.multi_tex_coord_3sv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3sv") unless multi_tex_coord_3sv?

      multi_tex_coord_3sv!(*args)
    end

    # Checks if the function "glMultiTexCoord3sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3sv? : Bool
      !@addr_multi_tex_coord_3sv.null?
    end

    # Invokes glMultiTexCoord4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4d!(*args)
      addr = @addr_multi_tex_coord_4d
      proc = Procs.multi_tex_coord_4d(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4d") unless multi_tex_coord_4d?

      multi_tex_coord_4d!(*args)
    end

    # Checks if the function "glMultiTexCoord4d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4d? : Bool
      !@addr_multi_tex_coord_4d.null?
    end

    # Invokes glMultiTexCoord4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4dv!(*args)
      addr = @addr_multi_tex_coord_4dv
      proc = Procs.multi_tex_coord_4dv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4dv") unless multi_tex_coord_4dv?

      multi_tex_coord_4dv!(*args)
    end

    # Checks if the function "glMultiTexCoord4dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4dv? : Bool
      !@addr_multi_tex_coord_4dv.null?
    end

    # Invokes glMultiTexCoord4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4f!(*args)
      addr = @addr_multi_tex_coord_4f
      proc = Procs.multi_tex_coord_4f(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4f") unless multi_tex_coord_4f?

      multi_tex_coord_4f!(*args)
    end

    # Checks if the function "glMultiTexCoord4f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4f? : Bool
      !@addr_multi_tex_coord_4f.null?
    end

    # Invokes glMultiTexCoord4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4fv!(*args)
      addr = @addr_multi_tex_coord_4fv
      proc = Procs.multi_tex_coord_4fv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4fv") unless multi_tex_coord_4fv?

      multi_tex_coord_4fv!(*args)
    end

    # Checks if the function "glMultiTexCoord4fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4fv? : Bool
      !@addr_multi_tex_coord_4fv.null?
    end

    # Invokes glMultiTexCoord4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4i!(*args)
      addr = @addr_multi_tex_coord_4i
      proc = Procs.multi_tex_coord_4i(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4i") unless multi_tex_coord_4i?

      multi_tex_coord_4i!(*args)
    end

    # Checks if the function "glMultiTexCoord4i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4i? : Bool
      !@addr_multi_tex_coord_4i.null?
    end

    # Invokes glMultiTexCoord4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4iv!(*args)
      addr = @addr_multi_tex_coord_4iv
      proc = Procs.multi_tex_coord_4iv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4iv") unless multi_tex_coord_4iv?

      multi_tex_coord_4iv!(*args)
    end

    # Checks if the function "glMultiTexCoord4iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4iv? : Bool
      !@addr_multi_tex_coord_4iv.null?
    end

    # Invokes glMultiTexCoord4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4s!(*args)
      addr = @addr_multi_tex_coord_4s
      proc = Procs.multi_tex_coord_4s(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4s") unless multi_tex_coord_4s?

      multi_tex_coord_4s!(*args)
    end

    # Checks if the function "glMultiTexCoord4s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4s? : Bool
      !@addr_multi_tex_coord_4s.null?
    end

    # Invokes glMultiTexCoord4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4sv!(*args)
      addr = @addr_multi_tex_coord_4sv
      proc = Procs.multi_tex_coord_4sv(addr)
      proc.call(*args)
    end

    # Invokes glMultiTexCoord4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4sv") unless multi_tex_coord_4sv?

      multi_tex_coord_4sv!(*args)
    end

    # Checks if the function "glMultiTexCoord4sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4sv? : Bool
      !@addr_multi_tex_coord_4sv.null?
    end

    # Invokes glLoadTransposeMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_transpose_matrix_f!(*args)
      addr = @addr_load_transpose_matrix_f
      proc = Procs.load_transpose_matrix_f(addr)
      proc.call(*args)
    end

    # Invokes glLoadTransposeMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_transpose_matrix_f(*args)
      raise FunctionUnavailableError.new("glLoadTransposeMatrixf") unless load_transpose_matrix_f?

      load_transpose_matrix_f!(*args)
    end

    # Checks if the function "glLoadTransposeMatrixf" is loaded.
    @[AlwaysInline]
    def load_transpose_matrix_f? : Bool
      !@addr_load_transpose_matrix_f.null?
    end

    # Invokes glLoadTransposeMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_transpose_matrix_d!(*args)
      addr = @addr_load_transpose_matrix_d
      proc = Procs.load_transpose_matrix_d(addr)
      proc.call(*args)
    end

    # Invokes glLoadTransposeMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_transpose_matrix_d(*args)
      raise FunctionUnavailableError.new("glLoadTransposeMatrixd") unless load_transpose_matrix_d?

      load_transpose_matrix_d!(*args)
    end

    # Checks if the function "glLoadTransposeMatrixd" is loaded.
    @[AlwaysInline]
    def load_transpose_matrix_d? : Bool
      !@addr_load_transpose_matrix_d.null?
    end

    # Invokes glMultTransposeMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_transpose_matrix_f!(*args)
      addr = @addr_mult_transpose_matrix_f
      proc = Procs.mult_transpose_matrix_f(addr)
      proc.call(*args)
    end

    # Invokes glMultTransposeMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_transpose_matrix_f(*args)
      raise FunctionUnavailableError.new("glMultTransposeMatrixf") unless mult_transpose_matrix_f?

      mult_transpose_matrix_f!(*args)
    end

    # Checks if the function "glMultTransposeMatrixf" is loaded.
    @[AlwaysInline]
    def mult_transpose_matrix_f? : Bool
      !@addr_mult_transpose_matrix_f.null?
    end

    # Invokes glMultTransposeMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_transpose_matrix_d!(*args)
      addr = @addr_mult_transpose_matrix_d
      proc = Procs.mult_transpose_matrix_d(addr)
      proc.call(*args)
    end

    # Invokes glMultTransposeMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_transpose_matrix_d(*args)
      raise FunctionUnavailableError.new("glMultTransposeMatrixd") unless mult_transpose_matrix_d?

      mult_transpose_matrix_d!(*args)
    end

    # Checks if the function "glMultTransposeMatrixd" is loaded.
    @[AlwaysInline]
    def mult_transpose_matrix_d? : Bool
      !@addr_mult_transpose_matrix_d.null?
    end

    # Invokes glBlendFuncSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func_separate!(*args)
      addr = @addr_blend_func_separate
      proc = Procs.blend_func_separate(addr)
      proc.call(*args)
    end

    # Invokes glBlendFuncSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func_separate(*args)
      raise FunctionUnavailableError.new("glBlendFuncSeparate") unless blend_func_separate?

      blend_func_separate!(*args)
    end

    # Checks if the function "glBlendFuncSeparate" is loaded.
    @[AlwaysInline]
    def blend_func_separate? : Bool
      !@addr_blend_func_separate.null?
    end

    # Invokes glMultiDrawArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_arrays!(*args)
      addr = @addr_multi_draw_arrays
      proc = Procs.multi_draw_arrays(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_arrays(*args)
      raise FunctionUnavailableError.new("glMultiDrawArrays") unless multi_draw_arrays?

      multi_draw_arrays!(*args)
    end

    # Checks if the function "glMultiDrawArrays" is loaded.
    @[AlwaysInline]
    def multi_draw_arrays? : Bool
      !@addr_multi_draw_arrays.null?
    end

    # Invokes glMultiDrawElements.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_elements!(*args)
      addr = @addr_multi_draw_elements
      proc = Procs.multi_draw_elements(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawElements.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_elements(*args)
      raise FunctionUnavailableError.new("glMultiDrawElements") unless multi_draw_elements?

      multi_draw_elements!(*args)
    end

    # Checks if the function "glMultiDrawElements" is loaded.
    @[AlwaysInline]
    def multi_draw_elements? : Bool
      !@addr_multi_draw_elements.null?
    end

    # Invokes glPointParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_f!(*args)
      addr = @addr_point_parameter_f
      proc = Procs.point_parameter_f(addr)
      proc.call(*args)
    end

    # Invokes glPointParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_f(*args)
      raise FunctionUnavailableError.new("glPointParameterf") unless point_parameter_f?

      point_parameter_f!(*args)
    end

    # Checks if the function "glPointParameterf" is loaded.
    @[AlwaysInline]
    def point_parameter_f? : Bool
      !@addr_point_parameter_f.null?
    end

    # Invokes glPointParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_fv!(*args)
      addr = @addr_point_parameter_fv
      proc = Procs.point_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glPointParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_fv(*args)
      raise FunctionUnavailableError.new("glPointParameterfv") unless point_parameter_fv?

      point_parameter_fv!(*args)
    end

    # Checks if the function "glPointParameterfv" is loaded.
    @[AlwaysInline]
    def point_parameter_fv? : Bool
      !@addr_point_parameter_fv.null?
    end

    # Invokes glPointParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_i!(*args)
      addr = @addr_point_parameter_i
      proc = Procs.point_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glPointParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_i(*args)
      raise FunctionUnavailableError.new("glPointParameteri") unless point_parameter_i?

      point_parameter_i!(*args)
    end

    # Checks if the function "glPointParameteri" is loaded.
    @[AlwaysInline]
    def point_parameter_i? : Bool
      !@addr_point_parameter_i.null?
    end

    # Invokes glPointParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_iv!(*args)
      addr = @addr_point_parameter_iv
      proc = Procs.point_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glPointParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_iv(*args)
      raise FunctionUnavailableError.new("glPointParameteriv") unless point_parameter_iv?

      point_parameter_iv!(*args)
    end

    # Checks if the function "glPointParameteriv" is loaded.
    @[AlwaysInline]
    def point_parameter_iv? : Bool
      !@addr_point_parameter_iv.null?
    end

    # Invokes glFogCoordf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_f!(*args)
      addr = @addr_fog_coord_f
      proc = Procs.fog_coord_f(addr)
      proc.call(*args)
    end

    # Invokes glFogCoordf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_f(*args)
      raise FunctionUnavailableError.new("glFogCoordf") unless fog_coord_f?

      fog_coord_f!(*args)
    end

    # Checks if the function "glFogCoordf" is loaded.
    @[AlwaysInline]
    def fog_coord_f? : Bool
      !@addr_fog_coord_f.null?
    end

    # Invokes glFogCoordfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_fv!(*args)
      addr = @addr_fog_coord_fv
      proc = Procs.fog_coord_fv(addr)
      proc.call(*args)
    end

    # Invokes glFogCoordfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_fv(*args)
      raise FunctionUnavailableError.new("glFogCoordfv") unless fog_coord_fv?

      fog_coord_fv!(*args)
    end

    # Checks if the function "glFogCoordfv" is loaded.
    @[AlwaysInline]
    def fog_coord_fv? : Bool
      !@addr_fog_coord_fv.null?
    end

    # Invokes glFogCoordd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_d!(*args)
      addr = @addr_fog_coord_d
      proc = Procs.fog_coord_d(addr)
      proc.call(*args)
    end

    # Invokes glFogCoordd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_d(*args)
      raise FunctionUnavailableError.new("glFogCoordd") unless fog_coord_d?

      fog_coord_d!(*args)
    end

    # Checks if the function "glFogCoordd" is loaded.
    @[AlwaysInline]
    def fog_coord_d? : Bool
      !@addr_fog_coord_d.null?
    end

    # Invokes glFogCoorddv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_dv!(*args)
      addr = @addr_fog_coord_dv
      proc = Procs.fog_coord_dv(addr)
      proc.call(*args)
    end

    # Invokes glFogCoorddv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_dv(*args)
      raise FunctionUnavailableError.new("glFogCoorddv") unless fog_coord_dv?

      fog_coord_dv!(*args)
    end

    # Checks if the function "glFogCoorddv" is loaded.
    @[AlwaysInline]
    def fog_coord_dv? : Bool
      !@addr_fog_coord_dv.null?
    end

    # Invokes glFogCoordPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_pointer!(*args)
      addr = @addr_fog_coord_pointer
      proc = Procs.fog_coord_pointer(addr)
      proc.call(*args)
    end

    # Invokes glFogCoordPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_pointer(*args)
      raise FunctionUnavailableError.new("glFogCoordPointer") unless fog_coord_pointer?

      fog_coord_pointer!(*args)
    end

    # Checks if the function "glFogCoordPointer" is loaded.
    @[AlwaysInline]
    def fog_coord_pointer? : Bool
      !@addr_fog_coord_pointer.null?
    end

    # Invokes glSecondaryColor3b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3b!(*args)
      addr = @addr_secondary_color_3b
      proc = Procs.secondary_color_3b(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3b(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3b") unless secondary_color_3b?

      secondary_color_3b!(*args)
    end

    # Checks if the function "glSecondaryColor3b" is loaded.
    @[AlwaysInline]
    def secondary_color_3b? : Bool
      !@addr_secondary_color_3b.null?
    end

    # Invokes glSecondaryColor3bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3bv!(*args)
      addr = @addr_secondary_color_3bv
      proc = Procs.secondary_color_3bv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3bv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3bv") unless secondary_color_3bv?

      secondary_color_3bv!(*args)
    end

    # Checks if the function "glSecondaryColor3bv" is loaded.
    @[AlwaysInline]
    def secondary_color_3bv? : Bool
      !@addr_secondary_color_3bv.null?
    end

    # Invokes glSecondaryColor3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3d!(*args)
      addr = @addr_secondary_color_3d
      proc = Procs.secondary_color_3d(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3d(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3d") unless secondary_color_3d?

      secondary_color_3d!(*args)
    end

    # Checks if the function "glSecondaryColor3d" is loaded.
    @[AlwaysInline]
    def secondary_color_3d? : Bool
      !@addr_secondary_color_3d.null?
    end

    # Invokes glSecondaryColor3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3dv!(*args)
      addr = @addr_secondary_color_3dv
      proc = Procs.secondary_color_3dv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3dv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3dv") unless secondary_color_3dv?

      secondary_color_3dv!(*args)
    end

    # Checks if the function "glSecondaryColor3dv" is loaded.
    @[AlwaysInline]
    def secondary_color_3dv? : Bool
      !@addr_secondary_color_3dv.null?
    end

    # Invokes glSecondaryColor3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3f!(*args)
      addr = @addr_secondary_color_3f
      proc = Procs.secondary_color_3f(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3f(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3f") unless secondary_color_3f?

      secondary_color_3f!(*args)
    end

    # Checks if the function "glSecondaryColor3f" is loaded.
    @[AlwaysInline]
    def secondary_color_3f? : Bool
      !@addr_secondary_color_3f.null?
    end

    # Invokes glSecondaryColor3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3fv!(*args)
      addr = @addr_secondary_color_3fv
      proc = Procs.secondary_color_3fv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3fv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3fv") unless secondary_color_3fv?

      secondary_color_3fv!(*args)
    end

    # Checks if the function "glSecondaryColor3fv" is loaded.
    @[AlwaysInline]
    def secondary_color_3fv? : Bool
      !@addr_secondary_color_3fv.null?
    end

    # Invokes glSecondaryColor3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3i!(*args)
      addr = @addr_secondary_color_3i
      proc = Procs.secondary_color_3i(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3i(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3i") unless secondary_color_3i?

      secondary_color_3i!(*args)
    end

    # Checks if the function "glSecondaryColor3i" is loaded.
    @[AlwaysInline]
    def secondary_color_3i? : Bool
      !@addr_secondary_color_3i.null?
    end

    # Invokes glSecondaryColor3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3iv!(*args)
      addr = @addr_secondary_color_3iv
      proc = Procs.secondary_color_3iv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3iv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3iv") unless secondary_color_3iv?

      secondary_color_3iv!(*args)
    end

    # Checks if the function "glSecondaryColor3iv" is loaded.
    @[AlwaysInline]
    def secondary_color_3iv? : Bool
      !@addr_secondary_color_3iv.null?
    end

    # Invokes glSecondaryColor3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3s!(*args)
      addr = @addr_secondary_color_3s
      proc = Procs.secondary_color_3s(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3s(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3s") unless secondary_color_3s?

      secondary_color_3s!(*args)
    end

    # Checks if the function "glSecondaryColor3s" is loaded.
    @[AlwaysInline]
    def secondary_color_3s? : Bool
      !@addr_secondary_color_3s.null?
    end

    # Invokes glSecondaryColor3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3sv!(*args)
      addr = @addr_secondary_color_3sv
      proc = Procs.secondary_color_3sv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3sv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3sv") unless secondary_color_3sv?

      secondary_color_3sv!(*args)
    end

    # Checks if the function "glSecondaryColor3sv" is loaded.
    @[AlwaysInline]
    def secondary_color_3sv? : Bool
      !@addr_secondary_color_3sv.null?
    end

    # Invokes glSecondaryColor3ub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3ub!(*args)
      addr = @addr_secondary_color_3ub
      proc = Procs.secondary_color_3ub(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3ub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3ub(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3ub") unless secondary_color_3ub?

      secondary_color_3ub!(*args)
    end

    # Checks if the function "glSecondaryColor3ub" is loaded.
    @[AlwaysInline]
    def secondary_color_3ub? : Bool
      !@addr_secondary_color_3ub.null?
    end

    # Invokes glSecondaryColor3ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3ubv!(*args)
      addr = @addr_secondary_color_3ubv
      proc = Procs.secondary_color_3ubv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3ubv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3ubv") unless secondary_color_3ubv?

      secondary_color_3ubv!(*args)
    end

    # Checks if the function "glSecondaryColor3ubv" is loaded.
    @[AlwaysInline]
    def secondary_color_3ubv? : Bool
      !@addr_secondary_color_3ubv.null?
    end

    # Invokes glSecondaryColor3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3ui!(*args)
      addr = @addr_secondary_color_3ui
      proc = Procs.secondary_color_3ui(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3ui(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3ui") unless secondary_color_3ui?

      secondary_color_3ui!(*args)
    end

    # Checks if the function "glSecondaryColor3ui" is loaded.
    @[AlwaysInline]
    def secondary_color_3ui? : Bool
      !@addr_secondary_color_3ui.null?
    end

    # Invokes glSecondaryColor3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3uiv!(*args)
      addr = @addr_secondary_color_3uiv
      proc = Procs.secondary_color_3uiv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3uiv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3uiv") unless secondary_color_3uiv?

      secondary_color_3uiv!(*args)
    end

    # Checks if the function "glSecondaryColor3uiv" is loaded.
    @[AlwaysInline]
    def secondary_color_3uiv? : Bool
      !@addr_secondary_color_3uiv.null?
    end

    # Invokes glSecondaryColor3us.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3us!(*args)
      addr = @addr_secondary_color_3us
      proc = Procs.secondary_color_3us(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3us.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3us(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3us") unless secondary_color_3us?

      secondary_color_3us!(*args)
    end

    # Checks if the function "glSecondaryColor3us" is loaded.
    @[AlwaysInline]
    def secondary_color_3us? : Bool
      !@addr_secondary_color_3us.null?
    end

    # Invokes glSecondaryColor3usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3usv!(*args)
      addr = @addr_secondary_color_3usv
      proc = Procs.secondary_color_3usv(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColor3usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3usv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3usv") unless secondary_color_3usv?

      secondary_color_3usv!(*args)
    end

    # Checks if the function "glSecondaryColor3usv" is loaded.
    @[AlwaysInline]
    def secondary_color_3usv? : Bool
      !@addr_secondary_color_3usv.null?
    end

    # Invokes glSecondaryColorPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_pointer!(*args)
      addr = @addr_secondary_color_pointer
      proc = Procs.secondary_color_pointer(addr)
      proc.call(*args)
    end

    # Invokes glSecondaryColorPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_pointer(*args)
      raise FunctionUnavailableError.new("glSecondaryColorPointer") unless secondary_color_pointer?

      secondary_color_pointer!(*args)
    end

    # Checks if the function "glSecondaryColorPointer" is loaded.
    @[AlwaysInline]
    def secondary_color_pointer? : Bool
      !@addr_secondary_color_pointer.null?
    end

    # Invokes glWindowPos2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2d!(*args)
      addr = @addr_window_pos_2d
      proc = Procs.window_pos_2d(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2d(*args)
      raise FunctionUnavailableError.new("glWindowPos2d") unless window_pos_2d?

      window_pos_2d!(*args)
    end

    # Checks if the function "glWindowPos2d" is loaded.
    @[AlwaysInline]
    def window_pos_2d? : Bool
      !@addr_window_pos_2d.null?
    end

    # Invokes glWindowPos2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2dv!(*args)
      addr = @addr_window_pos_2dv
      proc = Procs.window_pos_2dv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2dv(*args)
      raise FunctionUnavailableError.new("glWindowPos2dv") unless window_pos_2dv?

      window_pos_2dv!(*args)
    end

    # Checks if the function "glWindowPos2dv" is loaded.
    @[AlwaysInline]
    def window_pos_2dv? : Bool
      !@addr_window_pos_2dv.null?
    end

    # Invokes glWindowPos2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2f!(*args)
      addr = @addr_window_pos_2f
      proc = Procs.window_pos_2f(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2f(*args)
      raise FunctionUnavailableError.new("glWindowPos2f") unless window_pos_2f?

      window_pos_2f!(*args)
    end

    # Checks if the function "glWindowPos2f" is loaded.
    @[AlwaysInline]
    def window_pos_2f? : Bool
      !@addr_window_pos_2f.null?
    end

    # Invokes glWindowPos2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2fv!(*args)
      addr = @addr_window_pos_2fv
      proc = Procs.window_pos_2fv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2fv(*args)
      raise FunctionUnavailableError.new("glWindowPos2fv") unless window_pos_2fv?

      window_pos_2fv!(*args)
    end

    # Checks if the function "glWindowPos2fv" is loaded.
    @[AlwaysInline]
    def window_pos_2fv? : Bool
      !@addr_window_pos_2fv.null?
    end

    # Invokes glWindowPos2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2i!(*args)
      addr = @addr_window_pos_2i
      proc = Procs.window_pos_2i(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2i(*args)
      raise FunctionUnavailableError.new("glWindowPos2i") unless window_pos_2i?

      window_pos_2i!(*args)
    end

    # Checks if the function "glWindowPos2i" is loaded.
    @[AlwaysInline]
    def window_pos_2i? : Bool
      !@addr_window_pos_2i.null?
    end

    # Invokes glWindowPos2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2iv!(*args)
      addr = @addr_window_pos_2iv
      proc = Procs.window_pos_2iv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2iv(*args)
      raise FunctionUnavailableError.new("glWindowPos2iv") unless window_pos_2iv?

      window_pos_2iv!(*args)
    end

    # Checks if the function "glWindowPos2iv" is loaded.
    @[AlwaysInline]
    def window_pos_2iv? : Bool
      !@addr_window_pos_2iv.null?
    end

    # Invokes glWindowPos2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2s!(*args)
      addr = @addr_window_pos_2s
      proc = Procs.window_pos_2s(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2s(*args)
      raise FunctionUnavailableError.new("glWindowPos2s") unless window_pos_2s?

      window_pos_2s!(*args)
    end

    # Checks if the function "glWindowPos2s" is loaded.
    @[AlwaysInline]
    def window_pos_2s? : Bool
      !@addr_window_pos_2s.null?
    end

    # Invokes glWindowPos2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2sv!(*args)
      addr = @addr_window_pos_2sv
      proc = Procs.window_pos_2sv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2sv(*args)
      raise FunctionUnavailableError.new("glWindowPos2sv") unless window_pos_2sv?

      window_pos_2sv!(*args)
    end

    # Checks if the function "glWindowPos2sv" is loaded.
    @[AlwaysInline]
    def window_pos_2sv? : Bool
      !@addr_window_pos_2sv.null?
    end

    # Invokes glWindowPos3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3d!(*args)
      addr = @addr_window_pos_3d
      proc = Procs.window_pos_3d(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3d(*args)
      raise FunctionUnavailableError.new("glWindowPos3d") unless window_pos_3d?

      window_pos_3d!(*args)
    end

    # Checks if the function "glWindowPos3d" is loaded.
    @[AlwaysInline]
    def window_pos_3d? : Bool
      !@addr_window_pos_3d.null?
    end

    # Invokes glWindowPos3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3dv!(*args)
      addr = @addr_window_pos_3dv
      proc = Procs.window_pos_3dv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3dv(*args)
      raise FunctionUnavailableError.new("glWindowPos3dv") unless window_pos_3dv?

      window_pos_3dv!(*args)
    end

    # Checks if the function "glWindowPos3dv" is loaded.
    @[AlwaysInline]
    def window_pos_3dv? : Bool
      !@addr_window_pos_3dv.null?
    end

    # Invokes glWindowPos3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3f!(*args)
      addr = @addr_window_pos_3f
      proc = Procs.window_pos_3f(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3f(*args)
      raise FunctionUnavailableError.new("glWindowPos3f") unless window_pos_3f?

      window_pos_3f!(*args)
    end

    # Checks if the function "glWindowPos3f" is loaded.
    @[AlwaysInline]
    def window_pos_3f? : Bool
      !@addr_window_pos_3f.null?
    end

    # Invokes glWindowPos3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3fv!(*args)
      addr = @addr_window_pos_3fv
      proc = Procs.window_pos_3fv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3fv(*args)
      raise FunctionUnavailableError.new("glWindowPos3fv") unless window_pos_3fv?

      window_pos_3fv!(*args)
    end

    # Checks if the function "glWindowPos3fv" is loaded.
    @[AlwaysInline]
    def window_pos_3fv? : Bool
      !@addr_window_pos_3fv.null?
    end

    # Invokes glWindowPos3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3i!(*args)
      addr = @addr_window_pos_3i
      proc = Procs.window_pos_3i(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3i(*args)
      raise FunctionUnavailableError.new("glWindowPos3i") unless window_pos_3i?

      window_pos_3i!(*args)
    end

    # Checks if the function "glWindowPos3i" is loaded.
    @[AlwaysInline]
    def window_pos_3i? : Bool
      !@addr_window_pos_3i.null?
    end

    # Invokes glWindowPos3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3iv!(*args)
      addr = @addr_window_pos_3iv
      proc = Procs.window_pos_3iv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3iv(*args)
      raise FunctionUnavailableError.new("glWindowPos3iv") unless window_pos_3iv?

      window_pos_3iv!(*args)
    end

    # Checks if the function "glWindowPos3iv" is loaded.
    @[AlwaysInline]
    def window_pos_3iv? : Bool
      !@addr_window_pos_3iv.null?
    end

    # Invokes glWindowPos3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3s!(*args)
      addr = @addr_window_pos_3s
      proc = Procs.window_pos_3s(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3s(*args)
      raise FunctionUnavailableError.new("glWindowPos3s") unless window_pos_3s?

      window_pos_3s!(*args)
    end

    # Checks if the function "glWindowPos3s" is loaded.
    @[AlwaysInline]
    def window_pos_3s? : Bool
      !@addr_window_pos_3s.null?
    end

    # Invokes glWindowPos3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3sv!(*args)
      addr = @addr_window_pos_3sv
      proc = Procs.window_pos_3sv(addr)
      proc.call(*args)
    end

    # Invokes glWindowPos3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3sv(*args)
      raise FunctionUnavailableError.new("glWindowPos3sv") unless window_pos_3sv?

      window_pos_3sv!(*args)
    end

    # Checks if the function "glWindowPos3sv" is loaded.
    @[AlwaysInline]
    def window_pos_3sv? : Bool
      !@addr_window_pos_3sv.null?
    end

    # Invokes glBlendColor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_color!(*args)
      addr = @addr_blend_color
      proc = Procs.blend_color(addr)
      proc.call(*args)
    end

    # Invokes glBlendColor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_color(*args)
      raise FunctionUnavailableError.new("glBlendColor") unless blend_color?

      blend_color!(*args)
    end

    # Checks if the function "glBlendColor" is loaded.
    @[AlwaysInline]
    def blend_color? : Bool
      !@addr_blend_color.null?
    end

    # Invokes glBlendEquation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation!(*args)
      addr = @addr_blend_equation
      proc = Procs.blend_equation(addr)
      proc.call(*args)
    end

    # Invokes glBlendEquation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation(*args)
      raise FunctionUnavailableError.new("glBlendEquation") unless blend_equation?

      blend_equation!(*args)
    end

    # Checks if the function "glBlendEquation" is loaded.
    @[AlwaysInline]
    def blend_equation? : Bool
      !@addr_blend_equation.null?
    end

    # Invokes glGenQueries.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_queries!(*args)
      addr = @addr_gen_queries
      proc = Procs.gen_queries(addr)
      proc.call(*args)
    end

    # Invokes glGenQueries.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_queries(*args)
      raise FunctionUnavailableError.new("glGenQueries") unless gen_queries?

      gen_queries!(*args)
    end

    # Checks if the function "glGenQueries" is loaded.
    @[AlwaysInline]
    def gen_queries? : Bool
      !@addr_gen_queries.null?
    end

    # Invokes glDeleteQueries.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_queries!(*args)
      addr = @addr_delete_queries
      proc = Procs.delete_queries(addr)
      proc.call(*args)
    end

    # Invokes glDeleteQueries.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_queries(*args)
      raise FunctionUnavailableError.new("glDeleteQueries") unless delete_queries?

      delete_queries!(*args)
    end

    # Checks if the function "glDeleteQueries" is loaded.
    @[AlwaysInline]
    def delete_queries? : Bool
      !@addr_delete_queries.null?
    end

    # Invokes glIsQuery.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_query!(*args)
      addr = @addr_is_query
      proc = Procs.is_query(addr)
      proc.call(*args)
    end

    # Invokes glIsQuery.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_query(*args)
      raise FunctionUnavailableError.new("glIsQuery") unless is_query?

      is_query!(*args)
    end

    # Checks if the function "glIsQuery" is loaded.
    @[AlwaysInline]
    def is_query? : Bool
      !@addr_is_query.null?
    end

    # Invokes glBeginQuery.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_query!(*args)
      addr = @addr_begin_query
      proc = Procs.begin_query(addr)
      proc.call(*args)
    end

    # Invokes glBeginQuery.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_query(*args)
      raise FunctionUnavailableError.new("glBeginQuery") unless begin_query?

      begin_query!(*args)
    end

    # Checks if the function "glBeginQuery" is loaded.
    @[AlwaysInline]
    def begin_query? : Bool
      !@addr_begin_query.null?
    end

    # Invokes glEndQuery.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_query!(*args)
      addr = @addr_end_query
      proc = Procs.end_query(addr)
      proc.call(*args)
    end

    # Invokes glEndQuery.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_query(*args)
      raise FunctionUnavailableError.new("glEndQuery") unless end_query?

      end_query!(*args)
    end

    # Checks if the function "glEndQuery" is loaded.
    @[AlwaysInline]
    def end_query? : Bool
      !@addr_end_query.null?
    end

    # Invokes glGetQueryiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_iv!(*args)
      addr = @addr_get_query_iv
      proc = Procs.get_query_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryiv") unless get_query_iv?

      get_query_iv!(*args)
    end

    # Checks if the function "glGetQueryiv" is loaded.
    @[AlwaysInline]
    def get_query_iv? : Bool
      !@addr_get_query_iv.null?
    end

    # Invokes glGetQueryObjectiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_iv!(*args)
      addr = @addr_get_query_object_iv
      proc = Procs.get_query_object_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryObjectiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryObjectiv") unless get_query_object_iv?

      get_query_object_iv!(*args)
    end

    # Checks if the function "glGetQueryObjectiv" is loaded.
    @[AlwaysInline]
    def get_query_object_iv? : Bool
      !@addr_get_query_object_iv.null?
    end

    # Invokes glGetQueryObjectuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_uiv!(*args)
      addr = @addr_get_query_object_uiv
      proc = Procs.get_query_object_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryObjectuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_uiv(*args)
      raise FunctionUnavailableError.new("glGetQueryObjectuiv") unless get_query_object_uiv?

      get_query_object_uiv!(*args)
    end

    # Checks if the function "glGetQueryObjectuiv" is loaded.
    @[AlwaysInline]
    def get_query_object_uiv? : Bool
      !@addr_get_query_object_uiv.null?
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

    # Invokes glGetBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_sub_data!(*args)
      addr = @addr_get_buffer_sub_data
      proc = Procs.get_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glGetBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glGetBufferSubData") unless get_buffer_sub_data?

      get_buffer_sub_data!(*args)
    end

    # Checks if the function "glGetBufferSubData" is loaded.
    @[AlwaysInline]
    def get_buffer_sub_data? : Bool
      !@addr_get_buffer_sub_data.null?
    end

    # Invokes glMapBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_buffer!(*args)
      addr = @addr_map_buffer
      proc = Procs.map_buffer(addr)
      proc.call(*args)
    end

    # Invokes glMapBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_buffer(*args)
      raise FunctionUnavailableError.new("glMapBuffer") unless map_buffer?

      map_buffer!(*args)
    end

    # Checks if the function "glMapBuffer" is loaded.
    @[AlwaysInline]
    def map_buffer? : Bool
      !@addr_map_buffer.null?
    end

    # Invokes glUnmapBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def unmap_buffer!(*args)
      addr = @addr_unmap_buffer
      proc = Procs.unmap_buffer(addr)
      proc.call(*args)
    end

    # Invokes glUnmapBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def unmap_buffer(*args)
      raise FunctionUnavailableError.new("glUnmapBuffer") unless unmap_buffer?

      unmap_buffer!(*args)
    end

    # Checks if the function "glUnmapBuffer" is loaded.
    @[AlwaysInline]
    def unmap_buffer? : Bool
      !@addr_unmap_buffer.null?
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

    # Invokes glGetBufferPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_pointer_v!(*args)
      addr = @addr_get_buffer_pointer_v
      proc = Procs.get_buffer_pointer_v(addr)
      proc.call(*args)
    end

    # Invokes glGetBufferPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetBufferPointerv") unless get_buffer_pointer_v?

      get_buffer_pointer_v!(*args)
    end

    # Checks if the function "glGetBufferPointerv" is loaded.
    @[AlwaysInline]
    def get_buffer_pointer_v? : Bool
      !@addr_get_buffer_pointer_v.null?
    end

    # Invokes glBlendEquationSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation_separate!(*args)
      addr = @addr_blend_equation_separate
      proc = Procs.blend_equation_separate(addr)
      proc.call(*args)
    end

    # Invokes glBlendEquationSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation_separate(*args)
      raise FunctionUnavailableError.new("glBlendEquationSeparate") unless blend_equation_separate?

      blend_equation_separate!(*args)
    end

    # Checks if the function "glBlendEquationSeparate" is loaded.
    @[AlwaysInline]
    def blend_equation_separate? : Bool
      !@addr_blend_equation_separate.null?
    end

    # Invokes glDrawBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_buffers!(*args)
      addr = @addr_draw_buffers
      proc = Procs.draw_buffers(addr)
      proc.call(*args)
    end

    # Invokes glDrawBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_buffers(*args)
      raise FunctionUnavailableError.new("glDrawBuffers") unless draw_buffers?

      draw_buffers!(*args)
    end

    # Checks if the function "glDrawBuffers" is loaded.
    @[AlwaysInline]
    def draw_buffers? : Bool
      !@addr_draw_buffers.null?
    end

    # Invokes glStencilOpSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_op_separate!(*args)
      addr = @addr_stencil_op_separate
      proc = Procs.stencil_op_separate(addr)
      proc.call(*args)
    end

    # Invokes glStencilOpSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_op_separate(*args)
      raise FunctionUnavailableError.new("glStencilOpSeparate") unless stencil_op_separate?

      stencil_op_separate!(*args)
    end

    # Checks if the function "glStencilOpSeparate" is loaded.
    @[AlwaysInline]
    def stencil_op_separate? : Bool
      !@addr_stencil_op_separate.null?
    end

    # Invokes glStencilFuncSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_func_separate!(*args)
      addr = @addr_stencil_func_separate
      proc = Procs.stencil_func_separate(addr)
      proc.call(*args)
    end

    # Invokes glStencilFuncSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_func_separate(*args)
      raise FunctionUnavailableError.new("glStencilFuncSeparate") unless stencil_func_separate?

      stencil_func_separate!(*args)
    end

    # Checks if the function "glStencilFuncSeparate" is loaded.
    @[AlwaysInline]
    def stencil_func_separate? : Bool
      !@addr_stencil_func_separate.null?
    end

    # Invokes glStencilMaskSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_mask_separate!(*args)
      addr = @addr_stencil_mask_separate
      proc = Procs.stencil_mask_separate(addr)
      proc.call(*args)
    end

    # Invokes glStencilMaskSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_mask_separate(*args)
      raise FunctionUnavailableError.new("glStencilMaskSeparate") unless stencil_mask_separate?

      stencil_mask_separate!(*args)
    end

    # Checks if the function "glStencilMaskSeparate" is loaded.
    @[AlwaysInline]
    def stencil_mask_separate? : Bool
      !@addr_stencil_mask_separate.null?
    end

    # Invokes glAttachShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def attach_shader!(*args)
      addr = @addr_attach_shader
      proc = Procs.attach_shader(addr)
      proc.call(*args)
    end

    # Invokes glAttachShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def attach_shader(*args)
      raise FunctionUnavailableError.new("glAttachShader") unless attach_shader?

      attach_shader!(*args)
    end

    # Checks if the function "glAttachShader" is loaded.
    @[AlwaysInline]
    def attach_shader? : Bool
      !@addr_attach_shader.null?
    end

    # Invokes glBindAttribLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_attrib_location!(*args)
      addr = @addr_bind_attrib_location
      proc = Procs.bind_attrib_location(addr)
      proc.call(*args)
    end

    # Invokes glBindAttribLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_attrib_location(*args)
      raise FunctionUnavailableError.new("glBindAttribLocation") unless bind_attrib_location?

      bind_attrib_location!(*args)
    end

    # Checks if the function "glBindAttribLocation" is loaded.
    @[AlwaysInline]
    def bind_attrib_location? : Bool
      !@addr_bind_attrib_location.null?
    end

    # Invokes glCompileShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compile_shader!(*args)
      addr = @addr_compile_shader
      proc = Procs.compile_shader(addr)
      proc.call(*args)
    end

    # Invokes glCompileShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compile_shader(*args)
      raise FunctionUnavailableError.new("glCompileShader") unless compile_shader?

      compile_shader!(*args)
    end

    # Checks if the function "glCompileShader" is loaded.
    @[AlwaysInline]
    def compile_shader? : Bool
      !@addr_compile_shader.null?
    end

    # Invokes glCreateProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_program!(*args)
      addr = @addr_create_program
      proc = Procs.create_program(addr)
      proc.call(*args)
    end

    # Invokes glCreateProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_program(*args)
      raise FunctionUnavailableError.new("glCreateProgram") unless create_program?

      create_program!(*args)
    end

    # Checks if the function "glCreateProgram" is loaded.
    @[AlwaysInline]
    def create_program? : Bool
      !@addr_create_program.null?
    end

    # Invokes glCreateShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_shader!(*args)
      addr = @addr_create_shader
      proc = Procs.create_shader(addr)
      proc.call(*args)
    end

    # Invokes glCreateShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_shader(*args)
      raise FunctionUnavailableError.new("glCreateShader") unless create_shader?

      create_shader!(*args)
    end

    # Checks if the function "glCreateShader" is loaded.
    @[AlwaysInline]
    def create_shader? : Bool
      !@addr_create_shader.null?
    end

    # Invokes glDeleteProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_program!(*args)
      addr = @addr_delete_program
      proc = Procs.delete_program(addr)
      proc.call(*args)
    end

    # Invokes glDeleteProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_program(*args)
      raise FunctionUnavailableError.new("glDeleteProgram") unless delete_program?

      delete_program!(*args)
    end

    # Checks if the function "glDeleteProgram" is loaded.
    @[AlwaysInline]
    def delete_program? : Bool
      !@addr_delete_program.null?
    end

    # Invokes glDeleteShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_shader!(*args)
      addr = @addr_delete_shader
      proc = Procs.delete_shader(addr)
      proc.call(*args)
    end

    # Invokes glDeleteShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_shader(*args)
      raise FunctionUnavailableError.new("glDeleteShader") unless delete_shader?

      delete_shader!(*args)
    end

    # Checks if the function "glDeleteShader" is loaded.
    @[AlwaysInline]
    def delete_shader? : Bool
      !@addr_delete_shader.null?
    end

    # Invokes glDetachShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def detach_shader!(*args)
      addr = @addr_detach_shader
      proc = Procs.detach_shader(addr)
      proc.call(*args)
    end

    # Invokes glDetachShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def detach_shader(*args)
      raise FunctionUnavailableError.new("glDetachShader") unless detach_shader?

      detach_shader!(*args)
    end

    # Checks if the function "glDetachShader" is loaded.
    @[AlwaysInline]
    def detach_shader? : Bool
      !@addr_detach_shader.null?
    end

    # Invokes glDisableVertexAttribArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_vertex_attrib_array!(*args)
      addr = @addr_disable_vertex_attrib_array
      proc = Procs.disable_vertex_attrib_array(addr)
      proc.call(*args)
    end

    # Invokes glDisableVertexAttribArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_vertex_attrib_array(*args)
      raise FunctionUnavailableError.new("glDisableVertexAttribArray") unless disable_vertex_attrib_array?

      disable_vertex_attrib_array!(*args)
    end

    # Checks if the function "glDisableVertexAttribArray" is loaded.
    @[AlwaysInline]
    def disable_vertex_attrib_array? : Bool
      !@addr_disable_vertex_attrib_array.null?
    end

    # Invokes glEnableVertexAttribArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_vertex_attrib_array!(*args)
      addr = @addr_enable_vertex_attrib_array
      proc = Procs.enable_vertex_attrib_array(addr)
      proc.call(*args)
    end

    # Invokes glEnableVertexAttribArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_vertex_attrib_array(*args)
      raise FunctionUnavailableError.new("glEnableVertexAttribArray") unless enable_vertex_attrib_array?

      enable_vertex_attrib_array!(*args)
    end

    # Checks if the function "glEnableVertexAttribArray" is loaded.
    @[AlwaysInline]
    def enable_vertex_attrib_array? : Bool
      !@addr_enable_vertex_attrib_array.null?
    end

    # Invokes glGetActiveAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_attrib!(*args)
      addr = @addr_get_active_attrib
      proc = Procs.get_active_attrib(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_attrib(*args)
      raise FunctionUnavailableError.new("glGetActiveAttrib") unless get_active_attrib?

      get_active_attrib!(*args)
    end

    # Checks if the function "glGetActiveAttrib" is loaded.
    @[AlwaysInline]
    def get_active_attrib? : Bool
      !@addr_get_active_attrib.null?
    end

    # Invokes glGetActiveUniform.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform!(*args)
      addr = @addr_get_active_uniform
      proc = Procs.get_active_uniform(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveUniform.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform(*args)
      raise FunctionUnavailableError.new("glGetActiveUniform") unless get_active_uniform?

      get_active_uniform!(*args)
    end

    # Checks if the function "glGetActiveUniform" is loaded.
    @[AlwaysInline]
    def get_active_uniform? : Bool
      !@addr_get_active_uniform.null?
    end

    # Invokes glGetAttachedShaders.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_attached_shaders!(*args)
      addr = @addr_get_attached_shaders
      proc = Procs.get_attached_shaders(addr)
      proc.call(*args)
    end

    # Invokes glGetAttachedShaders.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_attached_shaders(*args)
      raise FunctionUnavailableError.new("glGetAttachedShaders") unless get_attached_shaders?

      get_attached_shaders!(*args)
    end

    # Checks if the function "glGetAttachedShaders" is loaded.
    @[AlwaysInline]
    def get_attached_shaders? : Bool
      !@addr_get_attached_shaders.null?
    end

    # Invokes glGetAttribLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_attrib_location!(*args)
      addr = @addr_get_attrib_location
      proc = Procs.get_attrib_location(addr)
      proc.call(*args)
    end

    # Invokes glGetAttribLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_attrib_location(*args)
      raise FunctionUnavailableError.new("glGetAttribLocation") unless get_attrib_location?

      get_attrib_location!(*args)
    end

    # Checks if the function "glGetAttribLocation" is loaded.
    @[AlwaysInline]
    def get_attrib_location? : Bool
      !@addr_get_attrib_location.null?
    end

    # Invokes glGetProgramiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_iv!(*args)
      addr = @addr_get_program_iv
      proc = Procs.get_program_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramiv") unless get_program_iv?

      get_program_iv!(*args)
    end

    # Checks if the function "glGetProgramiv" is loaded.
    @[AlwaysInline]
    def get_program_iv? : Bool
      !@addr_get_program_iv.null?
    end

    # Invokes glGetProgramInfoLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_info_log!(*args)
      addr = @addr_get_program_info_log
      proc = Procs.get_program_info_log(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramInfoLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_info_log(*args)
      raise FunctionUnavailableError.new("glGetProgramInfoLog") unless get_program_info_log?

      get_program_info_log!(*args)
    end

    # Checks if the function "glGetProgramInfoLog" is loaded.
    @[AlwaysInline]
    def get_program_info_log? : Bool
      !@addr_get_program_info_log.null?
    end

    # Invokes glGetShaderiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_iv!(*args)
      addr = @addr_get_shader_iv
      proc = Procs.get_shader_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetShaderiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_iv(*args)
      raise FunctionUnavailableError.new("glGetShaderiv") unless get_shader_iv?

      get_shader_iv!(*args)
    end

    # Checks if the function "glGetShaderiv" is loaded.
    @[AlwaysInline]
    def get_shader_iv? : Bool
      !@addr_get_shader_iv.null?
    end

    # Invokes glGetShaderInfoLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_info_log!(*args)
      addr = @addr_get_shader_info_log
      proc = Procs.get_shader_info_log(addr)
      proc.call(*args)
    end

    # Invokes glGetShaderInfoLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_info_log(*args)
      raise FunctionUnavailableError.new("glGetShaderInfoLog") unless get_shader_info_log?

      get_shader_info_log!(*args)
    end

    # Checks if the function "glGetShaderInfoLog" is loaded.
    @[AlwaysInline]
    def get_shader_info_log? : Bool
      !@addr_get_shader_info_log.null?
    end

    # Invokes glGetShaderSource.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_source!(*args)
      addr = @addr_get_shader_source
      proc = Procs.get_shader_source(addr)
      proc.call(*args)
    end

    # Invokes glGetShaderSource.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_source(*args)
      raise FunctionUnavailableError.new("glGetShaderSource") unless get_shader_source?

      get_shader_source!(*args)
    end

    # Checks if the function "glGetShaderSource" is loaded.
    @[AlwaysInline]
    def get_shader_source? : Bool
      !@addr_get_shader_source.null?
    end

    # Invokes glGetUniformLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_location!(*args)
      addr = @addr_get_uniform_location
      proc = Procs.get_uniform_location(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_location(*args)
      raise FunctionUnavailableError.new("glGetUniformLocation") unless get_uniform_location?

      get_uniform_location!(*args)
    end

    # Checks if the function "glGetUniformLocation" is loaded.
    @[AlwaysInline]
    def get_uniform_location? : Bool
      !@addr_get_uniform_location.null?
    end

    # Invokes glGetUniformfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_fv!(*args)
      addr = @addr_get_uniform_fv
      proc = Procs.get_uniform_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_fv(*args)
      raise FunctionUnavailableError.new("glGetUniformfv") unless get_uniform_fv?

      get_uniform_fv!(*args)
    end

    # Checks if the function "glGetUniformfv" is loaded.
    @[AlwaysInline]
    def get_uniform_fv? : Bool
      !@addr_get_uniform_fv.null?
    end

    # Invokes glGetUniformiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_iv!(*args)
      addr = @addr_get_uniform_iv
      proc = Procs.get_uniform_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_iv(*args)
      raise FunctionUnavailableError.new("glGetUniformiv") unless get_uniform_iv?

      get_uniform_iv!(*args)
    end

    # Checks if the function "glGetUniformiv" is loaded.
    @[AlwaysInline]
    def get_uniform_iv? : Bool
      !@addr_get_uniform_iv.null?
    end

    # Invokes glGetVertexAttribdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_dv!(*args)
      addr = @addr_get_vertex_attrib_dv
      proc = Procs.get_vertex_attrib_dv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_dv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribdv") unless get_vertex_attrib_dv?

      get_vertex_attrib_dv!(*args)
    end

    # Checks if the function "glGetVertexAttribdv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_dv? : Bool
      !@addr_get_vertex_attrib_dv.null?
    end

    # Invokes glGetVertexAttribfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_fv!(*args)
      addr = @addr_get_vertex_attrib_fv
      proc = Procs.get_vertex_attrib_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_fv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribfv") unless get_vertex_attrib_fv?

      get_vertex_attrib_fv!(*args)
    end

    # Checks if the function "glGetVertexAttribfv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_fv? : Bool
      !@addr_get_vertex_attrib_fv.null?
    end

    # Invokes glGetVertexAttribiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_iv!(*args)
      addr = @addr_get_vertex_attrib_iv
      proc = Procs.get_vertex_attrib_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_iv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribiv") unless get_vertex_attrib_iv?

      get_vertex_attrib_iv!(*args)
    end

    # Checks if the function "glGetVertexAttribiv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_iv? : Bool
      !@addr_get_vertex_attrib_iv.null?
    end

    # Invokes glGetVertexAttribPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_pointer_v!(*args)
      addr = @addr_get_vertex_attrib_pointer_v
      proc = Procs.get_vertex_attrib_pointer_v(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribPointerv") unless get_vertex_attrib_pointer_v?

      get_vertex_attrib_pointer_v!(*args)
    end

    # Checks if the function "glGetVertexAttribPointerv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_pointer_v? : Bool
      !@addr_get_vertex_attrib_pointer_v.null?
    end

    # Invokes glIsProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_program!(*args)
      addr = @addr_is_program
      proc = Procs.is_program(addr)
      proc.call(*args)
    end

    # Invokes glIsProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_program(*args)
      raise FunctionUnavailableError.new("glIsProgram") unless is_program?

      is_program!(*args)
    end

    # Checks if the function "glIsProgram" is loaded.
    @[AlwaysInline]
    def is_program? : Bool
      !@addr_is_program.null?
    end

    # Invokes glIsShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_shader!(*args)
      addr = @addr_is_shader
      proc = Procs.is_shader(addr)
      proc.call(*args)
    end

    # Invokes glIsShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_shader(*args)
      raise FunctionUnavailableError.new("glIsShader") unless is_shader?

      is_shader!(*args)
    end

    # Checks if the function "glIsShader" is loaded.
    @[AlwaysInline]
    def is_shader? : Bool
      !@addr_is_shader.null?
    end

    # Invokes glLinkProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def link_program!(*args)
      addr = @addr_link_program
      proc = Procs.link_program(addr)
      proc.call(*args)
    end

    # Invokes glLinkProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def link_program(*args)
      raise FunctionUnavailableError.new("glLinkProgram") unless link_program?

      link_program!(*args)
    end

    # Checks if the function "glLinkProgram" is loaded.
    @[AlwaysInline]
    def link_program? : Bool
      !@addr_link_program.null?
    end

    # Invokes glShaderSource.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shader_source!(*args)
      addr = @addr_shader_source
      proc = Procs.shader_source(addr)
      proc.call(*args)
    end

    # Invokes glShaderSource.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shader_source(*args)
      raise FunctionUnavailableError.new("glShaderSource") unless shader_source?

      shader_source!(*args)
    end

    # Checks if the function "glShaderSource" is loaded.
    @[AlwaysInline]
    def shader_source? : Bool
      !@addr_shader_source.null?
    end

    # Invokes glUseProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def use_program!(*args)
      addr = @addr_use_program
      proc = Procs.use_program(addr)
      proc.call(*args)
    end

    # Invokes glUseProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def use_program(*args)
      raise FunctionUnavailableError.new("glUseProgram") unless use_program?

      use_program!(*args)
    end

    # Checks if the function "glUseProgram" is loaded.
    @[AlwaysInline]
    def use_program? : Bool
      !@addr_use_program.null?
    end

    # Invokes glUniform1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1f!(*args)
      addr = @addr_uniform_1f
      proc = Procs.uniform_1f(addr)
      proc.call(*args)
    end

    # Invokes glUniform1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1f(*args)
      raise FunctionUnavailableError.new("glUniform1f") unless uniform_1f?

      uniform_1f!(*args)
    end

    # Checks if the function "glUniform1f" is loaded.
    @[AlwaysInline]
    def uniform_1f? : Bool
      !@addr_uniform_1f.null?
    end

    # Invokes glUniform2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2f!(*args)
      addr = @addr_uniform_2f
      proc = Procs.uniform_2f(addr)
      proc.call(*args)
    end

    # Invokes glUniform2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2f(*args)
      raise FunctionUnavailableError.new("glUniform2f") unless uniform_2f?

      uniform_2f!(*args)
    end

    # Checks if the function "glUniform2f" is loaded.
    @[AlwaysInline]
    def uniform_2f? : Bool
      !@addr_uniform_2f.null?
    end

    # Invokes glUniform3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3f!(*args)
      addr = @addr_uniform_3f
      proc = Procs.uniform_3f(addr)
      proc.call(*args)
    end

    # Invokes glUniform3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3f(*args)
      raise FunctionUnavailableError.new("glUniform3f") unless uniform_3f?

      uniform_3f!(*args)
    end

    # Checks if the function "glUniform3f" is loaded.
    @[AlwaysInline]
    def uniform_3f? : Bool
      !@addr_uniform_3f.null?
    end

    # Invokes glUniform4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4f!(*args)
      addr = @addr_uniform_4f
      proc = Procs.uniform_4f(addr)
      proc.call(*args)
    end

    # Invokes glUniform4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4f(*args)
      raise FunctionUnavailableError.new("glUniform4f") unless uniform_4f?

      uniform_4f!(*args)
    end

    # Checks if the function "glUniform4f" is loaded.
    @[AlwaysInline]
    def uniform_4f? : Bool
      !@addr_uniform_4f.null?
    end

    # Invokes glUniform1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1i!(*args)
      addr = @addr_uniform_1i
      proc = Procs.uniform_1i(addr)
      proc.call(*args)
    end

    # Invokes glUniform1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1i(*args)
      raise FunctionUnavailableError.new("glUniform1i") unless uniform_1i?

      uniform_1i!(*args)
    end

    # Checks if the function "glUniform1i" is loaded.
    @[AlwaysInline]
    def uniform_1i? : Bool
      !@addr_uniform_1i.null?
    end

    # Invokes glUniform2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2i!(*args)
      addr = @addr_uniform_2i
      proc = Procs.uniform_2i(addr)
      proc.call(*args)
    end

    # Invokes glUniform2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2i(*args)
      raise FunctionUnavailableError.new("glUniform2i") unless uniform_2i?

      uniform_2i!(*args)
    end

    # Checks if the function "glUniform2i" is loaded.
    @[AlwaysInline]
    def uniform_2i? : Bool
      !@addr_uniform_2i.null?
    end

    # Invokes glUniform3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3i!(*args)
      addr = @addr_uniform_3i
      proc = Procs.uniform_3i(addr)
      proc.call(*args)
    end

    # Invokes glUniform3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3i(*args)
      raise FunctionUnavailableError.new("glUniform3i") unless uniform_3i?

      uniform_3i!(*args)
    end

    # Checks if the function "glUniform3i" is loaded.
    @[AlwaysInline]
    def uniform_3i? : Bool
      !@addr_uniform_3i.null?
    end

    # Invokes glUniform4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4i!(*args)
      addr = @addr_uniform_4i
      proc = Procs.uniform_4i(addr)
      proc.call(*args)
    end

    # Invokes glUniform4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4i(*args)
      raise FunctionUnavailableError.new("glUniform4i") unless uniform_4i?

      uniform_4i!(*args)
    end

    # Checks if the function "glUniform4i" is loaded.
    @[AlwaysInline]
    def uniform_4i? : Bool
      !@addr_uniform_4i.null?
    end

    # Invokes glUniform1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1fv!(*args)
      addr = @addr_uniform_1fv
      proc = Procs.uniform_1fv(addr)
      proc.call(*args)
    end

    # Invokes glUniform1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1fv(*args)
      raise FunctionUnavailableError.new("glUniform1fv") unless uniform_1fv?

      uniform_1fv!(*args)
    end

    # Checks if the function "glUniform1fv" is loaded.
    @[AlwaysInline]
    def uniform_1fv? : Bool
      !@addr_uniform_1fv.null?
    end

    # Invokes glUniform2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2fv!(*args)
      addr = @addr_uniform_2fv
      proc = Procs.uniform_2fv(addr)
      proc.call(*args)
    end

    # Invokes glUniform2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2fv(*args)
      raise FunctionUnavailableError.new("glUniform2fv") unless uniform_2fv?

      uniform_2fv!(*args)
    end

    # Checks if the function "glUniform2fv" is loaded.
    @[AlwaysInline]
    def uniform_2fv? : Bool
      !@addr_uniform_2fv.null?
    end

    # Invokes glUniform3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3fv!(*args)
      addr = @addr_uniform_3fv
      proc = Procs.uniform_3fv(addr)
      proc.call(*args)
    end

    # Invokes glUniform3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3fv(*args)
      raise FunctionUnavailableError.new("glUniform3fv") unless uniform_3fv?

      uniform_3fv!(*args)
    end

    # Checks if the function "glUniform3fv" is loaded.
    @[AlwaysInline]
    def uniform_3fv? : Bool
      !@addr_uniform_3fv.null?
    end

    # Invokes glUniform4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4fv!(*args)
      addr = @addr_uniform_4fv
      proc = Procs.uniform_4fv(addr)
      proc.call(*args)
    end

    # Invokes glUniform4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4fv(*args)
      raise FunctionUnavailableError.new("glUniform4fv") unless uniform_4fv?

      uniform_4fv!(*args)
    end

    # Checks if the function "glUniform4fv" is loaded.
    @[AlwaysInline]
    def uniform_4fv? : Bool
      !@addr_uniform_4fv.null?
    end

    # Invokes glUniform1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1iv!(*args)
      addr = @addr_uniform_1iv
      proc = Procs.uniform_1iv(addr)
      proc.call(*args)
    end

    # Invokes glUniform1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1iv(*args)
      raise FunctionUnavailableError.new("glUniform1iv") unless uniform_1iv?

      uniform_1iv!(*args)
    end

    # Checks if the function "glUniform1iv" is loaded.
    @[AlwaysInline]
    def uniform_1iv? : Bool
      !@addr_uniform_1iv.null?
    end

    # Invokes glUniform2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2iv!(*args)
      addr = @addr_uniform_2iv
      proc = Procs.uniform_2iv(addr)
      proc.call(*args)
    end

    # Invokes glUniform2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2iv(*args)
      raise FunctionUnavailableError.new("glUniform2iv") unless uniform_2iv?

      uniform_2iv!(*args)
    end

    # Checks if the function "glUniform2iv" is loaded.
    @[AlwaysInline]
    def uniform_2iv? : Bool
      !@addr_uniform_2iv.null?
    end

    # Invokes glUniform3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3iv!(*args)
      addr = @addr_uniform_3iv
      proc = Procs.uniform_3iv(addr)
      proc.call(*args)
    end

    # Invokes glUniform3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3iv(*args)
      raise FunctionUnavailableError.new("glUniform3iv") unless uniform_3iv?

      uniform_3iv!(*args)
    end

    # Checks if the function "glUniform3iv" is loaded.
    @[AlwaysInline]
    def uniform_3iv? : Bool
      !@addr_uniform_3iv.null?
    end

    # Invokes glUniform4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4iv!(*args)
      addr = @addr_uniform_4iv
      proc = Procs.uniform_4iv(addr)
      proc.call(*args)
    end

    # Invokes glUniform4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4iv(*args)
      raise FunctionUnavailableError.new("glUniform4iv") unless uniform_4iv?

      uniform_4iv!(*args)
    end

    # Checks if the function "glUniform4iv" is loaded.
    @[AlwaysInline]
    def uniform_4iv? : Bool
      !@addr_uniform_4iv.null?
    end

    # Invokes glUniformMatrix2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2_fv!(*args)
      addr = @addr_uniform_matrix2_fv
      proc = Procs.uniform_matrix2_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2fv") unless uniform_matrix2_fv?

      uniform_matrix2_fv!(*args)
    end

    # Checks if the function "glUniformMatrix2fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2_fv? : Bool
      !@addr_uniform_matrix2_fv.null?
    end

    # Invokes glUniformMatrix3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3_fv!(*args)
      addr = @addr_uniform_matrix3_fv
      proc = Procs.uniform_matrix3_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3fv") unless uniform_matrix3_fv?

      uniform_matrix3_fv!(*args)
    end

    # Checks if the function "glUniformMatrix3fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3_fv? : Bool
      !@addr_uniform_matrix3_fv.null?
    end

    # Invokes glUniformMatrix4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4_fv!(*args)
      addr = @addr_uniform_matrix4_fv
      proc = Procs.uniform_matrix4_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4fv") unless uniform_matrix4_fv?

      uniform_matrix4_fv!(*args)
    end

    # Checks if the function "glUniformMatrix4fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4_fv? : Bool
      !@addr_uniform_matrix4_fv.null?
    end

    # Invokes glValidateProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def validate_program!(*args)
      addr = @addr_validate_program
      proc = Procs.validate_program(addr)
      proc.call(*args)
    end

    # Invokes glValidateProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def validate_program(*args)
      raise FunctionUnavailableError.new("glValidateProgram") unless validate_program?

      validate_program!(*args)
    end

    # Checks if the function "glValidateProgram" is loaded.
    @[AlwaysInline]
    def validate_program? : Bool
      !@addr_validate_program.null?
    end

    # Invokes glVertexAttrib1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1d!(*args)
      addr = @addr_vertex_attrib_1d
      proc = Procs.vertex_attrib_1d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1d") unless vertex_attrib_1d?

      vertex_attrib_1d!(*args)
    end

    # Checks if the function "glVertexAttrib1d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1d? : Bool
      !@addr_vertex_attrib_1d.null?
    end

    # Invokes glVertexAttrib1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1dv!(*args)
      addr = @addr_vertex_attrib_1dv
      proc = Procs.vertex_attrib_1dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1dv") unless vertex_attrib_1dv?

      vertex_attrib_1dv!(*args)
    end

    # Checks if the function "glVertexAttrib1dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1dv? : Bool
      !@addr_vertex_attrib_1dv.null?
    end

    # Invokes glVertexAttrib1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1f!(*args)
      addr = @addr_vertex_attrib_1f
      proc = Procs.vertex_attrib_1f(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1f") unless vertex_attrib_1f?

      vertex_attrib_1f!(*args)
    end

    # Checks if the function "glVertexAttrib1f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1f? : Bool
      !@addr_vertex_attrib_1f.null?
    end

    # Invokes glVertexAttrib1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1fv!(*args)
      addr = @addr_vertex_attrib_1fv
      proc = Procs.vertex_attrib_1fv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1fv") unless vertex_attrib_1fv?

      vertex_attrib_1fv!(*args)
    end

    # Checks if the function "glVertexAttrib1fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1fv? : Bool
      !@addr_vertex_attrib_1fv.null?
    end

    # Invokes glVertexAttrib1s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1s!(*args)
      addr = @addr_vertex_attrib_1s
      proc = Procs.vertex_attrib_1s(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib1s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1s") unless vertex_attrib_1s?

      vertex_attrib_1s!(*args)
    end

    # Checks if the function "glVertexAttrib1s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1s? : Bool
      !@addr_vertex_attrib_1s.null?
    end

    # Invokes glVertexAttrib1sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1sv!(*args)
      addr = @addr_vertex_attrib_1sv
      proc = Procs.vertex_attrib_1sv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib1sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1sv") unless vertex_attrib_1sv?

      vertex_attrib_1sv!(*args)
    end

    # Checks if the function "glVertexAttrib1sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1sv? : Bool
      !@addr_vertex_attrib_1sv.null?
    end

    # Invokes glVertexAttrib2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2d!(*args)
      addr = @addr_vertex_attrib_2d
      proc = Procs.vertex_attrib_2d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2d") unless vertex_attrib_2d?

      vertex_attrib_2d!(*args)
    end

    # Checks if the function "glVertexAttrib2d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2d? : Bool
      !@addr_vertex_attrib_2d.null?
    end

    # Invokes glVertexAttrib2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2dv!(*args)
      addr = @addr_vertex_attrib_2dv
      proc = Procs.vertex_attrib_2dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2dv") unless vertex_attrib_2dv?

      vertex_attrib_2dv!(*args)
    end

    # Checks if the function "glVertexAttrib2dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2dv? : Bool
      !@addr_vertex_attrib_2dv.null?
    end

    # Invokes glVertexAttrib2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2f!(*args)
      addr = @addr_vertex_attrib_2f
      proc = Procs.vertex_attrib_2f(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2f") unless vertex_attrib_2f?

      vertex_attrib_2f!(*args)
    end

    # Checks if the function "glVertexAttrib2f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2f? : Bool
      !@addr_vertex_attrib_2f.null?
    end

    # Invokes glVertexAttrib2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2fv!(*args)
      addr = @addr_vertex_attrib_2fv
      proc = Procs.vertex_attrib_2fv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2fv") unless vertex_attrib_2fv?

      vertex_attrib_2fv!(*args)
    end

    # Checks if the function "glVertexAttrib2fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2fv? : Bool
      !@addr_vertex_attrib_2fv.null?
    end

    # Invokes glVertexAttrib2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2s!(*args)
      addr = @addr_vertex_attrib_2s
      proc = Procs.vertex_attrib_2s(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2s") unless vertex_attrib_2s?

      vertex_attrib_2s!(*args)
    end

    # Checks if the function "glVertexAttrib2s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2s? : Bool
      !@addr_vertex_attrib_2s.null?
    end

    # Invokes glVertexAttrib2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2sv!(*args)
      addr = @addr_vertex_attrib_2sv
      proc = Procs.vertex_attrib_2sv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2sv") unless vertex_attrib_2sv?

      vertex_attrib_2sv!(*args)
    end

    # Checks if the function "glVertexAttrib2sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2sv? : Bool
      !@addr_vertex_attrib_2sv.null?
    end

    # Invokes glVertexAttrib3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3d!(*args)
      addr = @addr_vertex_attrib_3d
      proc = Procs.vertex_attrib_3d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3d") unless vertex_attrib_3d?

      vertex_attrib_3d!(*args)
    end

    # Checks if the function "glVertexAttrib3d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3d? : Bool
      !@addr_vertex_attrib_3d.null?
    end

    # Invokes glVertexAttrib3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3dv!(*args)
      addr = @addr_vertex_attrib_3dv
      proc = Procs.vertex_attrib_3dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3dv") unless vertex_attrib_3dv?

      vertex_attrib_3dv!(*args)
    end

    # Checks if the function "glVertexAttrib3dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3dv? : Bool
      !@addr_vertex_attrib_3dv.null?
    end

    # Invokes glVertexAttrib3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3f!(*args)
      addr = @addr_vertex_attrib_3f
      proc = Procs.vertex_attrib_3f(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3f") unless vertex_attrib_3f?

      vertex_attrib_3f!(*args)
    end

    # Checks if the function "glVertexAttrib3f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3f? : Bool
      !@addr_vertex_attrib_3f.null?
    end

    # Invokes glVertexAttrib3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3fv!(*args)
      addr = @addr_vertex_attrib_3fv
      proc = Procs.vertex_attrib_3fv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3fv") unless vertex_attrib_3fv?

      vertex_attrib_3fv!(*args)
    end

    # Checks if the function "glVertexAttrib3fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3fv? : Bool
      !@addr_vertex_attrib_3fv.null?
    end

    # Invokes glVertexAttrib3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3s!(*args)
      addr = @addr_vertex_attrib_3s
      proc = Procs.vertex_attrib_3s(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3s") unless vertex_attrib_3s?

      vertex_attrib_3s!(*args)
    end

    # Checks if the function "glVertexAttrib3s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3s? : Bool
      !@addr_vertex_attrib_3s.null?
    end

    # Invokes glVertexAttrib3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3sv!(*args)
      addr = @addr_vertex_attrib_3sv
      proc = Procs.vertex_attrib_3sv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3sv") unless vertex_attrib_3sv?

      vertex_attrib_3sv!(*args)
    end

    # Checks if the function "glVertexAttrib3sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3sv? : Bool
      !@addr_vertex_attrib_3sv.null?
    end

    # Invokes glVertexAttrib4Nbv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nbv!(*args)
      addr = @addr_vertex_attrib_4nbv
      proc = Procs.vertex_attrib_4nbv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Nbv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nbv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nbv") unless vertex_attrib_4nbv?

      vertex_attrib_4nbv!(*args)
    end

    # Checks if the function "glVertexAttrib4Nbv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nbv? : Bool
      !@addr_vertex_attrib_4nbv.null?
    end

    # Invokes glVertexAttrib4Niv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4niv!(*args)
      addr = @addr_vertex_attrib_4niv
      proc = Procs.vertex_attrib_4niv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Niv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4niv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Niv") unless vertex_attrib_4niv?

      vertex_attrib_4niv!(*args)
    end

    # Checks if the function "glVertexAttrib4Niv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4niv? : Bool
      !@addr_vertex_attrib_4niv.null?
    end

    # Invokes glVertexAttrib4Nsv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nsv!(*args)
      addr = @addr_vertex_attrib_4nsv
      proc = Procs.vertex_attrib_4nsv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Nsv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nsv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nsv") unless vertex_attrib_4nsv?

      vertex_attrib_4nsv!(*args)
    end

    # Checks if the function "glVertexAttrib4Nsv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nsv? : Bool
      !@addr_vertex_attrib_4nsv.null?
    end

    # Invokes glVertexAttrib4Nub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nub!(*args)
      addr = @addr_vertex_attrib_4nub
      proc = Procs.vertex_attrib_4nub(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Nub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nub(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nub") unless vertex_attrib_4nub?

      vertex_attrib_4nub!(*args)
    end

    # Checks if the function "glVertexAttrib4Nub" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nub? : Bool
      !@addr_vertex_attrib_4nub.null?
    end

    # Invokes glVertexAttrib4Nubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nubv!(*args)
      addr = @addr_vertex_attrib_4nubv
      proc = Procs.vertex_attrib_4nubv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Nubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nubv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nubv") unless vertex_attrib_4nubv?

      vertex_attrib_4nubv!(*args)
    end

    # Checks if the function "glVertexAttrib4Nubv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nubv? : Bool
      !@addr_vertex_attrib_4nubv.null?
    end

    # Invokes glVertexAttrib4Nuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nuiv!(*args)
      addr = @addr_vertex_attrib_4nuiv
      proc = Procs.vertex_attrib_4nuiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Nuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nuiv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nuiv") unless vertex_attrib_4nuiv?

      vertex_attrib_4nuiv!(*args)
    end

    # Checks if the function "glVertexAttrib4Nuiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nuiv? : Bool
      !@addr_vertex_attrib_4nuiv.null?
    end

    # Invokes glVertexAttrib4Nusv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nusv!(*args)
      addr = @addr_vertex_attrib_4nusv
      proc = Procs.vertex_attrib_4nusv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4Nusv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nusv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nusv") unless vertex_attrib_4nusv?

      vertex_attrib_4nusv!(*args)
    end

    # Checks if the function "glVertexAttrib4Nusv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nusv? : Bool
      !@addr_vertex_attrib_4nusv.null?
    end

    # Invokes glVertexAttrib4bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4bv!(*args)
      addr = @addr_vertex_attrib_4bv
      proc = Procs.vertex_attrib_4bv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4bv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4bv") unless vertex_attrib_4bv?

      vertex_attrib_4bv!(*args)
    end

    # Checks if the function "glVertexAttrib4bv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4bv? : Bool
      !@addr_vertex_attrib_4bv.null?
    end

    # Invokes glVertexAttrib4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4d!(*args)
      addr = @addr_vertex_attrib_4d
      proc = Procs.vertex_attrib_4d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4d") unless vertex_attrib_4d?

      vertex_attrib_4d!(*args)
    end

    # Checks if the function "glVertexAttrib4d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4d? : Bool
      !@addr_vertex_attrib_4d.null?
    end

    # Invokes glVertexAttrib4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4dv!(*args)
      addr = @addr_vertex_attrib_4dv
      proc = Procs.vertex_attrib_4dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4dv") unless vertex_attrib_4dv?

      vertex_attrib_4dv!(*args)
    end

    # Checks if the function "glVertexAttrib4dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4dv? : Bool
      !@addr_vertex_attrib_4dv.null?
    end

    # Invokes glVertexAttrib4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4f!(*args)
      addr = @addr_vertex_attrib_4f
      proc = Procs.vertex_attrib_4f(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4f") unless vertex_attrib_4f?

      vertex_attrib_4f!(*args)
    end

    # Checks if the function "glVertexAttrib4f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4f? : Bool
      !@addr_vertex_attrib_4f.null?
    end

    # Invokes glVertexAttrib4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4fv!(*args)
      addr = @addr_vertex_attrib_4fv
      proc = Procs.vertex_attrib_4fv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4fv") unless vertex_attrib_4fv?

      vertex_attrib_4fv!(*args)
    end

    # Checks if the function "glVertexAttrib4fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4fv? : Bool
      !@addr_vertex_attrib_4fv.null?
    end

    # Invokes glVertexAttrib4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4iv!(*args)
      addr = @addr_vertex_attrib_4iv
      proc = Procs.vertex_attrib_4iv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4iv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4iv") unless vertex_attrib_4iv?

      vertex_attrib_4iv!(*args)
    end

    # Checks if the function "glVertexAttrib4iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4iv? : Bool
      !@addr_vertex_attrib_4iv.null?
    end

    # Invokes glVertexAttrib4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4s!(*args)
      addr = @addr_vertex_attrib_4s
      proc = Procs.vertex_attrib_4s(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4s") unless vertex_attrib_4s?

      vertex_attrib_4s!(*args)
    end

    # Checks if the function "glVertexAttrib4s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4s? : Bool
      !@addr_vertex_attrib_4s.null?
    end

    # Invokes glVertexAttrib4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4sv!(*args)
      addr = @addr_vertex_attrib_4sv
      proc = Procs.vertex_attrib_4sv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4sv") unless vertex_attrib_4sv?

      vertex_attrib_4sv!(*args)
    end

    # Checks if the function "glVertexAttrib4sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4sv? : Bool
      !@addr_vertex_attrib_4sv.null?
    end

    # Invokes glVertexAttrib4ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4ubv!(*args)
      addr = @addr_vertex_attrib_4ubv
      proc = Procs.vertex_attrib_4ubv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4ubv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4ubv") unless vertex_attrib_4ubv?

      vertex_attrib_4ubv!(*args)
    end

    # Checks if the function "glVertexAttrib4ubv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4ubv? : Bool
      !@addr_vertex_attrib_4ubv.null?
    end

    # Invokes glVertexAttrib4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4uiv!(*args)
      addr = @addr_vertex_attrib_4uiv
      proc = Procs.vertex_attrib_4uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4uiv") unless vertex_attrib_4uiv?

      vertex_attrib_4uiv!(*args)
    end

    # Checks if the function "glVertexAttrib4uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4uiv? : Bool
      !@addr_vertex_attrib_4uiv.null?
    end

    # Invokes glVertexAttrib4usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4usv!(*args)
      addr = @addr_vertex_attrib_4usv
      proc = Procs.vertex_attrib_4usv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttrib4usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4usv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4usv") unless vertex_attrib_4usv?

      vertex_attrib_4usv!(*args)
    end

    # Checks if the function "glVertexAttrib4usv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4usv? : Bool
      !@addr_vertex_attrib_4usv.null?
    end

    # Invokes glVertexAttribPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_pointer!(*args)
      addr = @addr_vertex_attrib_pointer
      proc = Procs.vertex_attrib_pointer(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_pointer(*args)
      raise FunctionUnavailableError.new("glVertexAttribPointer") unless vertex_attrib_pointer?

      vertex_attrib_pointer!(*args)
    end

    # Checks if the function "glVertexAttribPointer" is loaded.
    @[AlwaysInline]
    def vertex_attrib_pointer? : Bool
      !@addr_vertex_attrib_pointer.null?
    end

    # Invokes glUniformMatrix2x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x3_fv!(*args)
      addr = @addr_uniform_matrix2x3_fv
      proc = Procs.uniform_matrix2x3_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix2x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x3_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x3fv") unless uniform_matrix2x3_fv?

      uniform_matrix2x3_fv!(*args)
    end

    # Checks if the function "glUniformMatrix2x3fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x3_fv? : Bool
      !@addr_uniform_matrix2x3_fv.null?
    end

    # Invokes glUniformMatrix3x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x2_fv!(*args)
      addr = @addr_uniform_matrix3x2_fv
      proc = Procs.uniform_matrix3x2_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix3x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x2_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x2fv") unless uniform_matrix3x2_fv?

      uniform_matrix3x2_fv!(*args)
    end

    # Checks if the function "glUniformMatrix3x2fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x2_fv? : Bool
      !@addr_uniform_matrix3x2_fv.null?
    end

    # Invokes glUniformMatrix2x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x4_fv!(*args)
      addr = @addr_uniform_matrix2x4_fv
      proc = Procs.uniform_matrix2x4_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix2x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x4_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x4fv") unless uniform_matrix2x4_fv?

      uniform_matrix2x4_fv!(*args)
    end

    # Checks if the function "glUniformMatrix2x4fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x4_fv? : Bool
      !@addr_uniform_matrix2x4_fv.null?
    end

    # Invokes glUniformMatrix4x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x2_fv!(*args)
      addr = @addr_uniform_matrix4x2_fv
      proc = Procs.uniform_matrix4x2_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix4x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x2_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x2fv") unless uniform_matrix4x2_fv?

      uniform_matrix4x2_fv!(*args)
    end

    # Checks if the function "glUniformMatrix4x2fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x2_fv? : Bool
      !@addr_uniform_matrix4x2_fv.null?
    end

    # Invokes glUniformMatrix3x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x4_fv!(*args)
      addr = @addr_uniform_matrix3x4_fv
      proc = Procs.uniform_matrix3x4_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix3x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x4_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x4fv") unless uniform_matrix3x4_fv?

      uniform_matrix3x4_fv!(*args)
    end

    # Checks if the function "glUniformMatrix3x4fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x4_fv? : Bool
      !@addr_uniform_matrix3x4_fv.null?
    end

    # Invokes glUniformMatrix4x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x3_fv!(*args)
      addr = @addr_uniform_matrix4x3_fv
      proc = Procs.uniform_matrix4x3_fv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix4x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x3_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x3fv") unless uniform_matrix4x3_fv?

      uniform_matrix4x3_fv!(*args)
    end

    # Checks if the function "glUniformMatrix4x3fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x3_fv? : Bool
      !@addr_uniform_matrix4x3_fv.null?
    end

    # Invokes glColorMaski.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_mask_i!(*args)
      addr = @addr_color_mask_i
      proc = Procs.color_mask_i(addr)
      proc.call(*args)
    end

    # Invokes glColorMaski.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_mask_i(*args)
      raise FunctionUnavailableError.new("glColorMaski") unless color_mask_i?

      color_mask_i!(*args)
    end

    # Checks if the function "glColorMaski" is loaded.
    @[AlwaysInline]
    def color_mask_i? : Bool
      !@addr_color_mask_i.null?
    end

    # Invokes glGetBooleani_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_boolean_i_v!(*args)
      addr = @addr_get_boolean_i_v
      proc = Procs.get_boolean_i_v(addr)
      proc.call(*args)
    end

    # Invokes glGetBooleani_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_boolean_i_v(*args)
      raise FunctionUnavailableError.new("glGetBooleani_v") unless get_boolean_i_v?

      get_boolean_i_v!(*args)
    end

    # Checks if the function "glGetBooleani_v" is loaded.
    @[AlwaysInline]
    def get_boolean_i_v? : Bool
      !@addr_get_boolean_i_v.null?
    end

    # Invokes glGetIntegeri_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_i_v!(*args)
      addr = @addr_get_integer_i_v
      proc = Procs.get_integer_i_v(addr)
      proc.call(*args)
    end

    # Invokes glGetIntegeri_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_i_v(*args)
      raise FunctionUnavailableError.new("glGetIntegeri_v") unless get_integer_i_v?

      get_integer_i_v!(*args)
    end

    # Checks if the function "glGetIntegeri_v" is loaded.
    @[AlwaysInline]
    def get_integer_i_v? : Bool
      !@addr_get_integer_i_v.null?
    end

    # Invokes glEnablei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_i!(*args)
      addr = @addr_enable_i
      proc = Procs.enable_i(addr)
      proc.call(*args)
    end

    # Invokes glEnablei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_i(*args)
      raise FunctionUnavailableError.new("glEnablei") unless enable_i?

      enable_i!(*args)
    end

    # Checks if the function "glEnablei" is loaded.
    @[AlwaysInline]
    def enable_i? : Bool
      !@addr_enable_i.null?
    end

    # Invokes glDisablei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_i!(*args)
      addr = @addr_disable_i
      proc = Procs.disable_i(addr)
      proc.call(*args)
    end

    # Invokes glDisablei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_i(*args)
      raise FunctionUnavailableError.new("glDisablei") unless disable_i?

      disable_i!(*args)
    end

    # Checks if the function "glDisablei" is loaded.
    @[AlwaysInline]
    def disable_i? : Bool
      !@addr_disable_i.null?
    end

    # Invokes glIsEnabledi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_enabled_i!(*args)
      addr = @addr_is_enabled_i
      proc = Procs.is_enabled_i(addr)
      proc.call(*args)
    end

    # Invokes glIsEnabledi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_enabled_i(*args)
      raise FunctionUnavailableError.new("glIsEnabledi") unless is_enabled_i?

      is_enabled_i!(*args)
    end

    # Checks if the function "glIsEnabledi" is loaded.
    @[AlwaysInline]
    def is_enabled_i? : Bool
      !@addr_is_enabled_i.null?
    end

    # Invokes glBeginTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_transform_feedback!(*args)
      addr = @addr_begin_transform_feedback
      proc = Procs.begin_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glBeginTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_transform_feedback(*args)
      raise FunctionUnavailableError.new("glBeginTransformFeedback") unless begin_transform_feedback?

      begin_transform_feedback!(*args)
    end

    # Checks if the function "glBeginTransformFeedback" is loaded.
    @[AlwaysInline]
    def begin_transform_feedback? : Bool
      !@addr_begin_transform_feedback.null?
    end

    # Invokes glEndTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_transform_feedback!(*args)
      addr = @addr_end_transform_feedback
      proc = Procs.end_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glEndTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_transform_feedback(*args)
      raise FunctionUnavailableError.new("glEndTransformFeedback") unless end_transform_feedback?

      end_transform_feedback!(*args)
    end

    # Checks if the function "glEndTransformFeedback" is loaded.
    @[AlwaysInline]
    def end_transform_feedback? : Bool
      !@addr_end_transform_feedback.null?
    end

    # Invokes glBindBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffer_range!(*args)
      addr = @addr_bind_buffer_range
      proc = Procs.bind_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glBindBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffer_range(*args)
      raise FunctionUnavailableError.new("glBindBufferRange") unless bind_buffer_range?

      bind_buffer_range!(*args)
    end

    # Checks if the function "glBindBufferRange" is loaded.
    @[AlwaysInline]
    def bind_buffer_range? : Bool
      !@addr_bind_buffer_range.null?
    end

    # Invokes glBindBufferBase.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffer_base!(*args)
      addr = @addr_bind_buffer_base
      proc = Procs.bind_buffer_base(addr)
      proc.call(*args)
    end

    # Invokes glBindBufferBase.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffer_base(*args)
      raise FunctionUnavailableError.new("glBindBufferBase") unless bind_buffer_base?

      bind_buffer_base!(*args)
    end

    # Checks if the function "glBindBufferBase" is loaded.
    @[AlwaysInline]
    def bind_buffer_base? : Bool
      !@addr_bind_buffer_base.null?
    end

    # Invokes glTransformFeedbackVaryings.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def transform_feedback_varyings!(*args)
      addr = @addr_transform_feedback_varyings
      proc = Procs.transform_feedback_varyings(addr)
      proc.call(*args)
    end

    # Invokes glTransformFeedbackVaryings.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def transform_feedback_varyings(*args)
      raise FunctionUnavailableError.new("glTransformFeedbackVaryings") unless transform_feedback_varyings?

      transform_feedback_varyings!(*args)
    end

    # Checks if the function "glTransformFeedbackVaryings" is loaded.
    @[AlwaysInline]
    def transform_feedback_varyings? : Bool
      !@addr_transform_feedback_varyings.null?
    end

    # Invokes glGetTransformFeedbackVarying.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_transform_feedback_varying!(*args)
      addr = @addr_get_transform_feedback_varying
      proc = Procs.get_transform_feedback_varying(addr)
      proc.call(*args)
    end

    # Invokes glGetTransformFeedbackVarying.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_transform_feedback_varying(*args)
      raise FunctionUnavailableError.new("glGetTransformFeedbackVarying") unless get_transform_feedback_varying?

      get_transform_feedback_varying!(*args)
    end

    # Checks if the function "glGetTransformFeedbackVarying" is loaded.
    @[AlwaysInline]
    def get_transform_feedback_varying? : Bool
      !@addr_get_transform_feedback_varying.null?
    end

    # Invokes glClampColor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clamp_color!(*args)
      addr = @addr_clamp_color
      proc = Procs.clamp_color(addr)
      proc.call(*args)
    end

    # Invokes glClampColor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clamp_color(*args)
      raise FunctionUnavailableError.new("glClampColor") unless clamp_color?

      clamp_color!(*args)
    end

    # Checks if the function "glClampColor" is loaded.
    @[AlwaysInline]
    def clamp_color? : Bool
      !@addr_clamp_color.null?
    end

    # Invokes glBeginConditionalRender.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_conditional_render!(*args)
      addr = @addr_begin_conditional_render
      proc = Procs.begin_conditional_render(addr)
      proc.call(*args)
    end

    # Invokes glBeginConditionalRender.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_conditional_render(*args)
      raise FunctionUnavailableError.new("glBeginConditionalRender") unless begin_conditional_render?

      begin_conditional_render!(*args)
    end

    # Checks if the function "glBeginConditionalRender" is loaded.
    @[AlwaysInline]
    def begin_conditional_render? : Bool
      !@addr_begin_conditional_render.null?
    end

    # Invokes glEndConditionalRender.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_conditional_render!(*args)
      addr = @addr_end_conditional_render
      proc = Procs.end_conditional_render(addr)
      proc.call(*args)
    end

    # Invokes glEndConditionalRender.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_conditional_render(*args)
      raise FunctionUnavailableError.new("glEndConditionalRender") unless end_conditional_render?

      end_conditional_render!(*args)
    end

    # Checks if the function "glEndConditionalRender" is loaded.
    @[AlwaysInline]
    def end_conditional_render? : Bool
      !@addr_end_conditional_render.null?
    end

    # Invokes glVertexAttribIPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_pointer!(*args)
      addr = @addr_vertex_attrib_i_pointer
      proc = Procs.vertex_attrib_i_pointer(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribIPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_pointer(*args)
      raise FunctionUnavailableError.new("glVertexAttribIPointer") unless vertex_attrib_i_pointer?

      vertex_attrib_i_pointer!(*args)
    end

    # Checks if the function "glVertexAttribIPointer" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_pointer? : Bool
      !@addr_vertex_attrib_i_pointer.null?
    end

    # Invokes glGetVertexAttribIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_i_iv!(*args)
      addr = @addr_get_vertex_attrib_i_iv
      proc = Procs.get_vertex_attrib_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_i_iv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribIiv") unless get_vertex_attrib_i_iv?

      get_vertex_attrib_i_iv!(*args)
    end

    # Checks if the function "glGetVertexAttribIiv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_i_iv? : Bool
      !@addr_get_vertex_attrib_i_iv.null?
    end

    # Invokes glGetVertexAttribIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_i_uiv!(*args)
      addr = @addr_get_vertex_attrib_i_uiv
      proc = Procs.get_vertex_attrib_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribIuiv") unless get_vertex_attrib_i_uiv?

      get_vertex_attrib_i_uiv!(*args)
    end

    # Checks if the function "glGetVertexAttribIuiv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_i_uiv? : Bool
      !@addr_get_vertex_attrib_i_uiv.null?
    end

    # Invokes glVertexAttribI1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1i!(*args)
      addr = @addr_vertex_attrib_i_1i
      proc = Procs.vertex_attrib_i_1i(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1i") unless vertex_attrib_i_1i?

      vertex_attrib_i_1i!(*args)
    end

    # Checks if the function "glVertexAttribI1i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1i? : Bool
      !@addr_vertex_attrib_i_1i.null?
    end

    # Invokes glVertexAttribI2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2i!(*args)
      addr = @addr_vertex_attrib_i_2i
      proc = Procs.vertex_attrib_i_2i(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2i") unless vertex_attrib_i_2i?

      vertex_attrib_i_2i!(*args)
    end

    # Checks if the function "glVertexAttribI2i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2i? : Bool
      !@addr_vertex_attrib_i_2i.null?
    end

    # Invokes glVertexAttribI3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3i!(*args)
      addr = @addr_vertex_attrib_i_3i
      proc = Procs.vertex_attrib_i_3i(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3i") unless vertex_attrib_i_3i?

      vertex_attrib_i_3i!(*args)
    end

    # Checks if the function "glVertexAttribI3i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3i? : Bool
      !@addr_vertex_attrib_i_3i.null?
    end

    # Invokes glVertexAttribI4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4i!(*args)
      addr = @addr_vertex_attrib_i_4i
      proc = Procs.vertex_attrib_i_4i(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4i") unless vertex_attrib_i_4i?

      vertex_attrib_i_4i!(*args)
    end

    # Checks if the function "glVertexAttribI4i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4i? : Bool
      !@addr_vertex_attrib_i_4i.null?
    end

    # Invokes glVertexAttribI1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1ui!(*args)
      addr = @addr_vertex_attrib_i_1ui
      proc = Procs.vertex_attrib_i_1ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1ui") unless vertex_attrib_i_1ui?

      vertex_attrib_i_1ui!(*args)
    end

    # Checks if the function "glVertexAttribI1ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1ui? : Bool
      !@addr_vertex_attrib_i_1ui.null?
    end

    # Invokes glVertexAttribI2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2ui!(*args)
      addr = @addr_vertex_attrib_i_2ui
      proc = Procs.vertex_attrib_i_2ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2ui") unless vertex_attrib_i_2ui?

      vertex_attrib_i_2ui!(*args)
    end

    # Checks if the function "glVertexAttribI2ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2ui? : Bool
      !@addr_vertex_attrib_i_2ui.null?
    end

    # Invokes glVertexAttribI3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3ui!(*args)
      addr = @addr_vertex_attrib_i_3ui
      proc = Procs.vertex_attrib_i_3ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3ui") unless vertex_attrib_i_3ui?

      vertex_attrib_i_3ui!(*args)
    end

    # Checks if the function "glVertexAttribI3ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3ui? : Bool
      !@addr_vertex_attrib_i_3ui.null?
    end

    # Invokes glVertexAttribI4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4ui!(*args)
      addr = @addr_vertex_attrib_i_4ui
      proc = Procs.vertex_attrib_i_4ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4ui") unless vertex_attrib_i_4ui?

      vertex_attrib_i_4ui!(*args)
    end

    # Checks if the function "glVertexAttribI4ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4ui? : Bool
      !@addr_vertex_attrib_i_4ui.null?
    end

    # Invokes glVertexAttribI1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1iv!(*args)
      addr = @addr_vertex_attrib_i_1iv
      proc = Procs.vertex_attrib_i_1iv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1iv") unless vertex_attrib_i_1iv?

      vertex_attrib_i_1iv!(*args)
    end

    # Checks if the function "glVertexAttribI1iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1iv? : Bool
      !@addr_vertex_attrib_i_1iv.null?
    end

    # Invokes glVertexAttribI2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2iv!(*args)
      addr = @addr_vertex_attrib_i_2iv
      proc = Procs.vertex_attrib_i_2iv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2iv") unless vertex_attrib_i_2iv?

      vertex_attrib_i_2iv!(*args)
    end

    # Checks if the function "glVertexAttribI2iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2iv? : Bool
      !@addr_vertex_attrib_i_2iv.null?
    end

    # Invokes glVertexAttribI3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3iv!(*args)
      addr = @addr_vertex_attrib_i_3iv
      proc = Procs.vertex_attrib_i_3iv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3iv") unless vertex_attrib_i_3iv?

      vertex_attrib_i_3iv!(*args)
    end

    # Checks if the function "glVertexAttribI3iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3iv? : Bool
      !@addr_vertex_attrib_i_3iv.null?
    end

    # Invokes glVertexAttribI4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4iv!(*args)
      addr = @addr_vertex_attrib_i_4iv
      proc = Procs.vertex_attrib_i_4iv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4iv") unless vertex_attrib_i_4iv?

      vertex_attrib_i_4iv!(*args)
    end

    # Checks if the function "glVertexAttribI4iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4iv? : Bool
      !@addr_vertex_attrib_i_4iv.null?
    end

    # Invokes glVertexAttribI1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1uiv!(*args)
      addr = @addr_vertex_attrib_i_1uiv
      proc = Procs.vertex_attrib_i_1uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1uiv") unless vertex_attrib_i_1uiv?

      vertex_attrib_i_1uiv!(*args)
    end

    # Checks if the function "glVertexAttribI1uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1uiv? : Bool
      !@addr_vertex_attrib_i_1uiv.null?
    end

    # Invokes glVertexAttribI2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2uiv!(*args)
      addr = @addr_vertex_attrib_i_2uiv
      proc = Procs.vertex_attrib_i_2uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2uiv") unless vertex_attrib_i_2uiv?

      vertex_attrib_i_2uiv!(*args)
    end

    # Checks if the function "glVertexAttribI2uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2uiv? : Bool
      !@addr_vertex_attrib_i_2uiv.null?
    end

    # Invokes glVertexAttribI3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3uiv!(*args)
      addr = @addr_vertex_attrib_i_3uiv
      proc = Procs.vertex_attrib_i_3uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3uiv") unless vertex_attrib_i_3uiv?

      vertex_attrib_i_3uiv!(*args)
    end

    # Checks if the function "glVertexAttribI3uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3uiv? : Bool
      !@addr_vertex_attrib_i_3uiv.null?
    end

    # Invokes glVertexAttribI4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4uiv!(*args)
      addr = @addr_vertex_attrib_i_4uiv
      proc = Procs.vertex_attrib_i_4uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4uiv") unless vertex_attrib_i_4uiv?

      vertex_attrib_i_4uiv!(*args)
    end

    # Checks if the function "glVertexAttribI4uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4uiv? : Bool
      !@addr_vertex_attrib_i_4uiv.null?
    end

    # Invokes glVertexAttribI4bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4bv!(*args)
      addr = @addr_vertex_attrib_i_4bv
      proc = Procs.vertex_attrib_i_4bv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4bv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4bv") unless vertex_attrib_i_4bv?

      vertex_attrib_i_4bv!(*args)
    end

    # Checks if the function "glVertexAttribI4bv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4bv? : Bool
      !@addr_vertex_attrib_i_4bv.null?
    end

    # Invokes glVertexAttribI4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4sv!(*args)
      addr = @addr_vertex_attrib_i_4sv
      proc = Procs.vertex_attrib_i_4sv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4sv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4sv") unless vertex_attrib_i_4sv?

      vertex_attrib_i_4sv!(*args)
    end

    # Checks if the function "glVertexAttribI4sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4sv? : Bool
      !@addr_vertex_attrib_i_4sv.null?
    end

    # Invokes glVertexAttribI4ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4ubv!(*args)
      addr = @addr_vertex_attrib_i_4ubv
      proc = Procs.vertex_attrib_i_4ubv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4ubv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4ubv") unless vertex_attrib_i_4ubv?

      vertex_attrib_i_4ubv!(*args)
    end

    # Checks if the function "glVertexAttribI4ubv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4ubv? : Bool
      !@addr_vertex_attrib_i_4ubv.null?
    end

    # Invokes glVertexAttribI4usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4usv!(*args)
      addr = @addr_vertex_attrib_i_4usv
      proc = Procs.vertex_attrib_i_4usv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribI4usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4usv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4usv") unless vertex_attrib_i_4usv?

      vertex_attrib_i_4usv!(*args)
    end

    # Checks if the function "glVertexAttribI4usv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4usv? : Bool
      !@addr_vertex_attrib_i_4usv.null?
    end

    # Invokes glGetUniformuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_uiv!(*args)
      addr = @addr_get_uniform_uiv
      proc = Procs.get_uniform_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_uiv(*args)
      raise FunctionUnavailableError.new("glGetUniformuiv") unless get_uniform_uiv?

      get_uniform_uiv!(*args)
    end

    # Checks if the function "glGetUniformuiv" is loaded.
    @[AlwaysInline]
    def get_uniform_uiv? : Bool
      !@addr_get_uniform_uiv.null?
    end

    # Invokes glBindFragDataLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_frag_data_location!(*args)
      addr = @addr_bind_frag_data_location
      proc = Procs.bind_frag_data_location(addr)
      proc.call(*args)
    end

    # Invokes glBindFragDataLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_frag_data_location(*args)
      raise FunctionUnavailableError.new("glBindFragDataLocation") unless bind_frag_data_location?

      bind_frag_data_location!(*args)
    end

    # Checks if the function "glBindFragDataLocation" is loaded.
    @[AlwaysInline]
    def bind_frag_data_location? : Bool
      !@addr_bind_frag_data_location.null?
    end

    # Invokes glGetFragDataLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_frag_data_location!(*args)
      addr = @addr_get_frag_data_location
      proc = Procs.get_frag_data_location(addr)
      proc.call(*args)
    end

    # Invokes glGetFragDataLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_frag_data_location(*args)
      raise FunctionUnavailableError.new("glGetFragDataLocation") unless get_frag_data_location?

      get_frag_data_location!(*args)
    end

    # Checks if the function "glGetFragDataLocation" is loaded.
    @[AlwaysInline]
    def get_frag_data_location? : Bool
      !@addr_get_frag_data_location.null?
    end

    # Invokes glUniform1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1ui!(*args)
      addr = @addr_uniform_1ui
      proc = Procs.uniform_1ui(addr)
      proc.call(*args)
    end

    # Invokes glUniform1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1ui(*args)
      raise FunctionUnavailableError.new("glUniform1ui") unless uniform_1ui?

      uniform_1ui!(*args)
    end

    # Checks if the function "glUniform1ui" is loaded.
    @[AlwaysInline]
    def uniform_1ui? : Bool
      !@addr_uniform_1ui.null?
    end

    # Invokes glUniform2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2ui!(*args)
      addr = @addr_uniform_2ui
      proc = Procs.uniform_2ui(addr)
      proc.call(*args)
    end

    # Invokes glUniform2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2ui(*args)
      raise FunctionUnavailableError.new("glUniform2ui") unless uniform_2ui?

      uniform_2ui!(*args)
    end

    # Checks if the function "glUniform2ui" is loaded.
    @[AlwaysInline]
    def uniform_2ui? : Bool
      !@addr_uniform_2ui.null?
    end

    # Invokes glUniform3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3ui!(*args)
      addr = @addr_uniform_3ui
      proc = Procs.uniform_3ui(addr)
      proc.call(*args)
    end

    # Invokes glUniform3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3ui(*args)
      raise FunctionUnavailableError.new("glUniform3ui") unless uniform_3ui?

      uniform_3ui!(*args)
    end

    # Checks if the function "glUniform3ui" is loaded.
    @[AlwaysInline]
    def uniform_3ui? : Bool
      !@addr_uniform_3ui.null?
    end

    # Invokes glUniform4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4ui!(*args)
      addr = @addr_uniform_4ui
      proc = Procs.uniform_4ui(addr)
      proc.call(*args)
    end

    # Invokes glUniform4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4ui(*args)
      raise FunctionUnavailableError.new("glUniform4ui") unless uniform_4ui?

      uniform_4ui!(*args)
    end

    # Checks if the function "glUniform4ui" is loaded.
    @[AlwaysInline]
    def uniform_4ui? : Bool
      !@addr_uniform_4ui.null?
    end

    # Invokes glUniform1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1uiv!(*args)
      addr = @addr_uniform_1uiv
      proc = Procs.uniform_1uiv(addr)
      proc.call(*args)
    end

    # Invokes glUniform1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1uiv(*args)
      raise FunctionUnavailableError.new("glUniform1uiv") unless uniform_1uiv?

      uniform_1uiv!(*args)
    end

    # Checks if the function "glUniform1uiv" is loaded.
    @[AlwaysInline]
    def uniform_1uiv? : Bool
      !@addr_uniform_1uiv.null?
    end

    # Invokes glUniform2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2uiv!(*args)
      addr = @addr_uniform_2uiv
      proc = Procs.uniform_2uiv(addr)
      proc.call(*args)
    end

    # Invokes glUniform2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2uiv(*args)
      raise FunctionUnavailableError.new("glUniform2uiv") unless uniform_2uiv?

      uniform_2uiv!(*args)
    end

    # Checks if the function "glUniform2uiv" is loaded.
    @[AlwaysInline]
    def uniform_2uiv? : Bool
      !@addr_uniform_2uiv.null?
    end

    # Invokes glUniform3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3uiv!(*args)
      addr = @addr_uniform_3uiv
      proc = Procs.uniform_3uiv(addr)
      proc.call(*args)
    end

    # Invokes glUniform3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3uiv(*args)
      raise FunctionUnavailableError.new("glUniform3uiv") unless uniform_3uiv?

      uniform_3uiv!(*args)
    end

    # Checks if the function "glUniform3uiv" is loaded.
    @[AlwaysInline]
    def uniform_3uiv? : Bool
      !@addr_uniform_3uiv.null?
    end

    # Invokes glUniform4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4uiv!(*args)
      addr = @addr_uniform_4uiv
      proc = Procs.uniform_4uiv(addr)
      proc.call(*args)
    end

    # Invokes glUniform4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4uiv(*args)
      raise FunctionUnavailableError.new("glUniform4uiv") unless uniform_4uiv?

      uniform_4uiv!(*args)
    end

    # Checks if the function "glUniform4uiv" is loaded.
    @[AlwaysInline]
    def uniform_4uiv? : Bool
      !@addr_uniform_4uiv.null?
    end

    # Invokes glTexParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_i_iv!(*args)
      addr = @addr_tex_parameter_i_iv
      proc = Procs.tex_parameter_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glTexParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glTexParameterIiv") unless tex_parameter_i_iv?

      tex_parameter_i_iv!(*args)
    end

    # Checks if the function "glTexParameterIiv" is loaded.
    @[AlwaysInline]
    def tex_parameter_i_iv? : Bool
      !@addr_tex_parameter_i_iv.null?
    end

    # Invokes glTexParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_i_uiv!(*args)
      addr = @addr_tex_parameter_i_uiv
      proc = Procs.tex_parameter_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glTexParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glTexParameterIuiv") unless tex_parameter_i_uiv?

      tex_parameter_i_uiv!(*args)
    end

    # Checks if the function "glTexParameterIuiv" is loaded.
    @[AlwaysInline]
    def tex_parameter_i_uiv? : Bool
      !@addr_tex_parameter_i_uiv.null?
    end

    # Invokes glGetTexParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_i_iv!(*args)
      addr = @addr_get_tex_parameter_i_iv
      proc = Procs.get_tex_parameter_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterIiv") unless get_tex_parameter_i_iv?

      get_tex_parameter_i_iv!(*args)
    end

    # Checks if the function "glGetTexParameterIiv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_i_iv? : Bool
      !@addr_get_tex_parameter_i_iv.null?
    end

    # Invokes glGetTexParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_i_uiv!(*args)
      addr = @addr_get_tex_parameter_i_uiv
      proc = Procs.get_tex_parameter_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetTexParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterIuiv") unless get_tex_parameter_i_uiv?

      get_tex_parameter_i_uiv!(*args)
    end

    # Checks if the function "glGetTexParameterIuiv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_i_uiv? : Bool
      !@addr_get_tex_parameter_i_uiv.null?
    end

    # Invokes glClearBufferiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_iv!(*args)
      addr = @addr_clear_buffer_iv
      proc = Procs.clear_buffer_iv(addr)
      proc.call(*args)
    end

    # Invokes glClearBufferiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_iv(*args)
      raise FunctionUnavailableError.new("glClearBufferiv") unless clear_buffer_iv?

      clear_buffer_iv!(*args)
    end

    # Checks if the function "glClearBufferiv" is loaded.
    @[AlwaysInline]
    def clear_buffer_iv? : Bool
      !@addr_clear_buffer_iv.null?
    end

    # Invokes glClearBufferuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_uiv!(*args)
      addr = @addr_clear_buffer_uiv
      proc = Procs.clear_buffer_uiv(addr)
      proc.call(*args)
    end

    # Invokes glClearBufferuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_uiv(*args)
      raise FunctionUnavailableError.new("glClearBufferuiv") unless clear_buffer_uiv?

      clear_buffer_uiv!(*args)
    end

    # Checks if the function "glClearBufferuiv" is loaded.
    @[AlwaysInline]
    def clear_buffer_uiv? : Bool
      !@addr_clear_buffer_uiv.null?
    end

    # Invokes glClearBufferfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_fv!(*args)
      addr = @addr_clear_buffer_fv
      proc = Procs.clear_buffer_fv(addr)
      proc.call(*args)
    end

    # Invokes glClearBufferfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_fv(*args)
      raise FunctionUnavailableError.new("glClearBufferfv") unless clear_buffer_fv?

      clear_buffer_fv!(*args)
    end

    # Checks if the function "glClearBufferfv" is loaded.
    @[AlwaysInline]
    def clear_buffer_fv? : Bool
      !@addr_clear_buffer_fv.null?
    end

    # Invokes glClearBufferfi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_fi!(*args)
      addr = @addr_clear_buffer_fi
      proc = Procs.clear_buffer_fi(addr)
      proc.call(*args)
    end

    # Invokes glClearBufferfi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_fi(*args)
      raise FunctionUnavailableError.new("glClearBufferfi") unless clear_buffer_fi?

      clear_buffer_fi!(*args)
    end

    # Checks if the function "glClearBufferfi" is loaded.
    @[AlwaysInline]
    def clear_buffer_fi? : Bool
      !@addr_clear_buffer_fi.null?
    end

    # Invokes glGetStringi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_string_i!(*args)
      addr = @addr_get_string_i
      proc = Procs.get_string_i(addr)
      proc.call(*args)
    end

    # Invokes glGetStringi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_string_i(*args)
      raise FunctionUnavailableError.new("glGetStringi") unless get_string_i?

      get_string_i!(*args)
    end

    # Checks if the function "glGetStringi" is loaded.
    @[AlwaysInline]
    def get_string_i? : Bool
      !@addr_get_string_i.null?
    end

    # Invokes glIsRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_renderbuffer!(*args)
      addr = @addr_is_renderbuffer
      proc = Procs.is_renderbuffer(addr)
      proc.call(*args)
    end

    # Invokes glIsRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_renderbuffer(*args)
      raise FunctionUnavailableError.new("glIsRenderbuffer") unless is_renderbuffer?

      is_renderbuffer!(*args)
    end

    # Checks if the function "glIsRenderbuffer" is loaded.
    @[AlwaysInline]
    def is_renderbuffer? : Bool
      !@addr_is_renderbuffer.null?
    end

    # Invokes glBindRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_renderbuffer!(*args)
      addr = @addr_bind_renderbuffer
      proc = Procs.bind_renderbuffer(addr)
      proc.call(*args)
    end

    # Invokes glBindRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_renderbuffer(*args)
      raise FunctionUnavailableError.new("glBindRenderbuffer") unless bind_renderbuffer?

      bind_renderbuffer!(*args)
    end

    # Checks if the function "glBindRenderbuffer" is loaded.
    @[AlwaysInline]
    def bind_renderbuffer? : Bool
      !@addr_bind_renderbuffer.null?
    end

    # Invokes glDeleteRenderbuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_renderbuffers!(*args)
      addr = @addr_delete_renderbuffers
      proc = Procs.delete_renderbuffers(addr)
      proc.call(*args)
    end

    # Invokes glDeleteRenderbuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_renderbuffers(*args)
      raise FunctionUnavailableError.new("glDeleteRenderbuffers") unless delete_renderbuffers?

      delete_renderbuffers!(*args)
    end

    # Checks if the function "glDeleteRenderbuffers" is loaded.
    @[AlwaysInline]
    def delete_renderbuffers? : Bool
      !@addr_delete_renderbuffers.null?
    end

    # Invokes glGenRenderbuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_renderbuffers!(*args)
      addr = @addr_gen_renderbuffers
      proc = Procs.gen_renderbuffers(addr)
      proc.call(*args)
    end

    # Invokes glGenRenderbuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_renderbuffers(*args)
      raise FunctionUnavailableError.new("glGenRenderbuffers") unless gen_renderbuffers?

      gen_renderbuffers!(*args)
    end

    # Checks if the function "glGenRenderbuffers" is loaded.
    @[AlwaysInline]
    def gen_renderbuffers? : Bool
      !@addr_gen_renderbuffers.null?
    end

    # Invokes glRenderbufferStorage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def renderbuffer_storage!(*args)
      addr = @addr_renderbuffer_storage
      proc = Procs.renderbuffer_storage(addr)
      proc.call(*args)
    end

    # Invokes glRenderbufferStorage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def renderbuffer_storage(*args)
      raise FunctionUnavailableError.new("glRenderbufferStorage") unless renderbuffer_storage?

      renderbuffer_storage!(*args)
    end

    # Checks if the function "glRenderbufferStorage" is loaded.
    @[AlwaysInline]
    def renderbuffer_storage? : Bool
      !@addr_renderbuffer_storage.null?
    end

    # Invokes glGetRenderbufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_renderbuffer_parameter_iv!(*args)
      addr = @addr_get_renderbuffer_parameter_iv
      proc = Procs.get_renderbuffer_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetRenderbufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_renderbuffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetRenderbufferParameteriv") unless get_renderbuffer_parameter_iv?

      get_renderbuffer_parameter_iv!(*args)
    end

    # Checks if the function "glGetRenderbufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv? : Bool
      !@addr_get_renderbuffer_parameter_iv.null?
    end

    # Invokes glIsFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_framebuffer!(*args)
      addr = @addr_is_framebuffer
      proc = Procs.is_framebuffer(addr)
      proc.call(*args)
    end

    # Invokes glIsFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_framebuffer(*args)
      raise FunctionUnavailableError.new("glIsFramebuffer") unless is_framebuffer?

      is_framebuffer!(*args)
    end

    # Checks if the function "glIsFramebuffer" is loaded.
    @[AlwaysInline]
    def is_framebuffer? : Bool
      !@addr_is_framebuffer.null?
    end

    # Invokes glBindFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_framebuffer!(*args)
      addr = @addr_bind_framebuffer
      proc = Procs.bind_framebuffer(addr)
      proc.call(*args)
    end

    # Invokes glBindFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_framebuffer(*args)
      raise FunctionUnavailableError.new("glBindFramebuffer") unless bind_framebuffer?

      bind_framebuffer!(*args)
    end

    # Checks if the function "glBindFramebuffer" is loaded.
    @[AlwaysInline]
    def bind_framebuffer? : Bool
      !@addr_bind_framebuffer.null?
    end

    # Invokes glDeleteFramebuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_framebuffers!(*args)
      addr = @addr_delete_framebuffers
      proc = Procs.delete_framebuffers(addr)
      proc.call(*args)
    end

    # Invokes glDeleteFramebuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_framebuffers(*args)
      raise FunctionUnavailableError.new("glDeleteFramebuffers") unless delete_framebuffers?

      delete_framebuffers!(*args)
    end

    # Checks if the function "glDeleteFramebuffers" is loaded.
    @[AlwaysInline]
    def delete_framebuffers? : Bool
      !@addr_delete_framebuffers.null?
    end

    # Invokes glGenFramebuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_framebuffers!(*args)
      addr = @addr_gen_framebuffers
      proc = Procs.gen_framebuffers(addr)
      proc.call(*args)
    end

    # Invokes glGenFramebuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_framebuffers(*args)
      raise FunctionUnavailableError.new("glGenFramebuffers") unless gen_framebuffers?

      gen_framebuffers!(*args)
    end

    # Checks if the function "glGenFramebuffers" is loaded.
    @[AlwaysInline]
    def gen_framebuffers? : Bool
      !@addr_gen_framebuffers.null?
    end

    # Invokes glCheckFramebufferStatus.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def check_framebuffer_status!(*args)
      addr = @addr_check_framebuffer_status
      proc = Procs.check_framebuffer_status(addr)
      proc.call(*args)
    end

    # Invokes glCheckFramebufferStatus.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def check_framebuffer_status(*args)
      raise FunctionUnavailableError.new("glCheckFramebufferStatus") unless check_framebuffer_status?

      check_framebuffer_status!(*args)
    end

    # Checks if the function "glCheckFramebufferStatus" is loaded.
    @[AlwaysInline]
    def check_framebuffer_status? : Bool
      !@addr_check_framebuffer_status.null?
    end

    # Invokes glFramebufferTexture1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_1d!(*args)
      addr = @addr_framebuffer_texture_1d
      proc = Procs.framebuffer_texture_1d(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferTexture1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_1d(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture1D") unless framebuffer_texture_1d?

      framebuffer_texture_1d!(*args)
    end

    # Checks if the function "glFramebufferTexture1D" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_1d? : Bool
      !@addr_framebuffer_texture_1d.null?
    end

    # Invokes glFramebufferTexture2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_2d!(*args)
      addr = @addr_framebuffer_texture_2d
      proc = Procs.framebuffer_texture_2d(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferTexture2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_2d(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture2D") unless framebuffer_texture_2d?

      framebuffer_texture_2d!(*args)
    end

    # Checks if the function "glFramebufferTexture2D" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_2d? : Bool
      !@addr_framebuffer_texture_2d.null?
    end

    # Invokes glFramebufferTexture3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_3d!(*args)
      addr = @addr_framebuffer_texture_3d
      proc = Procs.framebuffer_texture_3d(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferTexture3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_3d(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture3D") unless framebuffer_texture_3d?

      framebuffer_texture_3d!(*args)
    end

    # Checks if the function "glFramebufferTexture3D" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_3d? : Bool
      !@addr_framebuffer_texture_3d.null?
    end

    # Invokes glFramebufferRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_renderbuffer!(*args)
      addr = @addr_framebuffer_renderbuffer
      proc = Procs.framebuffer_renderbuffer(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_renderbuffer(*args)
      raise FunctionUnavailableError.new("glFramebufferRenderbuffer") unless framebuffer_renderbuffer?

      framebuffer_renderbuffer!(*args)
    end

    # Checks if the function "glFramebufferRenderbuffer" is loaded.
    @[AlwaysInline]
    def framebuffer_renderbuffer? : Bool
      !@addr_framebuffer_renderbuffer.null?
    end

    # Invokes glGetFramebufferAttachmentParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_framebuffer_attachment_parameter_iv!(*args)
      addr = @addr_get_framebuffer_attachment_parameter_iv
      proc = Procs.get_framebuffer_attachment_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetFramebufferAttachmentParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_framebuffer_attachment_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetFramebufferAttachmentParameteriv") unless get_framebuffer_attachment_parameter_iv?

      get_framebuffer_attachment_parameter_iv!(*args)
    end

    # Checks if the function "glGetFramebufferAttachmentParameteriv" is loaded.
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv? : Bool
      !@addr_get_framebuffer_attachment_parameter_iv.null?
    end

    # Invokes glGenerateMipmap.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def generate_mipmap!(*args)
      addr = @addr_generate_mipmap
      proc = Procs.generate_mipmap(addr)
      proc.call(*args)
    end

    # Invokes glGenerateMipmap.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def generate_mipmap(*args)
      raise FunctionUnavailableError.new("glGenerateMipmap") unless generate_mipmap?

      generate_mipmap!(*args)
    end

    # Checks if the function "glGenerateMipmap" is loaded.
    @[AlwaysInline]
    def generate_mipmap? : Bool
      !@addr_generate_mipmap.null?
    end

    # Invokes glBlitFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blit_framebuffer!(*args)
      addr = @addr_blit_framebuffer
      proc = Procs.blit_framebuffer(addr)
      proc.call(*args)
    end

    # Invokes glBlitFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blit_framebuffer(*args)
      raise FunctionUnavailableError.new("glBlitFramebuffer") unless blit_framebuffer?

      blit_framebuffer!(*args)
    end

    # Checks if the function "glBlitFramebuffer" is loaded.
    @[AlwaysInline]
    def blit_framebuffer? : Bool
      !@addr_blit_framebuffer.null?
    end

    # Invokes glRenderbufferStorageMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def renderbuffer_storage_multisample!(*args)
      addr = @addr_renderbuffer_storage_multisample
      proc = Procs.renderbuffer_storage_multisample(addr)
      proc.call(*args)
    end

    # Invokes glRenderbufferStorageMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def renderbuffer_storage_multisample(*args)
      raise FunctionUnavailableError.new("glRenderbufferStorageMultisample") unless renderbuffer_storage_multisample?

      renderbuffer_storage_multisample!(*args)
    end

    # Checks if the function "glRenderbufferStorageMultisample" is loaded.
    @[AlwaysInline]
    def renderbuffer_storage_multisample? : Bool
      !@addr_renderbuffer_storage_multisample.null?
    end

    # Invokes glFramebufferTextureLayer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_layer!(*args)
      addr = @addr_framebuffer_texture_layer
      proc = Procs.framebuffer_texture_layer(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferTextureLayer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_layer(*args)
      raise FunctionUnavailableError.new("glFramebufferTextureLayer") unless framebuffer_texture_layer?

      framebuffer_texture_layer!(*args)
    end

    # Checks if the function "glFramebufferTextureLayer" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_layer? : Bool
      !@addr_framebuffer_texture_layer.null?
    end

    # Invokes glMapBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_buffer_range!(*args)
      addr = @addr_map_buffer_range
      proc = Procs.map_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glMapBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_buffer_range(*args)
      raise FunctionUnavailableError.new("glMapBufferRange") unless map_buffer_range?

      map_buffer_range!(*args)
    end

    # Checks if the function "glMapBufferRange" is loaded.
    @[AlwaysInline]
    def map_buffer_range? : Bool
      !@addr_map_buffer_range.null?
    end

    # Invokes glFlushMappedBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def flush_mapped_buffer_range!(*args)
      addr = @addr_flush_mapped_buffer_range
      proc = Procs.flush_mapped_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glFlushMappedBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def flush_mapped_buffer_range(*args)
      raise FunctionUnavailableError.new("glFlushMappedBufferRange") unless flush_mapped_buffer_range?

      flush_mapped_buffer_range!(*args)
    end

    # Checks if the function "glFlushMappedBufferRange" is loaded.
    @[AlwaysInline]
    def flush_mapped_buffer_range? : Bool
      !@addr_flush_mapped_buffer_range.null?
    end

    # Invokes glBindVertexArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_vertex_array!(*args)
      addr = @addr_bind_vertex_array
      proc = Procs.bind_vertex_array(addr)
      proc.call(*args)
    end

    # Invokes glBindVertexArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_vertex_array(*args)
      raise FunctionUnavailableError.new("glBindVertexArray") unless bind_vertex_array?

      bind_vertex_array!(*args)
    end

    # Checks if the function "glBindVertexArray" is loaded.
    @[AlwaysInline]
    def bind_vertex_array? : Bool
      !@addr_bind_vertex_array.null?
    end

    # Invokes glDeleteVertexArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_vertex_arrays!(*args)
      addr = @addr_delete_vertex_arrays
      proc = Procs.delete_vertex_arrays(addr)
      proc.call(*args)
    end

    # Invokes glDeleteVertexArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_vertex_arrays(*args)
      raise FunctionUnavailableError.new("glDeleteVertexArrays") unless delete_vertex_arrays?

      delete_vertex_arrays!(*args)
    end

    # Checks if the function "glDeleteVertexArrays" is loaded.
    @[AlwaysInline]
    def delete_vertex_arrays? : Bool
      !@addr_delete_vertex_arrays.null?
    end

    # Invokes glGenVertexArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_vertex_arrays!(*args)
      addr = @addr_gen_vertex_arrays
      proc = Procs.gen_vertex_arrays(addr)
      proc.call(*args)
    end

    # Invokes glGenVertexArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_vertex_arrays(*args)
      raise FunctionUnavailableError.new("glGenVertexArrays") unless gen_vertex_arrays?

      gen_vertex_arrays!(*args)
    end

    # Checks if the function "glGenVertexArrays" is loaded.
    @[AlwaysInline]
    def gen_vertex_arrays? : Bool
      !@addr_gen_vertex_arrays.null?
    end

    # Invokes glIsVertexArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_vertex_array!(*args)
      addr = @addr_is_vertex_array
      proc = Procs.is_vertex_array(addr)
      proc.call(*args)
    end

    # Invokes glIsVertexArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_vertex_array(*args)
      raise FunctionUnavailableError.new("glIsVertexArray") unless is_vertex_array?

      is_vertex_array!(*args)
    end

    # Checks if the function "glIsVertexArray" is loaded.
    @[AlwaysInline]
    def is_vertex_array? : Bool
      !@addr_is_vertex_array.null?
    end

    # Invokes glDrawArraysInstanced.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays_instanced!(*args)
      addr = @addr_draw_arrays_instanced
      proc = Procs.draw_arrays_instanced(addr)
      proc.call(*args)
    end

    # Invokes glDrawArraysInstanced.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays_instanced(*args)
      raise FunctionUnavailableError.new("glDrawArraysInstanced") unless draw_arrays_instanced?

      draw_arrays_instanced!(*args)
    end

    # Checks if the function "glDrawArraysInstanced" is loaded.
    @[AlwaysInline]
    def draw_arrays_instanced? : Bool
      !@addr_draw_arrays_instanced.null?
    end

    # Invokes glDrawElementsInstanced.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_instanced!(*args)
      addr = @addr_draw_elements_instanced
      proc = Procs.draw_elements_instanced(addr)
      proc.call(*args)
    end

    # Invokes glDrawElementsInstanced.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_instanced(*args)
      raise FunctionUnavailableError.new("glDrawElementsInstanced") unless draw_elements_instanced?

      draw_elements_instanced!(*args)
    end

    # Checks if the function "glDrawElementsInstanced" is loaded.
    @[AlwaysInline]
    def draw_elements_instanced? : Bool
      !@addr_draw_elements_instanced.null?
    end

    # Invokes glTexBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_buffer!(*args)
      addr = @addr_tex_buffer
      proc = Procs.tex_buffer(addr)
      proc.call(*args)
    end

    # Invokes glTexBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_buffer(*args)
      raise FunctionUnavailableError.new("glTexBuffer") unless tex_buffer?

      tex_buffer!(*args)
    end

    # Checks if the function "glTexBuffer" is loaded.
    @[AlwaysInline]
    def tex_buffer? : Bool
      !@addr_tex_buffer.null?
    end

    # Invokes glPrimitiveRestartIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def primitive_restart_index!(*args)
      addr = @addr_primitive_restart_index
      proc = Procs.primitive_restart_index(addr)
      proc.call(*args)
    end

    # Invokes glPrimitiveRestartIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def primitive_restart_index(*args)
      raise FunctionUnavailableError.new("glPrimitiveRestartIndex") unless primitive_restart_index?

      primitive_restart_index!(*args)
    end

    # Checks if the function "glPrimitiveRestartIndex" is loaded.
    @[AlwaysInline]
    def primitive_restart_index? : Bool
      !@addr_primitive_restart_index.null?
    end

    # Invokes glCopyBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_buffer_sub_data!(*args)
      addr = @addr_copy_buffer_sub_data
      proc = Procs.copy_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glCopyBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glCopyBufferSubData") unless copy_buffer_sub_data?

      copy_buffer_sub_data!(*args)
    end

    # Checks if the function "glCopyBufferSubData" is loaded.
    @[AlwaysInline]
    def copy_buffer_sub_data? : Bool
      !@addr_copy_buffer_sub_data.null?
    end

    # Invokes glGetUniformIndices.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_indices!(*args)
      addr = @addr_get_uniform_indices
      proc = Procs.get_uniform_indices(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformIndices.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_indices(*args)
      raise FunctionUnavailableError.new("glGetUniformIndices") unless get_uniform_indices?

      get_uniform_indices!(*args)
    end

    # Checks if the function "glGetUniformIndices" is loaded.
    @[AlwaysInline]
    def get_uniform_indices? : Bool
      !@addr_get_uniform_indices.null?
    end

    # Invokes glGetActiveUniformsiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniforms_iv!(*args)
      addr = @addr_get_active_uniforms_iv
      proc = Procs.get_active_uniforms_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveUniformsiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniforms_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformsiv") unless get_active_uniforms_iv?

      get_active_uniforms_iv!(*args)
    end

    # Checks if the function "glGetActiveUniformsiv" is loaded.
    @[AlwaysInline]
    def get_active_uniforms_iv? : Bool
      !@addr_get_active_uniforms_iv.null?
    end

    # Invokes glGetActiveUniformName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform_name!(*args)
      addr = @addr_get_active_uniform_name
      proc = Procs.get_active_uniform_name(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveUniformName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform_name(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformName") unless get_active_uniform_name?

      get_active_uniform_name!(*args)
    end

    # Checks if the function "glGetActiveUniformName" is loaded.
    @[AlwaysInline]
    def get_active_uniform_name? : Bool
      !@addr_get_active_uniform_name.null?
    end

    # Invokes glGetUniformBlockIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_block_index!(*args)
      addr = @addr_get_uniform_block_index
      proc = Procs.get_uniform_block_index(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformBlockIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_block_index(*args)
      raise FunctionUnavailableError.new("glGetUniformBlockIndex") unless get_uniform_block_index?

      get_uniform_block_index!(*args)
    end

    # Checks if the function "glGetUniformBlockIndex" is loaded.
    @[AlwaysInline]
    def get_uniform_block_index? : Bool
      !@addr_get_uniform_block_index.null?
    end

    # Invokes glGetActiveUniformBlockiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform_block_iv!(*args)
      addr = @addr_get_active_uniform_block_iv
      proc = Procs.get_active_uniform_block_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveUniformBlockiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform_block_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformBlockiv") unless get_active_uniform_block_iv?

      get_active_uniform_block_iv!(*args)
    end

    # Checks if the function "glGetActiveUniformBlockiv" is loaded.
    @[AlwaysInline]
    def get_active_uniform_block_iv? : Bool
      !@addr_get_active_uniform_block_iv.null?
    end

    # Invokes glGetActiveUniformBlockName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform_block_name!(*args)
      addr = @addr_get_active_uniform_block_name
      proc = Procs.get_active_uniform_block_name(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveUniformBlockName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform_block_name(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformBlockName") unless get_active_uniform_block_name?

      get_active_uniform_block_name!(*args)
    end

    # Checks if the function "glGetActiveUniformBlockName" is loaded.
    @[AlwaysInline]
    def get_active_uniform_block_name? : Bool
      !@addr_get_active_uniform_block_name.null?
    end

    # Invokes glUniformBlockBinding.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_block_binding!(*args)
      addr = @addr_uniform_block_binding
      proc = Procs.uniform_block_binding(addr)
      proc.call(*args)
    end

    # Invokes glUniformBlockBinding.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_block_binding(*args)
      raise FunctionUnavailableError.new("glUniformBlockBinding") unless uniform_block_binding?

      uniform_block_binding!(*args)
    end

    # Checks if the function "glUniformBlockBinding" is loaded.
    @[AlwaysInline]
    def uniform_block_binding? : Bool
      !@addr_uniform_block_binding.null?
    end

    # Invokes glDrawElementsBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_base_vertex!(*args)
      addr = @addr_draw_elements_base_vertex
      proc = Procs.draw_elements_base_vertex(addr)
      proc.call(*args)
    end

    # Invokes glDrawElementsBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_base_vertex(*args)
      raise FunctionUnavailableError.new("glDrawElementsBaseVertex") unless draw_elements_base_vertex?

      draw_elements_base_vertex!(*args)
    end

    # Checks if the function "glDrawElementsBaseVertex" is loaded.
    @[AlwaysInline]
    def draw_elements_base_vertex? : Bool
      !@addr_draw_elements_base_vertex.null?
    end

    # Invokes glDrawRangeElementsBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_range_elements_base_vertex!(*args)
      addr = @addr_draw_range_elements_base_vertex
      proc = Procs.draw_range_elements_base_vertex(addr)
      proc.call(*args)
    end

    # Invokes glDrawRangeElementsBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_range_elements_base_vertex(*args)
      raise FunctionUnavailableError.new("glDrawRangeElementsBaseVertex") unless draw_range_elements_base_vertex?

      draw_range_elements_base_vertex!(*args)
    end

    # Checks if the function "glDrawRangeElementsBaseVertex" is loaded.
    @[AlwaysInline]
    def draw_range_elements_base_vertex? : Bool
      !@addr_draw_range_elements_base_vertex.null?
    end

    # Invokes glDrawElementsInstancedBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_instanced_base_vertex!(*args)
      addr = @addr_draw_elements_instanced_base_vertex
      proc = Procs.draw_elements_instanced_base_vertex(addr)
      proc.call(*args)
    end

    # Invokes glDrawElementsInstancedBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_instanced_base_vertex(*args)
      raise FunctionUnavailableError.new("glDrawElementsInstancedBaseVertex") unless draw_elements_instanced_base_vertex?

      draw_elements_instanced_base_vertex!(*args)
    end

    # Checks if the function "glDrawElementsInstancedBaseVertex" is loaded.
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex? : Bool
      !@addr_draw_elements_instanced_base_vertex.null?
    end

    # Invokes glMultiDrawElementsBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_elements_base_vertex!(*args)
      addr = @addr_multi_draw_elements_base_vertex
      proc = Procs.multi_draw_elements_base_vertex(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawElementsBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_elements_base_vertex(*args)
      raise FunctionUnavailableError.new("glMultiDrawElementsBaseVertex") unless multi_draw_elements_base_vertex?

      multi_draw_elements_base_vertex!(*args)
    end

    # Checks if the function "glMultiDrawElementsBaseVertex" is loaded.
    @[AlwaysInline]
    def multi_draw_elements_base_vertex? : Bool
      !@addr_multi_draw_elements_base_vertex.null?
    end

    # Invokes glProvokingVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def provoking_vertex!(*args)
      addr = @addr_provoking_vertex
      proc = Procs.provoking_vertex(addr)
      proc.call(*args)
    end

    # Invokes glProvokingVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def provoking_vertex(*args)
      raise FunctionUnavailableError.new("glProvokingVertex") unless provoking_vertex?

      provoking_vertex!(*args)
    end

    # Checks if the function "glProvokingVertex" is loaded.
    @[AlwaysInline]
    def provoking_vertex? : Bool
      !@addr_provoking_vertex.null?
    end

    # Invokes glFenceSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fence_sync!(*args)
      addr = @addr_fence_sync
      proc = Procs.fence_sync(addr)
      proc.call(*args)
    end

    # Invokes glFenceSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fence_sync(*args)
      raise FunctionUnavailableError.new("glFenceSync") unless fence_sync?

      fence_sync!(*args)
    end

    # Checks if the function "glFenceSync" is loaded.
    @[AlwaysInline]
    def fence_sync? : Bool
      !@addr_fence_sync.null?
    end

    # Invokes glIsSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_sync!(*args)
      addr = @addr_is_sync
      proc = Procs.is_sync(addr)
      proc.call(*args)
    end

    # Invokes glIsSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_sync(*args)
      raise FunctionUnavailableError.new("glIsSync") unless is_sync?

      is_sync!(*args)
    end

    # Checks if the function "glIsSync" is loaded.
    @[AlwaysInline]
    def is_sync? : Bool
      !@addr_is_sync.null?
    end

    # Invokes glDeleteSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_sync!(*args)
      addr = @addr_delete_sync
      proc = Procs.delete_sync(addr)
      proc.call(*args)
    end

    # Invokes glDeleteSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_sync(*args)
      raise FunctionUnavailableError.new("glDeleteSync") unless delete_sync?

      delete_sync!(*args)
    end

    # Checks if the function "glDeleteSync" is loaded.
    @[AlwaysInline]
    def delete_sync? : Bool
      !@addr_delete_sync.null?
    end

    # Invokes glClientWaitSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def client_wait_sync!(*args)
      addr = @addr_client_wait_sync
      proc = Procs.client_wait_sync(addr)
      proc.call(*args)
    end

    # Invokes glClientWaitSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def client_wait_sync(*args)
      raise FunctionUnavailableError.new("glClientWaitSync") unless client_wait_sync?

      client_wait_sync!(*args)
    end

    # Checks if the function "glClientWaitSync" is loaded.
    @[AlwaysInline]
    def client_wait_sync? : Bool
      !@addr_client_wait_sync.null?
    end

    # Invokes glWaitSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def wait_sync!(*args)
      addr = @addr_wait_sync
      proc = Procs.wait_sync(addr)
      proc.call(*args)
    end

    # Invokes glWaitSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def wait_sync(*args)
      raise FunctionUnavailableError.new("glWaitSync") unless wait_sync?

      wait_sync!(*args)
    end

    # Checks if the function "glWaitSync" is loaded.
    @[AlwaysInline]
    def wait_sync? : Bool
      !@addr_wait_sync.null?
    end

    # Invokes glGetInteger64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_64v!(*args)
      addr = @addr_get_integer_64v
      proc = Procs.get_integer_64v(addr)
      proc.call(*args)
    end

    # Invokes glGetInteger64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_64v(*args)
      raise FunctionUnavailableError.new("glGetInteger64v") unless get_integer_64v?

      get_integer_64v!(*args)
    end

    # Checks if the function "glGetInteger64v" is loaded.
    @[AlwaysInline]
    def get_integer_64v? : Bool
      !@addr_get_integer_64v.null?
    end

    # Invokes glGetSynciv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sync_iv!(*args)
      addr = @addr_get_sync_iv
      proc = Procs.get_sync_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetSynciv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sync_iv(*args)
      raise FunctionUnavailableError.new("glGetSynciv") unless get_sync_iv?

      get_sync_iv!(*args)
    end

    # Checks if the function "glGetSynciv" is loaded.
    @[AlwaysInline]
    def get_sync_iv? : Bool
      !@addr_get_sync_iv.null?
    end

    # Invokes glGetInteger64i_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_64i_v!(*args)
      addr = @addr_get_integer_64i_v
      proc = Procs.get_integer_64i_v(addr)
      proc.call(*args)
    end

    # Invokes glGetInteger64i_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_64i_v(*args)
      raise FunctionUnavailableError.new("glGetInteger64i_v") unless get_integer_64i_v?

      get_integer_64i_v!(*args)
    end

    # Checks if the function "glGetInteger64i_v" is loaded.
    @[AlwaysInline]
    def get_integer_64i_v? : Bool
      !@addr_get_integer_64i_v.null?
    end

    # Invokes glGetBufferParameteri64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_parameter_i64v!(*args)
      addr = @addr_get_buffer_parameter_i64v
      proc = Procs.get_buffer_parameter_i64v(addr)
      proc.call(*args)
    end

    # Invokes glGetBufferParameteri64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_parameter_i64v(*args)
      raise FunctionUnavailableError.new("glGetBufferParameteri64v") unless get_buffer_parameter_i64v?

      get_buffer_parameter_i64v!(*args)
    end

    # Checks if the function "glGetBufferParameteri64v" is loaded.
    @[AlwaysInline]
    def get_buffer_parameter_i64v? : Bool
      !@addr_get_buffer_parameter_i64v.null?
    end

    # Invokes glFramebufferTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture!(*args)
      addr = @addr_framebuffer_texture
      proc = Procs.framebuffer_texture(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture") unless framebuffer_texture?

      framebuffer_texture!(*args)
    end

    # Checks if the function "glFramebufferTexture" is loaded.
    @[AlwaysInline]
    def framebuffer_texture? : Bool
      !@addr_framebuffer_texture.null?
    end

    # Invokes glTexImage2DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_2d_multisample!(*args)
      addr = @addr_tex_image_2d_multisample
      proc = Procs.tex_image_2d_multisample(addr)
      proc.call(*args)
    end

    # Invokes glTexImage2DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_2d_multisample(*args)
      raise FunctionUnavailableError.new("glTexImage2DMultisample") unless tex_image_2d_multisample?

      tex_image_2d_multisample!(*args)
    end

    # Checks if the function "glTexImage2DMultisample" is loaded.
    @[AlwaysInline]
    def tex_image_2d_multisample? : Bool
      !@addr_tex_image_2d_multisample.null?
    end

    # Invokes glTexImage3DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_3d_multisample!(*args)
      addr = @addr_tex_image_3d_multisample
      proc = Procs.tex_image_3d_multisample(addr)
      proc.call(*args)
    end

    # Invokes glTexImage3DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_3d_multisample(*args)
      raise FunctionUnavailableError.new("glTexImage3DMultisample") unless tex_image_3d_multisample?

      tex_image_3d_multisample!(*args)
    end

    # Checks if the function "glTexImage3DMultisample" is loaded.
    @[AlwaysInline]
    def tex_image_3d_multisample? : Bool
      !@addr_tex_image_3d_multisample.null?
    end

    # Invokes glGetMultisamplefv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_multisample_fv!(*args)
      addr = @addr_get_multisample_fv
      proc = Procs.get_multisample_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetMultisamplefv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_multisample_fv(*args)
      raise FunctionUnavailableError.new("glGetMultisamplefv") unless get_multisample_fv?

      get_multisample_fv!(*args)
    end

    # Checks if the function "glGetMultisamplefv" is loaded.
    @[AlwaysInline]
    def get_multisample_fv? : Bool
      !@addr_get_multisample_fv.null?
    end

    # Invokes glSampleMaski.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sample_mask_i!(*args)
      addr = @addr_sample_mask_i
      proc = Procs.sample_mask_i(addr)
      proc.call(*args)
    end

    # Invokes glSampleMaski.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sample_mask_i(*args)
      raise FunctionUnavailableError.new("glSampleMaski") unless sample_mask_i?

      sample_mask_i!(*args)
    end

    # Checks if the function "glSampleMaski" is loaded.
    @[AlwaysInline]
    def sample_mask_i? : Bool
      !@addr_sample_mask_i.null?
    end
  end
end
