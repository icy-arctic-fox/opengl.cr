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
      @proc_cull_face = Procs.cull_face(null)
      @proc_front_face = Procs.front_face(null)
      @proc_hint = Procs.hint(null)
      @proc_line_width = Procs.line_width(null)
      @proc_point_size = Procs.point_size(null)
      @proc_polygon_mode = Procs.polygon_mode(null)
      @proc_scissor = Procs.scissor(null)
      @proc_tex_parameter_f = Procs.tex_parameter_f(null)
      @proc_tex_parameter_fv = Procs.tex_parameter_fv(null)
      @proc_tex_parameter_i = Procs.tex_parameter_i(null)
      @proc_tex_parameter_iv = Procs.tex_parameter_iv(null)
      @proc_tex_image_1d = Procs.tex_image_1d(null)
      @proc_tex_image_2d = Procs.tex_image_2d(null)
      @proc_draw_buffer = Procs.draw_buffer(null)
      @proc_clear = Procs.clear(null)
      @proc_clear_color = Procs.clear_color(null)
      @proc_clear_stencil = Procs.clear_stencil(null)
      @proc_clear_depth = Procs.clear_depth(null)
      @proc_stencil_mask = Procs.stencil_mask(null)
      @proc_color_mask = Procs.color_mask(null)
      @proc_depth_mask = Procs.depth_mask(null)
      @proc_disable = Procs.disable(null)
      @proc_enable = Procs.enable(null)
      @proc_finish = Procs.finish(null)
      @proc_flush = Procs.flush(null)
      @proc_blend_func = Procs.blend_func(null)
      @proc_logic_op = Procs.logic_op(null)
      @proc_stencil_func = Procs.stencil_func(null)
      @proc_stencil_op = Procs.stencil_op(null)
      @proc_depth_func = Procs.depth_func(null)
      @proc_pixel_store_f = Procs.pixel_store_f(null)
      @proc_pixel_store_i = Procs.pixel_store_i(null)
      @proc_read_buffer = Procs.read_buffer(null)
      @proc_read_pixels = Procs.read_pixels(null)
      @proc_get_boolean_v = Procs.get_boolean_v(null)
      @proc_get_double_v = Procs.get_double_v(null)
      @proc_get_error = Procs.get_error(null)
      @proc_get_float_v = Procs.get_float_v(null)
      @proc_get_integer_v = Procs.get_integer_v(null)
      @proc_get_string = Procs.get_string(null)
      @proc_get_tex_image = Procs.get_tex_image(null)
      @proc_get_tex_parameter_fv = Procs.get_tex_parameter_fv(null)
      @proc_get_tex_parameter_iv = Procs.get_tex_parameter_iv(null)
      @proc_get_tex_level_parameter_fv = Procs.get_tex_level_parameter_fv(null)
      @proc_get_tex_level_parameter_iv = Procs.get_tex_level_parameter_iv(null)
      @proc_is_enabled = Procs.is_enabled(null)
      @proc_depth_range = Procs.depth_range(null)
      @proc_viewport = Procs.viewport(null)
      @proc_new_list = Procs.new_list(null)
      @proc_end_list = Procs.end_list(null)
      @proc_call_list = Procs.call_list(null)
      @proc_call_lists = Procs.call_lists(null)
      @proc_delete_lists = Procs.delete_lists(null)
      @proc_gen_lists = Procs.gen_lists(null)
      @proc_list_base = Procs.list_base(null)
      @proc_begin = Procs.begin(null)
      @proc_bitmap = Procs.bitmap(null)
      @proc_color_3b = Procs.color_3b(null)
      @proc_color_3bv = Procs.color_3bv(null)
      @proc_color_3d = Procs.color_3d(null)
      @proc_color_3dv = Procs.color_3dv(null)
      @proc_color_3f = Procs.color_3f(null)
      @proc_color_3fv = Procs.color_3fv(null)
      @proc_color_3i = Procs.color_3i(null)
      @proc_color_3iv = Procs.color_3iv(null)
      @proc_color_3s = Procs.color_3s(null)
      @proc_color_3sv = Procs.color_3sv(null)
      @proc_color_3ub = Procs.color_3ub(null)
      @proc_color_3ubv = Procs.color_3ubv(null)
      @proc_color_3ui = Procs.color_3ui(null)
      @proc_color_3uiv = Procs.color_3uiv(null)
      @proc_color_3us = Procs.color_3us(null)
      @proc_color_3usv = Procs.color_3usv(null)
      @proc_color_4b = Procs.color_4b(null)
      @proc_color_4bv = Procs.color_4bv(null)
      @proc_color_4d = Procs.color_4d(null)
      @proc_color_4dv = Procs.color_4dv(null)
      @proc_color_4f = Procs.color_4f(null)
      @proc_color_4fv = Procs.color_4fv(null)
      @proc_color_4i = Procs.color_4i(null)
      @proc_color_4iv = Procs.color_4iv(null)
      @proc_color_4s = Procs.color_4s(null)
      @proc_color_4sv = Procs.color_4sv(null)
      @proc_color_4ub = Procs.color_4ub(null)
      @proc_color_4ubv = Procs.color_4ubv(null)
      @proc_color_4ui = Procs.color_4ui(null)
      @proc_color_4uiv = Procs.color_4uiv(null)
      @proc_color_4us = Procs.color_4us(null)
      @proc_color_4usv = Procs.color_4usv(null)
      @proc_edge_flag = Procs.edge_flag(null)
      @proc_edge_flag_v = Procs.edge_flag_v(null)
      @proc_end = Procs.end(null)
      @proc_index_d = Procs.index_d(null)
      @proc_index_dv = Procs.index_dv(null)
      @proc_index_f = Procs.index_f(null)
      @proc_index_fv = Procs.index_fv(null)
      @proc_index_i = Procs.index_i(null)
      @proc_index_iv = Procs.index_iv(null)
      @proc_index_s = Procs.index_s(null)
      @proc_index_sv = Procs.index_sv(null)
      @proc_normal_3b = Procs.normal_3b(null)
      @proc_normal_3bv = Procs.normal_3bv(null)
      @proc_normal_3d = Procs.normal_3d(null)
      @proc_normal_3dv = Procs.normal_3dv(null)
      @proc_normal_3f = Procs.normal_3f(null)
      @proc_normal_3fv = Procs.normal_3fv(null)
      @proc_normal_3i = Procs.normal_3i(null)
      @proc_normal_3iv = Procs.normal_3iv(null)
      @proc_normal_3s = Procs.normal_3s(null)
      @proc_normal_3sv = Procs.normal_3sv(null)
      @proc_raster_pos_2d = Procs.raster_pos_2d(null)
      @proc_raster_pos_2dv = Procs.raster_pos_2dv(null)
      @proc_raster_pos_2f = Procs.raster_pos_2f(null)
      @proc_raster_pos_2fv = Procs.raster_pos_2fv(null)
      @proc_raster_pos_2i = Procs.raster_pos_2i(null)
      @proc_raster_pos_2iv = Procs.raster_pos_2iv(null)
      @proc_raster_pos_2s = Procs.raster_pos_2s(null)
      @proc_raster_pos_2sv = Procs.raster_pos_2sv(null)
      @proc_raster_pos_3d = Procs.raster_pos_3d(null)
      @proc_raster_pos_3dv = Procs.raster_pos_3dv(null)
      @proc_raster_pos_3f = Procs.raster_pos_3f(null)
      @proc_raster_pos_3fv = Procs.raster_pos_3fv(null)
      @proc_raster_pos_3i = Procs.raster_pos_3i(null)
      @proc_raster_pos_3iv = Procs.raster_pos_3iv(null)
      @proc_raster_pos_3s = Procs.raster_pos_3s(null)
      @proc_raster_pos_3sv = Procs.raster_pos_3sv(null)
      @proc_raster_pos_4d = Procs.raster_pos_4d(null)
      @proc_raster_pos_4dv = Procs.raster_pos_4dv(null)
      @proc_raster_pos_4f = Procs.raster_pos_4f(null)
      @proc_raster_pos_4fv = Procs.raster_pos_4fv(null)
      @proc_raster_pos_4i = Procs.raster_pos_4i(null)
      @proc_raster_pos_4iv = Procs.raster_pos_4iv(null)
      @proc_raster_pos_4s = Procs.raster_pos_4s(null)
      @proc_raster_pos_4sv = Procs.raster_pos_4sv(null)
      @proc_rect_d = Procs.rect_d(null)
      @proc_rect_dv = Procs.rect_dv(null)
      @proc_rect_f = Procs.rect_f(null)
      @proc_rect_fv = Procs.rect_fv(null)
      @proc_rect_i = Procs.rect_i(null)
      @proc_rect_iv = Procs.rect_iv(null)
      @proc_rect_s = Procs.rect_s(null)
      @proc_rect_sv = Procs.rect_sv(null)
      @proc_tex_coord_1d = Procs.tex_coord_1d(null)
      @proc_tex_coord_1dv = Procs.tex_coord_1dv(null)
      @proc_tex_coord_1f = Procs.tex_coord_1f(null)
      @proc_tex_coord_1fv = Procs.tex_coord_1fv(null)
      @proc_tex_coord_1i = Procs.tex_coord_1i(null)
      @proc_tex_coord_1iv = Procs.tex_coord_1iv(null)
      @proc_tex_coord_1s = Procs.tex_coord_1s(null)
      @proc_tex_coord_1sv = Procs.tex_coord_1sv(null)
      @proc_tex_coord_2d = Procs.tex_coord_2d(null)
      @proc_tex_coord_2dv = Procs.tex_coord_2dv(null)
      @proc_tex_coord_2f = Procs.tex_coord_2f(null)
      @proc_tex_coord_2fv = Procs.tex_coord_2fv(null)
      @proc_tex_coord_2i = Procs.tex_coord_2i(null)
      @proc_tex_coord_2iv = Procs.tex_coord_2iv(null)
      @proc_tex_coord_2s = Procs.tex_coord_2s(null)
      @proc_tex_coord_2sv = Procs.tex_coord_2sv(null)
      @proc_tex_coord_3d = Procs.tex_coord_3d(null)
      @proc_tex_coord_3dv = Procs.tex_coord_3dv(null)
      @proc_tex_coord_3f = Procs.tex_coord_3f(null)
      @proc_tex_coord_3fv = Procs.tex_coord_3fv(null)
      @proc_tex_coord_3i = Procs.tex_coord_3i(null)
      @proc_tex_coord_3iv = Procs.tex_coord_3iv(null)
      @proc_tex_coord_3s = Procs.tex_coord_3s(null)
      @proc_tex_coord_3sv = Procs.tex_coord_3sv(null)
      @proc_tex_coord_4d = Procs.tex_coord_4d(null)
      @proc_tex_coord_4dv = Procs.tex_coord_4dv(null)
      @proc_tex_coord_4f = Procs.tex_coord_4f(null)
      @proc_tex_coord_4fv = Procs.tex_coord_4fv(null)
      @proc_tex_coord_4i = Procs.tex_coord_4i(null)
      @proc_tex_coord_4iv = Procs.tex_coord_4iv(null)
      @proc_tex_coord_4s = Procs.tex_coord_4s(null)
      @proc_tex_coord_4sv = Procs.tex_coord_4sv(null)
      @proc_vertex_2d = Procs.vertex_2d(null)
      @proc_vertex_2dv = Procs.vertex_2dv(null)
      @proc_vertex_2f = Procs.vertex_2f(null)
      @proc_vertex_2fv = Procs.vertex_2fv(null)
      @proc_vertex_2i = Procs.vertex_2i(null)
      @proc_vertex_2iv = Procs.vertex_2iv(null)
      @proc_vertex_2s = Procs.vertex_2s(null)
      @proc_vertex_2sv = Procs.vertex_2sv(null)
      @proc_vertex_3d = Procs.vertex_3d(null)
      @proc_vertex_3dv = Procs.vertex_3dv(null)
      @proc_vertex_3f = Procs.vertex_3f(null)
      @proc_vertex_3fv = Procs.vertex_3fv(null)
      @proc_vertex_3i = Procs.vertex_3i(null)
      @proc_vertex_3iv = Procs.vertex_3iv(null)
      @proc_vertex_3s = Procs.vertex_3s(null)
      @proc_vertex_3sv = Procs.vertex_3sv(null)
      @proc_vertex_4d = Procs.vertex_4d(null)
      @proc_vertex_4dv = Procs.vertex_4dv(null)
      @proc_vertex_4f = Procs.vertex_4f(null)
      @proc_vertex_4fv = Procs.vertex_4fv(null)
      @proc_vertex_4i = Procs.vertex_4i(null)
      @proc_vertex_4iv = Procs.vertex_4iv(null)
      @proc_vertex_4s = Procs.vertex_4s(null)
      @proc_vertex_4sv = Procs.vertex_4sv(null)
      @proc_clip_plane = Procs.clip_plane(null)
      @proc_color_material = Procs.color_material(null)
      @proc_fog_f = Procs.fog_f(null)
      @proc_fog_fv = Procs.fog_fv(null)
      @proc_fog_i = Procs.fog_i(null)
      @proc_fog_iv = Procs.fog_iv(null)
      @proc_light_f = Procs.light_f(null)
      @proc_light_fv = Procs.light_fv(null)
      @proc_light_i = Procs.light_i(null)
      @proc_light_iv = Procs.light_iv(null)
      @proc_light_model_f = Procs.light_model_f(null)
      @proc_light_model_fv = Procs.light_model_fv(null)
      @proc_light_model_i = Procs.light_model_i(null)
      @proc_light_model_iv = Procs.light_model_iv(null)
      @proc_line_stipple = Procs.line_stipple(null)
      @proc_material_f = Procs.material_f(null)
      @proc_material_fv = Procs.material_fv(null)
      @proc_material_i = Procs.material_i(null)
      @proc_material_iv = Procs.material_iv(null)
      @proc_polygon_stipple = Procs.polygon_stipple(null)
      @proc_shade_model = Procs.shade_model(null)
      @proc_tex_env_f = Procs.tex_env_f(null)
      @proc_tex_env_fv = Procs.tex_env_fv(null)
      @proc_tex_env_i = Procs.tex_env_i(null)
      @proc_tex_env_iv = Procs.tex_env_iv(null)
      @proc_tex_gen_d = Procs.tex_gen_d(null)
      @proc_tex_gen_dv = Procs.tex_gen_dv(null)
      @proc_tex_gen_f = Procs.tex_gen_f(null)
      @proc_tex_gen_fv = Procs.tex_gen_fv(null)
      @proc_tex_gen_i = Procs.tex_gen_i(null)
      @proc_tex_gen_iv = Procs.tex_gen_iv(null)
      @proc_feedback_buffer = Procs.feedback_buffer(null)
      @proc_select_buffer = Procs.select_buffer(null)
      @proc_render_mode = Procs.render_mode(null)
      @proc_init_names = Procs.init_names(null)
      @proc_load_name = Procs.load_name(null)
      @proc_pass_through = Procs.pass_through(null)
      @proc_pop_name = Procs.pop_name(null)
      @proc_push_name = Procs.push_name(null)
      @proc_clear_accum = Procs.clear_accum(null)
      @proc_clear_index = Procs.clear_index(null)
      @proc_index_mask = Procs.index_mask(null)
      @proc_accum = Procs.accum(null)
      @proc_pop_attrib = Procs.pop_attrib(null)
      @proc_push_attrib = Procs.push_attrib(null)
      @proc_map_1d = Procs.map_1d(null)
      @proc_map_1f = Procs.map_1f(null)
      @proc_map_2d = Procs.map_2d(null)
      @proc_map_2f = Procs.map_2f(null)
      @proc_map_grid_1d = Procs.map_grid_1d(null)
      @proc_map_grid_1f = Procs.map_grid_1f(null)
      @proc_map_grid_2d = Procs.map_grid_2d(null)
      @proc_map_grid_2f = Procs.map_grid_2f(null)
      @proc_eval_coord_1d = Procs.eval_coord_1d(null)
      @proc_eval_coord_1dv = Procs.eval_coord_1dv(null)
      @proc_eval_coord_1f = Procs.eval_coord_1f(null)
      @proc_eval_coord_1fv = Procs.eval_coord_1fv(null)
      @proc_eval_coord_2d = Procs.eval_coord_2d(null)
      @proc_eval_coord_2dv = Procs.eval_coord_2dv(null)
      @proc_eval_coord_2f = Procs.eval_coord_2f(null)
      @proc_eval_coord_2fv = Procs.eval_coord_2fv(null)
      @proc_eval_mesh1 = Procs.eval_mesh1(null)
      @proc_eval_point1 = Procs.eval_point1(null)
      @proc_eval_mesh2 = Procs.eval_mesh2(null)
      @proc_eval_point2 = Procs.eval_point2(null)
      @proc_alpha_func = Procs.alpha_func(null)
      @proc_pixel_zoom = Procs.pixel_zoom(null)
      @proc_pixel_transfer_f = Procs.pixel_transfer_f(null)
      @proc_pixel_transfer_i = Procs.pixel_transfer_i(null)
      @proc_pixel_map_fv = Procs.pixel_map_fv(null)
      @proc_pixel_map_uiv = Procs.pixel_map_uiv(null)
      @proc_pixel_map_usv = Procs.pixel_map_usv(null)
      @proc_copy_pixels = Procs.copy_pixels(null)
      @proc_draw_pixels = Procs.draw_pixels(null)
      @proc_get_clip_plane = Procs.get_clip_plane(null)
      @proc_get_light_fv = Procs.get_light_fv(null)
      @proc_get_light_iv = Procs.get_light_iv(null)
      @proc_get_map_dv = Procs.get_map_dv(null)
      @proc_get_map_fv = Procs.get_map_fv(null)
      @proc_get_map_iv = Procs.get_map_iv(null)
      @proc_get_material_fv = Procs.get_material_fv(null)
      @proc_get_material_iv = Procs.get_material_iv(null)
      @proc_get_pixel_map_fv = Procs.get_pixel_map_fv(null)
      @proc_get_pixel_map_uiv = Procs.get_pixel_map_uiv(null)
      @proc_get_pixel_map_usv = Procs.get_pixel_map_usv(null)
      @proc_get_polygon_stipple = Procs.get_polygon_stipple(null)
      @proc_get_tex_env_fv = Procs.get_tex_env_fv(null)
      @proc_get_tex_env_iv = Procs.get_tex_env_iv(null)
      @proc_get_tex_gen_dv = Procs.get_tex_gen_dv(null)
      @proc_get_tex_gen_fv = Procs.get_tex_gen_fv(null)
      @proc_get_tex_gen_iv = Procs.get_tex_gen_iv(null)
      @proc_is_list = Procs.is_list(null)
      @proc_frustum = Procs.frustum(null)
      @proc_load_identity = Procs.load_identity(null)
      @proc_load_matrix_f = Procs.load_matrix_f(null)
      @proc_load_matrix_d = Procs.load_matrix_d(null)
      @proc_matrix_mode = Procs.matrix_mode(null)
      @proc_mult_matrix_f = Procs.mult_matrix_f(null)
      @proc_mult_matrix_d = Procs.mult_matrix_d(null)
      @proc_ortho = Procs.ortho(null)
      @proc_pop_matrix = Procs.pop_matrix(null)
      @proc_push_matrix = Procs.push_matrix(null)
      @proc_rotate_d = Procs.rotate_d(null)
      @proc_rotate_f = Procs.rotate_f(null)
      @proc_scale_d = Procs.scale_d(null)
      @proc_scale_f = Procs.scale_f(null)
      @proc_translate_d = Procs.translate_d(null)
      @proc_translate_f = Procs.translate_f(null)
      @proc_draw_arrays = Procs.draw_arrays(null)
      @proc_draw_elements = Procs.draw_elements(null)
      @proc_get_pointer_v = Procs.get_pointer_v(null)
      @proc_polygon_offset = Procs.polygon_offset(null)
      @proc_copy_tex_image_1d = Procs.copy_tex_image_1d(null)
      @proc_copy_tex_image_2d = Procs.copy_tex_image_2d(null)
      @proc_copy_tex_sub_image_1d = Procs.copy_tex_sub_image_1d(null)
      @proc_copy_tex_sub_image_2d = Procs.copy_tex_sub_image_2d(null)
      @proc_tex_sub_image_1d = Procs.tex_sub_image_1d(null)
      @proc_tex_sub_image_2d = Procs.tex_sub_image_2d(null)
      @proc_bind_texture = Procs.bind_texture(null)
      @proc_delete_textures = Procs.delete_textures(null)
      @proc_gen_textures = Procs.gen_textures(null)
      @proc_is_texture = Procs.is_texture(null)
      @proc_array_element = Procs.array_element(null)
      @proc_color_pointer = Procs.color_pointer(null)
      @proc_disable_client_state = Procs.disable_client_state(null)
      @proc_edge_flag_pointer = Procs.edge_flag_pointer(null)
      @proc_enable_client_state = Procs.enable_client_state(null)
      @proc_index_pointer = Procs.index_pointer(null)
      @proc_interleaved_arrays = Procs.interleaved_arrays(null)
      @proc_normal_pointer = Procs.normal_pointer(null)
      @proc_tex_coord_pointer = Procs.tex_coord_pointer(null)
      @proc_vertex_pointer = Procs.vertex_pointer(null)
      @proc_are_textures_resident = Procs.are_textures_resident(null)
      @proc_prioritize_textures = Procs.prioritize_textures(null)
      @proc_index_ub = Procs.index_ub(null)
      @proc_index_ubv = Procs.index_ubv(null)
      @proc_pop_client_attrib = Procs.pop_client_attrib(null)
      @proc_push_client_attrib = Procs.push_client_attrib(null)
      @proc_draw_range_elements = Procs.draw_range_elements(null)
      @proc_tex_image_3d = Procs.tex_image_3d(null)
      @proc_tex_sub_image_3d = Procs.tex_sub_image_3d(null)
      @proc_copy_tex_sub_image_3d = Procs.copy_tex_sub_image_3d(null)
      @proc_active_texture = Procs.active_texture(null)
      @proc_sample_coverage = Procs.sample_coverage(null)
      @proc_compressed_tex_image_3d = Procs.compressed_tex_image_3d(null)
      @proc_compressed_tex_image_2d = Procs.compressed_tex_image_2d(null)
      @proc_compressed_tex_image_1d = Procs.compressed_tex_image_1d(null)
      @proc_compressed_tex_sub_image_3d = Procs.compressed_tex_sub_image_3d(null)
      @proc_compressed_tex_sub_image_2d = Procs.compressed_tex_sub_image_2d(null)
      @proc_compressed_tex_sub_image_1d = Procs.compressed_tex_sub_image_1d(null)
      @proc_get_compressed_tex_image = Procs.get_compressed_tex_image(null)
      @proc_client_active_texture = Procs.client_active_texture(null)
      @proc_multi_tex_coord_1d = Procs.multi_tex_coord_1d(null)
      @proc_multi_tex_coord_1dv = Procs.multi_tex_coord_1dv(null)
      @proc_multi_tex_coord_1f = Procs.multi_tex_coord_1f(null)
      @proc_multi_tex_coord_1fv = Procs.multi_tex_coord_1fv(null)
      @proc_multi_tex_coord_1i = Procs.multi_tex_coord_1i(null)
      @proc_multi_tex_coord_1iv = Procs.multi_tex_coord_1iv(null)
      @proc_multi_tex_coord_1s = Procs.multi_tex_coord_1s(null)
      @proc_multi_tex_coord_1sv = Procs.multi_tex_coord_1sv(null)
      @proc_multi_tex_coord_2d = Procs.multi_tex_coord_2d(null)
      @proc_multi_tex_coord_2dv = Procs.multi_tex_coord_2dv(null)
      @proc_multi_tex_coord_2f = Procs.multi_tex_coord_2f(null)
      @proc_multi_tex_coord_2fv = Procs.multi_tex_coord_2fv(null)
      @proc_multi_tex_coord_2i = Procs.multi_tex_coord_2i(null)
      @proc_multi_tex_coord_2iv = Procs.multi_tex_coord_2iv(null)
      @proc_multi_tex_coord_2s = Procs.multi_tex_coord_2s(null)
      @proc_multi_tex_coord_2sv = Procs.multi_tex_coord_2sv(null)
      @proc_multi_tex_coord_3d = Procs.multi_tex_coord_3d(null)
      @proc_multi_tex_coord_3dv = Procs.multi_tex_coord_3dv(null)
      @proc_multi_tex_coord_3f = Procs.multi_tex_coord_3f(null)
      @proc_multi_tex_coord_3fv = Procs.multi_tex_coord_3fv(null)
      @proc_multi_tex_coord_3i = Procs.multi_tex_coord_3i(null)
      @proc_multi_tex_coord_3iv = Procs.multi_tex_coord_3iv(null)
      @proc_multi_tex_coord_3s = Procs.multi_tex_coord_3s(null)
      @proc_multi_tex_coord_3sv = Procs.multi_tex_coord_3sv(null)
      @proc_multi_tex_coord_4d = Procs.multi_tex_coord_4d(null)
      @proc_multi_tex_coord_4dv = Procs.multi_tex_coord_4dv(null)
      @proc_multi_tex_coord_4f = Procs.multi_tex_coord_4f(null)
      @proc_multi_tex_coord_4fv = Procs.multi_tex_coord_4fv(null)
      @proc_multi_tex_coord_4i = Procs.multi_tex_coord_4i(null)
      @proc_multi_tex_coord_4iv = Procs.multi_tex_coord_4iv(null)
      @proc_multi_tex_coord_4s = Procs.multi_tex_coord_4s(null)
      @proc_multi_tex_coord_4sv = Procs.multi_tex_coord_4sv(null)
      @proc_load_transpose_matrix_f = Procs.load_transpose_matrix_f(null)
      @proc_load_transpose_matrix_d = Procs.load_transpose_matrix_d(null)
      @proc_mult_transpose_matrix_f = Procs.mult_transpose_matrix_f(null)
      @proc_mult_transpose_matrix_d = Procs.mult_transpose_matrix_d(null)
      @proc_blend_func_separate = Procs.blend_func_separate(null)
      @proc_multi_draw_arrays = Procs.multi_draw_arrays(null)
      @proc_multi_draw_elements = Procs.multi_draw_elements(null)
      @proc_point_parameter_f = Procs.point_parameter_f(null)
      @proc_point_parameter_fv = Procs.point_parameter_fv(null)
      @proc_point_parameter_i = Procs.point_parameter_i(null)
      @proc_point_parameter_iv = Procs.point_parameter_iv(null)
      @proc_fog_coord_f = Procs.fog_coord_f(null)
      @proc_fog_coord_fv = Procs.fog_coord_fv(null)
      @proc_fog_coord_d = Procs.fog_coord_d(null)
      @proc_fog_coord_dv = Procs.fog_coord_dv(null)
      @proc_fog_coord_pointer = Procs.fog_coord_pointer(null)
      @proc_secondary_color_3b = Procs.secondary_color_3b(null)
      @proc_secondary_color_3bv = Procs.secondary_color_3bv(null)
      @proc_secondary_color_3d = Procs.secondary_color_3d(null)
      @proc_secondary_color_3dv = Procs.secondary_color_3dv(null)
      @proc_secondary_color_3f = Procs.secondary_color_3f(null)
      @proc_secondary_color_3fv = Procs.secondary_color_3fv(null)
      @proc_secondary_color_3i = Procs.secondary_color_3i(null)
      @proc_secondary_color_3iv = Procs.secondary_color_3iv(null)
      @proc_secondary_color_3s = Procs.secondary_color_3s(null)
      @proc_secondary_color_3sv = Procs.secondary_color_3sv(null)
      @proc_secondary_color_3ub = Procs.secondary_color_3ub(null)
      @proc_secondary_color_3ubv = Procs.secondary_color_3ubv(null)
      @proc_secondary_color_3ui = Procs.secondary_color_3ui(null)
      @proc_secondary_color_3uiv = Procs.secondary_color_3uiv(null)
      @proc_secondary_color_3us = Procs.secondary_color_3us(null)
      @proc_secondary_color_3usv = Procs.secondary_color_3usv(null)
      @proc_secondary_color_pointer = Procs.secondary_color_pointer(null)
      @proc_window_pos_2d = Procs.window_pos_2d(null)
      @proc_window_pos_2dv = Procs.window_pos_2dv(null)
      @proc_window_pos_2f = Procs.window_pos_2f(null)
      @proc_window_pos_2fv = Procs.window_pos_2fv(null)
      @proc_window_pos_2i = Procs.window_pos_2i(null)
      @proc_window_pos_2iv = Procs.window_pos_2iv(null)
      @proc_window_pos_2s = Procs.window_pos_2s(null)
      @proc_window_pos_2sv = Procs.window_pos_2sv(null)
      @proc_window_pos_3d = Procs.window_pos_3d(null)
      @proc_window_pos_3dv = Procs.window_pos_3dv(null)
      @proc_window_pos_3f = Procs.window_pos_3f(null)
      @proc_window_pos_3fv = Procs.window_pos_3fv(null)
      @proc_window_pos_3i = Procs.window_pos_3i(null)
      @proc_window_pos_3iv = Procs.window_pos_3iv(null)
      @proc_window_pos_3s = Procs.window_pos_3s(null)
      @proc_window_pos_3sv = Procs.window_pos_3sv(null)
      @proc_blend_color = Procs.blend_color(null)
      @proc_blend_equation = Procs.blend_equation(null)
      @proc_gen_queries = Procs.gen_queries(null)
      @proc_delete_queries = Procs.delete_queries(null)
      @proc_is_query = Procs.is_query(null)
      @proc_begin_query = Procs.begin_query(null)
      @proc_end_query = Procs.end_query(null)
      @proc_get_query_iv = Procs.get_query_iv(null)
      @proc_get_query_object_iv = Procs.get_query_object_iv(null)
      @proc_get_query_object_uiv = Procs.get_query_object_uiv(null)
      @proc_bind_buffer = Procs.bind_buffer(null)
      @proc_delete_buffers = Procs.delete_buffers(null)
      @proc_gen_buffers = Procs.gen_buffers(null)
      @proc_is_buffer = Procs.is_buffer(null)
      @proc_buffer_data = Procs.buffer_data(null)
      @proc_buffer_sub_data = Procs.buffer_sub_data(null)
      @proc_get_buffer_sub_data = Procs.get_buffer_sub_data(null)
      @proc_map_buffer = Procs.map_buffer(null)
      @proc_unmap_buffer = Procs.unmap_buffer(null)
      @proc_get_buffer_parameter_iv = Procs.get_buffer_parameter_iv(null)
      @proc_get_buffer_pointer_v = Procs.get_buffer_pointer_v(null)
      @proc_blend_equation_separate = Procs.blend_equation_separate(null)
      @proc_draw_buffers = Procs.draw_buffers(null)
      @proc_stencil_op_separate = Procs.stencil_op_separate(null)
      @proc_stencil_func_separate = Procs.stencil_func_separate(null)
      @proc_stencil_mask_separate = Procs.stencil_mask_separate(null)
      @proc_attach_shader = Procs.attach_shader(null)
      @proc_bind_attrib_location = Procs.bind_attrib_location(null)
      @proc_compile_shader = Procs.compile_shader(null)
      @proc_create_program = Procs.create_program(null)
      @proc_create_shader = Procs.create_shader(null)
      @proc_delete_program = Procs.delete_program(null)
      @proc_delete_shader = Procs.delete_shader(null)
      @proc_detach_shader = Procs.detach_shader(null)
      @proc_disable_vertex_attrib_array = Procs.disable_vertex_attrib_array(null)
      @proc_enable_vertex_attrib_array = Procs.enable_vertex_attrib_array(null)
      @proc_get_active_attrib = Procs.get_active_attrib(null)
      @proc_get_active_uniform = Procs.get_active_uniform(null)
      @proc_get_attached_shaders = Procs.get_attached_shaders(null)
      @proc_get_attrib_location = Procs.get_attrib_location(null)
      @proc_get_program_iv = Procs.get_program_iv(null)
      @proc_get_program_info_log = Procs.get_program_info_log(null)
      @proc_get_shader_iv = Procs.get_shader_iv(null)
      @proc_get_shader_info_log = Procs.get_shader_info_log(null)
      @proc_get_shader_source = Procs.get_shader_source(null)
      @proc_get_uniform_location = Procs.get_uniform_location(null)
      @proc_get_uniform_fv = Procs.get_uniform_fv(null)
      @proc_get_uniform_iv = Procs.get_uniform_iv(null)
      @proc_get_vertex_attrib_dv = Procs.get_vertex_attrib_dv(null)
      @proc_get_vertex_attrib_fv = Procs.get_vertex_attrib_fv(null)
      @proc_get_vertex_attrib_iv = Procs.get_vertex_attrib_iv(null)
      @proc_get_vertex_attrib_pointer_v = Procs.get_vertex_attrib_pointer_v(null)
      @proc_is_program = Procs.is_program(null)
      @proc_is_shader = Procs.is_shader(null)
      @proc_link_program = Procs.link_program(null)
      @proc_shader_source = Procs.shader_source(null)
      @proc_use_program = Procs.use_program(null)
      @proc_uniform_1f = Procs.uniform_1f(null)
      @proc_uniform_2f = Procs.uniform_2f(null)
      @proc_uniform_3f = Procs.uniform_3f(null)
      @proc_uniform_4f = Procs.uniform_4f(null)
      @proc_uniform_1i = Procs.uniform_1i(null)
      @proc_uniform_2i = Procs.uniform_2i(null)
      @proc_uniform_3i = Procs.uniform_3i(null)
      @proc_uniform_4i = Procs.uniform_4i(null)
      @proc_uniform_1fv = Procs.uniform_1fv(null)
      @proc_uniform_2fv = Procs.uniform_2fv(null)
      @proc_uniform_3fv = Procs.uniform_3fv(null)
      @proc_uniform_4fv = Procs.uniform_4fv(null)
      @proc_uniform_1iv = Procs.uniform_1iv(null)
      @proc_uniform_2iv = Procs.uniform_2iv(null)
      @proc_uniform_3iv = Procs.uniform_3iv(null)
      @proc_uniform_4iv = Procs.uniform_4iv(null)
      @proc_uniform_matrix2_fv = Procs.uniform_matrix2_fv(null)
      @proc_uniform_matrix3_fv = Procs.uniform_matrix3_fv(null)
      @proc_uniform_matrix4_fv = Procs.uniform_matrix4_fv(null)
      @proc_validate_program = Procs.validate_program(null)
      @proc_vertex_attrib_1d = Procs.vertex_attrib_1d(null)
      @proc_vertex_attrib_1dv = Procs.vertex_attrib_1dv(null)
      @proc_vertex_attrib_1f = Procs.vertex_attrib_1f(null)
      @proc_vertex_attrib_1fv = Procs.vertex_attrib_1fv(null)
      @proc_vertex_attrib_1s = Procs.vertex_attrib_1s(null)
      @proc_vertex_attrib_1sv = Procs.vertex_attrib_1sv(null)
      @proc_vertex_attrib_2d = Procs.vertex_attrib_2d(null)
      @proc_vertex_attrib_2dv = Procs.vertex_attrib_2dv(null)
      @proc_vertex_attrib_2f = Procs.vertex_attrib_2f(null)
      @proc_vertex_attrib_2fv = Procs.vertex_attrib_2fv(null)
      @proc_vertex_attrib_2s = Procs.vertex_attrib_2s(null)
      @proc_vertex_attrib_2sv = Procs.vertex_attrib_2sv(null)
      @proc_vertex_attrib_3d = Procs.vertex_attrib_3d(null)
      @proc_vertex_attrib_3dv = Procs.vertex_attrib_3dv(null)
      @proc_vertex_attrib_3f = Procs.vertex_attrib_3f(null)
      @proc_vertex_attrib_3fv = Procs.vertex_attrib_3fv(null)
      @proc_vertex_attrib_3s = Procs.vertex_attrib_3s(null)
      @proc_vertex_attrib_3sv = Procs.vertex_attrib_3sv(null)
      @proc_vertex_attrib_4nbv = Procs.vertex_attrib_4nbv(null)
      @proc_vertex_attrib_4niv = Procs.vertex_attrib_4niv(null)
      @proc_vertex_attrib_4nsv = Procs.vertex_attrib_4nsv(null)
      @proc_vertex_attrib_4nub = Procs.vertex_attrib_4nub(null)
      @proc_vertex_attrib_4nubv = Procs.vertex_attrib_4nubv(null)
      @proc_vertex_attrib_4nuiv = Procs.vertex_attrib_4nuiv(null)
      @proc_vertex_attrib_4nusv = Procs.vertex_attrib_4nusv(null)
      @proc_vertex_attrib_4bv = Procs.vertex_attrib_4bv(null)
      @proc_vertex_attrib_4d = Procs.vertex_attrib_4d(null)
      @proc_vertex_attrib_4dv = Procs.vertex_attrib_4dv(null)
      @proc_vertex_attrib_4f = Procs.vertex_attrib_4f(null)
      @proc_vertex_attrib_4fv = Procs.vertex_attrib_4fv(null)
      @proc_vertex_attrib_4iv = Procs.vertex_attrib_4iv(null)
      @proc_vertex_attrib_4s = Procs.vertex_attrib_4s(null)
      @proc_vertex_attrib_4sv = Procs.vertex_attrib_4sv(null)
      @proc_vertex_attrib_4ubv = Procs.vertex_attrib_4ubv(null)
      @proc_vertex_attrib_4uiv = Procs.vertex_attrib_4uiv(null)
      @proc_vertex_attrib_4usv = Procs.vertex_attrib_4usv(null)
      @proc_vertex_attrib_pointer = Procs.vertex_attrib_pointer(null)
      @proc_uniform_matrix2x3_fv = Procs.uniform_matrix2x3_fv(null)
      @proc_uniform_matrix3x2_fv = Procs.uniform_matrix3x2_fv(null)
      @proc_uniform_matrix2x4_fv = Procs.uniform_matrix2x4_fv(null)
      @proc_uniform_matrix4x2_fv = Procs.uniform_matrix4x2_fv(null)
      @proc_uniform_matrix3x4_fv = Procs.uniform_matrix3x4_fv(null)
      @proc_uniform_matrix4x3_fv = Procs.uniform_matrix4x3_fv(null)
      @proc_color_mask_i = Procs.color_mask_i(null)
      @proc_get_boolean_i_v = Procs.get_boolean_i_v(null)
      @proc_get_integer_i_v = Procs.get_integer_i_v(null)
      @proc_enable_i = Procs.enable_i(null)
      @proc_disable_i = Procs.disable_i(null)
      @proc_is_enabled_i = Procs.is_enabled_i(null)
      @proc_begin_transform_feedback = Procs.begin_transform_feedback(null)
      @proc_end_transform_feedback = Procs.end_transform_feedback(null)
      @proc_bind_buffer_range = Procs.bind_buffer_range(null)
      @proc_bind_buffer_base = Procs.bind_buffer_base(null)
      @proc_transform_feedback_varyings = Procs.transform_feedback_varyings(null)
      @proc_get_transform_feedback_varying = Procs.get_transform_feedback_varying(null)
      @proc_clamp_color = Procs.clamp_color(null)
      @proc_begin_conditional_render = Procs.begin_conditional_render(null)
      @proc_end_conditional_render = Procs.end_conditional_render(null)
      @proc_vertex_attrib_i_pointer = Procs.vertex_attrib_i_pointer(null)
      @proc_get_vertex_attrib_i_iv = Procs.get_vertex_attrib_i_iv(null)
      @proc_get_vertex_attrib_i_uiv = Procs.get_vertex_attrib_i_uiv(null)
      @proc_vertex_attrib_i_1i = Procs.vertex_attrib_i_1i(null)
      @proc_vertex_attrib_i_2i = Procs.vertex_attrib_i_2i(null)
      @proc_vertex_attrib_i_3i = Procs.vertex_attrib_i_3i(null)
      @proc_vertex_attrib_i_4i = Procs.vertex_attrib_i_4i(null)
      @proc_vertex_attrib_i_1ui = Procs.vertex_attrib_i_1ui(null)
      @proc_vertex_attrib_i_2ui = Procs.vertex_attrib_i_2ui(null)
      @proc_vertex_attrib_i_3ui = Procs.vertex_attrib_i_3ui(null)
      @proc_vertex_attrib_i_4ui = Procs.vertex_attrib_i_4ui(null)
      @proc_vertex_attrib_i_1iv = Procs.vertex_attrib_i_1iv(null)
      @proc_vertex_attrib_i_2iv = Procs.vertex_attrib_i_2iv(null)
      @proc_vertex_attrib_i_3iv = Procs.vertex_attrib_i_3iv(null)
      @proc_vertex_attrib_i_4iv = Procs.vertex_attrib_i_4iv(null)
      @proc_vertex_attrib_i_1uiv = Procs.vertex_attrib_i_1uiv(null)
      @proc_vertex_attrib_i_2uiv = Procs.vertex_attrib_i_2uiv(null)
      @proc_vertex_attrib_i_3uiv = Procs.vertex_attrib_i_3uiv(null)
      @proc_vertex_attrib_i_4uiv = Procs.vertex_attrib_i_4uiv(null)
      @proc_vertex_attrib_i_4bv = Procs.vertex_attrib_i_4bv(null)
      @proc_vertex_attrib_i_4sv = Procs.vertex_attrib_i_4sv(null)
      @proc_vertex_attrib_i_4ubv = Procs.vertex_attrib_i_4ubv(null)
      @proc_vertex_attrib_i_4usv = Procs.vertex_attrib_i_4usv(null)
      @proc_get_uniform_uiv = Procs.get_uniform_uiv(null)
      @proc_bind_frag_data_location = Procs.bind_frag_data_location(null)
      @proc_get_frag_data_location = Procs.get_frag_data_location(null)
      @proc_uniform_1ui = Procs.uniform_1ui(null)
      @proc_uniform_2ui = Procs.uniform_2ui(null)
      @proc_uniform_3ui = Procs.uniform_3ui(null)
      @proc_uniform_4ui = Procs.uniform_4ui(null)
      @proc_uniform_1uiv = Procs.uniform_1uiv(null)
      @proc_uniform_2uiv = Procs.uniform_2uiv(null)
      @proc_uniform_3uiv = Procs.uniform_3uiv(null)
      @proc_uniform_4uiv = Procs.uniform_4uiv(null)
      @proc_tex_parameter_i_iv = Procs.tex_parameter_i_iv(null)
      @proc_tex_parameter_i_uiv = Procs.tex_parameter_i_uiv(null)
      @proc_get_tex_parameter_i_iv = Procs.get_tex_parameter_i_iv(null)
      @proc_get_tex_parameter_i_uiv = Procs.get_tex_parameter_i_uiv(null)
      @proc_clear_buffer_iv = Procs.clear_buffer_iv(null)
      @proc_clear_buffer_uiv = Procs.clear_buffer_uiv(null)
      @proc_clear_buffer_fv = Procs.clear_buffer_fv(null)
      @proc_clear_buffer_fi = Procs.clear_buffer_fi(null)
      @proc_get_string_i = Procs.get_string_i(null)
      @proc_is_renderbuffer = Procs.is_renderbuffer(null)
      @proc_bind_renderbuffer = Procs.bind_renderbuffer(null)
      @proc_delete_renderbuffers = Procs.delete_renderbuffers(null)
      @proc_gen_renderbuffers = Procs.gen_renderbuffers(null)
      @proc_renderbuffer_storage = Procs.renderbuffer_storage(null)
      @proc_get_renderbuffer_parameter_iv = Procs.get_renderbuffer_parameter_iv(null)
      @proc_is_framebuffer = Procs.is_framebuffer(null)
      @proc_bind_framebuffer = Procs.bind_framebuffer(null)
      @proc_delete_framebuffers = Procs.delete_framebuffers(null)
      @proc_gen_framebuffers = Procs.gen_framebuffers(null)
      @proc_check_framebuffer_status = Procs.check_framebuffer_status(null)
      @proc_framebuffer_texture_1d = Procs.framebuffer_texture_1d(null)
      @proc_framebuffer_texture_2d = Procs.framebuffer_texture_2d(null)
      @proc_framebuffer_texture_3d = Procs.framebuffer_texture_3d(null)
      @proc_framebuffer_renderbuffer = Procs.framebuffer_renderbuffer(null)
      @proc_get_framebuffer_attachment_parameter_iv = Procs.get_framebuffer_attachment_parameter_iv(null)
      @proc_generate_mipmap = Procs.generate_mipmap(null)
      @proc_blit_framebuffer = Procs.blit_framebuffer(null)
      @proc_renderbuffer_storage_multisample = Procs.renderbuffer_storage_multisample(null)
      @proc_framebuffer_texture_layer = Procs.framebuffer_texture_layer(null)
      @proc_map_buffer_range = Procs.map_buffer_range(null)
      @proc_flush_mapped_buffer_range = Procs.flush_mapped_buffer_range(null)
      @proc_bind_vertex_array = Procs.bind_vertex_array(null)
      @proc_delete_vertex_arrays = Procs.delete_vertex_arrays(null)
      @proc_gen_vertex_arrays = Procs.gen_vertex_arrays(null)
      @proc_is_vertex_array = Procs.is_vertex_array(null)
      @proc_draw_arrays_instanced = Procs.draw_arrays_instanced(null)
      @proc_draw_elements_instanced = Procs.draw_elements_instanced(null)
      @proc_tex_buffer = Procs.tex_buffer(null)
      @proc_primitive_restart_index = Procs.primitive_restart_index(null)
      @proc_copy_buffer_sub_data = Procs.copy_buffer_sub_data(null)
      @proc_get_uniform_indices = Procs.get_uniform_indices(null)
      @proc_get_active_uniforms_iv = Procs.get_active_uniforms_iv(null)
      @proc_get_active_uniform_name = Procs.get_active_uniform_name(null)
      @proc_get_uniform_block_index = Procs.get_uniform_block_index(null)
      @proc_get_active_uniform_block_iv = Procs.get_active_uniform_block_iv(null)
      @proc_get_active_uniform_block_name = Procs.get_active_uniform_block_name(null)
      @proc_uniform_block_binding = Procs.uniform_block_binding(null)
      @proc_draw_elements_base_vertex = Procs.draw_elements_base_vertex(null)
      @proc_draw_range_elements_base_vertex = Procs.draw_range_elements_base_vertex(null)
      @proc_draw_elements_instanced_base_vertex = Procs.draw_elements_instanced_base_vertex(null)
      @proc_multi_draw_elements_base_vertex = Procs.multi_draw_elements_base_vertex(null)
      @proc_provoking_vertex = Procs.provoking_vertex(null)
      @proc_fence_sync = Procs.fence_sync(null)
      @proc_is_sync = Procs.is_sync(null)
      @proc_delete_sync = Procs.delete_sync(null)
      @proc_client_wait_sync = Procs.client_wait_sync(null)
      @proc_wait_sync = Procs.wait_sync(null)
      @proc_get_integer_64v = Procs.get_integer_64v(null)
      @proc_get_sync_iv = Procs.get_sync_iv(null)
      @proc_get_integer_64i_v = Procs.get_integer_64i_v(null)
      @proc_get_buffer_parameter_i64v = Procs.get_buffer_parameter_i64v(null)
      @proc_framebuffer_texture = Procs.framebuffer_texture(null)
      @proc_tex_image_2d_multisample = Procs.tex_image_2d_multisample(null)
      @proc_tex_image_3d_multisample = Procs.tex_image_3d_multisample(null)
      @proc_get_multisample_fv = Procs.get_multisample_fv(null)
      @proc_sample_mask_i = Procs.sample_mask_i(null)
      @proc_bind_frag_data_location_indexed = Procs.bind_frag_data_location_indexed(null)
      @proc_get_frag_data_index = Procs.get_frag_data_index(null)
      @proc_gen_samplers = Procs.gen_samplers(null)
      @proc_delete_samplers = Procs.delete_samplers(null)
      @proc_is_sampler = Procs.is_sampler(null)
      @proc_bind_sampler = Procs.bind_sampler(null)
      @proc_sampler_parameter_i = Procs.sampler_parameter_i(null)
      @proc_sampler_parameter_iv = Procs.sampler_parameter_iv(null)
      @proc_sampler_parameter_f = Procs.sampler_parameter_f(null)
      @proc_sampler_parameter_fv = Procs.sampler_parameter_fv(null)
      @proc_sampler_parameter_i_iv = Procs.sampler_parameter_i_iv(null)
      @proc_sampler_parameter_i_uiv = Procs.sampler_parameter_i_uiv(null)
      @proc_get_sampler_parameter_iv = Procs.get_sampler_parameter_iv(null)
      @proc_get_sampler_parameter_i_iv = Procs.get_sampler_parameter_i_iv(null)
      @proc_get_sampler_parameter_fv = Procs.get_sampler_parameter_fv(null)
      @proc_get_sampler_parameter_i_uiv = Procs.get_sampler_parameter_i_uiv(null)
      @proc_query_counter = Procs.query_counter(null)
      @proc_get_query_object_i64v = Procs.get_query_object_i64v(null)
      @proc_get_query_object_ui64v = Procs.get_query_object_ui64v(null)
      @proc_vertex_attrib_divisor = Procs.vertex_attrib_divisor(null)
      @proc_vertex_attrib_p_1ui = Procs.vertex_attrib_p_1ui(null)
      @proc_vertex_attrib_p_1uiv = Procs.vertex_attrib_p_1uiv(null)
      @proc_vertex_attrib_p_2ui = Procs.vertex_attrib_p_2ui(null)
      @proc_vertex_attrib_p_2uiv = Procs.vertex_attrib_p_2uiv(null)
      @proc_vertex_attrib_p_3ui = Procs.vertex_attrib_p_3ui(null)
      @proc_vertex_attrib_p_3uiv = Procs.vertex_attrib_p_3uiv(null)
      @proc_vertex_attrib_p_4ui = Procs.vertex_attrib_p_4ui(null)
      @proc_vertex_attrib_p_4uiv = Procs.vertex_attrib_p_4uiv(null)
      @proc_vertex_p_2ui = Procs.vertex_p_2ui(null)
      @proc_vertex_p_2uiv = Procs.vertex_p_2uiv(null)
      @proc_vertex_p_3ui = Procs.vertex_p_3ui(null)
      @proc_vertex_p_3uiv = Procs.vertex_p_3uiv(null)
      @proc_vertex_p_4ui = Procs.vertex_p_4ui(null)
      @proc_vertex_p_4uiv = Procs.vertex_p_4uiv(null)
      @proc_tex_coord_p_1ui = Procs.tex_coord_p_1ui(null)
      @proc_tex_coord_p_1uiv = Procs.tex_coord_p_1uiv(null)
      @proc_tex_coord_p_2ui = Procs.tex_coord_p_2ui(null)
      @proc_tex_coord_p_2uiv = Procs.tex_coord_p_2uiv(null)
      @proc_tex_coord_p_3ui = Procs.tex_coord_p_3ui(null)
      @proc_tex_coord_p_3uiv = Procs.tex_coord_p_3uiv(null)
      @proc_tex_coord_p_4ui = Procs.tex_coord_p_4ui(null)
      @proc_tex_coord_p_4uiv = Procs.tex_coord_p_4uiv(null)
      @proc_multi_tex_coord_p_1ui = Procs.multi_tex_coord_p_1ui(null)
      @proc_multi_tex_coord_p_1uiv = Procs.multi_tex_coord_p_1uiv(null)
      @proc_multi_tex_coord_p_2ui = Procs.multi_tex_coord_p_2ui(null)
      @proc_multi_tex_coord_p_2uiv = Procs.multi_tex_coord_p_2uiv(null)
      @proc_multi_tex_coord_p_3ui = Procs.multi_tex_coord_p_3ui(null)
      @proc_multi_tex_coord_p_3uiv = Procs.multi_tex_coord_p_3uiv(null)
      @proc_multi_tex_coord_p_4ui = Procs.multi_tex_coord_p_4ui(null)
      @proc_multi_tex_coord_p_4uiv = Procs.multi_tex_coord_p_4uiv(null)
      @proc_normal_p_3ui = Procs.normal_p_3ui(null)
      @proc_normal_p_3uiv = Procs.normal_p_3uiv(null)
      @proc_color_p_3ui = Procs.color_p_3ui(null)
      @proc_color_p_3uiv = Procs.color_p_3uiv(null)
      @proc_color_p_4ui = Procs.color_p_4ui(null)
      @proc_color_p_4uiv = Procs.color_p_4uiv(null)
      @proc_secondary_color_p_3ui = Procs.secondary_color_p_3ui(null)
      @proc_secondary_color_p_3uiv = Procs.secondary_color_p_3uiv(null)
      @proc_min_sample_shading = Procs.min_sample_shading(null)
      @proc_blend_equation_i = Procs.blend_equation_i(null)
      @proc_blend_equation_separate_i = Procs.blend_equation_separate_i(null)
      @proc_blend_func_i = Procs.blend_func_i(null)
      @proc_blend_func_separate_i = Procs.blend_func_separate_i(null)
      @proc_draw_arrays_indirect = Procs.draw_arrays_indirect(null)
      @proc_draw_elements_indirect = Procs.draw_elements_indirect(null)
      @proc_uniform_1d = Procs.uniform_1d(null)
      @proc_uniform_2d = Procs.uniform_2d(null)
      @proc_uniform_3d = Procs.uniform_3d(null)
      @proc_uniform_4d = Procs.uniform_4d(null)
      @proc_uniform_1dv = Procs.uniform_1dv(null)
      @proc_uniform_2dv = Procs.uniform_2dv(null)
      @proc_uniform_3dv = Procs.uniform_3dv(null)
      @proc_uniform_4dv = Procs.uniform_4dv(null)
      @proc_uniform_matrix2_dv = Procs.uniform_matrix2_dv(null)
      @proc_uniform_matrix3_dv = Procs.uniform_matrix3_dv(null)
      @proc_uniform_matrix4_dv = Procs.uniform_matrix4_dv(null)
      @proc_uniform_matrix2x3_dv = Procs.uniform_matrix2x3_dv(null)
      @proc_uniform_matrix2x4_dv = Procs.uniform_matrix2x4_dv(null)
      @proc_uniform_matrix3x2_dv = Procs.uniform_matrix3x2_dv(null)
      @proc_uniform_matrix3x4_dv = Procs.uniform_matrix3x4_dv(null)
      @proc_uniform_matrix4x2_dv = Procs.uniform_matrix4x2_dv(null)
      @proc_uniform_matrix4x3_dv = Procs.uniform_matrix4x3_dv(null)
      @proc_get_uniform_dv = Procs.get_uniform_dv(null)
      @proc_get_subroutine_uniform_location = Procs.get_subroutine_uniform_location(null)
      @proc_get_subroutine_index = Procs.get_subroutine_index(null)
      @proc_get_active_subroutine_uniform_iv = Procs.get_active_subroutine_uniform_iv(null)
      @proc_get_active_subroutine_uniform_name = Procs.get_active_subroutine_uniform_name(null)
      @proc_get_active_subroutine_name = Procs.get_active_subroutine_name(null)
      @proc_uniform_subroutines_uiv = Procs.uniform_subroutines_uiv(null)
      @proc_get_uniform_subroutine_uiv = Procs.get_uniform_subroutine_uiv(null)
      @proc_get_program_stage_iv = Procs.get_program_stage_iv(null)
      @proc_patch_parameter_i = Procs.patch_parameter_i(null)
      @proc_patch_parameter_fv = Procs.patch_parameter_fv(null)
      @proc_bind_transform_feedback = Procs.bind_transform_feedback(null)
      @proc_delete_transform_feedbacks = Procs.delete_transform_feedbacks(null)
      @proc_gen_transform_feedbacks = Procs.gen_transform_feedbacks(null)
      @proc_is_transform_feedback = Procs.is_transform_feedback(null)
      @proc_pause_transform_feedback = Procs.pause_transform_feedback(null)
      @proc_resume_transform_feedback = Procs.resume_transform_feedback(null)
      @proc_draw_transform_feedback = Procs.draw_transform_feedback(null)
      @proc_draw_transform_feedback_stream = Procs.draw_transform_feedback_stream(null)
      @proc_begin_query_indexed = Procs.begin_query_indexed(null)
      @proc_end_query_indexed = Procs.end_query_indexed(null)
      @proc_get_query_indexed_iv = Procs.get_query_indexed_iv(null)
      @proc_release_shader_compiler = Procs.release_shader_compiler(null)
      @proc_shader_binary = Procs.shader_binary(null)
      @proc_get_shader_precision_format = Procs.get_shader_precision_format(null)
      @proc_depth_range_f = Procs.depth_range_f(null)
      @proc_clear_depth_f = Procs.clear_depth_f(null)
      @proc_get_program_binary = Procs.get_program_binary(null)
      @proc_program_binary = Procs.program_binary(null)
      @proc_program_parameter_i = Procs.program_parameter_i(null)
      @proc_use_program_stages = Procs.use_program_stages(null)
      @proc_active_shader_program = Procs.active_shader_program(null)
      @proc_create_shader_program_v = Procs.create_shader_program_v(null)
      @proc_bind_program_pipeline = Procs.bind_program_pipeline(null)
      @proc_delete_program_pipelines = Procs.delete_program_pipelines(null)
      @proc_gen_program_pipelines = Procs.gen_program_pipelines(null)
      @proc_is_program_pipeline = Procs.is_program_pipeline(null)
      @proc_get_program_pipeline_iv = Procs.get_program_pipeline_iv(null)
      @proc_program_uniform_1i = Procs.program_uniform_1i(null)
      @proc_program_uniform_1iv = Procs.program_uniform_1iv(null)
      @proc_program_uniform_1f = Procs.program_uniform_1f(null)
      @proc_program_uniform_1fv = Procs.program_uniform_1fv(null)
      @proc_program_uniform_1d = Procs.program_uniform_1d(null)
      @proc_program_uniform_1dv = Procs.program_uniform_1dv(null)
      @proc_program_uniform_1ui = Procs.program_uniform_1ui(null)
      @proc_program_uniform_1uiv = Procs.program_uniform_1uiv(null)
      @proc_program_uniform_2i = Procs.program_uniform_2i(null)
      @proc_program_uniform_2iv = Procs.program_uniform_2iv(null)
      @proc_program_uniform_2f = Procs.program_uniform_2f(null)
      @proc_program_uniform_2fv = Procs.program_uniform_2fv(null)
      @proc_program_uniform_2d = Procs.program_uniform_2d(null)
      @proc_program_uniform_2dv = Procs.program_uniform_2dv(null)
      @proc_program_uniform_2ui = Procs.program_uniform_2ui(null)
      @proc_program_uniform_2uiv = Procs.program_uniform_2uiv(null)
      @proc_program_uniform_3i = Procs.program_uniform_3i(null)
      @proc_program_uniform_3iv = Procs.program_uniform_3iv(null)
      @proc_program_uniform_3f = Procs.program_uniform_3f(null)
      @proc_program_uniform_3fv = Procs.program_uniform_3fv(null)
      @proc_program_uniform_3d = Procs.program_uniform_3d(null)
      @proc_program_uniform_3dv = Procs.program_uniform_3dv(null)
      @proc_program_uniform_3ui = Procs.program_uniform_3ui(null)
      @proc_program_uniform_3uiv = Procs.program_uniform_3uiv(null)
      @proc_program_uniform_4i = Procs.program_uniform_4i(null)
      @proc_program_uniform_4iv = Procs.program_uniform_4iv(null)
      @proc_program_uniform_4f = Procs.program_uniform_4f(null)
      @proc_program_uniform_4fv = Procs.program_uniform_4fv(null)
      @proc_program_uniform_4d = Procs.program_uniform_4d(null)
      @proc_program_uniform_4dv = Procs.program_uniform_4dv(null)
      @proc_program_uniform_4ui = Procs.program_uniform_4ui(null)
      @proc_program_uniform_4uiv = Procs.program_uniform_4uiv(null)
      @proc_program_uniform_matrix2_fv = Procs.program_uniform_matrix2_fv(null)
      @proc_program_uniform_matrix3_fv = Procs.program_uniform_matrix3_fv(null)
      @proc_program_uniform_matrix4_fv = Procs.program_uniform_matrix4_fv(null)
      @proc_program_uniform_matrix2_dv = Procs.program_uniform_matrix2_dv(null)
      @proc_program_uniform_matrix3_dv = Procs.program_uniform_matrix3_dv(null)
      @proc_program_uniform_matrix4_dv = Procs.program_uniform_matrix4_dv(null)
      @proc_program_uniform_matrix2x3_fv = Procs.program_uniform_matrix2x3_fv(null)
      @proc_program_uniform_matrix3x2_fv = Procs.program_uniform_matrix3x2_fv(null)
      @proc_program_uniform_matrix2x4_fv = Procs.program_uniform_matrix2x4_fv(null)
      @proc_program_uniform_matrix4x2_fv = Procs.program_uniform_matrix4x2_fv(null)
      @proc_program_uniform_matrix3x4_fv = Procs.program_uniform_matrix3x4_fv(null)
      @proc_program_uniform_matrix4x3_fv = Procs.program_uniform_matrix4x3_fv(null)
      @proc_program_uniform_matrix2x3_dv = Procs.program_uniform_matrix2x3_dv(null)
      @proc_program_uniform_matrix3x2_dv = Procs.program_uniform_matrix3x2_dv(null)
      @proc_program_uniform_matrix2x4_dv = Procs.program_uniform_matrix2x4_dv(null)
      @proc_program_uniform_matrix4x2_dv = Procs.program_uniform_matrix4x2_dv(null)
      @proc_program_uniform_matrix3x4_dv = Procs.program_uniform_matrix3x4_dv(null)
      @proc_program_uniform_matrix4x3_dv = Procs.program_uniform_matrix4x3_dv(null)
      @proc_validate_program_pipeline = Procs.validate_program_pipeline(null)
      @proc_get_program_pipeline_info_log = Procs.get_program_pipeline_info_log(null)
      @proc_vertex_attrib_l_1d = Procs.vertex_attrib_l_1d(null)
      @proc_vertex_attrib_l_2d = Procs.vertex_attrib_l_2d(null)
      @proc_vertex_attrib_l_3d = Procs.vertex_attrib_l_3d(null)
      @proc_vertex_attrib_l_4d = Procs.vertex_attrib_l_4d(null)
      @proc_vertex_attrib_l_1dv = Procs.vertex_attrib_l_1dv(null)
      @proc_vertex_attrib_l_2dv = Procs.vertex_attrib_l_2dv(null)
      @proc_vertex_attrib_l_3dv = Procs.vertex_attrib_l_3dv(null)
      @proc_vertex_attrib_l_4dv = Procs.vertex_attrib_l_4dv(null)
      @proc_vertex_attrib_l_pointer = Procs.vertex_attrib_l_pointer(null)
      @proc_get_vertex_attrib_l_dv = Procs.get_vertex_attrib_l_dv(null)
      @proc_viewport_array_v = Procs.viewport_array_v(null)
      @proc_viewport_indexed_f = Procs.viewport_indexed_f(null)
      @proc_viewport_indexed_fv = Procs.viewport_indexed_fv(null)
      @proc_scissor_array_v = Procs.scissor_array_v(null)
      @proc_scissor_indexed = Procs.scissor_indexed(null)
      @proc_scissor_indexedv = Procs.scissor_indexedv(null)
      @proc_depth_range_array_v = Procs.depth_range_array_v(null)
      @proc_depth_range_indexed = Procs.depth_range_indexed(null)
      @proc_get_float_i_v = Procs.get_float_i_v(null)
      @proc_get_double_i_v = Procs.get_double_i_v(null)
    end

    # Loads all functions.
    # The block takes an OpenGL function name and returns its address.
    # The address should be null if the function is unavailable.
    def load_all(& : String -> Void*)
      @proc_cull_face = Procs.cull_face(yield "glCullFace")
      @proc_front_face = Procs.front_face(yield "glFrontFace")
      @proc_hint = Procs.hint(yield "glHint")
      @proc_line_width = Procs.line_width(yield "glLineWidth")
      @proc_point_size = Procs.point_size(yield "glPointSize")
      @proc_polygon_mode = Procs.polygon_mode(yield "glPolygonMode")
      @proc_scissor = Procs.scissor(yield "glScissor")
      @proc_tex_parameter_f = Procs.tex_parameter_f(yield "glTexParameterf")
      @proc_tex_parameter_fv = Procs.tex_parameter_fv(yield "glTexParameterfv")
      @proc_tex_parameter_i = Procs.tex_parameter_i(yield "glTexParameteri")
      @proc_tex_parameter_iv = Procs.tex_parameter_iv(yield "glTexParameteriv")
      @proc_tex_image_1d = Procs.tex_image_1d(yield "glTexImage1D")
      @proc_tex_image_2d = Procs.tex_image_2d(yield "glTexImage2D")
      @proc_draw_buffer = Procs.draw_buffer(yield "glDrawBuffer")
      @proc_clear = Procs.clear(yield "glClear")
      @proc_clear_color = Procs.clear_color(yield "glClearColor")
      @proc_clear_stencil = Procs.clear_stencil(yield "glClearStencil")
      @proc_clear_depth = Procs.clear_depth(yield "glClearDepth")
      @proc_stencil_mask = Procs.stencil_mask(yield "glStencilMask")
      @proc_color_mask = Procs.color_mask(yield "glColorMask")
      @proc_depth_mask = Procs.depth_mask(yield "glDepthMask")
      @proc_disable = Procs.disable(yield "glDisable")
      @proc_enable = Procs.enable(yield "glEnable")
      @proc_finish = Procs.finish(yield "glFinish")
      @proc_flush = Procs.flush(yield "glFlush")
      @proc_blend_func = Procs.blend_func(yield "glBlendFunc")
      @proc_logic_op = Procs.logic_op(yield "glLogicOp")
      @proc_stencil_func = Procs.stencil_func(yield "glStencilFunc")
      @proc_stencil_op = Procs.stencil_op(yield "glStencilOp")
      @proc_depth_func = Procs.depth_func(yield "glDepthFunc")
      @proc_pixel_store_f = Procs.pixel_store_f(yield "glPixelStoref")
      @proc_pixel_store_i = Procs.pixel_store_i(yield "glPixelStorei")
      @proc_read_buffer = Procs.read_buffer(yield "glReadBuffer")
      @proc_read_pixels = Procs.read_pixels(yield "glReadPixels")
      @proc_get_boolean_v = Procs.get_boolean_v(yield "glGetBooleanv")
      @proc_get_double_v = Procs.get_double_v(yield "glGetDoublev")
      @proc_get_error = Procs.get_error(yield "glGetError")
      @proc_get_float_v = Procs.get_float_v(yield "glGetFloatv")
      @proc_get_integer_v = Procs.get_integer_v(yield "glGetIntegerv")
      @proc_get_string = Procs.get_string(yield "glGetString")
      @proc_get_tex_image = Procs.get_tex_image(yield "glGetTexImage")
      @proc_get_tex_parameter_fv = Procs.get_tex_parameter_fv(yield "glGetTexParameterfv")
      @proc_get_tex_parameter_iv = Procs.get_tex_parameter_iv(yield "glGetTexParameteriv")
      @proc_get_tex_level_parameter_fv = Procs.get_tex_level_parameter_fv(yield "glGetTexLevelParameterfv")
      @proc_get_tex_level_parameter_iv = Procs.get_tex_level_parameter_iv(yield "glGetTexLevelParameteriv")
      @proc_is_enabled = Procs.is_enabled(yield "glIsEnabled")
      @proc_depth_range = Procs.depth_range(yield "glDepthRange")
      @proc_viewport = Procs.viewport(yield "glViewport")
      @proc_new_list = Procs.new_list(yield "glNewList")
      @proc_end_list = Procs.end_list(yield "glEndList")
      @proc_call_list = Procs.call_list(yield "glCallList")
      @proc_call_lists = Procs.call_lists(yield "glCallLists")
      @proc_delete_lists = Procs.delete_lists(yield "glDeleteLists")
      @proc_gen_lists = Procs.gen_lists(yield "glGenLists")
      @proc_list_base = Procs.list_base(yield "glListBase")
      @proc_begin = Procs.begin(yield "glBegin")
      @proc_bitmap = Procs.bitmap(yield "glBitmap")
      @proc_color_3b = Procs.color_3b(yield "glColor3b")
      @proc_color_3bv = Procs.color_3bv(yield "glColor3bv")
      @proc_color_3d = Procs.color_3d(yield "glColor3d")
      @proc_color_3dv = Procs.color_3dv(yield "glColor3dv")
      @proc_color_3f = Procs.color_3f(yield "glColor3f")
      @proc_color_3fv = Procs.color_3fv(yield "glColor3fv")
      @proc_color_3i = Procs.color_3i(yield "glColor3i")
      @proc_color_3iv = Procs.color_3iv(yield "glColor3iv")
      @proc_color_3s = Procs.color_3s(yield "glColor3s")
      @proc_color_3sv = Procs.color_3sv(yield "glColor3sv")
      @proc_color_3ub = Procs.color_3ub(yield "glColor3ub")
      @proc_color_3ubv = Procs.color_3ubv(yield "glColor3ubv")
      @proc_color_3ui = Procs.color_3ui(yield "glColor3ui")
      @proc_color_3uiv = Procs.color_3uiv(yield "glColor3uiv")
      @proc_color_3us = Procs.color_3us(yield "glColor3us")
      @proc_color_3usv = Procs.color_3usv(yield "glColor3usv")
      @proc_color_4b = Procs.color_4b(yield "glColor4b")
      @proc_color_4bv = Procs.color_4bv(yield "glColor4bv")
      @proc_color_4d = Procs.color_4d(yield "glColor4d")
      @proc_color_4dv = Procs.color_4dv(yield "glColor4dv")
      @proc_color_4f = Procs.color_4f(yield "glColor4f")
      @proc_color_4fv = Procs.color_4fv(yield "glColor4fv")
      @proc_color_4i = Procs.color_4i(yield "glColor4i")
      @proc_color_4iv = Procs.color_4iv(yield "glColor4iv")
      @proc_color_4s = Procs.color_4s(yield "glColor4s")
      @proc_color_4sv = Procs.color_4sv(yield "glColor4sv")
      @proc_color_4ub = Procs.color_4ub(yield "glColor4ub")
      @proc_color_4ubv = Procs.color_4ubv(yield "glColor4ubv")
      @proc_color_4ui = Procs.color_4ui(yield "glColor4ui")
      @proc_color_4uiv = Procs.color_4uiv(yield "glColor4uiv")
      @proc_color_4us = Procs.color_4us(yield "glColor4us")
      @proc_color_4usv = Procs.color_4usv(yield "glColor4usv")
      @proc_edge_flag = Procs.edge_flag(yield "glEdgeFlag")
      @proc_edge_flag_v = Procs.edge_flag_v(yield "glEdgeFlagv")
      @proc_end = Procs.end(yield "glEnd")
      @proc_index_d = Procs.index_d(yield "glIndexd")
      @proc_index_dv = Procs.index_dv(yield "glIndexdv")
      @proc_index_f = Procs.index_f(yield "glIndexf")
      @proc_index_fv = Procs.index_fv(yield "glIndexfv")
      @proc_index_i = Procs.index_i(yield "glIndexi")
      @proc_index_iv = Procs.index_iv(yield "glIndexiv")
      @proc_index_s = Procs.index_s(yield "glIndexs")
      @proc_index_sv = Procs.index_sv(yield "glIndexsv")
      @proc_normal_3b = Procs.normal_3b(yield "glNormal3b")
      @proc_normal_3bv = Procs.normal_3bv(yield "glNormal3bv")
      @proc_normal_3d = Procs.normal_3d(yield "glNormal3d")
      @proc_normal_3dv = Procs.normal_3dv(yield "glNormal3dv")
      @proc_normal_3f = Procs.normal_3f(yield "glNormal3f")
      @proc_normal_3fv = Procs.normal_3fv(yield "glNormal3fv")
      @proc_normal_3i = Procs.normal_3i(yield "glNormal3i")
      @proc_normal_3iv = Procs.normal_3iv(yield "glNormal3iv")
      @proc_normal_3s = Procs.normal_3s(yield "glNormal3s")
      @proc_normal_3sv = Procs.normal_3sv(yield "glNormal3sv")
      @proc_raster_pos_2d = Procs.raster_pos_2d(yield "glRasterPos2d")
      @proc_raster_pos_2dv = Procs.raster_pos_2dv(yield "glRasterPos2dv")
      @proc_raster_pos_2f = Procs.raster_pos_2f(yield "glRasterPos2f")
      @proc_raster_pos_2fv = Procs.raster_pos_2fv(yield "glRasterPos2fv")
      @proc_raster_pos_2i = Procs.raster_pos_2i(yield "glRasterPos2i")
      @proc_raster_pos_2iv = Procs.raster_pos_2iv(yield "glRasterPos2iv")
      @proc_raster_pos_2s = Procs.raster_pos_2s(yield "glRasterPos2s")
      @proc_raster_pos_2sv = Procs.raster_pos_2sv(yield "glRasterPos2sv")
      @proc_raster_pos_3d = Procs.raster_pos_3d(yield "glRasterPos3d")
      @proc_raster_pos_3dv = Procs.raster_pos_3dv(yield "glRasterPos3dv")
      @proc_raster_pos_3f = Procs.raster_pos_3f(yield "glRasterPos3f")
      @proc_raster_pos_3fv = Procs.raster_pos_3fv(yield "glRasterPos3fv")
      @proc_raster_pos_3i = Procs.raster_pos_3i(yield "glRasterPos3i")
      @proc_raster_pos_3iv = Procs.raster_pos_3iv(yield "glRasterPos3iv")
      @proc_raster_pos_3s = Procs.raster_pos_3s(yield "glRasterPos3s")
      @proc_raster_pos_3sv = Procs.raster_pos_3sv(yield "glRasterPos3sv")
      @proc_raster_pos_4d = Procs.raster_pos_4d(yield "glRasterPos4d")
      @proc_raster_pos_4dv = Procs.raster_pos_4dv(yield "glRasterPos4dv")
      @proc_raster_pos_4f = Procs.raster_pos_4f(yield "glRasterPos4f")
      @proc_raster_pos_4fv = Procs.raster_pos_4fv(yield "glRasterPos4fv")
      @proc_raster_pos_4i = Procs.raster_pos_4i(yield "glRasterPos4i")
      @proc_raster_pos_4iv = Procs.raster_pos_4iv(yield "glRasterPos4iv")
      @proc_raster_pos_4s = Procs.raster_pos_4s(yield "glRasterPos4s")
      @proc_raster_pos_4sv = Procs.raster_pos_4sv(yield "glRasterPos4sv")
      @proc_rect_d = Procs.rect_d(yield "glRectd")
      @proc_rect_dv = Procs.rect_dv(yield "glRectdv")
      @proc_rect_f = Procs.rect_f(yield "glRectf")
      @proc_rect_fv = Procs.rect_fv(yield "glRectfv")
      @proc_rect_i = Procs.rect_i(yield "glRecti")
      @proc_rect_iv = Procs.rect_iv(yield "glRectiv")
      @proc_rect_s = Procs.rect_s(yield "glRects")
      @proc_rect_sv = Procs.rect_sv(yield "glRectsv")
      @proc_tex_coord_1d = Procs.tex_coord_1d(yield "glTexCoord1d")
      @proc_tex_coord_1dv = Procs.tex_coord_1dv(yield "glTexCoord1dv")
      @proc_tex_coord_1f = Procs.tex_coord_1f(yield "glTexCoord1f")
      @proc_tex_coord_1fv = Procs.tex_coord_1fv(yield "glTexCoord1fv")
      @proc_tex_coord_1i = Procs.tex_coord_1i(yield "glTexCoord1i")
      @proc_tex_coord_1iv = Procs.tex_coord_1iv(yield "glTexCoord1iv")
      @proc_tex_coord_1s = Procs.tex_coord_1s(yield "glTexCoord1s")
      @proc_tex_coord_1sv = Procs.tex_coord_1sv(yield "glTexCoord1sv")
      @proc_tex_coord_2d = Procs.tex_coord_2d(yield "glTexCoord2d")
      @proc_tex_coord_2dv = Procs.tex_coord_2dv(yield "glTexCoord2dv")
      @proc_tex_coord_2f = Procs.tex_coord_2f(yield "glTexCoord2f")
      @proc_tex_coord_2fv = Procs.tex_coord_2fv(yield "glTexCoord2fv")
      @proc_tex_coord_2i = Procs.tex_coord_2i(yield "glTexCoord2i")
      @proc_tex_coord_2iv = Procs.tex_coord_2iv(yield "glTexCoord2iv")
      @proc_tex_coord_2s = Procs.tex_coord_2s(yield "glTexCoord2s")
      @proc_tex_coord_2sv = Procs.tex_coord_2sv(yield "glTexCoord2sv")
      @proc_tex_coord_3d = Procs.tex_coord_3d(yield "glTexCoord3d")
      @proc_tex_coord_3dv = Procs.tex_coord_3dv(yield "glTexCoord3dv")
      @proc_tex_coord_3f = Procs.tex_coord_3f(yield "glTexCoord3f")
      @proc_tex_coord_3fv = Procs.tex_coord_3fv(yield "glTexCoord3fv")
      @proc_tex_coord_3i = Procs.tex_coord_3i(yield "glTexCoord3i")
      @proc_tex_coord_3iv = Procs.tex_coord_3iv(yield "glTexCoord3iv")
      @proc_tex_coord_3s = Procs.tex_coord_3s(yield "glTexCoord3s")
      @proc_tex_coord_3sv = Procs.tex_coord_3sv(yield "glTexCoord3sv")
      @proc_tex_coord_4d = Procs.tex_coord_4d(yield "glTexCoord4d")
      @proc_tex_coord_4dv = Procs.tex_coord_4dv(yield "glTexCoord4dv")
      @proc_tex_coord_4f = Procs.tex_coord_4f(yield "glTexCoord4f")
      @proc_tex_coord_4fv = Procs.tex_coord_4fv(yield "glTexCoord4fv")
      @proc_tex_coord_4i = Procs.tex_coord_4i(yield "glTexCoord4i")
      @proc_tex_coord_4iv = Procs.tex_coord_4iv(yield "glTexCoord4iv")
      @proc_tex_coord_4s = Procs.tex_coord_4s(yield "glTexCoord4s")
      @proc_tex_coord_4sv = Procs.tex_coord_4sv(yield "glTexCoord4sv")
      @proc_vertex_2d = Procs.vertex_2d(yield "glVertex2d")
      @proc_vertex_2dv = Procs.vertex_2dv(yield "glVertex2dv")
      @proc_vertex_2f = Procs.vertex_2f(yield "glVertex2f")
      @proc_vertex_2fv = Procs.vertex_2fv(yield "glVertex2fv")
      @proc_vertex_2i = Procs.vertex_2i(yield "glVertex2i")
      @proc_vertex_2iv = Procs.vertex_2iv(yield "glVertex2iv")
      @proc_vertex_2s = Procs.vertex_2s(yield "glVertex2s")
      @proc_vertex_2sv = Procs.vertex_2sv(yield "glVertex2sv")
      @proc_vertex_3d = Procs.vertex_3d(yield "glVertex3d")
      @proc_vertex_3dv = Procs.vertex_3dv(yield "glVertex3dv")
      @proc_vertex_3f = Procs.vertex_3f(yield "glVertex3f")
      @proc_vertex_3fv = Procs.vertex_3fv(yield "glVertex3fv")
      @proc_vertex_3i = Procs.vertex_3i(yield "glVertex3i")
      @proc_vertex_3iv = Procs.vertex_3iv(yield "glVertex3iv")
      @proc_vertex_3s = Procs.vertex_3s(yield "glVertex3s")
      @proc_vertex_3sv = Procs.vertex_3sv(yield "glVertex3sv")
      @proc_vertex_4d = Procs.vertex_4d(yield "glVertex4d")
      @proc_vertex_4dv = Procs.vertex_4dv(yield "glVertex4dv")
      @proc_vertex_4f = Procs.vertex_4f(yield "glVertex4f")
      @proc_vertex_4fv = Procs.vertex_4fv(yield "glVertex4fv")
      @proc_vertex_4i = Procs.vertex_4i(yield "glVertex4i")
      @proc_vertex_4iv = Procs.vertex_4iv(yield "glVertex4iv")
      @proc_vertex_4s = Procs.vertex_4s(yield "glVertex4s")
      @proc_vertex_4sv = Procs.vertex_4sv(yield "glVertex4sv")
      @proc_clip_plane = Procs.clip_plane(yield "glClipPlane")
      @proc_color_material = Procs.color_material(yield "glColorMaterial")
      @proc_fog_f = Procs.fog_f(yield "glFogf")
      @proc_fog_fv = Procs.fog_fv(yield "glFogfv")
      @proc_fog_i = Procs.fog_i(yield "glFogi")
      @proc_fog_iv = Procs.fog_iv(yield "glFogiv")
      @proc_light_f = Procs.light_f(yield "glLightf")
      @proc_light_fv = Procs.light_fv(yield "glLightfv")
      @proc_light_i = Procs.light_i(yield "glLighti")
      @proc_light_iv = Procs.light_iv(yield "glLightiv")
      @proc_light_model_f = Procs.light_model_f(yield "glLightModelf")
      @proc_light_model_fv = Procs.light_model_fv(yield "glLightModelfv")
      @proc_light_model_i = Procs.light_model_i(yield "glLightModeli")
      @proc_light_model_iv = Procs.light_model_iv(yield "glLightModeliv")
      @proc_line_stipple = Procs.line_stipple(yield "glLineStipple")
      @proc_material_f = Procs.material_f(yield "glMaterialf")
      @proc_material_fv = Procs.material_fv(yield "glMaterialfv")
      @proc_material_i = Procs.material_i(yield "glMateriali")
      @proc_material_iv = Procs.material_iv(yield "glMaterialiv")
      @proc_polygon_stipple = Procs.polygon_stipple(yield "glPolygonStipple")
      @proc_shade_model = Procs.shade_model(yield "glShadeModel")
      @proc_tex_env_f = Procs.tex_env_f(yield "glTexEnvf")
      @proc_tex_env_fv = Procs.tex_env_fv(yield "glTexEnvfv")
      @proc_tex_env_i = Procs.tex_env_i(yield "glTexEnvi")
      @proc_tex_env_iv = Procs.tex_env_iv(yield "glTexEnviv")
      @proc_tex_gen_d = Procs.tex_gen_d(yield "glTexGend")
      @proc_tex_gen_dv = Procs.tex_gen_dv(yield "glTexGendv")
      @proc_tex_gen_f = Procs.tex_gen_f(yield "glTexGenf")
      @proc_tex_gen_fv = Procs.tex_gen_fv(yield "glTexGenfv")
      @proc_tex_gen_i = Procs.tex_gen_i(yield "glTexGeni")
      @proc_tex_gen_iv = Procs.tex_gen_iv(yield "glTexGeniv")
      @proc_feedback_buffer = Procs.feedback_buffer(yield "glFeedbackBuffer")
      @proc_select_buffer = Procs.select_buffer(yield "glSelectBuffer")
      @proc_render_mode = Procs.render_mode(yield "glRenderMode")
      @proc_init_names = Procs.init_names(yield "glInitNames")
      @proc_load_name = Procs.load_name(yield "glLoadName")
      @proc_pass_through = Procs.pass_through(yield "glPassThrough")
      @proc_pop_name = Procs.pop_name(yield "glPopName")
      @proc_push_name = Procs.push_name(yield "glPushName")
      @proc_clear_accum = Procs.clear_accum(yield "glClearAccum")
      @proc_clear_index = Procs.clear_index(yield "glClearIndex")
      @proc_index_mask = Procs.index_mask(yield "glIndexMask")
      @proc_accum = Procs.accum(yield "glAccum")
      @proc_pop_attrib = Procs.pop_attrib(yield "glPopAttrib")
      @proc_push_attrib = Procs.push_attrib(yield "glPushAttrib")
      @proc_map_1d = Procs.map_1d(yield "glMap1d")
      @proc_map_1f = Procs.map_1f(yield "glMap1f")
      @proc_map_2d = Procs.map_2d(yield "glMap2d")
      @proc_map_2f = Procs.map_2f(yield "glMap2f")
      @proc_map_grid_1d = Procs.map_grid_1d(yield "glMapGrid1d")
      @proc_map_grid_1f = Procs.map_grid_1f(yield "glMapGrid1f")
      @proc_map_grid_2d = Procs.map_grid_2d(yield "glMapGrid2d")
      @proc_map_grid_2f = Procs.map_grid_2f(yield "glMapGrid2f")
      @proc_eval_coord_1d = Procs.eval_coord_1d(yield "glEvalCoord1d")
      @proc_eval_coord_1dv = Procs.eval_coord_1dv(yield "glEvalCoord1dv")
      @proc_eval_coord_1f = Procs.eval_coord_1f(yield "glEvalCoord1f")
      @proc_eval_coord_1fv = Procs.eval_coord_1fv(yield "glEvalCoord1fv")
      @proc_eval_coord_2d = Procs.eval_coord_2d(yield "glEvalCoord2d")
      @proc_eval_coord_2dv = Procs.eval_coord_2dv(yield "glEvalCoord2dv")
      @proc_eval_coord_2f = Procs.eval_coord_2f(yield "glEvalCoord2f")
      @proc_eval_coord_2fv = Procs.eval_coord_2fv(yield "glEvalCoord2fv")
      @proc_eval_mesh1 = Procs.eval_mesh1(yield "glEvalMesh1")
      @proc_eval_point1 = Procs.eval_point1(yield "glEvalPoint1")
      @proc_eval_mesh2 = Procs.eval_mesh2(yield "glEvalMesh2")
      @proc_eval_point2 = Procs.eval_point2(yield "glEvalPoint2")
      @proc_alpha_func = Procs.alpha_func(yield "glAlphaFunc")
      @proc_pixel_zoom = Procs.pixel_zoom(yield "glPixelZoom")
      @proc_pixel_transfer_f = Procs.pixel_transfer_f(yield "glPixelTransferf")
      @proc_pixel_transfer_i = Procs.pixel_transfer_i(yield "glPixelTransferi")
      @proc_pixel_map_fv = Procs.pixel_map_fv(yield "glPixelMapfv")
      @proc_pixel_map_uiv = Procs.pixel_map_uiv(yield "glPixelMapuiv")
      @proc_pixel_map_usv = Procs.pixel_map_usv(yield "glPixelMapusv")
      @proc_copy_pixels = Procs.copy_pixels(yield "glCopyPixels")
      @proc_draw_pixels = Procs.draw_pixels(yield "glDrawPixels")
      @proc_get_clip_plane = Procs.get_clip_plane(yield "glGetClipPlane")
      @proc_get_light_fv = Procs.get_light_fv(yield "glGetLightfv")
      @proc_get_light_iv = Procs.get_light_iv(yield "glGetLightiv")
      @proc_get_map_dv = Procs.get_map_dv(yield "glGetMapdv")
      @proc_get_map_fv = Procs.get_map_fv(yield "glGetMapfv")
      @proc_get_map_iv = Procs.get_map_iv(yield "glGetMapiv")
      @proc_get_material_fv = Procs.get_material_fv(yield "glGetMaterialfv")
      @proc_get_material_iv = Procs.get_material_iv(yield "glGetMaterialiv")
      @proc_get_pixel_map_fv = Procs.get_pixel_map_fv(yield "glGetPixelMapfv")
      @proc_get_pixel_map_uiv = Procs.get_pixel_map_uiv(yield "glGetPixelMapuiv")
      @proc_get_pixel_map_usv = Procs.get_pixel_map_usv(yield "glGetPixelMapusv")
      @proc_get_polygon_stipple = Procs.get_polygon_stipple(yield "glGetPolygonStipple")
      @proc_get_tex_env_fv = Procs.get_tex_env_fv(yield "glGetTexEnvfv")
      @proc_get_tex_env_iv = Procs.get_tex_env_iv(yield "glGetTexEnviv")
      @proc_get_tex_gen_dv = Procs.get_tex_gen_dv(yield "glGetTexGendv")
      @proc_get_tex_gen_fv = Procs.get_tex_gen_fv(yield "glGetTexGenfv")
      @proc_get_tex_gen_iv = Procs.get_tex_gen_iv(yield "glGetTexGeniv")
      @proc_is_list = Procs.is_list(yield "glIsList")
      @proc_frustum = Procs.frustum(yield "glFrustum")
      @proc_load_identity = Procs.load_identity(yield "glLoadIdentity")
      @proc_load_matrix_f = Procs.load_matrix_f(yield "glLoadMatrixf")
      @proc_load_matrix_d = Procs.load_matrix_d(yield "glLoadMatrixd")
      @proc_matrix_mode = Procs.matrix_mode(yield "glMatrixMode")
      @proc_mult_matrix_f = Procs.mult_matrix_f(yield "glMultMatrixf")
      @proc_mult_matrix_d = Procs.mult_matrix_d(yield "glMultMatrixd")
      @proc_ortho = Procs.ortho(yield "glOrtho")
      @proc_pop_matrix = Procs.pop_matrix(yield "glPopMatrix")
      @proc_push_matrix = Procs.push_matrix(yield "glPushMatrix")
      @proc_rotate_d = Procs.rotate_d(yield "glRotated")
      @proc_rotate_f = Procs.rotate_f(yield "glRotatef")
      @proc_scale_d = Procs.scale_d(yield "glScaled")
      @proc_scale_f = Procs.scale_f(yield "glScalef")
      @proc_translate_d = Procs.translate_d(yield "glTranslated")
      @proc_translate_f = Procs.translate_f(yield "glTranslatef")
      @proc_draw_arrays = Procs.draw_arrays(yield "glDrawArrays")
      @proc_draw_elements = Procs.draw_elements(yield "glDrawElements")
      @proc_get_pointer_v = Procs.get_pointer_v(yield "glGetPointerv")
      @proc_polygon_offset = Procs.polygon_offset(yield "glPolygonOffset")
      @proc_copy_tex_image_1d = Procs.copy_tex_image_1d(yield "glCopyTexImage1D")
      @proc_copy_tex_image_2d = Procs.copy_tex_image_2d(yield "glCopyTexImage2D")
      @proc_copy_tex_sub_image_1d = Procs.copy_tex_sub_image_1d(yield "glCopyTexSubImage1D")
      @proc_copy_tex_sub_image_2d = Procs.copy_tex_sub_image_2d(yield "glCopyTexSubImage2D")
      @proc_tex_sub_image_1d = Procs.tex_sub_image_1d(yield "glTexSubImage1D")
      @proc_tex_sub_image_2d = Procs.tex_sub_image_2d(yield "glTexSubImage2D")
      @proc_bind_texture = Procs.bind_texture(yield "glBindTexture")
      @proc_delete_textures = Procs.delete_textures(yield "glDeleteTextures")
      @proc_gen_textures = Procs.gen_textures(yield "glGenTextures")
      @proc_is_texture = Procs.is_texture(yield "glIsTexture")
      @proc_array_element = Procs.array_element(yield "glArrayElement")
      @proc_color_pointer = Procs.color_pointer(yield "glColorPointer")
      @proc_disable_client_state = Procs.disable_client_state(yield "glDisableClientState")
      @proc_edge_flag_pointer = Procs.edge_flag_pointer(yield "glEdgeFlagPointer")
      @proc_enable_client_state = Procs.enable_client_state(yield "glEnableClientState")
      @proc_index_pointer = Procs.index_pointer(yield "glIndexPointer")
      @proc_interleaved_arrays = Procs.interleaved_arrays(yield "glInterleavedArrays")
      @proc_normal_pointer = Procs.normal_pointer(yield "glNormalPointer")
      @proc_tex_coord_pointer = Procs.tex_coord_pointer(yield "glTexCoordPointer")
      @proc_vertex_pointer = Procs.vertex_pointer(yield "glVertexPointer")
      @proc_are_textures_resident = Procs.are_textures_resident(yield "glAreTexturesResident")
      @proc_prioritize_textures = Procs.prioritize_textures(yield "glPrioritizeTextures")
      @proc_index_ub = Procs.index_ub(yield "glIndexub")
      @proc_index_ubv = Procs.index_ubv(yield "glIndexubv")
      @proc_pop_client_attrib = Procs.pop_client_attrib(yield "glPopClientAttrib")
      @proc_push_client_attrib = Procs.push_client_attrib(yield "glPushClientAttrib")
      @proc_draw_range_elements = Procs.draw_range_elements(yield "glDrawRangeElements")
      @proc_tex_image_3d = Procs.tex_image_3d(yield "glTexImage3D")
      @proc_tex_sub_image_3d = Procs.tex_sub_image_3d(yield "glTexSubImage3D")
      @proc_copy_tex_sub_image_3d = Procs.copy_tex_sub_image_3d(yield "glCopyTexSubImage3D")
      @proc_active_texture = Procs.active_texture(yield "glActiveTexture")
      @proc_sample_coverage = Procs.sample_coverage(yield "glSampleCoverage")
      @proc_compressed_tex_image_3d = Procs.compressed_tex_image_3d(yield "glCompressedTexImage3D")
      @proc_compressed_tex_image_2d = Procs.compressed_tex_image_2d(yield "glCompressedTexImage2D")
      @proc_compressed_tex_image_1d = Procs.compressed_tex_image_1d(yield "glCompressedTexImage1D")
      @proc_compressed_tex_sub_image_3d = Procs.compressed_tex_sub_image_3d(yield "glCompressedTexSubImage3D")
      @proc_compressed_tex_sub_image_2d = Procs.compressed_tex_sub_image_2d(yield "glCompressedTexSubImage2D")
      @proc_compressed_tex_sub_image_1d = Procs.compressed_tex_sub_image_1d(yield "glCompressedTexSubImage1D")
      @proc_get_compressed_tex_image = Procs.get_compressed_tex_image(yield "glGetCompressedTexImage")
      @proc_client_active_texture = Procs.client_active_texture(yield "glClientActiveTexture")
      @proc_multi_tex_coord_1d = Procs.multi_tex_coord_1d(yield "glMultiTexCoord1d")
      @proc_multi_tex_coord_1dv = Procs.multi_tex_coord_1dv(yield "glMultiTexCoord1dv")
      @proc_multi_tex_coord_1f = Procs.multi_tex_coord_1f(yield "glMultiTexCoord1f")
      @proc_multi_tex_coord_1fv = Procs.multi_tex_coord_1fv(yield "glMultiTexCoord1fv")
      @proc_multi_tex_coord_1i = Procs.multi_tex_coord_1i(yield "glMultiTexCoord1i")
      @proc_multi_tex_coord_1iv = Procs.multi_tex_coord_1iv(yield "glMultiTexCoord1iv")
      @proc_multi_tex_coord_1s = Procs.multi_tex_coord_1s(yield "glMultiTexCoord1s")
      @proc_multi_tex_coord_1sv = Procs.multi_tex_coord_1sv(yield "glMultiTexCoord1sv")
      @proc_multi_tex_coord_2d = Procs.multi_tex_coord_2d(yield "glMultiTexCoord2d")
      @proc_multi_tex_coord_2dv = Procs.multi_tex_coord_2dv(yield "glMultiTexCoord2dv")
      @proc_multi_tex_coord_2f = Procs.multi_tex_coord_2f(yield "glMultiTexCoord2f")
      @proc_multi_tex_coord_2fv = Procs.multi_tex_coord_2fv(yield "glMultiTexCoord2fv")
      @proc_multi_tex_coord_2i = Procs.multi_tex_coord_2i(yield "glMultiTexCoord2i")
      @proc_multi_tex_coord_2iv = Procs.multi_tex_coord_2iv(yield "glMultiTexCoord2iv")
      @proc_multi_tex_coord_2s = Procs.multi_tex_coord_2s(yield "glMultiTexCoord2s")
      @proc_multi_tex_coord_2sv = Procs.multi_tex_coord_2sv(yield "glMultiTexCoord2sv")
      @proc_multi_tex_coord_3d = Procs.multi_tex_coord_3d(yield "glMultiTexCoord3d")
      @proc_multi_tex_coord_3dv = Procs.multi_tex_coord_3dv(yield "glMultiTexCoord3dv")
      @proc_multi_tex_coord_3f = Procs.multi_tex_coord_3f(yield "glMultiTexCoord3f")
      @proc_multi_tex_coord_3fv = Procs.multi_tex_coord_3fv(yield "glMultiTexCoord3fv")
      @proc_multi_tex_coord_3i = Procs.multi_tex_coord_3i(yield "glMultiTexCoord3i")
      @proc_multi_tex_coord_3iv = Procs.multi_tex_coord_3iv(yield "glMultiTexCoord3iv")
      @proc_multi_tex_coord_3s = Procs.multi_tex_coord_3s(yield "glMultiTexCoord3s")
      @proc_multi_tex_coord_3sv = Procs.multi_tex_coord_3sv(yield "glMultiTexCoord3sv")
      @proc_multi_tex_coord_4d = Procs.multi_tex_coord_4d(yield "glMultiTexCoord4d")
      @proc_multi_tex_coord_4dv = Procs.multi_tex_coord_4dv(yield "glMultiTexCoord4dv")
      @proc_multi_tex_coord_4f = Procs.multi_tex_coord_4f(yield "glMultiTexCoord4f")
      @proc_multi_tex_coord_4fv = Procs.multi_tex_coord_4fv(yield "glMultiTexCoord4fv")
      @proc_multi_tex_coord_4i = Procs.multi_tex_coord_4i(yield "glMultiTexCoord4i")
      @proc_multi_tex_coord_4iv = Procs.multi_tex_coord_4iv(yield "glMultiTexCoord4iv")
      @proc_multi_tex_coord_4s = Procs.multi_tex_coord_4s(yield "glMultiTexCoord4s")
      @proc_multi_tex_coord_4sv = Procs.multi_tex_coord_4sv(yield "glMultiTexCoord4sv")
      @proc_load_transpose_matrix_f = Procs.load_transpose_matrix_f(yield "glLoadTransposeMatrixf")
      @proc_load_transpose_matrix_d = Procs.load_transpose_matrix_d(yield "glLoadTransposeMatrixd")
      @proc_mult_transpose_matrix_f = Procs.mult_transpose_matrix_f(yield "glMultTransposeMatrixf")
      @proc_mult_transpose_matrix_d = Procs.mult_transpose_matrix_d(yield "glMultTransposeMatrixd")
      @proc_blend_func_separate = Procs.blend_func_separate(yield "glBlendFuncSeparate")
      @proc_multi_draw_arrays = Procs.multi_draw_arrays(yield "glMultiDrawArrays")
      @proc_multi_draw_elements = Procs.multi_draw_elements(yield "glMultiDrawElements")
      @proc_point_parameter_f = Procs.point_parameter_f(yield "glPointParameterf")
      @proc_point_parameter_fv = Procs.point_parameter_fv(yield "glPointParameterfv")
      @proc_point_parameter_i = Procs.point_parameter_i(yield "glPointParameteri")
      @proc_point_parameter_iv = Procs.point_parameter_iv(yield "glPointParameteriv")
      @proc_fog_coord_f = Procs.fog_coord_f(yield "glFogCoordf")
      @proc_fog_coord_fv = Procs.fog_coord_fv(yield "glFogCoordfv")
      @proc_fog_coord_d = Procs.fog_coord_d(yield "glFogCoordd")
      @proc_fog_coord_dv = Procs.fog_coord_dv(yield "glFogCoorddv")
      @proc_fog_coord_pointer = Procs.fog_coord_pointer(yield "glFogCoordPointer")
      @proc_secondary_color_3b = Procs.secondary_color_3b(yield "glSecondaryColor3b")
      @proc_secondary_color_3bv = Procs.secondary_color_3bv(yield "glSecondaryColor3bv")
      @proc_secondary_color_3d = Procs.secondary_color_3d(yield "glSecondaryColor3d")
      @proc_secondary_color_3dv = Procs.secondary_color_3dv(yield "glSecondaryColor3dv")
      @proc_secondary_color_3f = Procs.secondary_color_3f(yield "glSecondaryColor3f")
      @proc_secondary_color_3fv = Procs.secondary_color_3fv(yield "glSecondaryColor3fv")
      @proc_secondary_color_3i = Procs.secondary_color_3i(yield "glSecondaryColor3i")
      @proc_secondary_color_3iv = Procs.secondary_color_3iv(yield "glSecondaryColor3iv")
      @proc_secondary_color_3s = Procs.secondary_color_3s(yield "glSecondaryColor3s")
      @proc_secondary_color_3sv = Procs.secondary_color_3sv(yield "glSecondaryColor3sv")
      @proc_secondary_color_3ub = Procs.secondary_color_3ub(yield "glSecondaryColor3ub")
      @proc_secondary_color_3ubv = Procs.secondary_color_3ubv(yield "glSecondaryColor3ubv")
      @proc_secondary_color_3ui = Procs.secondary_color_3ui(yield "glSecondaryColor3ui")
      @proc_secondary_color_3uiv = Procs.secondary_color_3uiv(yield "glSecondaryColor3uiv")
      @proc_secondary_color_3us = Procs.secondary_color_3us(yield "glSecondaryColor3us")
      @proc_secondary_color_3usv = Procs.secondary_color_3usv(yield "glSecondaryColor3usv")
      @proc_secondary_color_pointer = Procs.secondary_color_pointer(yield "glSecondaryColorPointer")
      @proc_window_pos_2d = Procs.window_pos_2d(yield "glWindowPos2d")
      @proc_window_pos_2dv = Procs.window_pos_2dv(yield "glWindowPos2dv")
      @proc_window_pos_2f = Procs.window_pos_2f(yield "glWindowPos2f")
      @proc_window_pos_2fv = Procs.window_pos_2fv(yield "glWindowPos2fv")
      @proc_window_pos_2i = Procs.window_pos_2i(yield "glWindowPos2i")
      @proc_window_pos_2iv = Procs.window_pos_2iv(yield "glWindowPos2iv")
      @proc_window_pos_2s = Procs.window_pos_2s(yield "glWindowPos2s")
      @proc_window_pos_2sv = Procs.window_pos_2sv(yield "glWindowPos2sv")
      @proc_window_pos_3d = Procs.window_pos_3d(yield "glWindowPos3d")
      @proc_window_pos_3dv = Procs.window_pos_3dv(yield "glWindowPos3dv")
      @proc_window_pos_3f = Procs.window_pos_3f(yield "glWindowPos3f")
      @proc_window_pos_3fv = Procs.window_pos_3fv(yield "glWindowPos3fv")
      @proc_window_pos_3i = Procs.window_pos_3i(yield "glWindowPos3i")
      @proc_window_pos_3iv = Procs.window_pos_3iv(yield "glWindowPos3iv")
      @proc_window_pos_3s = Procs.window_pos_3s(yield "glWindowPos3s")
      @proc_window_pos_3sv = Procs.window_pos_3sv(yield "glWindowPos3sv")
      @proc_blend_color = Procs.blend_color(yield "glBlendColor")
      @proc_blend_equation = Procs.blend_equation(yield "glBlendEquation")
      @proc_gen_queries = Procs.gen_queries(yield "glGenQueries")
      @proc_delete_queries = Procs.delete_queries(yield "glDeleteQueries")
      @proc_is_query = Procs.is_query(yield "glIsQuery")
      @proc_begin_query = Procs.begin_query(yield "glBeginQuery")
      @proc_end_query = Procs.end_query(yield "glEndQuery")
      @proc_get_query_iv = Procs.get_query_iv(yield "glGetQueryiv")
      @proc_get_query_object_iv = Procs.get_query_object_iv(yield "glGetQueryObjectiv")
      @proc_get_query_object_uiv = Procs.get_query_object_uiv(yield "glGetQueryObjectuiv")
      @proc_bind_buffer = Procs.bind_buffer(yield "glBindBuffer")
      @proc_delete_buffers = Procs.delete_buffers(yield "glDeleteBuffers")
      @proc_gen_buffers = Procs.gen_buffers(yield "glGenBuffers")
      @proc_is_buffer = Procs.is_buffer(yield "glIsBuffer")
      @proc_buffer_data = Procs.buffer_data(yield "glBufferData")
      @proc_buffer_sub_data = Procs.buffer_sub_data(yield "glBufferSubData")
      @proc_get_buffer_sub_data = Procs.get_buffer_sub_data(yield "glGetBufferSubData")
      @proc_map_buffer = Procs.map_buffer(yield "glMapBuffer")
      @proc_unmap_buffer = Procs.unmap_buffer(yield "glUnmapBuffer")
      @proc_get_buffer_parameter_iv = Procs.get_buffer_parameter_iv(yield "glGetBufferParameteriv")
      @proc_get_buffer_pointer_v = Procs.get_buffer_pointer_v(yield "glGetBufferPointerv")
      @proc_blend_equation_separate = Procs.blend_equation_separate(yield "glBlendEquationSeparate")
      @proc_draw_buffers = Procs.draw_buffers(yield "glDrawBuffers")
      @proc_stencil_op_separate = Procs.stencil_op_separate(yield "glStencilOpSeparate")
      @proc_stencil_func_separate = Procs.stencil_func_separate(yield "glStencilFuncSeparate")
      @proc_stencil_mask_separate = Procs.stencil_mask_separate(yield "glStencilMaskSeparate")
      @proc_attach_shader = Procs.attach_shader(yield "glAttachShader")
      @proc_bind_attrib_location = Procs.bind_attrib_location(yield "glBindAttribLocation")
      @proc_compile_shader = Procs.compile_shader(yield "glCompileShader")
      @proc_create_program = Procs.create_program(yield "glCreateProgram")
      @proc_create_shader = Procs.create_shader(yield "glCreateShader")
      @proc_delete_program = Procs.delete_program(yield "glDeleteProgram")
      @proc_delete_shader = Procs.delete_shader(yield "glDeleteShader")
      @proc_detach_shader = Procs.detach_shader(yield "glDetachShader")
      @proc_disable_vertex_attrib_array = Procs.disable_vertex_attrib_array(yield "glDisableVertexAttribArray")
      @proc_enable_vertex_attrib_array = Procs.enable_vertex_attrib_array(yield "glEnableVertexAttribArray")
      @proc_get_active_attrib = Procs.get_active_attrib(yield "glGetActiveAttrib")
      @proc_get_active_uniform = Procs.get_active_uniform(yield "glGetActiveUniform")
      @proc_get_attached_shaders = Procs.get_attached_shaders(yield "glGetAttachedShaders")
      @proc_get_attrib_location = Procs.get_attrib_location(yield "glGetAttribLocation")
      @proc_get_program_iv = Procs.get_program_iv(yield "glGetProgramiv")
      @proc_get_program_info_log = Procs.get_program_info_log(yield "glGetProgramInfoLog")
      @proc_get_shader_iv = Procs.get_shader_iv(yield "glGetShaderiv")
      @proc_get_shader_info_log = Procs.get_shader_info_log(yield "glGetShaderInfoLog")
      @proc_get_shader_source = Procs.get_shader_source(yield "glGetShaderSource")
      @proc_get_uniform_location = Procs.get_uniform_location(yield "glGetUniformLocation")
      @proc_get_uniform_fv = Procs.get_uniform_fv(yield "glGetUniformfv")
      @proc_get_uniform_iv = Procs.get_uniform_iv(yield "glGetUniformiv")
      @proc_get_vertex_attrib_dv = Procs.get_vertex_attrib_dv(yield "glGetVertexAttribdv")
      @proc_get_vertex_attrib_fv = Procs.get_vertex_attrib_fv(yield "glGetVertexAttribfv")
      @proc_get_vertex_attrib_iv = Procs.get_vertex_attrib_iv(yield "glGetVertexAttribiv")
      @proc_get_vertex_attrib_pointer_v = Procs.get_vertex_attrib_pointer_v(yield "glGetVertexAttribPointerv")
      @proc_is_program = Procs.is_program(yield "glIsProgram")
      @proc_is_shader = Procs.is_shader(yield "glIsShader")
      @proc_link_program = Procs.link_program(yield "glLinkProgram")
      @proc_shader_source = Procs.shader_source(yield "glShaderSource")
      @proc_use_program = Procs.use_program(yield "glUseProgram")
      @proc_uniform_1f = Procs.uniform_1f(yield "glUniform1f")
      @proc_uniform_2f = Procs.uniform_2f(yield "glUniform2f")
      @proc_uniform_3f = Procs.uniform_3f(yield "glUniform3f")
      @proc_uniform_4f = Procs.uniform_4f(yield "glUniform4f")
      @proc_uniform_1i = Procs.uniform_1i(yield "glUniform1i")
      @proc_uniform_2i = Procs.uniform_2i(yield "glUniform2i")
      @proc_uniform_3i = Procs.uniform_3i(yield "glUniform3i")
      @proc_uniform_4i = Procs.uniform_4i(yield "glUniform4i")
      @proc_uniform_1fv = Procs.uniform_1fv(yield "glUniform1fv")
      @proc_uniform_2fv = Procs.uniform_2fv(yield "glUniform2fv")
      @proc_uniform_3fv = Procs.uniform_3fv(yield "glUniform3fv")
      @proc_uniform_4fv = Procs.uniform_4fv(yield "glUniform4fv")
      @proc_uniform_1iv = Procs.uniform_1iv(yield "glUniform1iv")
      @proc_uniform_2iv = Procs.uniform_2iv(yield "glUniform2iv")
      @proc_uniform_3iv = Procs.uniform_3iv(yield "glUniform3iv")
      @proc_uniform_4iv = Procs.uniform_4iv(yield "glUniform4iv")
      @proc_uniform_matrix2_fv = Procs.uniform_matrix2_fv(yield "glUniformMatrix2fv")
      @proc_uniform_matrix3_fv = Procs.uniform_matrix3_fv(yield "glUniformMatrix3fv")
      @proc_uniform_matrix4_fv = Procs.uniform_matrix4_fv(yield "glUniformMatrix4fv")
      @proc_validate_program = Procs.validate_program(yield "glValidateProgram")
      @proc_vertex_attrib_1d = Procs.vertex_attrib_1d(yield "glVertexAttrib1d")
      @proc_vertex_attrib_1dv = Procs.vertex_attrib_1dv(yield "glVertexAttrib1dv")
      @proc_vertex_attrib_1f = Procs.vertex_attrib_1f(yield "glVertexAttrib1f")
      @proc_vertex_attrib_1fv = Procs.vertex_attrib_1fv(yield "glVertexAttrib1fv")
      @proc_vertex_attrib_1s = Procs.vertex_attrib_1s(yield "glVertexAttrib1s")
      @proc_vertex_attrib_1sv = Procs.vertex_attrib_1sv(yield "glVertexAttrib1sv")
      @proc_vertex_attrib_2d = Procs.vertex_attrib_2d(yield "glVertexAttrib2d")
      @proc_vertex_attrib_2dv = Procs.vertex_attrib_2dv(yield "glVertexAttrib2dv")
      @proc_vertex_attrib_2f = Procs.vertex_attrib_2f(yield "glVertexAttrib2f")
      @proc_vertex_attrib_2fv = Procs.vertex_attrib_2fv(yield "glVertexAttrib2fv")
      @proc_vertex_attrib_2s = Procs.vertex_attrib_2s(yield "glVertexAttrib2s")
      @proc_vertex_attrib_2sv = Procs.vertex_attrib_2sv(yield "glVertexAttrib2sv")
      @proc_vertex_attrib_3d = Procs.vertex_attrib_3d(yield "glVertexAttrib3d")
      @proc_vertex_attrib_3dv = Procs.vertex_attrib_3dv(yield "glVertexAttrib3dv")
      @proc_vertex_attrib_3f = Procs.vertex_attrib_3f(yield "glVertexAttrib3f")
      @proc_vertex_attrib_3fv = Procs.vertex_attrib_3fv(yield "glVertexAttrib3fv")
      @proc_vertex_attrib_3s = Procs.vertex_attrib_3s(yield "glVertexAttrib3s")
      @proc_vertex_attrib_3sv = Procs.vertex_attrib_3sv(yield "glVertexAttrib3sv")
      @proc_vertex_attrib_4nbv = Procs.vertex_attrib_4nbv(yield "glVertexAttrib4Nbv")
      @proc_vertex_attrib_4niv = Procs.vertex_attrib_4niv(yield "glVertexAttrib4Niv")
      @proc_vertex_attrib_4nsv = Procs.vertex_attrib_4nsv(yield "glVertexAttrib4Nsv")
      @proc_vertex_attrib_4nub = Procs.vertex_attrib_4nub(yield "glVertexAttrib4Nub")
      @proc_vertex_attrib_4nubv = Procs.vertex_attrib_4nubv(yield "glVertexAttrib4Nubv")
      @proc_vertex_attrib_4nuiv = Procs.vertex_attrib_4nuiv(yield "glVertexAttrib4Nuiv")
      @proc_vertex_attrib_4nusv = Procs.vertex_attrib_4nusv(yield "glVertexAttrib4Nusv")
      @proc_vertex_attrib_4bv = Procs.vertex_attrib_4bv(yield "glVertexAttrib4bv")
      @proc_vertex_attrib_4d = Procs.vertex_attrib_4d(yield "glVertexAttrib4d")
      @proc_vertex_attrib_4dv = Procs.vertex_attrib_4dv(yield "glVertexAttrib4dv")
      @proc_vertex_attrib_4f = Procs.vertex_attrib_4f(yield "glVertexAttrib4f")
      @proc_vertex_attrib_4fv = Procs.vertex_attrib_4fv(yield "glVertexAttrib4fv")
      @proc_vertex_attrib_4iv = Procs.vertex_attrib_4iv(yield "glVertexAttrib4iv")
      @proc_vertex_attrib_4s = Procs.vertex_attrib_4s(yield "glVertexAttrib4s")
      @proc_vertex_attrib_4sv = Procs.vertex_attrib_4sv(yield "glVertexAttrib4sv")
      @proc_vertex_attrib_4ubv = Procs.vertex_attrib_4ubv(yield "glVertexAttrib4ubv")
      @proc_vertex_attrib_4uiv = Procs.vertex_attrib_4uiv(yield "glVertexAttrib4uiv")
      @proc_vertex_attrib_4usv = Procs.vertex_attrib_4usv(yield "glVertexAttrib4usv")
      @proc_vertex_attrib_pointer = Procs.vertex_attrib_pointer(yield "glVertexAttribPointer")
      @proc_uniform_matrix2x3_fv = Procs.uniform_matrix2x3_fv(yield "glUniformMatrix2x3fv")
      @proc_uniform_matrix3x2_fv = Procs.uniform_matrix3x2_fv(yield "glUniformMatrix3x2fv")
      @proc_uniform_matrix2x4_fv = Procs.uniform_matrix2x4_fv(yield "glUniformMatrix2x4fv")
      @proc_uniform_matrix4x2_fv = Procs.uniform_matrix4x2_fv(yield "glUniformMatrix4x2fv")
      @proc_uniform_matrix3x4_fv = Procs.uniform_matrix3x4_fv(yield "glUniformMatrix3x4fv")
      @proc_uniform_matrix4x3_fv = Procs.uniform_matrix4x3_fv(yield "glUniformMatrix4x3fv")
      @proc_color_mask_i = Procs.color_mask_i(yield "glColorMaski")
      @proc_get_boolean_i_v = Procs.get_boolean_i_v(yield "glGetBooleani_v")
      @proc_get_integer_i_v = Procs.get_integer_i_v(yield "glGetIntegeri_v")
      @proc_enable_i = Procs.enable_i(yield "glEnablei")
      @proc_disable_i = Procs.disable_i(yield "glDisablei")
      @proc_is_enabled_i = Procs.is_enabled_i(yield "glIsEnabledi")
      @proc_begin_transform_feedback = Procs.begin_transform_feedback(yield "glBeginTransformFeedback")
      @proc_end_transform_feedback = Procs.end_transform_feedback(yield "glEndTransformFeedback")
      @proc_bind_buffer_range = Procs.bind_buffer_range(yield "glBindBufferRange")
      @proc_bind_buffer_base = Procs.bind_buffer_base(yield "glBindBufferBase")
      @proc_transform_feedback_varyings = Procs.transform_feedback_varyings(yield "glTransformFeedbackVaryings")
      @proc_get_transform_feedback_varying = Procs.get_transform_feedback_varying(yield "glGetTransformFeedbackVarying")
      @proc_clamp_color = Procs.clamp_color(yield "glClampColor")
      @proc_begin_conditional_render = Procs.begin_conditional_render(yield "glBeginConditionalRender")
      @proc_end_conditional_render = Procs.end_conditional_render(yield "glEndConditionalRender")
      @proc_vertex_attrib_i_pointer = Procs.vertex_attrib_i_pointer(yield "glVertexAttribIPointer")
      @proc_get_vertex_attrib_i_iv = Procs.get_vertex_attrib_i_iv(yield "glGetVertexAttribIiv")
      @proc_get_vertex_attrib_i_uiv = Procs.get_vertex_attrib_i_uiv(yield "glGetVertexAttribIuiv")
      @proc_vertex_attrib_i_1i = Procs.vertex_attrib_i_1i(yield "glVertexAttribI1i")
      @proc_vertex_attrib_i_2i = Procs.vertex_attrib_i_2i(yield "glVertexAttribI2i")
      @proc_vertex_attrib_i_3i = Procs.vertex_attrib_i_3i(yield "glVertexAttribI3i")
      @proc_vertex_attrib_i_4i = Procs.vertex_attrib_i_4i(yield "glVertexAttribI4i")
      @proc_vertex_attrib_i_1ui = Procs.vertex_attrib_i_1ui(yield "glVertexAttribI1ui")
      @proc_vertex_attrib_i_2ui = Procs.vertex_attrib_i_2ui(yield "glVertexAttribI2ui")
      @proc_vertex_attrib_i_3ui = Procs.vertex_attrib_i_3ui(yield "glVertexAttribI3ui")
      @proc_vertex_attrib_i_4ui = Procs.vertex_attrib_i_4ui(yield "glVertexAttribI4ui")
      @proc_vertex_attrib_i_1iv = Procs.vertex_attrib_i_1iv(yield "glVertexAttribI1iv")
      @proc_vertex_attrib_i_2iv = Procs.vertex_attrib_i_2iv(yield "glVertexAttribI2iv")
      @proc_vertex_attrib_i_3iv = Procs.vertex_attrib_i_3iv(yield "glVertexAttribI3iv")
      @proc_vertex_attrib_i_4iv = Procs.vertex_attrib_i_4iv(yield "glVertexAttribI4iv")
      @proc_vertex_attrib_i_1uiv = Procs.vertex_attrib_i_1uiv(yield "glVertexAttribI1uiv")
      @proc_vertex_attrib_i_2uiv = Procs.vertex_attrib_i_2uiv(yield "glVertexAttribI2uiv")
      @proc_vertex_attrib_i_3uiv = Procs.vertex_attrib_i_3uiv(yield "glVertexAttribI3uiv")
      @proc_vertex_attrib_i_4uiv = Procs.vertex_attrib_i_4uiv(yield "glVertexAttribI4uiv")
      @proc_vertex_attrib_i_4bv = Procs.vertex_attrib_i_4bv(yield "glVertexAttribI4bv")
      @proc_vertex_attrib_i_4sv = Procs.vertex_attrib_i_4sv(yield "glVertexAttribI4sv")
      @proc_vertex_attrib_i_4ubv = Procs.vertex_attrib_i_4ubv(yield "glVertexAttribI4ubv")
      @proc_vertex_attrib_i_4usv = Procs.vertex_attrib_i_4usv(yield "glVertexAttribI4usv")
      @proc_get_uniform_uiv = Procs.get_uniform_uiv(yield "glGetUniformuiv")
      @proc_bind_frag_data_location = Procs.bind_frag_data_location(yield "glBindFragDataLocation")
      @proc_get_frag_data_location = Procs.get_frag_data_location(yield "glGetFragDataLocation")
      @proc_uniform_1ui = Procs.uniform_1ui(yield "glUniform1ui")
      @proc_uniform_2ui = Procs.uniform_2ui(yield "glUniform2ui")
      @proc_uniform_3ui = Procs.uniform_3ui(yield "glUniform3ui")
      @proc_uniform_4ui = Procs.uniform_4ui(yield "glUniform4ui")
      @proc_uniform_1uiv = Procs.uniform_1uiv(yield "glUniform1uiv")
      @proc_uniform_2uiv = Procs.uniform_2uiv(yield "glUniform2uiv")
      @proc_uniform_3uiv = Procs.uniform_3uiv(yield "glUniform3uiv")
      @proc_uniform_4uiv = Procs.uniform_4uiv(yield "glUniform4uiv")
      @proc_tex_parameter_i_iv = Procs.tex_parameter_i_iv(yield "glTexParameterIiv")
      @proc_tex_parameter_i_uiv = Procs.tex_parameter_i_uiv(yield "glTexParameterIuiv")
      @proc_get_tex_parameter_i_iv = Procs.get_tex_parameter_i_iv(yield "glGetTexParameterIiv")
      @proc_get_tex_parameter_i_uiv = Procs.get_tex_parameter_i_uiv(yield "glGetTexParameterIuiv")
      @proc_clear_buffer_iv = Procs.clear_buffer_iv(yield "glClearBufferiv")
      @proc_clear_buffer_uiv = Procs.clear_buffer_uiv(yield "glClearBufferuiv")
      @proc_clear_buffer_fv = Procs.clear_buffer_fv(yield "glClearBufferfv")
      @proc_clear_buffer_fi = Procs.clear_buffer_fi(yield "glClearBufferfi")
      @proc_get_string_i = Procs.get_string_i(yield "glGetStringi")
      @proc_is_renderbuffer = Procs.is_renderbuffer(yield "glIsRenderbuffer")
      @proc_bind_renderbuffer = Procs.bind_renderbuffer(yield "glBindRenderbuffer")
      @proc_delete_renderbuffers = Procs.delete_renderbuffers(yield "glDeleteRenderbuffers")
      @proc_gen_renderbuffers = Procs.gen_renderbuffers(yield "glGenRenderbuffers")
      @proc_renderbuffer_storage = Procs.renderbuffer_storage(yield "glRenderbufferStorage")
      @proc_get_renderbuffer_parameter_iv = Procs.get_renderbuffer_parameter_iv(yield "glGetRenderbufferParameteriv")
      @proc_is_framebuffer = Procs.is_framebuffer(yield "glIsFramebuffer")
      @proc_bind_framebuffer = Procs.bind_framebuffer(yield "glBindFramebuffer")
      @proc_delete_framebuffers = Procs.delete_framebuffers(yield "glDeleteFramebuffers")
      @proc_gen_framebuffers = Procs.gen_framebuffers(yield "glGenFramebuffers")
      @proc_check_framebuffer_status = Procs.check_framebuffer_status(yield "glCheckFramebufferStatus")
      @proc_framebuffer_texture_1d = Procs.framebuffer_texture_1d(yield "glFramebufferTexture1D")
      @proc_framebuffer_texture_2d = Procs.framebuffer_texture_2d(yield "glFramebufferTexture2D")
      @proc_framebuffer_texture_3d = Procs.framebuffer_texture_3d(yield "glFramebufferTexture3D")
      @proc_framebuffer_renderbuffer = Procs.framebuffer_renderbuffer(yield "glFramebufferRenderbuffer")
      @proc_get_framebuffer_attachment_parameter_iv = Procs.get_framebuffer_attachment_parameter_iv(yield "glGetFramebufferAttachmentParameteriv")
      @proc_generate_mipmap = Procs.generate_mipmap(yield "glGenerateMipmap")
      @proc_blit_framebuffer = Procs.blit_framebuffer(yield "glBlitFramebuffer")
      @proc_renderbuffer_storage_multisample = Procs.renderbuffer_storage_multisample(yield "glRenderbufferStorageMultisample")
      @proc_framebuffer_texture_layer = Procs.framebuffer_texture_layer(yield "glFramebufferTextureLayer")
      @proc_map_buffer_range = Procs.map_buffer_range(yield "glMapBufferRange")
      @proc_flush_mapped_buffer_range = Procs.flush_mapped_buffer_range(yield "glFlushMappedBufferRange")
      @proc_bind_vertex_array = Procs.bind_vertex_array(yield "glBindVertexArray")
      @proc_delete_vertex_arrays = Procs.delete_vertex_arrays(yield "glDeleteVertexArrays")
      @proc_gen_vertex_arrays = Procs.gen_vertex_arrays(yield "glGenVertexArrays")
      @proc_is_vertex_array = Procs.is_vertex_array(yield "glIsVertexArray")
      @proc_draw_arrays_instanced = Procs.draw_arrays_instanced(yield "glDrawArraysInstanced")
      @proc_draw_elements_instanced = Procs.draw_elements_instanced(yield "glDrawElementsInstanced")
      @proc_tex_buffer = Procs.tex_buffer(yield "glTexBuffer")
      @proc_primitive_restart_index = Procs.primitive_restart_index(yield "glPrimitiveRestartIndex")
      @proc_copy_buffer_sub_data = Procs.copy_buffer_sub_data(yield "glCopyBufferSubData")
      @proc_get_uniform_indices = Procs.get_uniform_indices(yield "glGetUniformIndices")
      @proc_get_active_uniforms_iv = Procs.get_active_uniforms_iv(yield "glGetActiveUniformsiv")
      @proc_get_active_uniform_name = Procs.get_active_uniform_name(yield "glGetActiveUniformName")
      @proc_get_uniform_block_index = Procs.get_uniform_block_index(yield "glGetUniformBlockIndex")
      @proc_get_active_uniform_block_iv = Procs.get_active_uniform_block_iv(yield "glGetActiveUniformBlockiv")
      @proc_get_active_uniform_block_name = Procs.get_active_uniform_block_name(yield "glGetActiveUniformBlockName")
      @proc_uniform_block_binding = Procs.uniform_block_binding(yield "glUniformBlockBinding")
      @proc_draw_elements_base_vertex = Procs.draw_elements_base_vertex(yield "glDrawElementsBaseVertex")
      @proc_draw_range_elements_base_vertex = Procs.draw_range_elements_base_vertex(yield "glDrawRangeElementsBaseVertex")
      @proc_draw_elements_instanced_base_vertex = Procs.draw_elements_instanced_base_vertex(yield "glDrawElementsInstancedBaseVertex")
      @proc_multi_draw_elements_base_vertex = Procs.multi_draw_elements_base_vertex(yield "glMultiDrawElementsBaseVertex")
      @proc_provoking_vertex = Procs.provoking_vertex(yield "glProvokingVertex")
      @proc_fence_sync = Procs.fence_sync(yield "glFenceSync")
      @proc_is_sync = Procs.is_sync(yield "glIsSync")
      @proc_delete_sync = Procs.delete_sync(yield "glDeleteSync")
      @proc_client_wait_sync = Procs.client_wait_sync(yield "glClientWaitSync")
      @proc_wait_sync = Procs.wait_sync(yield "glWaitSync")
      @proc_get_integer_64v = Procs.get_integer_64v(yield "glGetInteger64v")
      @proc_get_sync_iv = Procs.get_sync_iv(yield "glGetSynciv")
      @proc_get_integer_64i_v = Procs.get_integer_64i_v(yield "glGetInteger64i_v")
      @proc_get_buffer_parameter_i64v = Procs.get_buffer_parameter_i64v(yield "glGetBufferParameteri64v")
      @proc_framebuffer_texture = Procs.framebuffer_texture(yield "glFramebufferTexture")
      @proc_tex_image_2d_multisample = Procs.tex_image_2d_multisample(yield "glTexImage2DMultisample")
      @proc_tex_image_3d_multisample = Procs.tex_image_3d_multisample(yield "glTexImage3DMultisample")
      @proc_get_multisample_fv = Procs.get_multisample_fv(yield "glGetMultisamplefv")
      @proc_sample_mask_i = Procs.sample_mask_i(yield "glSampleMaski")
      @proc_bind_frag_data_location_indexed = Procs.bind_frag_data_location_indexed(yield "glBindFragDataLocationIndexed")
      @proc_get_frag_data_index = Procs.get_frag_data_index(yield "glGetFragDataIndex")
      @proc_gen_samplers = Procs.gen_samplers(yield "glGenSamplers")
      @proc_delete_samplers = Procs.delete_samplers(yield "glDeleteSamplers")
      @proc_is_sampler = Procs.is_sampler(yield "glIsSampler")
      @proc_bind_sampler = Procs.bind_sampler(yield "glBindSampler")
      @proc_sampler_parameter_i = Procs.sampler_parameter_i(yield "glSamplerParameteri")
      @proc_sampler_parameter_iv = Procs.sampler_parameter_iv(yield "glSamplerParameteriv")
      @proc_sampler_parameter_f = Procs.sampler_parameter_f(yield "glSamplerParameterf")
      @proc_sampler_parameter_fv = Procs.sampler_parameter_fv(yield "glSamplerParameterfv")
      @proc_sampler_parameter_i_iv = Procs.sampler_parameter_i_iv(yield "glSamplerParameterIiv")
      @proc_sampler_parameter_i_uiv = Procs.sampler_parameter_i_uiv(yield "glSamplerParameterIuiv")
      @proc_get_sampler_parameter_iv = Procs.get_sampler_parameter_iv(yield "glGetSamplerParameteriv")
      @proc_get_sampler_parameter_i_iv = Procs.get_sampler_parameter_i_iv(yield "glGetSamplerParameterIiv")
      @proc_get_sampler_parameter_fv = Procs.get_sampler_parameter_fv(yield "glGetSamplerParameterfv")
      @proc_get_sampler_parameter_i_uiv = Procs.get_sampler_parameter_i_uiv(yield "glGetSamplerParameterIuiv")
      @proc_query_counter = Procs.query_counter(yield "glQueryCounter")
      @proc_get_query_object_i64v = Procs.get_query_object_i64v(yield "glGetQueryObjecti64v")
      @proc_get_query_object_ui64v = Procs.get_query_object_ui64v(yield "glGetQueryObjectui64v")
      @proc_vertex_attrib_divisor = Procs.vertex_attrib_divisor(yield "glVertexAttribDivisor")
      @proc_vertex_attrib_p_1ui = Procs.vertex_attrib_p_1ui(yield "glVertexAttribP1ui")
      @proc_vertex_attrib_p_1uiv = Procs.vertex_attrib_p_1uiv(yield "glVertexAttribP1uiv")
      @proc_vertex_attrib_p_2ui = Procs.vertex_attrib_p_2ui(yield "glVertexAttribP2ui")
      @proc_vertex_attrib_p_2uiv = Procs.vertex_attrib_p_2uiv(yield "glVertexAttribP2uiv")
      @proc_vertex_attrib_p_3ui = Procs.vertex_attrib_p_3ui(yield "glVertexAttribP3ui")
      @proc_vertex_attrib_p_3uiv = Procs.vertex_attrib_p_3uiv(yield "glVertexAttribP3uiv")
      @proc_vertex_attrib_p_4ui = Procs.vertex_attrib_p_4ui(yield "glVertexAttribP4ui")
      @proc_vertex_attrib_p_4uiv = Procs.vertex_attrib_p_4uiv(yield "glVertexAttribP4uiv")
      @proc_vertex_p_2ui = Procs.vertex_p_2ui(yield "glVertexP2ui")
      @proc_vertex_p_2uiv = Procs.vertex_p_2uiv(yield "glVertexP2uiv")
      @proc_vertex_p_3ui = Procs.vertex_p_3ui(yield "glVertexP3ui")
      @proc_vertex_p_3uiv = Procs.vertex_p_3uiv(yield "glVertexP3uiv")
      @proc_vertex_p_4ui = Procs.vertex_p_4ui(yield "glVertexP4ui")
      @proc_vertex_p_4uiv = Procs.vertex_p_4uiv(yield "glVertexP4uiv")
      @proc_tex_coord_p_1ui = Procs.tex_coord_p_1ui(yield "glTexCoordP1ui")
      @proc_tex_coord_p_1uiv = Procs.tex_coord_p_1uiv(yield "glTexCoordP1uiv")
      @proc_tex_coord_p_2ui = Procs.tex_coord_p_2ui(yield "glTexCoordP2ui")
      @proc_tex_coord_p_2uiv = Procs.tex_coord_p_2uiv(yield "glTexCoordP2uiv")
      @proc_tex_coord_p_3ui = Procs.tex_coord_p_3ui(yield "glTexCoordP3ui")
      @proc_tex_coord_p_3uiv = Procs.tex_coord_p_3uiv(yield "glTexCoordP3uiv")
      @proc_tex_coord_p_4ui = Procs.tex_coord_p_4ui(yield "glTexCoordP4ui")
      @proc_tex_coord_p_4uiv = Procs.tex_coord_p_4uiv(yield "glTexCoordP4uiv")
      @proc_multi_tex_coord_p_1ui = Procs.multi_tex_coord_p_1ui(yield "glMultiTexCoordP1ui")
      @proc_multi_tex_coord_p_1uiv = Procs.multi_tex_coord_p_1uiv(yield "glMultiTexCoordP1uiv")
      @proc_multi_tex_coord_p_2ui = Procs.multi_tex_coord_p_2ui(yield "glMultiTexCoordP2ui")
      @proc_multi_tex_coord_p_2uiv = Procs.multi_tex_coord_p_2uiv(yield "glMultiTexCoordP2uiv")
      @proc_multi_tex_coord_p_3ui = Procs.multi_tex_coord_p_3ui(yield "glMultiTexCoordP3ui")
      @proc_multi_tex_coord_p_3uiv = Procs.multi_tex_coord_p_3uiv(yield "glMultiTexCoordP3uiv")
      @proc_multi_tex_coord_p_4ui = Procs.multi_tex_coord_p_4ui(yield "glMultiTexCoordP4ui")
      @proc_multi_tex_coord_p_4uiv = Procs.multi_tex_coord_p_4uiv(yield "glMultiTexCoordP4uiv")
      @proc_normal_p_3ui = Procs.normal_p_3ui(yield "glNormalP3ui")
      @proc_normal_p_3uiv = Procs.normal_p_3uiv(yield "glNormalP3uiv")
      @proc_color_p_3ui = Procs.color_p_3ui(yield "glColorP3ui")
      @proc_color_p_3uiv = Procs.color_p_3uiv(yield "glColorP3uiv")
      @proc_color_p_4ui = Procs.color_p_4ui(yield "glColorP4ui")
      @proc_color_p_4uiv = Procs.color_p_4uiv(yield "glColorP4uiv")
      @proc_secondary_color_p_3ui = Procs.secondary_color_p_3ui(yield "glSecondaryColorP3ui")
      @proc_secondary_color_p_3uiv = Procs.secondary_color_p_3uiv(yield "glSecondaryColorP3uiv")
      @proc_min_sample_shading = Procs.min_sample_shading(yield "glMinSampleShading")
      @proc_blend_equation_i = Procs.blend_equation_i(yield "glBlendEquationi")
      @proc_blend_equation_separate_i = Procs.blend_equation_separate_i(yield "glBlendEquationSeparatei")
      @proc_blend_func_i = Procs.blend_func_i(yield "glBlendFunci")
      @proc_blend_func_separate_i = Procs.blend_func_separate_i(yield "glBlendFuncSeparatei")
      @proc_draw_arrays_indirect = Procs.draw_arrays_indirect(yield "glDrawArraysIndirect")
      @proc_draw_elements_indirect = Procs.draw_elements_indirect(yield "glDrawElementsIndirect")
      @proc_uniform_1d = Procs.uniform_1d(yield "glUniform1d")
      @proc_uniform_2d = Procs.uniform_2d(yield "glUniform2d")
      @proc_uniform_3d = Procs.uniform_3d(yield "glUniform3d")
      @proc_uniform_4d = Procs.uniform_4d(yield "glUniform4d")
      @proc_uniform_1dv = Procs.uniform_1dv(yield "glUniform1dv")
      @proc_uniform_2dv = Procs.uniform_2dv(yield "glUniform2dv")
      @proc_uniform_3dv = Procs.uniform_3dv(yield "glUniform3dv")
      @proc_uniform_4dv = Procs.uniform_4dv(yield "glUniform4dv")
      @proc_uniform_matrix2_dv = Procs.uniform_matrix2_dv(yield "glUniformMatrix2dv")
      @proc_uniform_matrix3_dv = Procs.uniform_matrix3_dv(yield "glUniformMatrix3dv")
      @proc_uniform_matrix4_dv = Procs.uniform_matrix4_dv(yield "glUniformMatrix4dv")
      @proc_uniform_matrix2x3_dv = Procs.uniform_matrix2x3_dv(yield "glUniformMatrix2x3dv")
      @proc_uniform_matrix2x4_dv = Procs.uniform_matrix2x4_dv(yield "glUniformMatrix2x4dv")
      @proc_uniform_matrix3x2_dv = Procs.uniform_matrix3x2_dv(yield "glUniformMatrix3x2dv")
      @proc_uniform_matrix3x4_dv = Procs.uniform_matrix3x4_dv(yield "glUniformMatrix3x4dv")
      @proc_uniform_matrix4x2_dv = Procs.uniform_matrix4x2_dv(yield "glUniformMatrix4x2dv")
      @proc_uniform_matrix4x3_dv = Procs.uniform_matrix4x3_dv(yield "glUniformMatrix4x3dv")
      @proc_get_uniform_dv = Procs.get_uniform_dv(yield "glGetUniformdv")
      @proc_get_subroutine_uniform_location = Procs.get_subroutine_uniform_location(yield "glGetSubroutineUniformLocation")
      @proc_get_subroutine_index = Procs.get_subroutine_index(yield "glGetSubroutineIndex")
      @proc_get_active_subroutine_uniform_iv = Procs.get_active_subroutine_uniform_iv(yield "glGetActiveSubroutineUniformiv")
      @proc_get_active_subroutine_uniform_name = Procs.get_active_subroutine_uniform_name(yield "glGetActiveSubroutineUniformName")
      @proc_get_active_subroutine_name = Procs.get_active_subroutine_name(yield "glGetActiveSubroutineName")
      @proc_uniform_subroutines_uiv = Procs.uniform_subroutines_uiv(yield "glUniformSubroutinesuiv")
      @proc_get_uniform_subroutine_uiv = Procs.get_uniform_subroutine_uiv(yield "glGetUniformSubroutineuiv")
      @proc_get_program_stage_iv = Procs.get_program_stage_iv(yield "glGetProgramStageiv")
      @proc_patch_parameter_i = Procs.patch_parameter_i(yield "glPatchParameteri")
      @proc_patch_parameter_fv = Procs.patch_parameter_fv(yield "glPatchParameterfv")
      @proc_bind_transform_feedback = Procs.bind_transform_feedback(yield "glBindTransformFeedback")
      @proc_delete_transform_feedbacks = Procs.delete_transform_feedbacks(yield "glDeleteTransformFeedbacks")
      @proc_gen_transform_feedbacks = Procs.gen_transform_feedbacks(yield "glGenTransformFeedbacks")
      @proc_is_transform_feedback = Procs.is_transform_feedback(yield "glIsTransformFeedback")
      @proc_pause_transform_feedback = Procs.pause_transform_feedback(yield "glPauseTransformFeedback")
      @proc_resume_transform_feedback = Procs.resume_transform_feedback(yield "glResumeTransformFeedback")
      @proc_draw_transform_feedback = Procs.draw_transform_feedback(yield "glDrawTransformFeedback")
      @proc_draw_transform_feedback_stream = Procs.draw_transform_feedback_stream(yield "glDrawTransformFeedbackStream")
      @proc_begin_query_indexed = Procs.begin_query_indexed(yield "glBeginQueryIndexed")
      @proc_end_query_indexed = Procs.end_query_indexed(yield "glEndQueryIndexed")
      @proc_get_query_indexed_iv = Procs.get_query_indexed_iv(yield "glGetQueryIndexediv")
      @proc_release_shader_compiler = Procs.release_shader_compiler(yield "glReleaseShaderCompiler")
      @proc_shader_binary = Procs.shader_binary(yield "glShaderBinary")
      @proc_get_shader_precision_format = Procs.get_shader_precision_format(yield "glGetShaderPrecisionFormat")
      @proc_depth_range_f = Procs.depth_range_f(yield "glDepthRangef")
      @proc_clear_depth_f = Procs.clear_depth_f(yield "glClearDepthf")
      @proc_get_program_binary = Procs.get_program_binary(yield "glGetProgramBinary")
      @proc_program_binary = Procs.program_binary(yield "glProgramBinary")
      @proc_program_parameter_i = Procs.program_parameter_i(yield "glProgramParameteri")
      @proc_use_program_stages = Procs.use_program_stages(yield "glUseProgramStages")
      @proc_active_shader_program = Procs.active_shader_program(yield "glActiveShaderProgram")
      @proc_create_shader_program_v = Procs.create_shader_program_v(yield "glCreateShaderProgramv")
      @proc_bind_program_pipeline = Procs.bind_program_pipeline(yield "glBindProgramPipeline")
      @proc_delete_program_pipelines = Procs.delete_program_pipelines(yield "glDeleteProgramPipelines")
      @proc_gen_program_pipelines = Procs.gen_program_pipelines(yield "glGenProgramPipelines")
      @proc_is_program_pipeline = Procs.is_program_pipeline(yield "glIsProgramPipeline")
      @proc_get_program_pipeline_iv = Procs.get_program_pipeline_iv(yield "glGetProgramPipelineiv")
      @proc_program_uniform_1i = Procs.program_uniform_1i(yield "glProgramUniform1i")
      @proc_program_uniform_1iv = Procs.program_uniform_1iv(yield "glProgramUniform1iv")
      @proc_program_uniform_1f = Procs.program_uniform_1f(yield "glProgramUniform1f")
      @proc_program_uniform_1fv = Procs.program_uniform_1fv(yield "glProgramUniform1fv")
      @proc_program_uniform_1d = Procs.program_uniform_1d(yield "glProgramUniform1d")
      @proc_program_uniform_1dv = Procs.program_uniform_1dv(yield "glProgramUniform1dv")
      @proc_program_uniform_1ui = Procs.program_uniform_1ui(yield "glProgramUniform1ui")
      @proc_program_uniform_1uiv = Procs.program_uniform_1uiv(yield "glProgramUniform1uiv")
      @proc_program_uniform_2i = Procs.program_uniform_2i(yield "glProgramUniform2i")
      @proc_program_uniform_2iv = Procs.program_uniform_2iv(yield "glProgramUniform2iv")
      @proc_program_uniform_2f = Procs.program_uniform_2f(yield "glProgramUniform2f")
      @proc_program_uniform_2fv = Procs.program_uniform_2fv(yield "glProgramUniform2fv")
      @proc_program_uniform_2d = Procs.program_uniform_2d(yield "glProgramUniform2d")
      @proc_program_uniform_2dv = Procs.program_uniform_2dv(yield "glProgramUniform2dv")
      @proc_program_uniform_2ui = Procs.program_uniform_2ui(yield "glProgramUniform2ui")
      @proc_program_uniform_2uiv = Procs.program_uniform_2uiv(yield "glProgramUniform2uiv")
      @proc_program_uniform_3i = Procs.program_uniform_3i(yield "glProgramUniform3i")
      @proc_program_uniform_3iv = Procs.program_uniform_3iv(yield "glProgramUniform3iv")
      @proc_program_uniform_3f = Procs.program_uniform_3f(yield "glProgramUniform3f")
      @proc_program_uniform_3fv = Procs.program_uniform_3fv(yield "glProgramUniform3fv")
      @proc_program_uniform_3d = Procs.program_uniform_3d(yield "glProgramUniform3d")
      @proc_program_uniform_3dv = Procs.program_uniform_3dv(yield "glProgramUniform3dv")
      @proc_program_uniform_3ui = Procs.program_uniform_3ui(yield "glProgramUniform3ui")
      @proc_program_uniform_3uiv = Procs.program_uniform_3uiv(yield "glProgramUniform3uiv")
      @proc_program_uniform_4i = Procs.program_uniform_4i(yield "glProgramUniform4i")
      @proc_program_uniform_4iv = Procs.program_uniform_4iv(yield "glProgramUniform4iv")
      @proc_program_uniform_4f = Procs.program_uniform_4f(yield "glProgramUniform4f")
      @proc_program_uniform_4fv = Procs.program_uniform_4fv(yield "glProgramUniform4fv")
      @proc_program_uniform_4d = Procs.program_uniform_4d(yield "glProgramUniform4d")
      @proc_program_uniform_4dv = Procs.program_uniform_4dv(yield "glProgramUniform4dv")
      @proc_program_uniform_4ui = Procs.program_uniform_4ui(yield "glProgramUniform4ui")
      @proc_program_uniform_4uiv = Procs.program_uniform_4uiv(yield "glProgramUniform4uiv")
      @proc_program_uniform_matrix2_fv = Procs.program_uniform_matrix2_fv(yield "glProgramUniformMatrix2fv")
      @proc_program_uniform_matrix3_fv = Procs.program_uniform_matrix3_fv(yield "glProgramUniformMatrix3fv")
      @proc_program_uniform_matrix4_fv = Procs.program_uniform_matrix4_fv(yield "glProgramUniformMatrix4fv")
      @proc_program_uniform_matrix2_dv = Procs.program_uniform_matrix2_dv(yield "glProgramUniformMatrix2dv")
      @proc_program_uniform_matrix3_dv = Procs.program_uniform_matrix3_dv(yield "glProgramUniformMatrix3dv")
      @proc_program_uniform_matrix4_dv = Procs.program_uniform_matrix4_dv(yield "glProgramUniformMatrix4dv")
      @proc_program_uniform_matrix2x3_fv = Procs.program_uniform_matrix2x3_fv(yield "glProgramUniformMatrix2x3fv")
      @proc_program_uniform_matrix3x2_fv = Procs.program_uniform_matrix3x2_fv(yield "glProgramUniformMatrix3x2fv")
      @proc_program_uniform_matrix2x4_fv = Procs.program_uniform_matrix2x4_fv(yield "glProgramUniformMatrix2x4fv")
      @proc_program_uniform_matrix4x2_fv = Procs.program_uniform_matrix4x2_fv(yield "glProgramUniformMatrix4x2fv")
      @proc_program_uniform_matrix3x4_fv = Procs.program_uniform_matrix3x4_fv(yield "glProgramUniformMatrix3x4fv")
      @proc_program_uniform_matrix4x3_fv = Procs.program_uniform_matrix4x3_fv(yield "glProgramUniformMatrix4x3fv")
      @proc_program_uniform_matrix2x3_dv = Procs.program_uniform_matrix2x3_dv(yield "glProgramUniformMatrix2x3dv")
      @proc_program_uniform_matrix3x2_dv = Procs.program_uniform_matrix3x2_dv(yield "glProgramUniformMatrix3x2dv")
      @proc_program_uniform_matrix2x4_dv = Procs.program_uniform_matrix2x4_dv(yield "glProgramUniformMatrix2x4dv")
      @proc_program_uniform_matrix4x2_dv = Procs.program_uniform_matrix4x2_dv(yield "glProgramUniformMatrix4x2dv")
      @proc_program_uniform_matrix3x4_dv = Procs.program_uniform_matrix3x4_dv(yield "glProgramUniformMatrix3x4dv")
      @proc_program_uniform_matrix4x3_dv = Procs.program_uniform_matrix4x3_dv(yield "glProgramUniformMatrix4x3dv")
      @proc_validate_program_pipeline = Procs.validate_program_pipeline(yield "glValidateProgramPipeline")
      @proc_get_program_pipeline_info_log = Procs.get_program_pipeline_info_log(yield "glGetProgramPipelineInfoLog")
      @proc_vertex_attrib_l_1d = Procs.vertex_attrib_l_1d(yield "glVertexAttribL1d")
      @proc_vertex_attrib_l_2d = Procs.vertex_attrib_l_2d(yield "glVertexAttribL2d")
      @proc_vertex_attrib_l_3d = Procs.vertex_attrib_l_3d(yield "glVertexAttribL3d")
      @proc_vertex_attrib_l_4d = Procs.vertex_attrib_l_4d(yield "glVertexAttribL4d")
      @proc_vertex_attrib_l_1dv = Procs.vertex_attrib_l_1dv(yield "glVertexAttribL1dv")
      @proc_vertex_attrib_l_2dv = Procs.vertex_attrib_l_2dv(yield "glVertexAttribL2dv")
      @proc_vertex_attrib_l_3dv = Procs.vertex_attrib_l_3dv(yield "glVertexAttribL3dv")
      @proc_vertex_attrib_l_4dv = Procs.vertex_attrib_l_4dv(yield "glVertexAttribL4dv")
      @proc_vertex_attrib_l_pointer = Procs.vertex_attrib_l_pointer(yield "glVertexAttribLPointer")
      @proc_get_vertex_attrib_l_dv = Procs.get_vertex_attrib_l_dv(yield "glGetVertexAttribLdv")
      @proc_viewport_array_v = Procs.viewport_array_v(yield "glViewportArrayv")
      @proc_viewport_indexed_f = Procs.viewport_indexed_f(yield "glViewportIndexedf")
      @proc_viewport_indexed_fv = Procs.viewport_indexed_fv(yield "glViewportIndexedfv")
      @proc_scissor_array_v = Procs.scissor_array_v(yield "glScissorArrayv")
      @proc_scissor_indexed = Procs.scissor_indexed(yield "glScissorIndexed")
      @proc_scissor_indexedv = Procs.scissor_indexedv(yield "glScissorIndexedv")
      @proc_depth_range_array_v = Procs.depth_range_array_v(yield "glDepthRangeArrayv")
      @proc_depth_range_indexed = Procs.depth_range_indexed(yield "glDepthRangeIndexed")
      @proc_get_float_i_v = Procs.get_float_i_v(yield "glGetFloati_v")
      @proc_get_double_i_v = Procs.get_double_i_v(yield "glGetDoublei_v")
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

    # Invokes glLineWidth.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def line_width!(*args)
      @proc_line_width.call(*args)
    end

    # Invokes glLineWidth.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def line_width(*args)
      raise FunctionUnavailableError.new("glLineWidth") unless line_width?

      @proc_line_width.call(*args)
    end

    # Checks if the function "glLineWidth" is loaded.
    @[AlwaysInline]
    def line_width? : Bool
      !@proc_line_width.pointer.null?
    end

    # Invokes glPointSize.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_size!(*args)
      @proc_point_size.call(*args)
    end

    # Invokes glPointSize.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_size(*args)
      raise FunctionUnavailableError.new("glPointSize") unless point_size?

      @proc_point_size.call(*args)
    end

    # Checks if the function "glPointSize" is loaded.
    @[AlwaysInline]
    def point_size? : Bool
      !@proc_point_size.pointer.null?
    end

    # Invokes glPolygonMode.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_mode!(*args)
      @proc_polygon_mode.call(*args)
    end

    # Invokes glPolygonMode.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_mode(*args)
      raise FunctionUnavailableError.new("glPolygonMode") unless polygon_mode?

      @proc_polygon_mode.call(*args)
    end

    # Checks if the function "glPolygonMode" is loaded.
    @[AlwaysInline]
    def polygon_mode? : Bool
      !@proc_polygon_mode.pointer.null?
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

    # Invokes glTexParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_f!(*args)
      @proc_tex_parameter_f.call(*args)
    end

    # Invokes glTexParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_f(*args)
      raise FunctionUnavailableError.new("glTexParameterf") unless tex_parameter_f?

      @proc_tex_parameter_f.call(*args)
    end

    # Checks if the function "glTexParameterf" is loaded.
    @[AlwaysInline]
    def tex_parameter_f? : Bool
      !@proc_tex_parameter_f.pointer.null?
    end

    # Invokes glTexParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_fv!(*args)
      @proc_tex_parameter_fv.call(*args)
    end

    # Invokes glTexParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_fv(*args)
      raise FunctionUnavailableError.new("glTexParameterfv") unless tex_parameter_fv?

      @proc_tex_parameter_fv.call(*args)
    end

    # Checks if the function "glTexParameterfv" is loaded.
    @[AlwaysInline]
    def tex_parameter_fv? : Bool
      !@proc_tex_parameter_fv.pointer.null?
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

    # Invokes glTexImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_1d!(*args)
      @proc_tex_image_1d.call(*args)
    end

    # Invokes glTexImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_1d(*args)
      raise FunctionUnavailableError.new("glTexImage1D") unless tex_image_1d?

      @proc_tex_image_1d.call(*args)
    end

    # Checks if the function "glTexImage1D" is loaded.
    @[AlwaysInline]
    def tex_image_1d? : Bool
      !@proc_tex_image_1d.pointer.null?
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

    # Invokes glDrawBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_buffer!(*args)
      @proc_draw_buffer.call(*args)
    end

    # Invokes glDrawBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_buffer(*args)
      raise FunctionUnavailableError.new("glDrawBuffer") unless draw_buffer?

      @proc_draw_buffer.call(*args)
    end

    # Checks if the function "glDrawBuffer" is loaded.
    @[AlwaysInline]
    def draw_buffer? : Bool
      !@proc_draw_buffer.pointer.null?
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

    # Invokes glClearColor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_color!(*args)
      @proc_clear_color.call(*args)
    end

    # Invokes glClearColor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_color(*args)
      raise FunctionUnavailableError.new("glClearColor") unless clear_color?

      @proc_clear_color.call(*args)
    end

    # Checks if the function "glClearColor" is loaded.
    @[AlwaysInline]
    def clear_color? : Bool
      !@proc_clear_color.pointer.null?
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

    # Invokes glClearDepth.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_depth!(*args)
      @proc_clear_depth.call(*args)
    end

    # Invokes glClearDepth.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_depth(*args)
      raise FunctionUnavailableError.new("glClearDepth") unless clear_depth?

      @proc_clear_depth.call(*args)
    end

    # Checks if the function "glClearDepth" is loaded.
    @[AlwaysInline]
    def clear_depth? : Bool
      !@proc_clear_depth.pointer.null?
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

    # Invokes glPixelStoref.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_store_f!(*args)
      @proc_pixel_store_f.call(*args)
    end

    # Invokes glPixelStoref.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_store_f(*args)
      raise FunctionUnavailableError.new("glPixelStoref") unless pixel_store_f?

      @proc_pixel_store_f.call(*args)
    end

    # Checks if the function "glPixelStoref" is loaded.
    @[AlwaysInline]
    def pixel_store_f? : Bool
      !@proc_pixel_store_f.pointer.null?
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

    # Invokes glReadBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def read_buffer!(*args)
      @proc_read_buffer.call(*args)
    end

    # Invokes glReadBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def read_buffer(*args)
      raise FunctionUnavailableError.new("glReadBuffer") unless read_buffer?

      @proc_read_buffer.call(*args)
    end

    # Checks if the function "glReadBuffer" is loaded.
    @[AlwaysInline]
    def read_buffer? : Bool
      !@proc_read_buffer.pointer.null?
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

    # Invokes glGetDoublev.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_double_v!(*args)
      @proc_get_double_v.call(*args)
    end

    # Invokes glGetDoublev.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_double_v(*args)
      raise FunctionUnavailableError.new("glGetDoublev") unless get_double_v?

      @proc_get_double_v.call(*args)
    end

    # Checks if the function "glGetDoublev" is loaded.
    @[AlwaysInline]
    def get_double_v? : Bool
      !@proc_get_double_v.pointer.null?
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

    # Invokes glGetFloatv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_float_v!(*args)
      @proc_get_float_v.call(*args)
    end

    # Invokes glGetFloatv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_float_v(*args)
      raise FunctionUnavailableError.new("glGetFloatv") unless get_float_v?

      @proc_get_float_v.call(*args)
    end

    # Checks if the function "glGetFloatv" is loaded.
    @[AlwaysInline]
    def get_float_v? : Bool
      !@proc_get_float_v.pointer.null?
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

    # Invokes glGetTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_image!(*args)
      @proc_get_tex_image.call(*args)
    end

    # Invokes glGetTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_image(*args)
      raise FunctionUnavailableError.new("glGetTexImage") unless get_tex_image?

      @proc_get_tex_image.call(*args)
    end

    # Checks if the function "glGetTexImage" is loaded.
    @[AlwaysInline]
    def get_tex_image? : Bool
      !@proc_get_tex_image.pointer.null?
    end

    # Invokes glGetTexParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_fv!(*args)
      @proc_get_tex_parameter_fv.call(*args)
    end

    # Invokes glGetTexParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterfv") unless get_tex_parameter_fv?

      @proc_get_tex_parameter_fv.call(*args)
    end

    # Checks if the function "glGetTexParameterfv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_fv? : Bool
      !@proc_get_tex_parameter_fv.pointer.null?
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

    # Invokes glGetTexLevelParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_level_parameter_fv!(*args)
      @proc_get_tex_level_parameter_fv.call(*args)
    end

    # Invokes glGetTexLevelParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_level_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetTexLevelParameterfv") unless get_tex_level_parameter_fv?

      @proc_get_tex_level_parameter_fv.call(*args)
    end

    # Checks if the function "glGetTexLevelParameterfv" is loaded.
    @[AlwaysInline]
    def get_tex_level_parameter_fv? : Bool
      !@proc_get_tex_level_parameter_fv.pointer.null?
    end

    # Invokes glGetTexLevelParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_level_parameter_iv!(*args)
      @proc_get_tex_level_parameter_iv.call(*args)
    end

    # Invokes glGetTexLevelParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_level_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetTexLevelParameteriv") unless get_tex_level_parameter_iv?

      @proc_get_tex_level_parameter_iv.call(*args)
    end

    # Checks if the function "glGetTexLevelParameteriv" is loaded.
    @[AlwaysInline]
    def get_tex_level_parameter_iv? : Bool
      !@proc_get_tex_level_parameter_iv.pointer.null?
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

    # Invokes glDepthRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range!(*args)
      @proc_depth_range.call(*args)
    end

    # Invokes glDepthRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range(*args)
      raise FunctionUnavailableError.new("glDepthRange") unless depth_range?

      @proc_depth_range.call(*args)
    end

    # Checks if the function "glDepthRange" is loaded.
    @[AlwaysInline]
    def depth_range? : Bool
      !@proc_depth_range.pointer.null?
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

    # Invokes glNewList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def new_list!(*args)
      @proc_new_list.call(*args)
    end

    # Invokes glNewList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def new_list(*args)
      raise FunctionUnavailableError.new("glNewList") unless new_list?

      @proc_new_list.call(*args)
    end

    # Checks if the function "glNewList" is loaded.
    @[AlwaysInline]
    def new_list? : Bool
      !@proc_new_list.pointer.null?
    end

    # Invokes glEndList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_list!(*args)
      @proc_end_list.call(*args)
    end

    # Invokes glEndList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_list(*args)
      raise FunctionUnavailableError.new("glEndList") unless end_list?

      @proc_end_list.call(*args)
    end

    # Checks if the function "glEndList" is loaded.
    @[AlwaysInline]
    def end_list? : Bool
      !@proc_end_list.pointer.null?
    end

    # Invokes glCallList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def call_list!(*args)
      @proc_call_list.call(*args)
    end

    # Invokes glCallList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def call_list(*args)
      raise FunctionUnavailableError.new("glCallList") unless call_list?

      @proc_call_list.call(*args)
    end

    # Checks if the function "glCallList" is loaded.
    @[AlwaysInline]
    def call_list? : Bool
      !@proc_call_list.pointer.null?
    end

    # Invokes glCallLists.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def call_lists!(*args)
      @proc_call_lists.call(*args)
    end

    # Invokes glCallLists.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def call_lists(*args)
      raise FunctionUnavailableError.new("glCallLists") unless call_lists?

      @proc_call_lists.call(*args)
    end

    # Checks if the function "glCallLists" is loaded.
    @[AlwaysInline]
    def call_lists? : Bool
      !@proc_call_lists.pointer.null?
    end

    # Invokes glDeleteLists.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_lists!(*args)
      @proc_delete_lists.call(*args)
    end

    # Invokes glDeleteLists.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_lists(*args)
      raise FunctionUnavailableError.new("glDeleteLists") unless delete_lists?

      @proc_delete_lists.call(*args)
    end

    # Checks if the function "glDeleteLists" is loaded.
    @[AlwaysInline]
    def delete_lists? : Bool
      !@proc_delete_lists.pointer.null?
    end

    # Invokes glGenLists.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_lists!(*args)
      @proc_gen_lists.call(*args)
    end

    # Invokes glGenLists.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_lists(*args)
      raise FunctionUnavailableError.new("glGenLists") unless gen_lists?

      @proc_gen_lists.call(*args)
    end

    # Checks if the function "glGenLists" is loaded.
    @[AlwaysInline]
    def gen_lists? : Bool
      !@proc_gen_lists.pointer.null?
    end

    # Invokes glListBase.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def list_base!(*args)
      @proc_list_base.call(*args)
    end

    # Invokes glListBase.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def list_base(*args)
      raise FunctionUnavailableError.new("glListBase") unless list_base?

      @proc_list_base.call(*args)
    end

    # Checks if the function "glListBase" is loaded.
    @[AlwaysInline]
    def list_base? : Bool
      !@proc_list_base.pointer.null?
    end

    # Invokes glBegin.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin!(*args)
      @proc_begin.call(*args)
    end

    # Invokes glBegin.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin(*args)
      raise FunctionUnavailableError.new("glBegin") unless begin?

      @proc_begin.call(*args)
    end

    # Checks if the function "glBegin" is loaded.
    @[AlwaysInline]
    def begin? : Bool
      !@proc_begin.pointer.null?
    end

    # Invokes glBitmap.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bitmap!(*args)
      @proc_bitmap.call(*args)
    end

    # Invokes glBitmap.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bitmap(*args)
      raise FunctionUnavailableError.new("glBitmap") unless bitmap?

      @proc_bitmap.call(*args)
    end

    # Checks if the function "glBitmap" is loaded.
    @[AlwaysInline]
    def bitmap? : Bool
      !@proc_bitmap.pointer.null?
    end

    # Invokes glColor3b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3b!(*args)
      @proc_color_3b.call(*args)
    end

    # Invokes glColor3b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3b(*args)
      raise FunctionUnavailableError.new("glColor3b") unless color_3b?

      @proc_color_3b.call(*args)
    end

    # Checks if the function "glColor3b" is loaded.
    @[AlwaysInline]
    def color_3b? : Bool
      !@proc_color_3b.pointer.null?
    end

    # Invokes glColor3bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3bv!(*args)
      @proc_color_3bv.call(*args)
    end

    # Invokes glColor3bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3bv(*args)
      raise FunctionUnavailableError.new("glColor3bv") unless color_3bv?

      @proc_color_3bv.call(*args)
    end

    # Checks if the function "glColor3bv" is loaded.
    @[AlwaysInline]
    def color_3bv? : Bool
      !@proc_color_3bv.pointer.null?
    end

    # Invokes glColor3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3d!(*args)
      @proc_color_3d.call(*args)
    end

    # Invokes glColor3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3d(*args)
      raise FunctionUnavailableError.new("glColor3d") unless color_3d?

      @proc_color_3d.call(*args)
    end

    # Checks if the function "glColor3d" is loaded.
    @[AlwaysInline]
    def color_3d? : Bool
      !@proc_color_3d.pointer.null?
    end

    # Invokes glColor3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3dv!(*args)
      @proc_color_3dv.call(*args)
    end

    # Invokes glColor3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3dv(*args)
      raise FunctionUnavailableError.new("glColor3dv") unless color_3dv?

      @proc_color_3dv.call(*args)
    end

    # Checks if the function "glColor3dv" is loaded.
    @[AlwaysInline]
    def color_3dv? : Bool
      !@proc_color_3dv.pointer.null?
    end

    # Invokes glColor3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3f!(*args)
      @proc_color_3f.call(*args)
    end

    # Invokes glColor3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3f(*args)
      raise FunctionUnavailableError.new("glColor3f") unless color_3f?

      @proc_color_3f.call(*args)
    end

    # Checks if the function "glColor3f" is loaded.
    @[AlwaysInline]
    def color_3f? : Bool
      !@proc_color_3f.pointer.null?
    end

    # Invokes glColor3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3fv!(*args)
      @proc_color_3fv.call(*args)
    end

    # Invokes glColor3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3fv(*args)
      raise FunctionUnavailableError.new("glColor3fv") unless color_3fv?

      @proc_color_3fv.call(*args)
    end

    # Checks if the function "glColor3fv" is loaded.
    @[AlwaysInline]
    def color_3fv? : Bool
      !@proc_color_3fv.pointer.null?
    end

    # Invokes glColor3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3i!(*args)
      @proc_color_3i.call(*args)
    end

    # Invokes glColor3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3i(*args)
      raise FunctionUnavailableError.new("glColor3i") unless color_3i?

      @proc_color_3i.call(*args)
    end

    # Checks if the function "glColor3i" is loaded.
    @[AlwaysInline]
    def color_3i? : Bool
      !@proc_color_3i.pointer.null?
    end

    # Invokes glColor3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3iv!(*args)
      @proc_color_3iv.call(*args)
    end

    # Invokes glColor3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3iv(*args)
      raise FunctionUnavailableError.new("glColor3iv") unless color_3iv?

      @proc_color_3iv.call(*args)
    end

    # Checks if the function "glColor3iv" is loaded.
    @[AlwaysInline]
    def color_3iv? : Bool
      !@proc_color_3iv.pointer.null?
    end

    # Invokes glColor3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3s!(*args)
      @proc_color_3s.call(*args)
    end

    # Invokes glColor3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3s(*args)
      raise FunctionUnavailableError.new("glColor3s") unless color_3s?

      @proc_color_3s.call(*args)
    end

    # Checks if the function "glColor3s" is loaded.
    @[AlwaysInline]
    def color_3s? : Bool
      !@proc_color_3s.pointer.null?
    end

    # Invokes glColor3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3sv!(*args)
      @proc_color_3sv.call(*args)
    end

    # Invokes glColor3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3sv(*args)
      raise FunctionUnavailableError.new("glColor3sv") unless color_3sv?

      @proc_color_3sv.call(*args)
    end

    # Checks if the function "glColor3sv" is loaded.
    @[AlwaysInline]
    def color_3sv? : Bool
      !@proc_color_3sv.pointer.null?
    end

    # Invokes glColor3ub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3ub!(*args)
      @proc_color_3ub.call(*args)
    end

    # Invokes glColor3ub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3ub(*args)
      raise FunctionUnavailableError.new("glColor3ub") unless color_3ub?

      @proc_color_3ub.call(*args)
    end

    # Checks if the function "glColor3ub" is loaded.
    @[AlwaysInline]
    def color_3ub? : Bool
      !@proc_color_3ub.pointer.null?
    end

    # Invokes glColor3ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3ubv!(*args)
      @proc_color_3ubv.call(*args)
    end

    # Invokes glColor3ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3ubv(*args)
      raise FunctionUnavailableError.new("glColor3ubv") unless color_3ubv?

      @proc_color_3ubv.call(*args)
    end

    # Checks if the function "glColor3ubv" is loaded.
    @[AlwaysInline]
    def color_3ubv? : Bool
      !@proc_color_3ubv.pointer.null?
    end

    # Invokes glColor3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3ui!(*args)
      @proc_color_3ui.call(*args)
    end

    # Invokes glColor3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3ui(*args)
      raise FunctionUnavailableError.new("glColor3ui") unless color_3ui?

      @proc_color_3ui.call(*args)
    end

    # Checks if the function "glColor3ui" is loaded.
    @[AlwaysInline]
    def color_3ui? : Bool
      !@proc_color_3ui.pointer.null?
    end

    # Invokes glColor3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3uiv!(*args)
      @proc_color_3uiv.call(*args)
    end

    # Invokes glColor3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3uiv(*args)
      raise FunctionUnavailableError.new("glColor3uiv") unless color_3uiv?

      @proc_color_3uiv.call(*args)
    end

    # Checks if the function "glColor3uiv" is loaded.
    @[AlwaysInline]
    def color_3uiv? : Bool
      !@proc_color_3uiv.pointer.null?
    end

    # Invokes glColor3us.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3us!(*args)
      @proc_color_3us.call(*args)
    end

    # Invokes glColor3us.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3us(*args)
      raise FunctionUnavailableError.new("glColor3us") unless color_3us?

      @proc_color_3us.call(*args)
    end

    # Checks if the function "glColor3us" is loaded.
    @[AlwaysInline]
    def color_3us? : Bool
      !@proc_color_3us.pointer.null?
    end

    # Invokes glColor3usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_3usv!(*args)
      @proc_color_3usv.call(*args)
    end

    # Invokes glColor3usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_3usv(*args)
      raise FunctionUnavailableError.new("glColor3usv") unless color_3usv?

      @proc_color_3usv.call(*args)
    end

    # Checks if the function "glColor3usv" is loaded.
    @[AlwaysInline]
    def color_3usv? : Bool
      !@proc_color_3usv.pointer.null?
    end

    # Invokes glColor4b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4b!(*args)
      @proc_color_4b.call(*args)
    end

    # Invokes glColor4b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4b(*args)
      raise FunctionUnavailableError.new("glColor4b") unless color_4b?

      @proc_color_4b.call(*args)
    end

    # Checks if the function "glColor4b" is loaded.
    @[AlwaysInline]
    def color_4b? : Bool
      !@proc_color_4b.pointer.null?
    end

    # Invokes glColor4bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4bv!(*args)
      @proc_color_4bv.call(*args)
    end

    # Invokes glColor4bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4bv(*args)
      raise FunctionUnavailableError.new("glColor4bv") unless color_4bv?

      @proc_color_4bv.call(*args)
    end

    # Checks if the function "glColor4bv" is loaded.
    @[AlwaysInline]
    def color_4bv? : Bool
      !@proc_color_4bv.pointer.null?
    end

    # Invokes glColor4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4d!(*args)
      @proc_color_4d.call(*args)
    end

    # Invokes glColor4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4d(*args)
      raise FunctionUnavailableError.new("glColor4d") unless color_4d?

      @proc_color_4d.call(*args)
    end

    # Checks if the function "glColor4d" is loaded.
    @[AlwaysInline]
    def color_4d? : Bool
      !@proc_color_4d.pointer.null?
    end

    # Invokes glColor4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4dv!(*args)
      @proc_color_4dv.call(*args)
    end

    # Invokes glColor4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4dv(*args)
      raise FunctionUnavailableError.new("glColor4dv") unless color_4dv?

      @proc_color_4dv.call(*args)
    end

    # Checks if the function "glColor4dv" is loaded.
    @[AlwaysInline]
    def color_4dv? : Bool
      !@proc_color_4dv.pointer.null?
    end

    # Invokes glColor4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4f!(*args)
      @proc_color_4f.call(*args)
    end

    # Invokes glColor4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4f(*args)
      raise FunctionUnavailableError.new("glColor4f") unless color_4f?

      @proc_color_4f.call(*args)
    end

    # Checks if the function "glColor4f" is loaded.
    @[AlwaysInline]
    def color_4f? : Bool
      !@proc_color_4f.pointer.null?
    end

    # Invokes glColor4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4fv!(*args)
      @proc_color_4fv.call(*args)
    end

    # Invokes glColor4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4fv(*args)
      raise FunctionUnavailableError.new("glColor4fv") unless color_4fv?

      @proc_color_4fv.call(*args)
    end

    # Checks if the function "glColor4fv" is loaded.
    @[AlwaysInline]
    def color_4fv? : Bool
      !@proc_color_4fv.pointer.null?
    end

    # Invokes glColor4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4i!(*args)
      @proc_color_4i.call(*args)
    end

    # Invokes glColor4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4i(*args)
      raise FunctionUnavailableError.new("glColor4i") unless color_4i?

      @proc_color_4i.call(*args)
    end

    # Checks if the function "glColor4i" is loaded.
    @[AlwaysInline]
    def color_4i? : Bool
      !@proc_color_4i.pointer.null?
    end

    # Invokes glColor4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4iv!(*args)
      @proc_color_4iv.call(*args)
    end

    # Invokes glColor4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4iv(*args)
      raise FunctionUnavailableError.new("glColor4iv") unless color_4iv?

      @proc_color_4iv.call(*args)
    end

    # Checks if the function "glColor4iv" is loaded.
    @[AlwaysInline]
    def color_4iv? : Bool
      !@proc_color_4iv.pointer.null?
    end

    # Invokes glColor4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4s!(*args)
      @proc_color_4s.call(*args)
    end

    # Invokes glColor4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4s(*args)
      raise FunctionUnavailableError.new("glColor4s") unless color_4s?

      @proc_color_4s.call(*args)
    end

    # Checks if the function "glColor4s" is loaded.
    @[AlwaysInline]
    def color_4s? : Bool
      !@proc_color_4s.pointer.null?
    end

    # Invokes glColor4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4sv!(*args)
      @proc_color_4sv.call(*args)
    end

    # Invokes glColor4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4sv(*args)
      raise FunctionUnavailableError.new("glColor4sv") unless color_4sv?

      @proc_color_4sv.call(*args)
    end

    # Checks if the function "glColor4sv" is loaded.
    @[AlwaysInline]
    def color_4sv? : Bool
      !@proc_color_4sv.pointer.null?
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

    # Invokes glColor4ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4ubv!(*args)
      @proc_color_4ubv.call(*args)
    end

    # Invokes glColor4ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4ubv(*args)
      raise FunctionUnavailableError.new("glColor4ubv") unless color_4ubv?

      @proc_color_4ubv.call(*args)
    end

    # Checks if the function "glColor4ubv" is loaded.
    @[AlwaysInline]
    def color_4ubv? : Bool
      !@proc_color_4ubv.pointer.null?
    end

    # Invokes glColor4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4ui!(*args)
      @proc_color_4ui.call(*args)
    end

    # Invokes glColor4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4ui(*args)
      raise FunctionUnavailableError.new("glColor4ui") unless color_4ui?

      @proc_color_4ui.call(*args)
    end

    # Checks if the function "glColor4ui" is loaded.
    @[AlwaysInline]
    def color_4ui? : Bool
      !@proc_color_4ui.pointer.null?
    end

    # Invokes glColor4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4uiv!(*args)
      @proc_color_4uiv.call(*args)
    end

    # Invokes glColor4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4uiv(*args)
      raise FunctionUnavailableError.new("glColor4uiv") unless color_4uiv?

      @proc_color_4uiv.call(*args)
    end

    # Checks if the function "glColor4uiv" is loaded.
    @[AlwaysInline]
    def color_4uiv? : Bool
      !@proc_color_4uiv.pointer.null?
    end

    # Invokes glColor4us.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4us!(*args)
      @proc_color_4us.call(*args)
    end

    # Invokes glColor4us.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4us(*args)
      raise FunctionUnavailableError.new("glColor4us") unless color_4us?

      @proc_color_4us.call(*args)
    end

    # Checks if the function "glColor4us" is loaded.
    @[AlwaysInline]
    def color_4us? : Bool
      !@proc_color_4us.pointer.null?
    end

    # Invokes glColor4usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_4usv!(*args)
      @proc_color_4usv.call(*args)
    end

    # Invokes glColor4usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_4usv(*args)
      raise FunctionUnavailableError.new("glColor4usv") unless color_4usv?

      @proc_color_4usv.call(*args)
    end

    # Checks if the function "glColor4usv" is loaded.
    @[AlwaysInline]
    def color_4usv? : Bool
      !@proc_color_4usv.pointer.null?
    end

    # Invokes glEdgeFlag.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def edge_flag!(*args)
      @proc_edge_flag.call(*args)
    end

    # Invokes glEdgeFlag.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def edge_flag(*args)
      raise FunctionUnavailableError.new("glEdgeFlag") unless edge_flag?

      @proc_edge_flag.call(*args)
    end

    # Checks if the function "glEdgeFlag" is loaded.
    @[AlwaysInline]
    def edge_flag? : Bool
      !@proc_edge_flag.pointer.null?
    end

    # Invokes glEdgeFlagv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def edge_flag_v!(*args)
      @proc_edge_flag_v.call(*args)
    end

    # Invokes glEdgeFlagv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def edge_flag_v(*args)
      raise FunctionUnavailableError.new("glEdgeFlagv") unless edge_flag_v?

      @proc_edge_flag_v.call(*args)
    end

    # Checks if the function "glEdgeFlagv" is loaded.
    @[AlwaysInline]
    def edge_flag_v? : Bool
      !@proc_edge_flag_v.pointer.null?
    end

    # Invokes glEnd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end!(*args)
      @proc_end.call(*args)
    end

    # Invokes glEnd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end(*args)
      raise FunctionUnavailableError.new("glEnd") unless end?

      @proc_end.call(*args)
    end

    # Checks if the function "glEnd" is loaded.
    @[AlwaysInline]
    def end? : Bool
      !@proc_end.pointer.null?
    end

    # Invokes glIndexd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_d!(*args)
      @proc_index_d.call(*args)
    end

    # Invokes glIndexd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_d(*args)
      raise FunctionUnavailableError.new("glIndexd") unless index_d?

      @proc_index_d.call(*args)
    end

    # Checks if the function "glIndexd" is loaded.
    @[AlwaysInline]
    def index_d? : Bool
      !@proc_index_d.pointer.null?
    end

    # Invokes glIndexdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_dv!(*args)
      @proc_index_dv.call(*args)
    end

    # Invokes glIndexdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_dv(*args)
      raise FunctionUnavailableError.new("glIndexdv") unless index_dv?

      @proc_index_dv.call(*args)
    end

    # Checks if the function "glIndexdv" is loaded.
    @[AlwaysInline]
    def index_dv? : Bool
      !@proc_index_dv.pointer.null?
    end

    # Invokes glIndexf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_f!(*args)
      @proc_index_f.call(*args)
    end

    # Invokes glIndexf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_f(*args)
      raise FunctionUnavailableError.new("glIndexf") unless index_f?

      @proc_index_f.call(*args)
    end

    # Checks if the function "glIndexf" is loaded.
    @[AlwaysInline]
    def index_f? : Bool
      !@proc_index_f.pointer.null?
    end

    # Invokes glIndexfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_fv!(*args)
      @proc_index_fv.call(*args)
    end

    # Invokes glIndexfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_fv(*args)
      raise FunctionUnavailableError.new("glIndexfv") unless index_fv?

      @proc_index_fv.call(*args)
    end

    # Checks if the function "glIndexfv" is loaded.
    @[AlwaysInline]
    def index_fv? : Bool
      !@proc_index_fv.pointer.null?
    end

    # Invokes glIndexi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_i!(*args)
      @proc_index_i.call(*args)
    end

    # Invokes glIndexi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_i(*args)
      raise FunctionUnavailableError.new("glIndexi") unless index_i?

      @proc_index_i.call(*args)
    end

    # Checks if the function "glIndexi" is loaded.
    @[AlwaysInline]
    def index_i? : Bool
      !@proc_index_i.pointer.null?
    end

    # Invokes glIndexiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_iv!(*args)
      @proc_index_iv.call(*args)
    end

    # Invokes glIndexiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_iv(*args)
      raise FunctionUnavailableError.new("glIndexiv") unless index_iv?

      @proc_index_iv.call(*args)
    end

    # Checks if the function "glIndexiv" is loaded.
    @[AlwaysInline]
    def index_iv? : Bool
      !@proc_index_iv.pointer.null?
    end

    # Invokes glIndexs.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_s!(*args)
      @proc_index_s.call(*args)
    end

    # Invokes glIndexs.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_s(*args)
      raise FunctionUnavailableError.new("glIndexs") unless index_s?

      @proc_index_s.call(*args)
    end

    # Checks if the function "glIndexs" is loaded.
    @[AlwaysInline]
    def index_s? : Bool
      !@proc_index_s.pointer.null?
    end

    # Invokes glIndexsv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_sv!(*args)
      @proc_index_sv.call(*args)
    end

    # Invokes glIndexsv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_sv(*args)
      raise FunctionUnavailableError.new("glIndexsv") unless index_sv?

      @proc_index_sv.call(*args)
    end

    # Checks if the function "glIndexsv" is loaded.
    @[AlwaysInline]
    def index_sv? : Bool
      !@proc_index_sv.pointer.null?
    end

    # Invokes glNormal3b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3b!(*args)
      @proc_normal_3b.call(*args)
    end

    # Invokes glNormal3b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3b(*args)
      raise FunctionUnavailableError.new("glNormal3b") unless normal_3b?

      @proc_normal_3b.call(*args)
    end

    # Checks if the function "glNormal3b" is loaded.
    @[AlwaysInline]
    def normal_3b? : Bool
      !@proc_normal_3b.pointer.null?
    end

    # Invokes glNormal3bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3bv!(*args)
      @proc_normal_3bv.call(*args)
    end

    # Invokes glNormal3bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3bv(*args)
      raise FunctionUnavailableError.new("glNormal3bv") unless normal_3bv?

      @proc_normal_3bv.call(*args)
    end

    # Checks if the function "glNormal3bv" is loaded.
    @[AlwaysInline]
    def normal_3bv? : Bool
      !@proc_normal_3bv.pointer.null?
    end

    # Invokes glNormal3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3d!(*args)
      @proc_normal_3d.call(*args)
    end

    # Invokes glNormal3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3d(*args)
      raise FunctionUnavailableError.new("glNormal3d") unless normal_3d?

      @proc_normal_3d.call(*args)
    end

    # Checks if the function "glNormal3d" is loaded.
    @[AlwaysInline]
    def normal_3d? : Bool
      !@proc_normal_3d.pointer.null?
    end

    # Invokes glNormal3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3dv!(*args)
      @proc_normal_3dv.call(*args)
    end

    # Invokes glNormal3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3dv(*args)
      raise FunctionUnavailableError.new("glNormal3dv") unless normal_3dv?

      @proc_normal_3dv.call(*args)
    end

    # Checks if the function "glNormal3dv" is loaded.
    @[AlwaysInline]
    def normal_3dv? : Bool
      !@proc_normal_3dv.pointer.null?
    end

    # Invokes glNormal3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3f!(*args)
      @proc_normal_3f.call(*args)
    end

    # Invokes glNormal3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3f(*args)
      raise FunctionUnavailableError.new("glNormal3f") unless normal_3f?

      @proc_normal_3f.call(*args)
    end

    # Checks if the function "glNormal3f" is loaded.
    @[AlwaysInline]
    def normal_3f? : Bool
      !@proc_normal_3f.pointer.null?
    end

    # Invokes glNormal3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3fv!(*args)
      @proc_normal_3fv.call(*args)
    end

    # Invokes glNormal3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3fv(*args)
      raise FunctionUnavailableError.new("glNormal3fv") unless normal_3fv?

      @proc_normal_3fv.call(*args)
    end

    # Checks if the function "glNormal3fv" is loaded.
    @[AlwaysInline]
    def normal_3fv? : Bool
      !@proc_normal_3fv.pointer.null?
    end

    # Invokes glNormal3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3i!(*args)
      @proc_normal_3i.call(*args)
    end

    # Invokes glNormal3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3i(*args)
      raise FunctionUnavailableError.new("glNormal3i") unless normal_3i?

      @proc_normal_3i.call(*args)
    end

    # Checks if the function "glNormal3i" is loaded.
    @[AlwaysInline]
    def normal_3i? : Bool
      !@proc_normal_3i.pointer.null?
    end

    # Invokes glNormal3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3iv!(*args)
      @proc_normal_3iv.call(*args)
    end

    # Invokes glNormal3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3iv(*args)
      raise FunctionUnavailableError.new("glNormal3iv") unless normal_3iv?

      @proc_normal_3iv.call(*args)
    end

    # Checks if the function "glNormal3iv" is loaded.
    @[AlwaysInline]
    def normal_3iv? : Bool
      !@proc_normal_3iv.pointer.null?
    end

    # Invokes glNormal3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3s!(*args)
      @proc_normal_3s.call(*args)
    end

    # Invokes glNormal3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3s(*args)
      raise FunctionUnavailableError.new("glNormal3s") unless normal_3s?

      @proc_normal_3s.call(*args)
    end

    # Checks if the function "glNormal3s" is loaded.
    @[AlwaysInline]
    def normal_3s? : Bool
      !@proc_normal_3s.pointer.null?
    end

    # Invokes glNormal3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_3sv!(*args)
      @proc_normal_3sv.call(*args)
    end

    # Invokes glNormal3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_3sv(*args)
      raise FunctionUnavailableError.new("glNormal3sv") unless normal_3sv?

      @proc_normal_3sv.call(*args)
    end

    # Checks if the function "glNormal3sv" is loaded.
    @[AlwaysInline]
    def normal_3sv? : Bool
      !@proc_normal_3sv.pointer.null?
    end

    # Invokes glRasterPos2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2d!(*args)
      @proc_raster_pos_2d.call(*args)
    end

    # Invokes glRasterPos2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2d(*args)
      raise FunctionUnavailableError.new("glRasterPos2d") unless raster_pos_2d?

      @proc_raster_pos_2d.call(*args)
    end

    # Checks if the function "glRasterPos2d" is loaded.
    @[AlwaysInline]
    def raster_pos_2d? : Bool
      !@proc_raster_pos_2d.pointer.null?
    end

    # Invokes glRasterPos2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2dv!(*args)
      @proc_raster_pos_2dv.call(*args)
    end

    # Invokes glRasterPos2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2dv(*args)
      raise FunctionUnavailableError.new("glRasterPos2dv") unless raster_pos_2dv?

      @proc_raster_pos_2dv.call(*args)
    end

    # Checks if the function "glRasterPos2dv" is loaded.
    @[AlwaysInline]
    def raster_pos_2dv? : Bool
      !@proc_raster_pos_2dv.pointer.null?
    end

    # Invokes glRasterPos2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2f!(*args)
      @proc_raster_pos_2f.call(*args)
    end

    # Invokes glRasterPos2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2f(*args)
      raise FunctionUnavailableError.new("glRasterPos2f") unless raster_pos_2f?

      @proc_raster_pos_2f.call(*args)
    end

    # Checks if the function "glRasterPos2f" is loaded.
    @[AlwaysInline]
    def raster_pos_2f? : Bool
      !@proc_raster_pos_2f.pointer.null?
    end

    # Invokes glRasterPos2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2fv!(*args)
      @proc_raster_pos_2fv.call(*args)
    end

    # Invokes glRasterPos2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2fv(*args)
      raise FunctionUnavailableError.new("glRasterPos2fv") unless raster_pos_2fv?

      @proc_raster_pos_2fv.call(*args)
    end

    # Checks if the function "glRasterPos2fv" is loaded.
    @[AlwaysInline]
    def raster_pos_2fv? : Bool
      !@proc_raster_pos_2fv.pointer.null?
    end

    # Invokes glRasterPos2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2i!(*args)
      @proc_raster_pos_2i.call(*args)
    end

    # Invokes glRasterPos2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2i(*args)
      raise FunctionUnavailableError.new("glRasterPos2i") unless raster_pos_2i?

      @proc_raster_pos_2i.call(*args)
    end

    # Checks if the function "glRasterPos2i" is loaded.
    @[AlwaysInline]
    def raster_pos_2i? : Bool
      !@proc_raster_pos_2i.pointer.null?
    end

    # Invokes glRasterPos2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2iv!(*args)
      @proc_raster_pos_2iv.call(*args)
    end

    # Invokes glRasterPos2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2iv(*args)
      raise FunctionUnavailableError.new("glRasterPos2iv") unless raster_pos_2iv?

      @proc_raster_pos_2iv.call(*args)
    end

    # Checks if the function "glRasterPos2iv" is loaded.
    @[AlwaysInline]
    def raster_pos_2iv? : Bool
      !@proc_raster_pos_2iv.pointer.null?
    end

    # Invokes glRasterPos2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2s!(*args)
      @proc_raster_pos_2s.call(*args)
    end

    # Invokes glRasterPos2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2s(*args)
      raise FunctionUnavailableError.new("glRasterPos2s") unless raster_pos_2s?

      @proc_raster_pos_2s.call(*args)
    end

    # Checks if the function "glRasterPos2s" is loaded.
    @[AlwaysInline]
    def raster_pos_2s? : Bool
      !@proc_raster_pos_2s.pointer.null?
    end

    # Invokes glRasterPos2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_2sv!(*args)
      @proc_raster_pos_2sv.call(*args)
    end

    # Invokes glRasterPos2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_2sv(*args)
      raise FunctionUnavailableError.new("glRasterPos2sv") unless raster_pos_2sv?

      @proc_raster_pos_2sv.call(*args)
    end

    # Checks if the function "glRasterPos2sv" is loaded.
    @[AlwaysInline]
    def raster_pos_2sv? : Bool
      !@proc_raster_pos_2sv.pointer.null?
    end

    # Invokes glRasterPos3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3d!(*args)
      @proc_raster_pos_3d.call(*args)
    end

    # Invokes glRasterPos3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3d(*args)
      raise FunctionUnavailableError.new("glRasterPos3d") unless raster_pos_3d?

      @proc_raster_pos_3d.call(*args)
    end

    # Checks if the function "glRasterPos3d" is loaded.
    @[AlwaysInline]
    def raster_pos_3d? : Bool
      !@proc_raster_pos_3d.pointer.null?
    end

    # Invokes glRasterPos3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3dv!(*args)
      @proc_raster_pos_3dv.call(*args)
    end

    # Invokes glRasterPos3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3dv(*args)
      raise FunctionUnavailableError.new("glRasterPos3dv") unless raster_pos_3dv?

      @proc_raster_pos_3dv.call(*args)
    end

    # Checks if the function "glRasterPos3dv" is loaded.
    @[AlwaysInline]
    def raster_pos_3dv? : Bool
      !@proc_raster_pos_3dv.pointer.null?
    end

    # Invokes glRasterPos3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3f!(*args)
      @proc_raster_pos_3f.call(*args)
    end

    # Invokes glRasterPos3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3f(*args)
      raise FunctionUnavailableError.new("glRasterPos3f") unless raster_pos_3f?

      @proc_raster_pos_3f.call(*args)
    end

    # Checks if the function "glRasterPos3f" is loaded.
    @[AlwaysInline]
    def raster_pos_3f? : Bool
      !@proc_raster_pos_3f.pointer.null?
    end

    # Invokes glRasterPos3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3fv!(*args)
      @proc_raster_pos_3fv.call(*args)
    end

    # Invokes glRasterPos3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3fv(*args)
      raise FunctionUnavailableError.new("glRasterPos3fv") unless raster_pos_3fv?

      @proc_raster_pos_3fv.call(*args)
    end

    # Checks if the function "glRasterPos3fv" is loaded.
    @[AlwaysInline]
    def raster_pos_3fv? : Bool
      !@proc_raster_pos_3fv.pointer.null?
    end

    # Invokes glRasterPos3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3i!(*args)
      @proc_raster_pos_3i.call(*args)
    end

    # Invokes glRasterPos3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3i(*args)
      raise FunctionUnavailableError.new("glRasterPos3i") unless raster_pos_3i?

      @proc_raster_pos_3i.call(*args)
    end

    # Checks if the function "glRasterPos3i" is loaded.
    @[AlwaysInline]
    def raster_pos_3i? : Bool
      !@proc_raster_pos_3i.pointer.null?
    end

    # Invokes glRasterPos3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3iv!(*args)
      @proc_raster_pos_3iv.call(*args)
    end

    # Invokes glRasterPos3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3iv(*args)
      raise FunctionUnavailableError.new("glRasterPos3iv") unless raster_pos_3iv?

      @proc_raster_pos_3iv.call(*args)
    end

    # Checks if the function "glRasterPos3iv" is loaded.
    @[AlwaysInline]
    def raster_pos_3iv? : Bool
      !@proc_raster_pos_3iv.pointer.null?
    end

    # Invokes glRasterPos3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3s!(*args)
      @proc_raster_pos_3s.call(*args)
    end

    # Invokes glRasterPos3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3s(*args)
      raise FunctionUnavailableError.new("glRasterPos3s") unless raster_pos_3s?

      @proc_raster_pos_3s.call(*args)
    end

    # Checks if the function "glRasterPos3s" is loaded.
    @[AlwaysInline]
    def raster_pos_3s? : Bool
      !@proc_raster_pos_3s.pointer.null?
    end

    # Invokes glRasterPos3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_3sv!(*args)
      @proc_raster_pos_3sv.call(*args)
    end

    # Invokes glRasterPos3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_3sv(*args)
      raise FunctionUnavailableError.new("glRasterPos3sv") unless raster_pos_3sv?

      @proc_raster_pos_3sv.call(*args)
    end

    # Checks if the function "glRasterPos3sv" is loaded.
    @[AlwaysInline]
    def raster_pos_3sv? : Bool
      !@proc_raster_pos_3sv.pointer.null?
    end

    # Invokes glRasterPos4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4d!(*args)
      @proc_raster_pos_4d.call(*args)
    end

    # Invokes glRasterPos4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4d(*args)
      raise FunctionUnavailableError.new("glRasterPos4d") unless raster_pos_4d?

      @proc_raster_pos_4d.call(*args)
    end

    # Checks if the function "glRasterPos4d" is loaded.
    @[AlwaysInline]
    def raster_pos_4d? : Bool
      !@proc_raster_pos_4d.pointer.null?
    end

    # Invokes glRasterPos4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4dv!(*args)
      @proc_raster_pos_4dv.call(*args)
    end

    # Invokes glRasterPos4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4dv(*args)
      raise FunctionUnavailableError.new("glRasterPos4dv") unless raster_pos_4dv?

      @proc_raster_pos_4dv.call(*args)
    end

    # Checks if the function "glRasterPos4dv" is loaded.
    @[AlwaysInline]
    def raster_pos_4dv? : Bool
      !@proc_raster_pos_4dv.pointer.null?
    end

    # Invokes glRasterPos4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4f!(*args)
      @proc_raster_pos_4f.call(*args)
    end

    # Invokes glRasterPos4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4f(*args)
      raise FunctionUnavailableError.new("glRasterPos4f") unless raster_pos_4f?

      @proc_raster_pos_4f.call(*args)
    end

    # Checks if the function "glRasterPos4f" is loaded.
    @[AlwaysInline]
    def raster_pos_4f? : Bool
      !@proc_raster_pos_4f.pointer.null?
    end

    # Invokes glRasterPos4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4fv!(*args)
      @proc_raster_pos_4fv.call(*args)
    end

    # Invokes glRasterPos4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4fv(*args)
      raise FunctionUnavailableError.new("glRasterPos4fv") unless raster_pos_4fv?

      @proc_raster_pos_4fv.call(*args)
    end

    # Checks if the function "glRasterPos4fv" is loaded.
    @[AlwaysInline]
    def raster_pos_4fv? : Bool
      !@proc_raster_pos_4fv.pointer.null?
    end

    # Invokes glRasterPos4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4i!(*args)
      @proc_raster_pos_4i.call(*args)
    end

    # Invokes glRasterPos4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4i(*args)
      raise FunctionUnavailableError.new("glRasterPos4i") unless raster_pos_4i?

      @proc_raster_pos_4i.call(*args)
    end

    # Checks if the function "glRasterPos4i" is loaded.
    @[AlwaysInline]
    def raster_pos_4i? : Bool
      !@proc_raster_pos_4i.pointer.null?
    end

    # Invokes glRasterPos4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4iv!(*args)
      @proc_raster_pos_4iv.call(*args)
    end

    # Invokes glRasterPos4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4iv(*args)
      raise FunctionUnavailableError.new("glRasterPos4iv") unless raster_pos_4iv?

      @proc_raster_pos_4iv.call(*args)
    end

    # Checks if the function "glRasterPos4iv" is loaded.
    @[AlwaysInline]
    def raster_pos_4iv? : Bool
      !@proc_raster_pos_4iv.pointer.null?
    end

    # Invokes glRasterPos4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4s!(*args)
      @proc_raster_pos_4s.call(*args)
    end

    # Invokes glRasterPos4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4s(*args)
      raise FunctionUnavailableError.new("glRasterPos4s") unless raster_pos_4s?

      @proc_raster_pos_4s.call(*args)
    end

    # Checks if the function "glRasterPos4s" is loaded.
    @[AlwaysInline]
    def raster_pos_4s? : Bool
      !@proc_raster_pos_4s.pointer.null?
    end

    # Invokes glRasterPos4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def raster_pos_4sv!(*args)
      @proc_raster_pos_4sv.call(*args)
    end

    # Invokes glRasterPos4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def raster_pos_4sv(*args)
      raise FunctionUnavailableError.new("glRasterPos4sv") unless raster_pos_4sv?

      @proc_raster_pos_4sv.call(*args)
    end

    # Checks if the function "glRasterPos4sv" is loaded.
    @[AlwaysInline]
    def raster_pos_4sv? : Bool
      !@proc_raster_pos_4sv.pointer.null?
    end

    # Invokes glRectd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_d!(*args)
      @proc_rect_d.call(*args)
    end

    # Invokes glRectd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_d(*args)
      raise FunctionUnavailableError.new("glRectd") unless rect_d?

      @proc_rect_d.call(*args)
    end

    # Checks if the function "glRectd" is loaded.
    @[AlwaysInline]
    def rect_d? : Bool
      !@proc_rect_d.pointer.null?
    end

    # Invokes glRectdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_dv!(*args)
      @proc_rect_dv.call(*args)
    end

    # Invokes glRectdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_dv(*args)
      raise FunctionUnavailableError.new("glRectdv") unless rect_dv?

      @proc_rect_dv.call(*args)
    end

    # Checks if the function "glRectdv" is loaded.
    @[AlwaysInline]
    def rect_dv? : Bool
      !@proc_rect_dv.pointer.null?
    end

    # Invokes glRectf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_f!(*args)
      @proc_rect_f.call(*args)
    end

    # Invokes glRectf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_f(*args)
      raise FunctionUnavailableError.new("glRectf") unless rect_f?

      @proc_rect_f.call(*args)
    end

    # Checks if the function "glRectf" is loaded.
    @[AlwaysInline]
    def rect_f? : Bool
      !@proc_rect_f.pointer.null?
    end

    # Invokes glRectfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_fv!(*args)
      @proc_rect_fv.call(*args)
    end

    # Invokes glRectfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_fv(*args)
      raise FunctionUnavailableError.new("glRectfv") unless rect_fv?

      @proc_rect_fv.call(*args)
    end

    # Checks if the function "glRectfv" is loaded.
    @[AlwaysInline]
    def rect_fv? : Bool
      !@proc_rect_fv.pointer.null?
    end

    # Invokes glRecti.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_i!(*args)
      @proc_rect_i.call(*args)
    end

    # Invokes glRecti.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_i(*args)
      raise FunctionUnavailableError.new("glRecti") unless rect_i?

      @proc_rect_i.call(*args)
    end

    # Checks if the function "glRecti" is loaded.
    @[AlwaysInline]
    def rect_i? : Bool
      !@proc_rect_i.pointer.null?
    end

    # Invokes glRectiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_iv!(*args)
      @proc_rect_iv.call(*args)
    end

    # Invokes glRectiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_iv(*args)
      raise FunctionUnavailableError.new("glRectiv") unless rect_iv?

      @proc_rect_iv.call(*args)
    end

    # Checks if the function "glRectiv" is loaded.
    @[AlwaysInline]
    def rect_iv? : Bool
      !@proc_rect_iv.pointer.null?
    end

    # Invokes glRects.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_s!(*args)
      @proc_rect_s.call(*args)
    end

    # Invokes glRects.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_s(*args)
      raise FunctionUnavailableError.new("glRects") unless rect_s?

      @proc_rect_s.call(*args)
    end

    # Checks if the function "glRects" is loaded.
    @[AlwaysInline]
    def rect_s? : Bool
      !@proc_rect_s.pointer.null?
    end

    # Invokes glRectsv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rect_sv!(*args)
      @proc_rect_sv.call(*args)
    end

    # Invokes glRectsv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rect_sv(*args)
      raise FunctionUnavailableError.new("glRectsv") unless rect_sv?

      @proc_rect_sv.call(*args)
    end

    # Checks if the function "glRectsv" is loaded.
    @[AlwaysInline]
    def rect_sv? : Bool
      !@proc_rect_sv.pointer.null?
    end

    # Invokes glTexCoord1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1d!(*args)
      @proc_tex_coord_1d.call(*args)
    end

    # Invokes glTexCoord1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1d(*args)
      raise FunctionUnavailableError.new("glTexCoord1d") unless tex_coord_1d?

      @proc_tex_coord_1d.call(*args)
    end

    # Checks if the function "glTexCoord1d" is loaded.
    @[AlwaysInline]
    def tex_coord_1d? : Bool
      !@proc_tex_coord_1d.pointer.null?
    end

    # Invokes glTexCoord1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1dv!(*args)
      @proc_tex_coord_1dv.call(*args)
    end

    # Invokes glTexCoord1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1dv(*args)
      raise FunctionUnavailableError.new("glTexCoord1dv") unless tex_coord_1dv?

      @proc_tex_coord_1dv.call(*args)
    end

    # Checks if the function "glTexCoord1dv" is loaded.
    @[AlwaysInline]
    def tex_coord_1dv? : Bool
      !@proc_tex_coord_1dv.pointer.null?
    end

    # Invokes glTexCoord1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1f!(*args)
      @proc_tex_coord_1f.call(*args)
    end

    # Invokes glTexCoord1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1f(*args)
      raise FunctionUnavailableError.new("glTexCoord1f") unless tex_coord_1f?

      @proc_tex_coord_1f.call(*args)
    end

    # Checks if the function "glTexCoord1f" is loaded.
    @[AlwaysInline]
    def tex_coord_1f? : Bool
      !@proc_tex_coord_1f.pointer.null?
    end

    # Invokes glTexCoord1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1fv!(*args)
      @proc_tex_coord_1fv.call(*args)
    end

    # Invokes glTexCoord1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1fv(*args)
      raise FunctionUnavailableError.new("glTexCoord1fv") unless tex_coord_1fv?

      @proc_tex_coord_1fv.call(*args)
    end

    # Checks if the function "glTexCoord1fv" is loaded.
    @[AlwaysInline]
    def tex_coord_1fv? : Bool
      !@proc_tex_coord_1fv.pointer.null?
    end

    # Invokes glTexCoord1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1i!(*args)
      @proc_tex_coord_1i.call(*args)
    end

    # Invokes glTexCoord1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1i(*args)
      raise FunctionUnavailableError.new("glTexCoord1i") unless tex_coord_1i?

      @proc_tex_coord_1i.call(*args)
    end

    # Checks if the function "glTexCoord1i" is loaded.
    @[AlwaysInline]
    def tex_coord_1i? : Bool
      !@proc_tex_coord_1i.pointer.null?
    end

    # Invokes glTexCoord1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1iv!(*args)
      @proc_tex_coord_1iv.call(*args)
    end

    # Invokes glTexCoord1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1iv(*args)
      raise FunctionUnavailableError.new("glTexCoord1iv") unless tex_coord_1iv?

      @proc_tex_coord_1iv.call(*args)
    end

    # Checks if the function "glTexCoord1iv" is loaded.
    @[AlwaysInline]
    def tex_coord_1iv? : Bool
      !@proc_tex_coord_1iv.pointer.null?
    end

    # Invokes glTexCoord1s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1s!(*args)
      @proc_tex_coord_1s.call(*args)
    end

    # Invokes glTexCoord1s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1s(*args)
      raise FunctionUnavailableError.new("glTexCoord1s") unless tex_coord_1s?

      @proc_tex_coord_1s.call(*args)
    end

    # Checks if the function "glTexCoord1s" is loaded.
    @[AlwaysInline]
    def tex_coord_1s? : Bool
      !@proc_tex_coord_1s.pointer.null?
    end

    # Invokes glTexCoord1sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_1sv!(*args)
      @proc_tex_coord_1sv.call(*args)
    end

    # Invokes glTexCoord1sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_1sv(*args)
      raise FunctionUnavailableError.new("glTexCoord1sv") unless tex_coord_1sv?

      @proc_tex_coord_1sv.call(*args)
    end

    # Checks if the function "glTexCoord1sv" is loaded.
    @[AlwaysInline]
    def tex_coord_1sv? : Bool
      !@proc_tex_coord_1sv.pointer.null?
    end

    # Invokes glTexCoord2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2d!(*args)
      @proc_tex_coord_2d.call(*args)
    end

    # Invokes glTexCoord2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2d(*args)
      raise FunctionUnavailableError.new("glTexCoord2d") unless tex_coord_2d?

      @proc_tex_coord_2d.call(*args)
    end

    # Checks if the function "glTexCoord2d" is loaded.
    @[AlwaysInline]
    def tex_coord_2d? : Bool
      !@proc_tex_coord_2d.pointer.null?
    end

    # Invokes glTexCoord2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2dv!(*args)
      @proc_tex_coord_2dv.call(*args)
    end

    # Invokes glTexCoord2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2dv(*args)
      raise FunctionUnavailableError.new("glTexCoord2dv") unless tex_coord_2dv?

      @proc_tex_coord_2dv.call(*args)
    end

    # Checks if the function "glTexCoord2dv" is loaded.
    @[AlwaysInline]
    def tex_coord_2dv? : Bool
      !@proc_tex_coord_2dv.pointer.null?
    end

    # Invokes glTexCoord2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2f!(*args)
      @proc_tex_coord_2f.call(*args)
    end

    # Invokes glTexCoord2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2f(*args)
      raise FunctionUnavailableError.new("glTexCoord2f") unless tex_coord_2f?

      @proc_tex_coord_2f.call(*args)
    end

    # Checks if the function "glTexCoord2f" is loaded.
    @[AlwaysInline]
    def tex_coord_2f? : Bool
      !@proc_tex_coord_2f.pointer.null?
    end

    # Invokes glTexCoord2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2fv!(*args)
      @proc_tex_coord_2fv.call(*args)
    end

    # Invokes glTexCoord2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2fv(*args)
      raise FunctionUnavailableError.new("glTexCoord2fv") unless tex_coord_2fv?

      @proc_tex_coord_2fv.call(*args)
    end

    # Checks if the function "glTexCoord2fv" is loaded.
    @[AlwaysInline]
    def tex_coord_2fv? : Bool
      !@proc_tex_coord_2fv.pointer.null?
    end

    # Invokes glTexCoord2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2i!(*args)
      @proc_tex_coord_2i.call(*args)
    end

    # Invokes glTexCoord2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2i(*args)
      raise FunctionUnavailableError.new("glTexCoord2i") unless tex_coord_2i?

      @proc_tex_coord_2i.call(*args)
    end

    # Checks if the function "glTexCoord2i" is loaded.
    @[AlwaysInline]
    def tex_coord_2i? : Bool
      !@proc_tex_coord_2i.pointer.null?
    end

    # Invokes glTexCoord2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2iv!(*args)
      @proc_tex_coord_2iv.call(*args)
    end

    # Invokes glTexCoord2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2iv(*args)
      raise FunctionUnavailableError.new("glTexCoord2iv") unless tex_coord_2iv?

      @proc_tex_coord_2iv.call(*args)
    end

    # Checks if the function "glTexCoord2iv" is loaded.
    @[AlwaysInline]
    def tex_coord_2iv? : Bool
      !@proc_tex_coord_2iv.pointer.null?
    end

    # Invokes glTexCoord2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2s!(*args)
      @proc_tex_coord_2s.call(*args)
    end

    # Invokes glTexCoord2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2s(*args)
      raise FunctionUnavailableError.new("glTexCoord2s") unless tex_coord_2s?

      @proc_tex_coord_2s.call(*args)
    end

    # Checks if the function "glTexCoord2s" is loaded.
    @[AlwaysInline]
    def tex_coord_2s? : Bool
      !@proc_tex_coord_2s.pointer.null?
    end

    # Invokes glTexCoord2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_2sv!(*args)
      @proc_tex_coord_2sv.call(*args)
    end

    # Invokes glTexCoord2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_2sv(*args)
      raise FunctionUnavailableError.new("glTexCoord2sv") unless tex_coord_2sv?

      @proc_tex_coord_2sv.call(*args)
    end

    # Checks if the function "glTexCoord2sv" is loaded.
    @[AlwaysInline]
    def tex_coord_2sv? : Bool
      !@proc_tex_coord_2sv.pointer.null?
    end

    # Invokes glTexCoord3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3d!(*args)
      @proc_tex_coord_3d.call(*args)
    end

    # Invokes glTexCoord3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3d(*args)
      raise FunctionUnavailableError.new("glTexCoord3d") unless tex_coord_3d?

      @proc_tex_coord_3d.call(*args)
    end

    # Checks if the function "glTexCoord3d" is loaded.
    @[AlwaysInline]
    def tex_coord_3d? : Bool
      !@proc_tex_coord_3d.pointer.null?
    end

    # Invokes glTexCoord3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3dv!(*args)
      @proc_tex_coord_3dv.call(*args)
    end

    # Invokes glTexCoord3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3dv(*args)
      raise FunctionUnavailableError.new("glTexCoord3dv") unless tex_coord_3dv?

      @proc_tex_coord_3dv.call(*args)
    end

    # Checks if the function "glTexCoord3dv" is loaded.
    @[AlwaysInline]
    def tex_coord_3dv? : Bool
      !@proc_tex_coord_3dv.pointer.null?
    end

    # Invokes glTexCoord3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3f!(*args)
      @proc_tex_coord_3f.call(*args)
    end

    # Invokes glTexCoord3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3f(*args)
      raise FunctionUnavailableError.new("glTexCoord3f") unless tex_coord_3f?

      @proc_tex_coord_3f.call(*args)
    end

    # Checks if the function "glTexCoord3f" is loaded.
    @[AlwaysInline]
    def tex_coord_3f? : Bool
      !@proc_tex_coord_3f.pointer.null?
    end

    # Invokes glTexCoord3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3fv!(*args)
      @proc_tex_coord_3fv.call(*args)
    end

    # Invokes glTexCoord3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3fv(*args)
      raise FunctionUnavailableError.new("glTexCoord3fv") unless tex_coord_3fv?

      @proc_tex_coord_3fv.call(*args)
    end

    # Checks if the function "glTexCoord3fv" is loaded.
    @[AlwaysInline]
    def tex_coord_3fv? : Bool
      !@proc_tex_coord_3fv.pointer.null?
    end

    # Invokes glTexCoord3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3i!(*args)
      @proc_tex_coord_3i.call(*args)
    end

    # Invokes glTexCoord3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3i(*args)
      raise FunctionUnavailableError.new("glTexCoord3i") unless tex_coord_3i?

      @proc_tex_coord_3i.call(*args)
    end

    # Checks if the function "glTexCoord3i" is loaded.
    @[AlwaysInline]
    def tex_coord_3i? : Bool
      !@proc_tex_coord_3i.pointer.null?
    end

    # Invokes glTexCoord3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3iv!(*args)
      @proc_tex_coord_3iv.call(*args)
    end

    # Invokes glTexCoord3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3iv(*args)
      raise FunctionUnavailableError.new("glTexCoord3iv") unless tex_coord_3iv?

      @proc_tex_coord_3iv.call(*args)
    end

    # Checks if the function "glTexCoord3iv" is loaded.
    @[AlwaysInline]
    def tex_coord_3iv? : Bool
      !@proc_tex_coord_3iv.pointer.null?
    end

    # Invokes glTexCoord3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3s!(*args)
      @proc_tex_coord_3s.call(*args)
    end

    # Invokes glTexCoord3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3s(*args)
      raise FunctionUnavailableError.new("glTexCoord3s") unless tex_coord_3s?

      @proc_tex_coord_3s.call(*args)
    end

    # Checks if the function "glTexCoord3s" is loaded.
    @[AlwaysInline]
    def tex_coord_3s? : Bool
      !@proc_tex_coord_3s.pointer.null?
    end

    # Invokes glTexCoord3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_3sv!(*args)
      @proc_tex_coord_3sv.call(*args)
    end

    # Invokes glTexCoord3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_3sv(*args)
      raise FunctionUnavailableError.new("glTexCoord3sv") unless tex_coord_3sv?

      @proc_tex_coord_3sv.call(*args)
    end

    # Checks if the function "glTexCoord3sv" is loaded.
    @[AlwaysInline]
    def tex_coord_3sv? : Bool
      !@proc_tex_coord_3sv.pointer.null?
    end

    # Invokes glTexCoord4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4d!(*args)
      @proc_tex_coord_4d.call(*args)
    end

    # Invokes glTexCoord4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4d(*args)
      raise FunctionUnavailableError.new("glTexCoord4d") unless tex_coord_4d?

      @proc_tex_coord_4d.call(*args)
    end

    # Checks if the function "glTexCoord4d" is loaded.
    @[AlwaysInline]
    def tex_coord_4d? : Bool
      !@proc_tex_coord_4d.pointer.null?
    end

    # Invokes glTexCoord4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4dv!(*args)
      @proc_tex_coord_4dv.call(*args)
    end

    # Invokes glTexCoord4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4dv(*args)
      raise FunctionUnavailableError.new("glTexCoord4dv") unless tex_coord_4dv?

      @proc_tex_coord_4dv.call(*args)
    end

    # Checks if the function "glTexCoord4dv" is loaded.
    @[AlwaysInline]
    def tex_coord_4dv? : Bool
      !@proc_tex_coord_4dv.pointer.null?
    end

    # Invokes glTexCoord4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4f!(*args)
      @proc_tex_coord_4f.call(*args)
    end

    # Invokes glTexCoord4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4f(*args)
      raise FunctionUnavailableError.new("glTexCoord4f") unless tex_coord_4f?

      @proc_tex_coord_4f.call(*args)
    end

    # Checks if the function "glTexCoord4f" is loaded.
    @[AlwaysInline]
    def tex_coord_4f? : Bool
      !@proc_tex_coord_4f.pointer.null?
    end

    # Invokes glTexCoord4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4fv!(*args)
      @proc_tex_coord_4fv.call(*args)
    end

    # Invokes glTexCoord4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4fv(*args)
      raise FunctionUnavailableError.new("glTexCoord4fv") unless tex_coord_4fv?

      @proc_tex_coord_4fv.call(*args)
    end

    # Checks if the function "glTexCoord4fv" is loaded.
    @[AlwaysInline]
    def tex_coord_4fv? : Bool
      !@proc_tex_coord_4fv.pointer.null?
    end

    # Invokes glTexCoord4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4i!(*args)
      @proc_tex_coord_4i.call(*args)
    end

    # Invokes glTexCoord4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4i(*args)
      raise FunctionUnavailableError.new("glTexCoord4i") unless tex_coord_4i?

      @proc_tex_coord_4i.call(*args)
    end

    # Checks if the function "glTexCoord4i" is loaded.
    @[AlwaysInline]
    def tex_coord_4i? : Bool
      !@proc_tex_coord_4i.pointer.null?
    end

    # Invokes glTexCoord4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4iv!(*args)
      @proc_tex_coord_4iv.call(*args)
    end

    # Invokes glTexCoord4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4iv(*args)
      raise FunctionUnavailableError.new("glTexCoord4iv") unless tex_coord_4iv?

      @proc_tex_coord_4iv.call(*args)
    end

    # Checks if the function "glTexCoord4iv" is loaded.
    @[AlwaysInline]
    def tex_coord_4iv? : Bool
      !@proc_tex_coord_4iv.pointer.null?
    end

    # Invokes glTexCoord4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4s!(*args)
      @proc_tex_coord_4s.call(*args)
    end

    # Invokes glTexCoord4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4s(*args)
      raise FunctionUnavailableError.new("glTexCoord4s") unless tex_coord_4s?

      @proc_tex_coord_4s.call(*args)
    end

    # Checks if the function "glTexCoord4s" is loaded.
    @[AlwaysInline]
    def tex_coord_4s? : Bool
      !@proc_tex_coord_4s.pointer.null?
    end

    # Invokes glTexCoord4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_4sv!(*args)
      @proc_tex_coord_4sv.call(*args)
    end

    # Invokes glTexCoord4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_4sv(*args)
      raise FunctionUnavailableError.new("glTexCoord4sv") unless tex_coord_4sv?

      @proc_tex_coord_4sv.call(*args)
    end

    # Checks if the function "glTexCoord4sv" is loaded.
    @[AlwaysInline]
    def tex_coord_4sv? : Bool
      !@proc_tex_coord_4sv.pointer.null?
    end

    # Invokes glVertex2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2d!(*args)
      @proc_vertex_2d.call(*args)
    end

    # Invokes glVertex2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2d(*args)
      raise FunctionUnavailableError.new("glVertex2d") unless vertex_2d?

      @proc_vertex_2d.call(*args)
    end

    # Checks if the function "glVertex2d" is loaded.
    @[AlwaysInline]
    def vertex_2d? : Bool
      !@proc_vertex_2d.pointer.null?
    end

    # Invokes glVertex2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2dv!(*args)
      @proc_vertex_2dv.call(*args)
    end

    # Invokes glVertex2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2dv(*args)
      raise FunctionUnavailableError.new("glVertex2dv") unless vertex_2dv?

      @proc_vertex_2dv.call(*args)
    end

    # Checks if the function "glVertex2dv" is loaded.
    @[AlwaysInline]
    def vertex_2dv? : Bool
      !@proc_vertex_2dv.pointer.null?
    end

    # Invokes glVertex2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2f!(*args)
      @proc_vertex_2f.call(*args)
    end

    # Invokes glVertex2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2f(*args)
      raise FunctionUnavailableError.new("glVertex2f") unless vertex_2f?

      @proc_vertex_2f.call(*args)
    end

    # Checks if the function "glVertex2f" is loaded.
    @[AlwaysInline]
    def vertex_2f? : Bool
      !@proc_vertex_2f.pointer.null?
    end

    # Invokes glVertex2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2fv!(*args)
      @proc_vertex_2fv.call(*args)
    end

    # Invokes glVertex2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2fv(*args)
      raise FunctionUnavailableError.new("glVertex2fv") unless vertex_2fv?

      @proc_vertex_2fv.call(*args)
    end

    # Checks if the function "glVertex2fv" is loaded.
    @[AlwaysInline]
    def vertex_2fv? : Bool
      !@proc_vertex_2fv.pointer.null?
    end

    # Invokes glVertex2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2i!(*args)
      @proc_vertex_2i.call(*args)
    end

    # Invokes glVertex2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2i(*args)
      raise FunctionUnavailableError.new("glVertex2i") unless vertex_2i?

      @proc_vertex_2i.call(*args)
    end

    # Checks if the function "glVertex2i" is loaded.
    @[AlwaysInline]
    def vertex_2i? : Bool
      !@proc_vertex_2i.pointer.null?
    end

    # Invokes glVertex2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2iv!(*args)
      @proc_vertex_2iv.call(*args)
    end

    # Invokes glVertex2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2iv(*args)
      raise FunctionUnavailableError.new("glVertex2iv") unless vertex_2iv?

      @proc_vertex_2iv.call(*args)
    end

    # Checks if the function "glVertex2iv" is loaded.
    @[AlwaysInline]
    def vertex_2iv? : Bool
      !@proc_vertex_2iv.pointer.null?
    end

    # Invokes glVertex2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2s!(*args)
      @proc_vertex_2s.call(*args)
    end

    # Invokes glVertex2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2s(*args)
      raise FunctionUnavailableError.new("glVertex2s") unless vertex_2s?

      @proc_vertex_2s.call(*args)
    end

    # Checks if the function "glVertex2s" is loaded.
    @[AlwaysInline]
    def vertex_2s? : Bool
      !@proc_vertex_2s.pointer.null?
    end

    # Invokes glVertex2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_2sv!(*args)
      @proc_vertex_2sv.call(*args)
    end

    # Invokes glVertex2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_2sv(*args)
      raise FunctionUnavailableError.new("glVertex2sv") unless vertex_2sv?

      @proc_vertex_2sv.call(*args)
    end

    # Checks if the function "glVertex2sv" is loaded.
    @[AlwaysInline]
    def vertex_2sv? : Bool
      !@proc_vertex_2sv.pointer.null?
    end

    # Invokes glVertex3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3d!(*args)
      @proc_vertex_3d.call(*args)
    end

    # Invokes glVertex3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3d(*args)
      raise FunctionUnavailableError.new("glVertex3d") unless vertex_3d?

      @proc_vertex_3d.call(*args)
    end

    # Checks if the function "glVertex3d" is loaded.
    @[AlwaysInline]
    def vertex_3d? : Bool
      !@proc_vertex_3d.pointer.null?
    end

    # Invokes glVertex3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3dv!(*args)
      @proc_vertex_3dv.call(*args)
    end

    # Invokes glVertex3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3dv(*args)
      raise FunctionUnavailableError.new("glVertex3dv") unless vertex_3dv?

      @proc_vertex_3dv.call(*args)
    end

    # Checks if the function "glVertex3dv" is loaded.
    @[AlwaysInline]
    def vertex_3dv? : Bool
      !@proc_vertex_3dv.pointer.null?
    end

    # Invokes glVertex3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3f!(*args)
      @proc_vertex_3f.call(*args)
    end

    # Invokes glVertex3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3f(*args)
      raise FunctionUnavailableError.new("glVertex3f") unless vertex_3f?

      @proc_vertex_3f.call(*args)
    end

    # Checks if the function "glVertex3f" is loaded.
    @[AlwaysInline]
    def vertex_3f? : Bool
      !@proc_vertex_3f.pointer.null?
    end

    # Invokes glVertex3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3fv!(*args)
      @proc_vertex_3fv.call(*args)
    end

    # Invokes glVertex3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3fv(*args)
      raise FunctionUnavailableError.new("glVertex3fv") unless vertex_3fv?

      @proc_vertex_3fv.call(*args)
    end

    # Checks if the function "glVertex3fv" is loaded.
    @[AlwaysInline]
    def vertex_3fv? : Bool
      !@proc_vertex_3fv.pointer.null?
    end

    # Invokes glVertex3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3i!(*args)
      @proc_vertex_3i.call(*args)
    end

    # Invokes glVertex3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3i(*args)
      raise FunctionUnavailableError.new("glVertex3i") unless vertex_3i?

      @proc_vertex_3i.call(*args)
    end

    # Checks if the function "glVertex3i" is loaded.
    @[AlwaysInline]
    def vertex_3i? : Bool
      !@proc_vertex_3i.pointer.null?
    end

    # Invokes glVertex3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3iv!(*args)
      @proc_vertex_3iv.call(*args)
    end

    # Invokes glVertex3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3iv(*args)
      raise FunctionUnavailableError.new("glVertex3iv") unless vertex_3iv?

      @proc_vertex_3iv.call(*args)
    end

    # Checks if the function "glVertex3iv" is loaded.
    @[AlwaysInline]
    def vertex_3iv? : Bool
      !@proc_vertex_3iv.pointer.null?
    end

    # Invokes glVertex3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3s!(*args)
      @proc_vertex_3s.call(*args)
    end

    # Invokes glVertex3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3s(*args)
      raise FunctionUnavailableError.new("glVertex3s") unless vertex_3s?

      @proc_vertex_3s.call(*args)
    end

    # Checks if the function "glVertex3s" is loaded.
    @[AlwaysInline]
    def vertex_3s? : Bool
      !@proc_vertex_3s.pointer.null?
    end

    # Invokes glVertex3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_3sv!(*args)
      @proc_vertex_3sv.call(*args)
    end

    # Invokes glVertex3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_3sv(*args)
      raise FunctionUnavailableError.new("glVertex3sv") unless vertex_3sv?

      @proc_vertex_3sv.call(*args)
    end

    # Checks if the function "glVertex3sv" is loaded.
    @[AlwaysInline]
    def vertex_3sv? : Bool
      !@proc_vertex_3sv.pointer.null?
    end

    # Invokes glVertex4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4d!(*args)
      @proc_vertex_4d.call(*args)
    end

    # Invokes glVertex4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4d(*args)
      raise FunctionUnavailableError.new("glVertex4d") unless vertex_4d?

      @proc_vertex_4d.call(*args)
    end

    # Checks if the function "glVertex4d" is loaded.
    @[AlwaysInline]
    def vertex_4d? : Bool
      !@proc_vertex_4d.pointer.null?
    end

    # Invokes glVertex4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4dv!(*args)
      @proc_vertex_4dv.call(*args)
    end

    # Invokes glVertex4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4dv(*args)
      raise FunctionUnavailableError.new("glVertex4dv") unless vertex_4dv?

      @proc_vertex_4dv.call(*args)
    end

    # Checks if the function "glVertex4dv" is loaded.
    @[AlwaysInline]
    def vertex_4dv? : Bool
      !@proc_vertex_4dv.pointer.null?
    end

    # Invokes glVertex4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4f!(*args)
      @proc_vertex_4f.call(*args)
    end

    # Invokes glVertex4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4f(*args)
      raise FunctionUnavailableError.new("glVertex4f") unless vertex_4f?

      @proc_vertex_4f.call(*args)
    end

    # Checks if the function "glVertex4f" is loaded.
    @[AlwaysInline]
    def vertex_4f? : Bool
      !@proc_vertex_4f.pointer.null?
    end

    # Invokes glVertex4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4fv!(*args)
      @proc_vertex_4fv.call(*args)
    end

    # Invokes glVertex4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4fv(*args)
      raise FunctionUnavailableError.new("glVertex4fv") unless vertex_4fv?

      @proc_vertex_4fv.call(*args)
    end

    # Checks if the function "glVertex4fv" is loaded.
    @[AlwaysInline]
    def vertex_4fv? : Bool
      !@proc_vertex_4fv.pointer.null?
    end

    # Invokes glVertex4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4i!(*args)
      @proc_vertex_4i.call(*args)
    end

    # Invokes glVertex4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4i(*args)
      raise FunctionUnavailableError.new("glVertex4i") unless vertex_4i?

      @proc_vertex_4i.call(*args)
    end

    # Checks if the function "glVertex4i" is loaded.
    @[AlwaysInline]
    def vertex_4i? : Bool
      !@proc_vertex_4i.pointer.null?
    end

    # Invokes glVertex4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4iv!(*args)
      @proc_vertex_4iv.call(*args)
    end

    # Invokes glVertex4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4iv(*args)
      raise FunctionUnavailableError.new("glVertex4iv") unless vertex_4iv?

      @proc_vertex_4iv.call(*args)
    end

    # Checks if the function "glVertex4iv" is loaded.
    @[AlwaysInline]
    def vertex_4iv? : Bool
      !@proc_vertex_4iv.pointer.null?
    end

    # Invokes glVertex4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4s!(*args)
      @proc_vertex_4s.call(*args)
    end

    # Invokes glVertex4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4s(*args)
      raise FunctionUnavailableError.new("glVertex4s") unless vertex_4s?

      @proc_vertex_4s.call(*args)
    end

    # Checks if the function "glVertex4s" is loaded.
    @[AlwaysInline]
    def vertex_4s? : Bool
      !@proc_vertex_4s.pointer.null?
    end

    # Invokes glVertex4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_4sv!(*args)
      @proc_vertex_4sv.call(*args)
    end

    # Invokes glVertex4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_4sv(*args)
      raise FunctionUnavailableError.new("glVertex4sv") unless vertex_4sv?

      @proc_vertex_4sv.call(*args)
    end

    # Checks if the function "glVertex4sv" is loaded.
    @[AlwaysInline]
    def vertex_4sv? : Bool
      !@proc_vertex_4sv.pointer.null?
    end

    # Invokes glClipPlane.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clip_plane!(*args)
      @proc_clip_plane.call(*args)
    end

    # Invokes glClipPlane.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clip_plane(*args)
      raise FunctionUnavailableError.new("glClipPlane") unless clip_plane?

      @proc_clip_plane.call(*args)
    end

    # Checks if the function "glClipPlane" is loaded.
    @[AlwaysInline]
    def clip_plane? : Bool
      !@proc_clip_plane.pointer.null?
    end

    # Invokes glColorMaterial.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_material!(*args)
      @proc_color_material.call(*args)
    end

    # Invokes glColorMaterial.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_material(*args)
      raise FunctionUnavailableError.new("glColorMaterial") unless color_material?

      @proc_color_material.call(*args)
    end

    # Checks if the function "glColorMaterial" is loaded.
    @[AlwaysInline]
    def color_material? : Bool
      !@proc_color_material.pointer.null?
    end

    # Invokes glFogf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_f!(*args)
      @proc_fog_f.call(*args)
    end

    # Invokes glFogf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_f(*args)
      raise FunctionUnavailableError.new("glFogf") unless fog_f?

      @proc_fog_f.call(*args)
    end

    # Checks if the function "glFogf" is loaded.
    @[AlwaysInline]
    def fog_f? : Bool
      !@proc_fog_f.pointer.null?
    end

    # Invokes glFogfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_fv!(*args)
      @proc_fog_fv.call(*args)
    end

    # Invokes glFogfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_fv(*args)
      raise FunctionUnavailableError.new("glFogfv") unless fog_fv?

      @proc_fog_fv.call(*args)
    end

    # Checks if the function "glFogfv" is loaded.
    @[AlwaysInline]
    def fog_fv? : Bool
      !@proc_fog_fv.pointer.null?
    end

    # Invokes glFogi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_i!(*args)
      @proc_fog_i.call(*args)
    end

    # Invokes glFogi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_i(*args)
      raise FunctionUnavailableError.new("glFogi") unless fog_i?

      @proc_fog_i.call(*args)
    end

    # Checks if the function "glFogi" is loaded.
    @[AlwaysInline]
    def fog_i? : Bool
      !@proc_fog_i.pointer.null?
    end

    # Invokes glFogiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_iv!(*args)
      @proc_fog_iv.call(*args)
    end

    # Invokes glFogiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_iv(*args)
      raise FunctionUnavailableError.new("glFogiv") unless fog_iv?

      @proc_fog_iv.call(*args)
    end

    # Checks if the function "glFogiv" is loaded.
    @[AlwaysInline]
    def fog_iv? : Bool
      !@proc_fog_iv.pointer.null?
    end

    # Invokes glLightf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_f!(*args)
      @proc_light_f.call(*args)
    end

    # Invokes glLightf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_f(*args)
      raise FunctionUnavailableError.new("glLightf") unless light_f?

      @proc_light_f.call(*args)
    end

    # Checks if the function "glLightf" is loaded.
    @[AlwaysInline]
    def light_f? : Bool
      !@proc_light_f.pointer.null?
    end

    # Invokes glLightfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_fv!(*args)
      @proc_light_fv.call(*args)
    end

    # Invokes glLightfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_fv(*args)
      raise FunctionUnavailableError.new("glLightfv") unless light_fv?

      @proc_light_fv.call(*args)
    end

    # Checks if the function "glLightfv" is loaded.
    @[AlwaysInline]
    def light_fv? : Bool
      !@proc_light_fv.pointer.null?
    end

    # Invokes glLighti.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_i!(*args)
      @proc_light_i.call(*args)
    end

    # Invokes glLighti.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_i(*args)
      raise FunctionUnavailableError.new("glLighti") unless light_i?

      @proc_light_i.call(*args)
    end

    # Checks if the function "glLighti" is loaded.
    @[AlwaysInline]
    def light_i? : Bool
      !@proc_light_i.pointer.null?
    end

    # Invokes glLightiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_iv!(*args)
      @proc_light_iv.call(*args)
    end

    # Invokes glLightiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_iv(*args)
      raise FunctionUnavailableError.new("glLightiv") unless light_iv?

      @proc_light_iv.call(*args)
    end

    # Checks if the function "glLightiv" is loaded.
    @[AlwaysInline]
    def light_iv? : Bool
      !@proc_light_iv.pointer.null?
    end

    # Invokes glLightModelf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_f!(*args)
      @proc_light_model_f.call(*args)
    end

    # Invokes glLightModelf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_f(*args)
      raise FunctionUnavailableError.new("glLightModelf") unless light_model_f?

      @proc_light_model_f.call(*args)
    end

    # Checks if the function "glLightModelf" is loaded.
    @[AlwaysInline]
    def light_model_f? : Bool
      !@proc_light_model_f.pointer.null?
    end

    # Invokes glLightModelfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_fv!(*args)
      @proc_light_model_fv.call(*args)
    end

    # Invokes glLightModelfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_fv(*args)
      raise FunctionUnavailableError.new("glLightModelfv") unless light_model_fv?

      @proc_light_model_fv.call(*args)
    end

    # Checks if the function "glLightModelfv" is loaded.
    @[AlwaysInline]
    def light_model_fv? : Bool
      !@proc_light_model_fv.pointer.null?
    end

    # Invokes glLightModeli.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_i!(*args)
      @proc_light_model_i.call(*args)
    end

    # Invokes glLightModeli.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_i(*args)
      raise FunctionUnavailableError.new("glLightModeli") unless light_model_i?

      @proc_light_model_i.call(*args)
    end

    # Checks if the function "glLightModeli" is loaded.
    @[AlwaysInline]
    def light_model_i? : Bool
      !@proc_light_model_i.pointer.null?
    end

    # Invokes glLightModeliv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def light_model_iv!(*args)
      @proc_light_model_iv.call(*args)
    end

    # Invokes glLightModeliv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def light_model_iv(*args)
      raise FunctionUnavailableError.new("glLightModeliv") unless light_model_iv?

      @proc_light_model_iv.call(*args)
    end

    # Checks if the function "glLightModeliv" is loaded.
    @[AlwaysInline]
    def light_model_iv? : Bool
      !@proc_light_model_iv.pointer.null?
    end

    # Invokes glLineStipple.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def line_stipple!(*args)
      @proc_line_stipple.call(*args)
    end

    # Invokes glLineStipple.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def line_stipple(*args)
      raise FunctionUnavailableError.new("glLineStipple") unless line_stipple?

      @proc_line_stipple.call(*args)
    end

    # Checks if the function "glLineStipple" is loaded.
    @[AlwaysInline]
    def line_stipple? : Bool
      !@proc_line_stipple.pointer.null?
    end

    # Invokes glMaterialf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_f!(*args)
      @proc_material_f.call(*args)
    end

    # Invokes glMaterialf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_f(*args)
      raise FunctionUnavailableError.new("glMaterialf") unless material_f?

      @proc_material_f.call(*args)
    end

    # Checks if the function "glMaterialf" is loaded.
    @[AlwaysInline]
    def material_f? : Bool
      !@proc_material_f.pointer.null?
    end

    # Invokes glMaterialfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_fv!(*args)
      @proc_material_fv.call(*args)
    end

    # Invokes glMaterialfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_fv(*args)
      raise FunctionUnavailableError.new("glMaterialfv") unless material_fv?

      @proc_material_fv.call(*args)
    end

    # Checks if the function "glMaterialfv" is loaded.
    @[AlwaysInline]
    def material_fv? : Bool
      !@proc_material_fv.pointer.null?
    end

    # Invokes glMateriali.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_i!(*args)
      @proc_material_i.call(*args)
    end

    # Invokes glMateriali.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_i(*args)
      raise FunctionUnavailableError.new("glMateriali") unless material_i?

      @proc_material_i.call(*args)
    end

    # Checks if the function "glMateriali" is loaded.
    @[AlwaysInline]
    def material_i? : Bool
      !@proc_material_i.pointer.null?
    end

    # Invokes glMaterialiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def material_iv!(*args)
      @proc_material_iv.call(*args)
    end

    # Invokes glMaterialiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def material_iv(*args)
      raise FunctionUnavailableError.new("glMaterialiv") unless material_iv?

      @proc_material_iv.call(*args)
    end

    # Checks if the function "glMaterialiv" is loaded.
    @[AlwaysInline]
    def material_iv? : Bool
      !@proc_material_iv.pointer.null?
    end

    # Invokes glPolygonStipple.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_stipple!(*args)
      @proc_polygon_stipple.call(*args)
    end

    # Invokes glPolygonStipple.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_stipple(*args)
      raise FunctionUnavailableError.new("glPolygonStipple") unless polygon_stipple?

      @proc_polygon_stipple.call(*args)
    end

    # Checks if the function "glPolygonStipple" is loaded.
    @[AlwaysInline]
    def polygon_stipple? : Bool
      !@proc_polygon_stipple.pointer.null?
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

    # Invokes glTexEnvf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_f!(*args)
      @proc_tex_env_f.call(*args)
    end

    # Invokes glTexEnvf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_f(*args)
      raise FunctionUnavailableError.new("glTexEnvf") unless tex_env_f?

      @proc_tex_env_f.call(*args)
    end

    # Checks if the function "glTexEnvf" is loaded.
    @[AlwaysInline]
    def tex_env_f? : Bool
      !@proc_tex_env_f.pointer.null?
    end

    # Invokes glTexEnvfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_env_fv!(*args)
      @proc_tex_env_fv.call(*args)
    end

    # Invokes glTexEnvfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_env_fv(*args)
      raise FunctionUnavailableError.new("glTexEnvfv") unless tex_env_fv?

      @proc_tex_env_fv.call(*args)
    end

    # Checks if the function "glTexEnvfv" is loaded.
    @[AlwaysInline]
    def tex_env_fv? : Bool
      !@proc_tex_env_fv.pointer.null?
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

    # Invokes glTexGend.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_d!(*args)
      @proc_tex_gen_d.call(*args)
    end

    # Invokes glTexGend.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_d(*args)
      raise FunctionUnavailableError.new("glTexGend") unless tex_gen_d?

      @proc_tex_gen_d.call(*args)
    end

    # Checks if the function "glTexGend" is loaded.
    @[AlwaysInline]
    def tex_gen_d? : Bool
      !@proc_tex_gen_d.pointer.null?
    end

    # Invokes glTexGendv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_dv!(*args)
      @proc_tex_gen_dv.call(*args)
    end

    # Invokes glTexGendv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_dv(*args)
      raise FunctionUnavailableError.new("glTexGendv") unless tex_gen_dv?

      @proc_tex_gen_dv.call(*args)
    end

    # Checks if the function "glTexGendv" is loaded.
    @[AlwaysInline]
    def tex_gen_dv? : Bool
      !@proc_tex_gen_dv.pointer.null?
    end

    # Invokes glTexGenf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_f!(*args)
      @proc_tex_gen_f.call(*args)
    end

    # Invokes glTexGenf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_f(*args)
      raise FunctionUnavailableError.new("glTexGenf") unless tex_gen_f?

      @proc_tex_gen_f.call(*args)
    end

    # Checks if the function "glTexGenf" is loaded.
    @[AlwaysInline]
    def tex_gen_f? : Bool
      !@proc_tex_gen_f.pointer.null?
    end

    # Invokes glTexGenfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_fv!(*args)
      @proc_tex_gen_fv.call(*args)
    end

    # Invokes glTexGenfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_fv(*args)
      raise FunctionUnavailableError.new("glTexGenfv") unless tex_gen_fv?

      @proc_tex_gen_fv.call(*args)
    end

    # Checks if the function "glTexGenfv" is loaded.
    @[AlwaysInline]
    def tex_gen_fv? : Bool
      !@proc_tex_gen_fv.pointer.null?
    end

    # Invokes glTexGeni.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_i!(*args)
      @proc_tex_gen_i.call(*args)
    end

    # Invokes glTexGeni.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_i(*args)
      raise FunctionUnavailableError.new("glTexGeni") unless tex_gen_i?

      @proc_tex_gen_i.call(*args)
    end

    # Checks if the function "glTexGeni" is loaded.
    @[AlwaysInline]
    def tex_gen_i? : Bool
      !@proc_tex_gen_i.pointer.null?
    end

    # Invokes glTexGeniv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_gen_iv!(*args)
      @proc_tex_gen_iv.call(*args)
    end

    # Invokes glTexGeniv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_gen_iv(*args)
      raise FunctionUnavailableError.new("glTexGeniv") unless tex_gen_iv?

      @proc_tex_gen_iv.call(*args)
    end

    # Checks if the function "glTexGeniv" is loaded.
    @[AlwaysInline]
    def tex_gen_iv? : Bool
      !@proc_tex_gen_iv.pointer.null?
    end

    # Invokes glFeedbackBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def feedback_buffer!(*args)
      @proc_feedback_buffer.call(*args)
    end

    # Invokes glFeedbackBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def feedback_buffer(*args)
      raise FunctionUnavailableError.new("glFeedbackBuffer") unless feedback_buffer?

      @proc_feedback_buffer.call(*args)
    end

    # Checks if the function "glFeedbackBuffer" is loaded.
    @[AlwaysInline]
    def feedback_buffer? : Bool
      !@proc_feedback_buffer.pointer.null?
    end

    # Invokes glSelectBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def select_buffer!(*args)
      @proc_select_buffer.call(*args)
    end

    # Invokes glSelectBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def select_buffer(*args)
      raise FunctionUnavailableError.new("glSelectBuffer") unless select_buffer?

      @proc_select_buffer.call(*args)
    end

    # Checks if the function "glSelectBuffer" is loaded.
    @[AlwaysInline]
    def select_buffer? : Bool
      !@proc_select_buffer.pointer.null?
    end

    # Invokes glRenderMode.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def render_mode!(*args)
      @proc_render_mode.call(*args)
    end

    # Invokes glRenderMode.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def render_mode(*args)
      raise FunctionUnavailableError.new("glRenderMode") unless render_mode?

      @proc_render_mode.call(*args)
    end

    # Checks if the function "glRenderMode" is loaded.
    @[AlwaysInline]
    def render_mode? : Bool
      !@proc_render_mode.pointer.null?
    end

    # Invokes glInitNames.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def init_names!(*args)
      @proc_init_names.call(*args)
    end

    # Invokes glInitNames.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def init_names(*args)
      raise FunctionUnavailableError.new("glInitNames") unless init_names?

      @proc_init_names.call(*args)
    end

    # Checks if the function "glInitNames" is loaded.
    @[AlwaysInline]
    def init_names? : Bool
      !@proc_init_names.pointer.null?
    end

    # Invokes glLoadName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_name!(*args)
      @proc_load_name.call(*args)
    end

    # Invokes glLoadName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_name(*args)
      raise FunctionUnavailableError.new("glLoadName") unless load_name?

      @proc_load_name.call(*args)
    end

    # Checks if the function "glLoadName" is loaded.
    @[AlwaysInline]
    def load_name? : Bool
      !@proc_load_name.pointer.null?
    end

    # Invokes glPassThrough.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pass_through!(*args)
      @proc_pass_through.call(*args)
    end

    # Invokes glPassThrough.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pass_through(*args)
      raise FunctionUnavailableError.new("glPassThrough") unless pass_through?

      @proc_pass_through.call(*args)
    end

    # Checks if the function "glPassThrough" is loaded.
    @[AlwaysInline]
    def pass_through? : Bool
      !@proc_pass_through.pointer.null?
    end

    # Invokes glPopName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_name!(*args)
      @proc_pop_name.call(*args)
    end

    # Invokes glPopName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_name(*args)
      raise FunctionUnavailableError.new("glPopName") unless pop_name?

      @proc_pop_name.call(*args)
    end

    # Checks if the function "glPopName" is loaded.
    @[AlwaysInline]
    def pop_name? : Bool
      !@proc_pop_name.pointer.null?
    end

    # Invokes glPushName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_name!(*args)
      @proc_push_name.call(*args)
    end

    # Invokes glPushName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_name(*args)
      raise FunctionUnavailableError.new("glPushName") unless push_name?

      @proc_push_name.call(*args)
    end

    # Checks if the function "glPushName" is loaded.
    @[AlwaysInline]
    def push_name? : Bool
      !@proc_push_name.pointer.null?
    end

    # Invokes glClearAccum.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_accum!(*args)
      @proc_clear_accum.call(*args)
    end

    # Invokes glClearAccum.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_accum(*args)
      raise FunctionUnavailableError.new("glClearAccum") unless clear_accum?

      @proc_clear_accum.call(*args)
    end

    # Checks if the function "glClearAccum" is loaded.
    @[AlwaysInline]
    def clear_accum? : Bool
      !@proc_clear_accum.pointer.null?
    end

    # Invokes glClearIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_index!(*args)
      @proc_clear_index.call(*args)
    end

    # Invokes glClearIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_index(*args)
      raise FunctionUnavailableError.new("glClearIndex") unless clear_index?

      @proc_clear_index.call(*args)
    end

    # Checks if the function "glClearIndex" is loaded.
    @[AlwaysInline]
    def clear_index? : Bool
      !@proc_clear_index.pointer.null?
    end

    # Invokes glIndexMask.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_mask!(*args)
      @proc_index_mask.call(*args)
    end

    # Invokes glIndexMask.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_mask(*args)
      raise FunctionUnavailableError.new("glIndexMask") unless index_mask?

      @proc_index_mask.call(*args)
    end

    # Checks if the function "glIndexMask" is loaded.
    @[AlwaysInline]
    def index_mask? : Bool
      !@proc_index_mask.pointer.null?
    end

    # Invokes glAccum.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def accum!(*args)
      @proc_accum.call(*args)
    end

    # Invokes glAccum.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def accum(*args)
      raise FunctionUnavailableError.new("glAccum") unless accum?

      @proc_accum.call(*args)
    end

    # Checks if the function "glAccum" is loaded.
    @[AlwaysInline]
    def accum? : Bool
      !@proc_accum.pointer.null?
    end

    # Invokes glPopAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_attrib!(*args)
      @proc_pop_attrib.call(*args)
    end

    # Invokes glPopAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_attrib(*args)
      raise FunctionUnavailableError.new("glPopAttrib") unless pop_attrib?

      @proc_pop_attrib.call(*args)
    end

    # Checks if the function "glPopAttrib" is loaded.
    @[AlwaysInline]
    def pop_attrib? : Bool
      !@proc_pop_attrib.pointer.null?
    end

    # Invokes glPushAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_attrib!(*args)
      @proc_push_attrib.call(*args)
    end

    # Invokes glPushAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_attrib(*args)
      raise FunctionUnavailableError.new("glPushAttrib") unless push_attrib?

      @proc_push_attrib.call(*args)
    end

    # Checks if the function "glPushAttrib" is loaded.
    @[AlwaysInline]
    def push_attrib? : Bool
      !@proc_push_attrib.pointer.null?
    end

    # Invokes glMap1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_1d!(*args)
      @proc_map_1d.call(*args)
    end

    # Invokes glMap1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_1d(*args)
      raise FunctionUnavailableError.new("glMap1d") unless map_1d?

      @proc_map_1d.call(*args)
    end

    # Checks if the function "glMap1d" is loaded.
    @[AlwaysInline]
    def map_1d? : Bool
      !@proc_map_1d.pointer.null?
    end

    # Invokes glMap1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_1f!(*args)
      @proc_map_1f.call(*args)
    end

    # Invokes glMap1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_1f(*args)
      raise FunctionUnavailableError.new("glMap1f") unless map_1f?

      @proc_map_1f.call(*args)
    end

    # Checks if the function "glMap1f" is loaded.
    @[AlwaysInline]
    def map_1f? : Bool
      !@proc_map_1f.pointer.null?
    end

    # Invokes glMap2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_2d!(*args)
      @proc_map_2d.call(*args)
    end

    # Invokes glMap2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_2d(*args)
      raise FunctionUnavailableError.new("glMap2d") unless map_2d?

      @proc_map_2d.call(*args)
    end

    # Checks if the function "glMap2d" is loaded.
    @[AlwaysInline]
    def map_2d? : Bool
      !@proc_map_2d.pointer.null?
    end

    # Invokes glMap2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_2f!(*args)
      @proc_map_2f.call(*args)
    end

    # Invokes glMap2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_2f(*args)
      raise FunctionUnavailableError.new("glMap2f") unless map_2f?

      @proc_map_2f.call(*args)
    end

    # Checks if the function "glMap2f" is loaded.
    @[AlwaysInline]
    def map_2f? : Bool
      !@proc_map_2f.pointer.null?
    end

    # Invokes glMapGrid1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_1d!(*args)
      @proc_map_grid_1d.call(*args)
    end

    # Invokes glMapGrid1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_1d(*args)
      raise FunctionUnavailableError.new("glMapGrid1d") unless map_grid_1d?

      @proc_map_grid_1d.call(*args)
    end

    # Checks if the function "glMapGrid1d" is loaded.
    @[AlwaysInline]
    def map_grid_1d? : Bool
      !@proc_map_grid_1d.pointer.null?
    end

    # Invokes glMapGrid1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_1f!(*args)
      @proc_map_grid_1f.call(*args)
    end

    # Invokes glMapGrid1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_1f(*args)
      raise FunctionUnavailableError.new("glMapGrid1f") unless map_grid_1f?

      @proc_map_grid_1f.call(*args)
    end

    # Checks if the function "glMapGrid1f" is loaded.
    @[AlwaysInline]
    def map_grid_1f? : Bool
      !@proc_map_grid_1f.pointer.null?
    end

    # Invokes glMapGrid2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_2d!(*args)
      @proc_map_grid_2d.call(*args)
    end

    # Invokes glMapGrid2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_2d(*args)
      raise FunctionUnavailableError.new("glMapGrid2d") unless map_grid_2d?

      @proc_map_grid_2d.call(*args)
    end

    # Checks if the function "glMapGrid2d" is loaded.
    @[AlwaysInline]
    def map_grid_2d? : Bool
      !@proc_map_grid_2d.pointer.null?
    end

    # Invokes glMapGrid2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_grid_2f!(*args)
      @proc_map_grid_2f.call(*args)
    end

    # Invokes glMapGrid2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_grid_2f(*args)
      raise FunctionUnavailableError.new("glMapGrid2f") unless map_grid_2f?

      @proc_map_grid_2f.call(*args)
    end

    # Checks if the function "glMapGrid2f" is loaded.
    @[AlwaysInline]
    def map_grid_2f? : Bool
      !@proc_map_grid_2f.pointer.null?
    end

    # Invokes glEvalCoord1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1d!(*args)
      @proc_eval_coord_1d.call(*args)
    end

    # Invokes glEvalCoord1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1d(*args)
      raise FunctionUnavailableError.new("glEvalCoord1d") unless eval_coord_1d?

      @proc_eval_coord_1d.call(*args)
    end

    # Checks if the function "glEvalCoord1d" is loaded.
    @[AlwaysInline]
    def eval_coord_1d? : Bool
      !@proc_eval_coord_1d.pointer.null?
    end

    # Invokes glEvalCoord1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1dv!(*args)
      @proc_eval_coord_1dv.call(*args)
    end

    # Invokes glEvalCoord1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1dv(*args)
      raise FunctionUnavailableError.new("glEvalCoord1dv") unless eval_coord_1dv?

      @proc_eval_coord_1dv.call(*args)
    end

    # Checks if the function "glEvalCoord1dv" is loaded.
    @[AlwaysInline]
    def eval_coord_1dv? : Bool
      !@proc_eval_coord_1dv.pointer.null?
    end

    # Invokes glEvalCoord1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1f!(*args)
      @proc_eval_coord_1f.call(*args)
    end

    # Invokes glEvalCoord1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1f(*args)
      raise FunctionUnavailableError.new("glEvalCoord1f") unless eval_coord_1f?

      @proc_eval_coord_1f.call(*args)
    end

    # Checks if the function "glEvalCoord1f" is loaded.
    @[AlwaysInline]
    def eval_coord_1f? : Bool
      !@proc_eval_coord_1f.pointer.null?
    end

    # Invokes glEvalCoord1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_1fv!(*args)
      @proc_eval_coord_1fv.call(*args)
    end

    # Invokes glEvalCoord1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_1fv(*args)
      raise FunctionUnavailableError.new("glEvalCoord1fv") unless eval_coord_1fv?

      @proc_eval_coord_1fv.call(*args)
    end

    # Checks if the function "glEvalCoord1fv" is loaded.
    @[AlwaysInline]
    def eval_coord_1fv? : Bool
      !@proc_eval_coord_1fv.pointer.null?
    end

    # Invokes glEvalCoord2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2d!(*args)
      @proc_eval_coord_2d.call(*args)
    end

    # Invokes glEvalCoord2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2d(*args)
      raise FunctionUnavailableError.new("glEvalCoord2d") unless eval_coord_2d?

      @proc_eval_coord_2d.call(*args)
    end

    # Checks if the function "glEvalCoord2d" is loaded.
    @[AlwaysInline]
    def eval_coord_2d? : Bool
      !@proc_eval_coord_2d.pointer.null?
    end

    # Invokes glEvalCoord2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2dv!(*args)
      @proc_eval_coord_2dv.call(*args)
    end

    # Invokes glEvalCoord2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2dv(*args)
      raise FunctionUnavailableError.new("glEvalCoord2dv") unless eval_coord_2dv?

      @proc_eval_coord_2dv.call(*args)
    end

    # Checks if the function "glEvalCoord2dv" is loaded.
    @[AlwaysInline]
    def eval_coord_2dv? : Bool
      !@proc_eval_coord_2dv.pointer.null?
    end

    # Invokes glEvalCoord2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2f!(*args)
      @proc_eval_coord_2f.call(*args)
    end

    # Invokes glEvalCoord2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2f(*args)
      raise FunctionUnavailableError.new("glEvalCoord2f") unless eval_coord_2f?

      @proc_eval_coord_2f.call(*args)
    end

    # Checks if the function "glEvalCoord2f" is loaded.
    @[AlwaysInline]
    def eval_coord_2f? : Bool
      !@proc_eval_coord_2f.pointer.null?
    end

    # Invokes glEvalCoord2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_coord_2fv!(*args)
      @proc_eval_coord_2fv.call(*args)
    end

    # Invokes glEvalCoord2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_coord_2fv(*args)
      raise FunctionUnavailableError.new("glEvalCoord2fv") unless eval_coord_2fv?

      @proc_eval_coord_2fv.call(*args)
    end

    # Checks if the function "glEvalCoord2fv" is loaded.
    @[AlwaysInline]
    def eval_coord_2fv? : Bool
      !@proc_eval_coord_2fv.pointer.null?
    end

    # Invokes glEvalMesh1.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_mesh1!(*args)
      @proc_eval_mesh1.call(*args)
    end

    # Invokes glEvalMesh1.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_mesh1(*args)
      raise FunctionUnavailableError.new("glEvalMesh1") unless eval_mesh1?

      @proc_eval_mesh1.call(*args)
    end

    # Checks if the function "glEvalMesh1" is loaded.
    @[AlwaysInline]
    def eval_mesh1? : Bool
      !@proc_eval_mesh1.pointer.null?
    end

    # Invokes glEvalPoint1.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_point1!(*args)
      @proc_eval_point1.call(*args)
    end

    # Invokes glEvalPoint1.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_point1(*args)
      raise FunctionUnavailableError.new("glEvalPoint1") unless eval_point1?

      @proc_eval_point1.call(*args)
    end

    # Checks if the function "glEvalPoint1" is loaded.
    @[AlwaysInline]
    def eval_point1? : Bool
      !@proc_eval_point1.pointer.null?
    end

    # Invokes glEvalMesh2.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_mesh2!(*args)
      @proc_eval_mesh2.call(*args)
    end

    # Invokes glEvalMesh2.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_mesh2(*args)
      raise FunctionUnavailableError.new("glEvalMesh2") unless eval_mesh2?

      @proc_eval_mesh2.call(*args)
    end

    # Checks if the function "glEvalMesh2" is loaded.
    @[AlwaysInline]
    def eval_mesh2? : Bool
      !@proc_eval_mesh2.pointer.null?
    end

    # Invokes glEvalPoint2.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def eval_point2!(*args)
      @proc_eval_point2.call(*args)
    end

    # Invokes glEvalPoint2.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def eval_point2(*args)
      raise FunctionUnavailableError.new("glEvalPoint2") unless eval_point2?

      @proc_eval_point2.call(*args)
    end

    # Checks if the function "glEvalPoint2" is loaded.
    @[AlwaysInline]
    def eval_point2? : Bool
      !@proc_eval_point2.pointer.null?
    end

    # Invokes glAlphaFunc.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def alpha_func!(*args)
      @proc_alpha_func.call(*args)
    end

    # Invokes glAlphaFunc.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def alpha_func(*args)
      raise FunctionUnavailableError.new("glAlphaFunc") unless alpha_func?

      @proc_alpha_func.call(*args)
    end

    # Checks if the function "glAlphaFunc" is loaded.
    @[AlwaysInline]
    def alpha_func? : Bool
      !@proc_alpha_func.pointer.null?
    end

    # Invokes glPixelZoom.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_zoom!(*args)
      @proc_pixel_zoom.call(*args)
    end

    # Invokes glPixelZoom.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_zoom(*args)
      raise FunctionUnavailableError.new("glPixelZoom") unless pixel_zoom?

      @proc_pixel_zoom.call(*args)
    end

    # Checks if the function "glPixelZoom" is loaded.
    @[AlwaysInline]
    def pixel_zoom? : Bool
      !@proc_pixel_zoom.pointer.null?
    end

    # Invokes glPixelTransferf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_transfer_f!(*args)
      @proc_pixel_transfer_f.call(*args)
    end

    # Invokes glPixelTransferf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_transfer_f(*args)
      raise FunctionUnavailableError.new("glPixelTransferf") unless pixel_transfer_f?

      @proc_pixel_transfer_f.call(*args)
    end

    # Checks if the function "glPixelTransferf" is loaded.
    @[AlwaysInline]
    def pixel_transfer_f? : Bool
      !@proc_pixel_transfer_f.pointer.null?
    end

    # Invokes glPixelTransferi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_transfer_i!(*args)
      @proc_pixel_transfer_i.call(*args)
    end

    # Invokes glPixelTransferi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_transfer_i(*args)
      raise FunctionUnavailableError.new("glPixelTransferi") unless pixel_transfer_i?

      @proc_pixel_transfer_i.call(*args)
    end

    # Checks if the function "glPixelTransferi" is loaded.
    @[AlwaysInline]
    def pixel_transfer_i? : Bool
      !@proc_pixel_transfer_i.pointer.null?
    end

    # Invokes glPixelMapfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_map_fv!(*args)
      @proc_pixel_map_fv.call(*args)
    end

    # Invokes glPixelMapfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_map_fv(*args)
      raise FunctionUnavailableError.new("glPixelMapfv") unless pixel_map_fv?

      @proc_pixel_map_fv.call(*args)
    end

    # Checks if the function "glPixelMapfv" is loaded.
    @[AlwaysInline]
    def pixel_map_fv? : Bool
      !@proc_pixel_map_fv.pointer.null?
    end

    # Invokes glPixelMapuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_map_uiv!(*args)
      @proc_pixel_map_uiv.call(*args)
    end

    # Invokes glPixelMapuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_map_uiv(*args)
      raise FunctionUnavailableError.new("glPixelMapuiv") unless pixel_map_uiv?

      @proc_pixel_map_uiv.call(*args)
    end

    # Checks if the function "glPixelMapuiv" is loaded.
    @[AlwaysInline]
    def pixel_map_uiv? : Bool
      !@proc_pixel_map_uiv.pointer.null?
    end

    # Invokes glPixelMapusv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pixel_map_usv!(*args)
      @proc_pixel_map_usv.call(*args)
    end

    # Invokes glPixelMapusv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pixel_map_usv(*args)
      raise FunctionUnavailableError.new("glPixelMapusv") unless pixel_map_usv?

      @proc_pixel_map_usv.call(*args)
    end

    # Checks if the function "glPixelMapusv" is loaded.
    @[AlwaysInline]
    def pixel_map_usv? : Bool
      !@proc_pixel_map_usv.pointer.null?
    end

    # Invokes glCopyPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_pixels!(*args)
      @proc_copy_pixels.call(*args)
    end

    # Invokes glCopyPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_pixels(*args)
      raise FunctionUnavailableError.new("glCopyPixels") unless copy_pixels?

      @proc_copy_pixels.call(*args)
    end

    # Checks if the function "glCopyPixels" is loaded.
    @[AlwaysInline]
    def copy_pixels? : Bool
      !@proc_copy_pixels.pointer.null?
    end

    # Invokes glDrawPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_pixels!(*args)
      @proc_draw_pixels.call(*args)
    end

    # Invokes glDrawPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_pixels(*args)
      raise FunctionUnavailableError.new("glDrawPixels") unless draw_pixels?

      @proc_draw_pixels.call(*args)
    end

    # Checks if the function "glDrawPixels" is loaded.
    @[AlwaysInline]
    def draw_pixels? : Bool
      !@proc_draw_pixels.pointer.null?
    end

    # Invokes glGetClipPlane.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_clip_plane!(*args)
      @proc_get_clip_plane.call(*args)
    end

    # Invokes glGetClipPlane.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_clip_plane(*args)
      raise FunctionUnavailableError.new("glGetClipPlane") unless get_clip_plane?

      @proc_get_clip_plane.call(*args)
    end

    # Checks if the function "glGetClipPlane" is loaded.
    @[AlwaysInline]
    def get_clip_plane? : Bool
      !@proc_get_clip_plane.pointer.null?
    end

    # Invokes glGetLightfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_light_fv!(*args)
      @proc_get_light_fv.call(*args)
    end

    # Invokes glGetLightfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_light_fv(*args)
      raise FunctionUnavailableError.new("glGetLightfv") unless get_light_fv?

      @proc_get_light_fv.call(*args)
    end

    # Checks if the function "glGetLightfv" is loaded.
    @[AlwaysInline]
    def get_light_fv? : Bool
      !@proc_get_light_fv.pointer.null?
    end

    # Invokes glGetLightiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_light_iv!(*args)
      @proc_get_light_iv.call(*args)
    end

    # Invokes glGetLightiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_light_iv(*args)
      raise FunctionUnavailableError.new("glGetLightiv") unless get_light_iv?

      @proc_get_light_iv.call(*args)
    end

    # Checks if the function "glGetLightiv" is loaded.
    @[AlwaysInline]
    def get_light_iv? : Bool
      !@proc_get_light_iv.pointer.null?
    end

    # Invokes glGetMapdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_map_dv!(*args)
      @proc_get_map_dv.call(*args)
    end

    # Invokes glGetMapdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_map_dv(*args)
      raise FunctionUnavailableError.new("glGetMapdv") unless get_map_dv?

      @proc_get_map_dv.call(*args)
    end

    # Checks if the function "glGetMapdv" is loaded.
    @[AlwaysInline]
    def get_map_dv? : Bool
      !@proc_get_map_dv.pointer.null?
    end

    # Invokes glGetMapfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_map_fv!(*args)
      @proc_get_map_fv.call(*args)
    end

    # Invokes glGetMapfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_map_fv(*args)
      raise FunctionUnavailableError.new("glGetMapfv") unless get_map_fv?

      @proc_get_map_fv.call(*args)
    end

    # Checks if the function "glGetMapfv" is loaded.
    @[AlwaysInline]
    def get_map_fv? : Bool
      !@proc_get_map_fv.pointer.null?
    end

    # Invokes glGetMapiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_map_iv!(*args)
      @proc_get_map_iv.call(*args)
    end

    # Invokes glGetMapiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_map_iv(*args)
      raise FunctionUnavailableError.new("glGetMapiv") unless get_map_iv?

      @proc_get_map_iv.call(*args)
    end

    # Checks if the function "glGetMapiv" is loaded.
    @[AlwaysInline]
    def get_map_iv? : Bool
      !@proc_get_map_iv.pointer.null?
    end

    # Invokes glGetMaterialfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_material_fv!(*args)
      @proc_get_material_fv.call(*args)
    end

    # Invokes glGetMaterialfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_material_fv(*args)
      raise FunctionUnavailableError.new("glGetMaterialfv") unless get_material_fv?

      @proc_get_material_fv.call(*args)
    end

    # Checks if the function "glGetMaterialfv" is loaded.
    @[AlwaysInline]
    def get_material_fv? : Bool
      !@proc_get_material_fv.pointer.null?
    end

    # Invokes glGetMaterialiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_material_iv!(*args)
      @proc_get_material_iv.call(*args)
    end

    # Invokes glGetMaterialiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_material_iv(*args)
      raise FunctionUnavailableError.new("glGetMaterialiv") unless get_material_iv?

      @proc_get_material_iv.call(*args)
    end

    # Checks if the function "glGetMaterialiv" is loaded.
    @[AlwaysInline]
    def get_material_iv? : Bool
      !@proc_get_material_iv.pointer.null?
    end

    # Invokes glGetPixelMapfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pixel_map_fv!(*args)
      @proc_get_pixel_map_fv.call(*args)
    end

    # Invokes glGetPixelMapfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pixel_map_fv(*args)
      raise FunctionUnavailableError.new("glGetPixelMapfv") unless get_pixel_map_fv?

      @proc_get_pixel_map_fv.call(*args)
    end

    # Checks if the function "glGetPixelMapfv" is loaded.
    @[AlwaysInline]
    def get_pixel_map_fv? : Bool
      !@proc_get_pixel_map_fv.pointer.null?
    end

    # Invokes glGetPixelMapuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pixel_map_uiv!(*args)
      @proc_get_pixel_map_uiv.call(*args)
    end

    # Invokes glGetPixelMapuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pixel_map_uiv(*args)
      raise FunctionUnavailableError.new("glGetPixelMapuiv") unless get_pixel_map_uiv?

      @proc_get_pixel_map_uiv.call(*args)
    end

    # Checks if the function "glGetPixelMapuiv" is loaded.
    @[AlwaysInline]
    def get_pixel_map_uiv? : Bool
      !@proc_get_pixel_map_uiv.pointer.null?
    end

    # Invokes glGetPixelMapusv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_pixel_map_usv!(*args)
      @proc_get_pixel_map_usv.call(*args)
    end

    # Invokes glGetPixelMapusv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_pixel_map_usv(*args)
      raise FunctionUnavailableError.new("glGetPixelMapusv") unless get_pixel_map_usv?

      @proc_get_pixel_map_usv.call(*args)
    end

    # Checks if the function "glGetPixelMapusv" is loaded.
    @[AlwaysInline]
    def get_pixel_map_usv? : Bool
      !@proc_get_pixel_map_usv.pointer.null?
    end

    # Invokes glGetPolygonStipple.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_polygon_stipple!(*args)
      @proc_get_polygon_stipple.call(*args)
    end

    # Invokes glGetPolygonStipple.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_polygon_stipple(*args)
      raise FunctionUnavailableError.new("glGetPolygonStipple") unless get_polygon_stipple?

      @proc_get_polygon_stipple.call(*args)
    end

    # Checks if the function "glGetPolygonStipple" is loaded.
    @[AlwaysInline]
    def get_polygon_stipple? : Bool
      !@proc_get_polygon_stipple.pointer.null?
    end

    # Invokes glGetTexEnvfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_env_fv!(*args)
      @proc_get_tex_env_fv.call(*args)
    end

    # Invokes glGetTexEnvfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_env_fv(*args)
      raise FunctionUnavailableError.new("glGetTexEnvfv") unless get_tex_env_fv?

      @proc_get_tex_env_fv.call(*args)
    end

    # Checks if the function "glGetTexEnvfv" is loaded.
    @[AlwaysInline]
    def get_tex_env_fv? : Bool
      !@proc_get_tex_env_fv.pointer.null?
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

    # Invokes glGetTexGendv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_gen_dv!(*args)
      @proc_get_tex_gen_dv.call(*args)
    end

    # Invokes glGetTexGendv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_gen_dv(*args)
      raise FunctionUnavailableError.new("glGetTexGendv") unless get_tex_gen_dv?

      @proc_get_tex_gen_dv.call(*args)
    end

    # Checks if the function "glGetTexGendv" is loaded.
    @[AlwaysInline]
    def get_tex_gen_dv? : Bool
      !@proc_get_tex_gen_dv.pointer.null?
    end

    # Invokes glGetTexGenfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_gen_fv!(*args)
      @proc_get_tex_gen_fv.call(*args)
    end

    # Invokes glGetTexGenfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_gen_fv(*args)
      raise FunctionUnavailableError.new("glGetTexGenfv") unless get_tex_gen_fv?

      @proc_get_tex_gen_fv.call(*args)
    end

    # Checks if the function "glGetTexGenfv" is loaded.
    @[AlwaysInline]
    def get_tex_gen_fv? : Bool
      !@proc_get_tex_gen_fv.pointer.null?
    end

    # Invokes glGetTexGeniv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_gen_iv!(*args)
      @proc_get_tex_gen_iv.call(*args)
    end

    # Invokes glGetTexGeniv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_gen_iv(*args)
      raise FunctionUnavailableError.new("glGetTexGeniv") unless get_tex_gen_iv?

      @proc_get_tex_gen_iv.call(*args)
    end

    # Checks if the function "glGetTexGeniv" is loaded.
    @[AlwaysInline]
    def get_tex_gen_iv? : Bool
      !@proc_get_tex_gen_iv.pointer.null?
    end

    # Invokes glIsList.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_list!(*args)
      @proc_is_list.call(*args)
    end

    # Invokes glIsList.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_list(*args)
      raise FunctionUnavailableError.new("glIsList") unless is_list?

      @proc_is_list.call(*args)
    end

    # Checks if the function "glIsList" is loaded.
    @[AlwaysInline]
    def is_list? : Bool
      !@proc_is_list.pointer.null?
    end

    # Invokes glFrustum.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def frustum!(*args)
      @proc_frustum.call(*args)
    end

    # Invokes glFrustum.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def frustum(*args)
      raise FunctionUnavailableError.new("glFrustum") unless frustum?

      @proc_frustum.call(*args)
    end

    # Checks if the function "glFrustum" is loaded.
    @[AlwaysInline]
    def frustum? : Bool
      !@proc_frustum.pointer.null?
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

    # Invokes glLoadMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_matrix_f!(*args)
      @proc_load_matrix_f.call(*args)
    end

    # Invokes glLoadMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_matrix_f(*args)
      raise FunctionUnavailableError.new("glLoadMatrixf") unless load_matrix_f?

      @proc_load_matrix_f.call(*args)
    end

    # Checks if the function "glLoadMatrixf" is loaded.
    @[AlwaysInline]
    def load_matrix_f? : Bool
      !@proc_load_matrix_f.pointer.null?
    end

    # Invokes glLoadMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_matrix_d!(*args)
      @proc_load_matrix_d.call(*args)
    end

    # Invokes glLoadMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_matrix_d(*args)
      raise FunctionUnavailableError.new("glLoadMatrixd") unless load_matrix_d?

      @proc_load_matrix_d.call(*args)
    end

    # Checks if the function "glLoadMatrixd" is loaded.
    @[AlwaysInline]
    def load_matrix_d? : Bool
      !@proc_load_matrix_d.pointer.null?
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

    # Invokes glMultMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_matrix_f!(*args)
      @proc_mult_matrix_f.call(*args)
    end

    # Invokes glMultMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_matrix_f(*args)
      raise FunctionUnavailableError.new("glMultMatrixf") unless mult_matrix_f?

      @proc_mult_matrix_f.call(*args)
    end

    # Checks if the function "glMultMatrixf" is loaded.
    @[AlwaysInline]
    def mult_matrix_f? : Bool
      !@proc_mult_matrix_f.pointer.null?
    end

    # Invokes glMultMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_matrix_d!(*args)
      @proc_mult_matrix_d.call(*args)
    end

    # Invokes glMultMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_matrix_d(*args)
      raise FunctionUnavailableError.new("glMultMatrixd") unless mult_matrix_d?

      @proc_mult_matrix_d.call(*args)
    end

    # Checks if the function "glMultMatrixd" is loaded.
    @[AlwaysInline]
    def mult_matrix_d? : Bool
      !@proc_mult_matrix_d.pointer.null?
    end

    # Invokes glOrtho.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def ortho!(*args)
      @proc_ortho.call(*args)
    end

    # Invokes glOrtho.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def ortho(*args)
      raise FunctionUnavailableError.new("glOrtho") unless ortho?

      @proc_ortho.call(*args)
    end

    # Checks if the function "glOrtho" is loaded.
    @[AlwaysInline]
    def ortho? : Bool
      !@proc_ortho.pointer.null?
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

    # Invokes glRotated.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rotate_d!(*args)
      @proc_rotate_d.call(*args)
    end

    # Invokes glRotated.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rotate_d(*args)
      raise FunctionUnavailableError.new("glRotated") unless rotate_d?

      @proc_rotate_d.call(*args)
    end

    # Checks if the function "glRotated" is loaded.
    @[AlwaysInline]
    def rotate_d? : Bool
      !@proc_rotate_d.pointer.null?
    end

    # Invokes glRotatef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def rotate_f!(*args)
      @proc_rotate_f.call(*args)
    end

    # Invokes glRotatef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def rotate_f(*args)
      raise FunctionUnavailableError.new("glRotatef") unless rotate_f?

      @proc_rotate_f.call(*args)
    end

    # Checks if the function "glRotatef" is loaded.
    @[AlwaysInline]
    def rotate_f? : Bool
      !@proc_rotate_f.pointer.null?
    end

    # Invokes glScaled.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scale_d!(*args)
      @proc_scale_d.call(*args)
    end

    # Invokes glScaled.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scale_d(*args)
      raise FunctionUnavailableError.new("glScaled") unless scale_d?

      @proc_scale_d.call(*args)
    end

    # Checks if the function "glScaled" is loaded.
    @[AlwaysInline]
    def scale_d? : Bool
      !@proc_scale_d.pointer.null?
    end

    # Invokes glScalef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scale_f!(*args)
      @proc_scale_f.call(*args)
    end

    # Invokes glScalef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scale_f(*args)
      raise FunctionUnavailableError.new("glScalef") unless scale_f?

      @proc_scale_f.call(*args)
    end

    # Checks if the function "glScalef" is loaded.
    @[AlwaysInline]
    def scale_f? : Bool
      !@proc_scale_f.pointer.null?
    end

    # Invokes glTranslated.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def translate_d!(*args)
      @proc_translate_d.call(*args)
    end

    # Invokes glTranslated.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def translate_d(*args)
      raise FunctionUnavailableError.new("glTranslated") unless translate_d?

      @proc_translate_d.call(*args)
    end

    # Checks if the function "glTranslated" is loaded.
    @[AlwaysInline]
    def translate_d? : Bool
      !@proc_translate_d.pointer.null?
    end

    # Invokes glTranslatef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def translate_f!(*args)
      @proc_translate_f.call(*args)
    end

    # Invokes glTranslatef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def translate_f(*args)
      raise FunctionUnavailableError.new("glTranslatef") unless translate_f?

      @proc_translate_f.call(*args)
    end

    # Checks if the function "glTranslatef" is loaded.
    @[AlwaysInline]
    def translate_f? : Bool
      !@proc_translate_f.pointer.null?
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

    # Invokes glPolygonOffset.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_offset!(*args)
      @proc_polygon_offset.call(*args)
    end

    # Invokes glPolygonOffset.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_offset(*args)
      raise FunctionUnavailableError.new("glPolygonOffset") unless polygon_offset?

      @proc_polygon_offset.call(*args)
    end

    # Checks if the function "glPolygonOffset" is loaded.
    @[AlwaysInline]
    def polygon_offset? : Bool
      !@proc_polygon_offset.pointer.null?
    end

    # Invokes glCopyTexImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_image_1d!(*args)
      @proc_copy_tex_image_1d.call(*args)
    end

    # Invokes glCopyTexImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_image_1d(*args)
      raise FunctionUnavailableError.new("glCopyTexImage1D") unless copy_tex_image_1d?

      @proc_copy_tex_image_1d.call(*args)
    end

    # Checks if the function "glCopyTexImage1D" is loaded.
    @[AlwaysInline]
    def copy_tex_image_1d? : Bool
      !@proc_copy_tex_image_1d.pointer.null?
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

    # Invokes glCopyTexSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_sub_image_1d!(*args)
      @proc_copy_tex_sub_image_1d.call(*args)
    end

    # Invokes glCopyTexSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glCopyTexSubImage1D") unless copy_tex_sub_image_1d?

      @proc_copy_tex_sub_image_1d.call(*args)
    end

    # Checks if the function "glCopyTexSubImage1D" is loaded.
    @[AlwaysInline]
    def copy_tex_sub_image_1d? : Bool
      !@proc_copy_tex_sub_image_1d.pointer.null?
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

    # Invokes glTexSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_sub_image_1d!(*args)
      @proc_tex_sub_image_1d.call(*args)
    end

    # Invokes glTexSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glTexSubImage1D") unless tex_sub_image_1d?

      @proc_tex_sub_image_1d.call(*args)
    end

    # Checks if the function "glTexSubImage1D" is loaded.
    @[AlwaysInline]
    def tex_sub_image_1d? : Bool
      !@proc_tex_sub_image_1d.pointer.null?
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

    # Invokes glArrayElement.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def array_element!(*args)
      @proc_array_element.call(*args)
    end

    # Invokes glArrayElement.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def array_element(*args)
      raise FunctionUnavailableError.new("glArrayElement") unless array_element?

      @proc_array_element.call(*args)
    end

    # Checks if the function "glArrayElement" is loaded.
    @[AlwaysInline]
    def array_element? : Bool
      !@proc_array_element.pointer.null?
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

    # Invokes glEdgeFlagPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def edge_flag_pointer!(*args)
      @proc_edge_flag_pointer.call(*args)
    end

    # Invokes glEdgeFlagPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def edge_flag_pointer(*args)
      raise FunctionUnavailableError.new("glEdgeFlagPointer") unless edge_flag_pointer?

      @proc_edge_flag_pointer.call(*args)
    end

    # Checks if the function "glEdgeFlagPointer" is loaded.
    @[AlwaysInline]
    def edge_flag_pointer? : Bool
      !@proc_edge_flag_pointer.pointer.null?
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

    # Invokes glIndexPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_pointer!(*args)
      @proc_index_pointer.call(*args)
    end

    # Invokes glIndexPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_pointer(*args)
      raise FunctionUnavailableError.new("glIndexPointer") unless index_pointer?

      @proc_index_pointer.call(*args)
    end

    # Checks if the function "glIndexPointer" is loaded.
    @[AlwaysInline]
    def index_pointer? : Bool
      !@proc_index_pointer.pointer.null?
    end

    # Invokes glInterleavedArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def interleaved_arrays!(*args)
      @proc_interleaved_arrays.call(*args)
    end

    # Invokes glInterleavedArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def interleaved_arrays(*args)
      raise FunctionUnavailableError.new("glInterleavedArrays") unless interleaved_arrays?

      @proc_interleaved_arrays.call(*args)
    end

    # Checks if the function "glInterleavedArrays" is loaded.
    @[AlwaysInline]
    def interleaved_arrays? : Bool
      !@proc_interleaved_arrays.pointer.null?
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

    # Invokes glAreTexturesResident.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def are_textures_resident!(*args)
      @proc_are_textures_resident.call(*args)
    end

    # Invokes glAreTexturesResident.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def are_textures_resident(*args)
      raise FunctionUnavailableError.new("glAreTexturesResident") unless are_textures_resident?

      @proc_are_textures_resident.call(*args)
    end

    # Checks if the function "glAreTexturesResident" is loaded.
    @[AlwaysInline]
    def are_textures_resident? : Bool
      !@proc_are_textures_resident.pointer.null?
    end

    # Invokes glPrioritizeTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def prioritize_textures!(*args)
      @proc_prioritize_textures.call(*args)
    end

    # Invokes glPrioritizeTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def prioritize_textures(*args)
      raise FunctionUnavailableError.new("glPrioritizeTextures") unless prioritize_textures?

      @proc_prioritize_textures.call(*args)
    end

    # Checks if the function "glPrioritizeTextures" is loaded.
    @[AlwaysInline]
    def prioritize_textures? : Bool
      !@proc_prioritize_textures.pointer.null?
    end

    # Invokes glIndexub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_ub!(*args)
      @proc_index_ub.call(*args)
    end

    # Invokes glIndexub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_ub(*args)
      raise FunctionUnavailableError.new("glIndexub") unless index_ub?

      @proc_index_ub.call(*args)
    end

    # Checks if the function "glIndexub" is loaded.
    @[AlwaysInline]
    def index_ub? : Bool
      !@proc_index_ub.pointer.null?
    end

    # Invokes glIndexubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def index_ubv!(*args)
      @proc_index_ubv.call(*args)
    end

    # Invokes glIndexubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def index_ubv(*args)
      raise FunctionUnavailableError.new("glIndexubv") unless index_ubv?

      @proc_index_ubv.call(*args)
    end

    # Checks if the function "glIndexubv" is loaded.
    @[AlwaysInline]
    def index_ubv? : Bool
      !@proc_index_ubv.pointer.null?
    end

    # Invokes glPopClientAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_client_attrib!(*args)
      @proc_pop_client_attrib.call(*args)
    end

    # Invokes glPopClientAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_client_attrib(*args)
      raise FunctionUnavailableError.new("glPopClientAttrib") unless pop_client_attrib?

      @proc_pop_client_attrib.call(*args)
    end

    # Checks if the function "glPopClientAttrib" is loaded.
    @[AlwaysInline]
    def pop_client_attrib? : Bool
      !@proc_pop_client_attrib.pointer.null?
    end

    # Invokes glPushClientAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_client_attrib!(*args)
      @proc_push_client_attrib.call(*args)
    end

    # Invokes glPushClientAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_client_attrib(*args)
      raise FunctionUnavailableError.new("glPushClientAttrib") unless push_client_attrib?

      @proc_push_client_attrib.call(*args)
    end

    # Checks if the function "glPushClientAttrib" is loaded.
    @[AlwaysInline]
    def push_client_attrib? : Bool
      !@proc_push_client_attrib.pointer.null?
    end

    # Invokes glDrawRangeElements.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_range_elements!(*args)
      @proc_draw_range_elements.call(*args)
    end

    # Invokes glDrawRangeElements.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_range_elements(*args)
      raise FunctionUnavailableError.new("glDrawRangeElements") unless draw_range_elements?

      @proc_draw_range_elements.call(*args)
    end

    # Checks if the function "glDrawRangeElements" is loaded.
    @[AlwaysInline]
    def draw_range_elements? : Bool
      !@proc_draw_range_elements.pointer.null?
    end

    # Invokes glTexImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_3d!(*args)
      @proc_tex_image_3d.call(*args)
    end

    # Invokes glTexImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_3d(*args)
      raise FunctionUnavailableError.new("glTexImage3D") unless tex_image_3d?

      @proc_tex_image_3d.call(*args)
    end

    # Checks if the function "glTexImage3D" is loaded.
    @[AlwaysInline]
    def tex_image_3d? : Bool
      !@proc_tex_image_3d.pointer.null?
    end

    # Invokes glTexSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_sub_image_3d!(*args)
      @proc_tex_sub_image_3d.call(*args)
    end

    # Invokes glTexSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glTexSubImage3D") unless tex_sub_image_3d?

      @proc_tex_sub_image_3d.call(*args)
    end

    # Checks if the function "glTexSubImage3D" is loaded.
    @[AlwaysInline]
    def tex_sub_image_3d? : Bool
      !@proc_tex_sub_image_3d.pointer.null?
    end

    # Invokes glCopyTexSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_tex_sub_image_3d!(*args)
      @proc_copy_tex_sub_image_3d.call(*args)
    end

    # Invokes glCopyTexSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_tex_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glCopyTexSubImage3D") unless copy_tex_sub_image_3d?

      @proc_copy_tex_sub_image_3d.call(*args)
    end

    # Checks if the function "glCopyTexSubImage3D" is loaded.
    @[AlwaysInline]
    def copy_tex_sub_image_3d? : Bool
      !@proc_copy_tex_sub_image_3d.pointer.null?
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

    # Invokes glCompressedTexImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_image_3d!(*args)
      @proc_compressed_tex_image_3d.call(*args)
    end

    # Invokes glCompressedTexImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_image_3d(*args)
      raise FunctionUnavailableError.new("glCompressedTexImage3D") unless compressed_tex_image_3d?

      @proc_compressed_tex_image_3d.call(*args)
    end

    # Checks if the function "glCompressedTexImage3D" is loaded.
    @[AlwaysInline]
    def compressed_tex_image_3d? : Bool
      !@proc_compressed_tex_image_3d.pointer.null?
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

    # Invokes glCompressedTexImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_image_1d!(*args)
      @proc_compressed_tex_image_1d.call(*args)
    end

    # Invokes glCompressedTexImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_image_1d(*args)
      raise FunctionUnavailableError.new("glCompressedTexImage1D") unless compressed_tex_image_1d?

      @proc_compressed_tex_image_1d.call(*args)
    end

    # Checks if the function "glCompressedTexImage1D" is loaded.
    @[AlwaysInline]
    def compressed_tex_image_1d? : Bool
      !@proc_compressed_tex_image_1d.pointer.null?
    end

    # Invokes glCompressedTexSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_sub_image_3d!(*args)
      @proc_compressed_tex_sub_image_3d.call(*args)
    end

    # Invokes glCompressedTexSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glCompressedTexSubImage3D") unless compressed_tex_sub_image_3d?

      @proc_compressed_tex_sub_image_3d.call(*args)
    end

    # Checks if the function "glCompressedTexSubImage3D" is loaded.
    @[AlwaysInline]
    def compressed_tex_sub_image_3d? : Bool
      !@proc_compressed_tex_sub_image_3d.pointer.null?
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

    # Invokes glCompressedTexSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_tex_sub_image_1d!(*args)
      @proc_compressed_tex_sub_image_1d.call(*args)
    end

    # Invokes glCompressedTexSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_tex_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glCompressedTexSubImage1D") unless compressed_tex_sub_image_1d?

      @proc_compressed_tex_sub_image_1d.call(*args)
    end

    # Checks if the function "glCompressedTexSubImage1D" is loaded.
    @[AlwaysInline]
    def compressed_tex_sub_image_1d? : Bool
      !@proc_compressed_tex_sub_image_1d.pointer.null?
    end

    # Invokes glGetCompressedTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_compressed_tex_image!(*args)
      @proc_get_compressed_tex_image.call(*args)
    end

    # Invokes glGetCompressedTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_compressed_tex_image(*args)
      raise FunctionUnavailableError.new("glGetCompressedTexImage") unless get_compressed_tex_image?

      @proc_get_compressed_tex_image.call(*args)
    end

    # Checks if the function "glGetCompressedTexImage" is loaded.
    @[AlwaysInline]
    def get_compressed_tex_image? : Bool
      !@proc_get_compressed_tex_image.pointer.null?
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

    # Invokes glMultiTexCoord1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1d!(*args)
      @proc_multi_tex_coord_1d.call(*args)
    end

    # Invokes glMultiTexCoord1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1d") unless multi_tex_coord_1d?

      @proc_multi_tex_coord_1d.call(*args)
    end

    # Checks if the function "glMultiTexCoord1d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1d? : Bool
      !@proc_multi_tex_coord_1d.pointer.null?
    end

    # Invokes glMultiTexCoord1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1dv!(*args)
      @proc_multi_tex_coord_1dv.call(*args)
    end

    # Invokes glMultiTexCoord1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1dv") unless multi_tex_coord_1dv?

      @proc_multi_tex_coord_1dv.call(*args)
    end

    # Checks if the function "glMultiTexCoord1dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1dv? : Bool
      !@proc_multi_tex_coord_1dv.pointer.null?
    end

    # Invokes glMultiTexCoord1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1f!(*args)
      @proc_multi_tex_coord_1f.call(*args)
    end

    # Invokes glMultiTexCoord1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1f") unless multi_tex_coord_1f?

      @proc_multi_tex_coord_1f.call(*args)
    end

    # Checks if the function "glMultiTexCoord1f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1f? : Bool
      !@proc_multi_tex_coord_1f.pointer.null?
    end

    # Invokes glMultiTexCoord1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1fv!(*args)
      @proc_multi_tex_coord_1fv.call(*args)
    end

    # Invokes glMultiTexCoord1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1fv") unless multi_tex_coord_1fv?

      @proc_multi_tex_coord_1fv.call(*args)
    end

    # Checks if the function "glMultiTexCoord1fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1fv? : Bool
      !@proc_multi_tex_coord_1fv.pointer.null?
    end

    # Invokes glMultiTexCoord1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1i!(*args)
      @proc_multi_tex_coord_1i.call(*args)
    end

    # Invokes glMultiTexCoord1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1i") unless multi_tex_coord_1i?

      @proc_multi_tex_coord_1i.call(*args)
    end

    # Checks if the function "glMultiTexCoord1i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1i? : Bool
      !@proc_multi_tex_coord_1i.pointer.null?
    end

    # Invokes glMultiTexCoord1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1iv!(*args)
      @proc_multi_tex_coord_1iv.call(*args)
    end

    # Invokes glMultiTexCoord1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1iv") unless multi_tex_coord_1iv?

      @proc_multi_tex_coord_1iv.call(*args)
    end

    # Checks if the function "glMultiTexCoord1iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1iv? : Bool
      !@proc_multi_tex_coord_1iv.pointer.null?
    end

    # Invokes glMultiTexCoord1s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1s!(*args)
      @proc_multi_tex_coord_1s.call(*args)
    end

    # Invokes glMultiTexCoord1s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1s") unless multi_tex_coord_1s?

      @proc_multi_tex_coord_1s.call(*args)
    end

    # Checks if the function "glMultiTexCoord1s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1s? : Bool
      !@proc_multi_tex_coord_1s.pointer.null?
    end

    # Invokes glMultiTexCoord1sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_1sv!(*args)
      @proc_multi_tex_coord_1sv.call(*args)
    end

    # Invokes glMultiTexCoord1sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_1sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord1sv") unless multi_tex_coord_1sv?

      @proc_multi_tex_coord_1sv.call(*args)
    end

    # Checks if the function "glMultiTexCoord1sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_1sv? : Bool
      !@proc_multi_tex_coord_1sv.pointer.null?
    end

    # Invokes glMultiTexCoord2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2d!(*args)
      @proc_multi_tex_coord_2d.call(*args)
    end

    # Invokes glMultiTexCoord2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2d") unless multi_tex_coord_2d?

      @proc_multi_tex_coord_2d.call(*args)
    end

    # Checks if the function "glMultiTexCoord2d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2d? : Bool
      !@proc_multi_tex_coord_2d.pointer.null?
    end

    # Invokes glMultiTexCoord2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2dv!(*args)
      @proc_multi_tex_coord_2dv.call(*args)
    end

    # Invokes glMultiTexCoord2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2dv") unless multi_tex_coord_2dv?

      @proc_multi_tex_coord_2dv.call(*args)
    end

    # Checks if the function "glMultiTexCoord2dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2dv? : Bool
      !@proc_multi_tex_coord_2dv.pointer.null?
    end

    # Invokes glMultiTexCoord2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2f!(*args)
      @proc_multi_tex_coord_2f.call(*args)
    end

    # Invokes glMultiTexCoord2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2f") unless multi_tex_coord_2f?

      @proc_multi_tex_coord_2f.call(*args)
    end

    # Checks if the function "glMultiTexCoord2f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2f? : Bool
      !@proc_multi_tex_coord_2f.pointer.null?
    end

    # Invokes glMultiTexCoord2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2fv!(*args)
      @proc_multi_tex_coord_2fv.call(*args)
    end

    # Invokes glMultiTexCoord2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2fv") unless multi_tex_coord_2fv?

      @proc_multi_tex_coord_2fv.call(*args)
    end

    # Checks if the function "glMultiTexCoord2fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2fv? : Bool
      !@proc_multi_tex_coord_2fv.pointer.null?
    end

    # Invokes glMultiTexCoord2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2i!(*args)
      @proc_multi_tex_coord_2i.call(*args)
    end

    # Invokes glMultiTexCoord2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2i") unless multi_tex_coord_2i?

      @proc_multi_tex_coord_2i.call(*args)
    end

    # Checks if the function "glMultiTexCoord2i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2i? : Bool
      !@proc_multi_tex_coord_2i.pointer.null?
    end

    # Invokes glMultiTexCoord2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2iv!(*args)
      @proc_multi_tex_coord_2iv.call(*args)
    end

    # Invokes glMultiTexCoord2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2iv") unless multi_tex_coord_2iv?

      @proc_multi_tex_coord_2iv.call(*args)
    end

    # Checks if the function "glMultiTexCoord2iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2iv? : Bool
      !@proc_multi_tex_coord_2iv.pointer.null?
    end

    # Invokes glMultiTexCoord2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2s!(*args)
      @proc_multi_tex_coord_2s.call(*args)
    end

    # Invokes glMultiTexCoord2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2s") unless multi_tex_coord_2s?

      @proc_multi_tex_coord_2s.call(*args)
    end

    # Checks if the function "glMultiTexCoord2s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2s? : Bool
      !@proc_multi_tex_coord_2s.pointer.null?
    end

    # Invokes glMultiTexCoord2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_2sv!(*args)
      @proc_multi_tex_coord_2sv.call(*args)
    end

    # Invokes glMultiTexCoord2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_2sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord2sv") unless multi_tex_coord_2sv?

      @proc_multi_tex_coord_2sv.call(*args)
    end

    # Checks if the function "glMultiTexCoord2sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_2sv? : Bool
      !@proc_multi_tex_coord_2sv.pointer.null?
    end

    # Invokes glMultiTexCoord3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3d!(*args)
      @proc_multi_tex_coord_3d.call(*args)
    end

    # Invokes glMultiTexCoord3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3d") unless multi_tex_coord_3d?

      @proc_multi_tex_coord_3d.call(*args)
    end

    # Checks if the function "glMultiTexCoord3d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3d? : Bool
      !@proc_multi_tex_coord_3d.pointer.null?
    end

    # Invokes glMultiTexCoord3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3dv!(*args)
      @proc_multi_tex_coord_3dv.call(*args)
    end

    # Invokes glMultiTexCoord3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3dv") unless multi_tex_coord_3dv?

      @proc_multi_tex_coord_3dv.call(*args)
    end

    # Checks if the function "glMultiTexCoord3dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3dv? : Bool
      !@proc_multi_tex_coord_3dv.pointer.null?
    end

    # Invokes glMultiTexCoord3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3f!(*args)
      @proc_multi_tex_coord_3f.call(*args)
    end

    # Invokes glMultiTexCoord3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3f") unless multi_tex_coord_3f?

      @proc_multi_tex_coord_3f.call(*args)
    end

    # Checks if the function "glMultiTexCoord3f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3f? : Bool
      !@proc_multi_tex_coord_3f.pointer.null?
    end

    # Invokes glMultiTexCoord3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3fv!(*args)
      @proc_multi_tex_coord_3fv.call(*args)
    end

    # Invokes glMultiTexCoord3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3fv") unless multi_tex_coord_3fv?

      @proc_multi_tex_coord_3fv.call(*args)
    end

    # Checks if the function "glMultiTexCoord3fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3fv? : Bool
      !@proc_multi_tex_coord_3fv.pointer.null?
    end

    # Invokes glMultiTexCoord3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3i!(*args)
      @proc_multi_tex_coord_3i.call(*args)
    end

    # Invokes glMultiTexCoord3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3i") unless multi_tex_coord_3i?

      @proc_multi_tex_coord_3i.call(*args)
    end

    # Checks if the function "glMultiTexCoord3i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3i? : Bool
      !@proc_multi_tex_coord_3i.pointer.null?
    end

    # Invokes glMultiTexCoord3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3iv!(*args)
      @proc_multi_tex_coord_3iv.call(*args)
    end

    # Invokes glMultiTexCoord3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3iv") unless multi_tex_coord_3iv?

      @proc_multi_tex_coord_3iv.call(*args)
    end

    # Checks if the function "glMultiTexCoord3iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3iv? : Bool
      !@proc_multi_tex_coord_3iv.pointer.null?
    end

    # Invokes glMultiTexCoord3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3s!(*args)
      @proc_multi_tex_coord_3s.call(*args)
    end

    # Invokes glMultiTexCoord3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3s") unless multi_tex_coord_3s?

      @proc_multi_tex_coord_3s.call(*args)
    end

    # Checks if the function "glMultiTexCoord3s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3s? : Bool
      !@proc_multi_tex_coord_3s.pointer.null?
    end

    # Invokes glMultiTexCoord3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_3sv!(*args)
      @proc_multi_tex_coord_3sv.call(*args)
    end

    # Invokes glMultiTexCoord3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_3sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord3sv") unless multi_tex_coord_3sv?

      @proc_multi_tex_coord_3sv.call(*args)
    end

    # Checks if the function "glMultiTexCoord3sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_3sv? : Bool
      !@proc_multi_tex_coord_3sv.pointer.null?
    end

    # Invokes glMultiTexCoord4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4d!(*args)
      @proc_multi_tex_coord_4d.call(*args)
    end

    # Invokes glMultiTexCoord4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4d(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4d") unless multi_tex_coord_4d?

      @proc_multi_tex_coord_4d.call(*args)
    end

    # Checks if the function "glMultiTexCoord4d" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4d? : Bool
      !@proc_multi_tex_coord_4d.pointer.null?
    end

    # Invokes glMultiTexCoord4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4dv!(*args)
      @proc_multi_tex_coord_4dv.call(*args)
    end

    # Invokes glMultiTexCoord4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4dv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4dv") unless multi_tex_coord_4dv?

      @proc_multi_tex_coord_4dv.call(*args)
    end

    # Checks if the function "glMultiTexCoord4dv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4dv? : Bool
      !@proc_multi_tex_coord_4dv.pointer.null?
    end

    # Invokes glMultiTexCoord4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4f!(*args)
      @proc_multi_tex_coord_4f.call(*args)
    end

    # Invokes glMultiTexCoord4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4f(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4f") unless multi_tex_coord_4f?

      @proc_multi_tex_coord_4f.call(*args)
    end

    # Checks if the function "glMultiTexCoord4f" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4f? : Bool
      !@proc_multi_tex_coord_4f.pointer.null?
    end

    # Invokes glMultiTexCoord4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4fv!(*args)
      @proc_multi_tex_coord_4fv.call(*args)
    end

    # Invokes glMultiTexCoord4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4fv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4fv") unless multi_tex_coord_4fv?

      @proc_multi_tex_coord_4fv.call(*args)
    end

    # Checks if the function "glMultiTexCoord4fv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4fv? : Bool
      !@proc_multi_tex_coord_4fv.pointer.null?
    end

    # Invokes glMultiTexCoord4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4i!(*args)
      @proc_multi_tex_coord_4i.call(*args)
    end

    # Invokes glMultiTexCoord4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4i(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4i") unless multi_tex_coord_4i?

      @proc_multi_tex_coord_4i.call(*args)
    end

    # Checks if the function "glMultiTexCoord4i" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4i? : Bool
      !@proc_multi_tex_coord_4i.pointer.null?
    end

    # Invokes glMultiTexCoord4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4iv!(*args)
      @proc_multi_tex_coord_4iv.call(*args)
    end

    # Invokes glMultiTexCoord4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4iv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4iv") unless multi_tex_coord_4iv?

      @proc_multi_tex_coord_4iv.call(*args)
    end

    # Checks if the function "glMultiTexCoord4iv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4iv? : Bool
      !@proc_multi_tex_coord_4iv.pointer.null?
    end

    # Invokes glMultiTexCoord4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4s!(*args)
      @proc_multi_tex_coord_4s.call(*args)
    end

    # Invokes glMultiTexCoord4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4s(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4s") unless multi_tex_coord_4s?

      @proc_multi_tex_coord_4s.call(*args)
    end

    # Checks if the function "glMultiTexCoord4s" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4s? : Bool
      !@proc_multi_tex_coord_4s.pointer.null?
    end

    # Invokes glMultiTexCoord4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_4sv!(*args)
      @proc_multi_tex_coord_4sv.call(*args)
    end

    # Invokes glMultiTexCoord4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_4sv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoord4sv") unless multi_tex_coord_4sv?

      @proc_multi_tex_coord_4sv.call(*args)
    end

    # Checks if the function "glMultiTexCoord4sv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_4sv? : Bool
      !@proc_multi_tex_coord_4sv.pointer.null?
    end

    # Invokes glLoadTransposeMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_transpose_matrix_f!(*args)
      @proc_load_transpose_matrix_f.call(*args)
    end

    # Invokes glLoadTransposeMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_transpose_matrix_f(*args)
      raise FunctionUnavailableError.new("glLoadTransposeMatrixf") unless load_transpose_matrix_f?

      @proc_load_transpose_matrix_f.call(*args)
    end

    # Checks if the function "glLoadTransposeMatrixf" is loaded.
    @[AlwaysInline]
    def load_transpose_matrix_f? : Bool
      !@proc_load_transpose_matrix_f.pointer.null?
    end

    # Invokes glLoadTransposeMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def load_transpose_matrix_d!(*args)
      @proc_load_transpose_matrix_d.call(*args)
    end

    # Invokes glLoadTransposeMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def load_transpose_matrix_d(*args)
      raise FunctionUnavailableError.new("glLoadTransposeMatrixd") unless load_transpose_matrix_d?

      @proc_load_transpose_matrix_d.call(*args)
    end

    # Checks if the function "glLoadTransposeMatrixd" is loaded.
    @[AlwaysInline]
    def load_transpose_matrix_d? : Bool
      !@proc_load_transpose_matrix_d.pointer.null?
    end

    # Invokes glMultTransposeMatrixf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_transpose_matrix_f!(*args)
      @proc_mult_transpose_matrix_f.call(*args)
    end

    # Invokes glMultTransposeMatrixf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_transpose_matrix_f(*args)
      raise FunctionUnavailableError.new("glMultTransposeMatrixf") unless mult_transpose_matrix_f?

      @proc_mult_transpose_matrix_f.call(*args)
    end

    # Checks if the function "glMultTransposeMatrixf" is loaded.
    @[AlwaysInline]
    def mult_transpose_matrix_f? : Bool
      !@proc_mult_transpose_matrix_f.pointer.null?
    end

    # Invokes glMultTransposeMatrixd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def mult_transpose_matrix_d!(*args)
      @proc_mult_transpose_matrix_d.call(*args)
    end

    # Invokes glMultTransposeMatrixd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def mult_transpose_matrix_d(*args)
      raise FunctionUnavailableError.new("glMultTransposeMatrixd") unless mult_transpose_matrix_d?

      @proc_mult_transpose_matrix_d.call(*args)
    end

    # Checks if the function "glMultTransposeMatrixd" is loaded.
    @[AlwaysInline]
    def mult_transpose_matrix_d? : Bool
      !@proc_mult_transpose_matrix_d.pointer.null?
    end

    # Invokes glBlendFuncSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func_separate!(*args)
      @proc_blend_func_separate.call(*args)
    end

    # Invokes glBlendFuncSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func_separate(*args)
      raise FunctionUnavailableError.new("glBlendFuncSeparate") unless blend_func_separate?

      @proc_blend_func_separate.call(*args)
    end

    # Checks if the function "glBlendFuncSeparate" is loaded.
    @[AlwaysInline]
    def blend_func_separate? : Bool
      !@proc_blend_func_separate.pointer.null?
    end

    # Invokes glMultiDrawArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_arrays!(*args)
      @proc_multi_draw_arrays.call(*args)
    end

    # Invokes glMultiDrawArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_arrays(*args)
      raise FunctionUnavailableError.new("glMultiDrawArrays") unless multi_draw_arrays?

      @proc_multi_draw_arrays.call(*args)
    end

    # Checks if the function "glMultiDrawArrays" is loaded.
    @[AlwaysInline]
    def multi_draw_arrays? : Bool
      !@proc_multi_draw_arrays.pointer.null?
    end

    # Invokes glMultiDrawElements.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_elements!(*args)
      @proc_multi_draw_elements.call(*args)
    end

    # Invokes glMultiDrawElements.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_elements(*args)
      raise FunctionUnavailableError.new("glMultiDrawElements") unless multi_draw_elements?

      @proc_multi_draw_elements.call(*args)
    end

    # Checks if the function "glMultiDrawElements" is loaded.
    @[AlwaysInline]
    def multi_draw_elements? : Bool
      !@proc_multi_draw_elements.pointer.null?
    end

    # Invokes glPointParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_f!(*args)
      @proc_point_parameter_f.call(*args)
    end

    # Invokes glPointParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_f(*args)
      raise FunctionUnavailableError.new("glPointParameterf") unless point_parameter_f?

      @proc_point_parameter_f.call(*args)
    end

    # Checks if the function "glPointParameterf" is loaded.
    @[AlwaysInline]
    def point_parameter_f? : Bool
      !@proc_point_parameter_f.pointer.null?
    end

    # Invokes glPointParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_fv!(*args)
      @proc_point_parameter_fv.call(*args)
    end

    # Invokes glPointParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_fv(*args)
      raise FunctionUnavailableError.new("glPointParameterfv") unless point_parameter_fv?

      @proc_point_parameter_fv.call(*args)
    end

    # Checks if the function "glPointParameterfv" is loaded.
    @[AlwaysInline]
    def point_parameter_fv? : Bool
      !@proc_point_parameter_fv.pointer.null?
    end

    # Invokes glPointParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_i!(*args)
      @proc_point_parameter_i.call(*args)
    end

    # Invokes glPointParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_i(*args)
      raise FunctionUnavailableError.new("glPointParameteri") unless point_parameter_i?

      @proc_point_parameter_i.call(*args)
    end

    # Checks if the function "glPointParameteri" is loaded.
    @[AlwaysInline]
    def point_parameter_i? : Bool
      !@proc_point_parameter_i.pointer.null?
    end

    # Invokes glPointParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def point_parameter_iv!(*args)
      @proc_point_parameter_iv.call(*args)
    end

    # Invokes glPointParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def point_parameter_iv(*args)
      raise FunctionUnavailableError.new("glPointParameteriv") unless point_parameter_iv?

      @proc_point_parameter_iv.call(*args)
    end

    # Checks if the function "glPointParameteriv" is loaded.
    @[AlwaysInline]
    def point_parameter_iv? : Bool
      !@proc_point_parameter_iv.pointer.null?
    end

    # Invokes glFogCoordf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_f!(*args)
      @proc_fog_coord_f.call(*args)
    end

    # Invokes glFogCoordf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_f(*args)
      raise FunctionUnavailableError.new("glFogCoordf") unless fog_coord_f?

      @proc_fog_coord_f.call(*args)
    end

    # Checks if the function "glFogCoordf" is loaded.
    @[AlwaysInline]
    def fog_coord_f? : Bool
      !@proc_fog_coord_f.pointer.null?
    end

    # Invokes glFogCoordfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_fv!(*args)
      @proc_fog_coord_fv.call(*args)
    end

    # Invokes glFogCoordfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_fv(*args)
      raise FunctionUnavailableError.new("glFogCoordfv") unless fog_coord_fv?

      @proc_fog_coord_fv.call(*args)
    end

    # Checks if the function "glFogCoordfv" is loaded.
    @[AlwaysInline]
    def fog_coord_fv? : Bool
      !@proc_fog_coord_fv.pointer.null?
    end

    # Invokes glFogCoordd.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_d!(*args)
      @proc_fog_coord_d.call(*args)
    end

    # Invokes glFogCoordd.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_d(*args)
      raise FunctionUnavailableError.new("glFogCoordd") unless fog_coord_d?

      @proc_fog_coord_d.call(*args)
    end

    # Checks if the function "glFogCoordd" is loaded.
    @[AlwaysInline]
    def fog_coord_d? : Bool
      !@proc_fog_coord_d.pointer.null?
    end

    # Invokes glFogCoorddv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_dv!(*args)
      @proc_fog_coord_dv.call(*args)
    end

    # Invokes glFogCoorddv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_dv(*args)
      raise FunctionUnavailableError.new("glFogCoorddv") unless fog_coord_dv?

      @proc_fog_coord_dv.call(*args)
    end

    # Checks if the function "glFogCoorddv" is loaded.
    @[AlwaysInline]
    def fog_coord_dv? : Bool
      !@proc_fog_coord_dv.pointer.null?
    end

    # Invokes glFogCoordPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fog_coord_pointer!(*args)
      @proc_fog_coord_pointer.call(*args)
    end

    # Invokes glFogCoordPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fog_coord_pointer(*args)
      raise FunctionUnavailableError.new("glFogCoordPointer") unless fog_coord_pointer?

      @proc_fog_coord_pointer.call(*args)
    end

    # Checks if the function "glFogCoordPointer" is loaded.
    @[AlwaysInline]
    def fog_coord_pointer? : Bool
      !@proc_fog_coord_pointer.pointer.null?
    end

    # Invokes glSecondaryColor3b.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3b!(*args)
      @proc_secondary_color_3b.call(*args)
    end

    # Invokes glSecondaryColor3b.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3b(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3b") unless secondary_color_3b?

      @proc_secondary_color_3b.call(*args)
    end

    # Checks if the function "glSecondaryColor3b" is loaded.
    @[AlwaysInline]
    def secondary_color_3b? : Bool
      !@proc_secondary_color_3b.pointer.null?
    end

    # Invokes glSecondaryColor3bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3bv!(*args)
      @proc_secondary_color_3bv.call(*args)
    end

    # Invokes glSecondaryColor3bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3bv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3bv") unless secondary_color_3bv?

      @proc_secondary_color_3bv.call(*args)
    end

    # Checks if the function "glSecondaryColor3bv" is loaded.
    @[AlwaysInline]
    def secondary_color_3bv? : Bool
      !@proc_secondary_color_3bv.pointer.null?
    end

    # Invokes glSecondaryColor3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3d!(*args)
      @proc_secondary_color_3d.call(*args)
    end

    # Invokes glSecondaryColor3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3d(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3d") unless secondary_color_3d?

      @proc_secondary_color_3d.call(*args)
    end

    # Checks if the function "glSecondaryColor3d" is loaded.
    @[AlwaysInline]
    def secondary_color_3d? : Bool
      !@proc_secondary_color_3d.pointer.null?
    end

    # Invokes glSecondaryColor3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3dv!(*args)
      @proc_secondary_color_3dv.call(*args)
    end

    # Invokes glSecondaryColor3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3dv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3dv") unless secondary_color_3dv?

      @proc_secondary_color_3dv.call(*args)
    end

    # Checks if the function "glSecondaryColor3dv" is loaded.
    @[AlwaysInline]
    def secondary_color_3dv? : Bool
      !@proc_secondary_color_3dv.pointer.null?
    end

    # Invokes glSecondaryColor3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3f!(*args)
      @proc_secondary_color_3f.call(*args)
    end

    # Invokes glSecondaryColor3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3f(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3f") unless secondary_color_3f?

      @proc_secondary_color_3f.call(*args)
    end

    # Checks if the function "glSecondaryColor3f" is loaded.
    @[AlwaysInline]
    def secondary_color_3f? : Bool
      !@proc_secondary_color_3f.pointer.null?
    end

    # Invokes glSecondaryColor3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3fv!(*args)
      @proc_secondary_color_3fv.call(*args)
    end

    # Invokes glSecondaryColor3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3fv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3fv") unless secondary_color_3fv?

      @proc_secondary_color_3fv.call(*args)
    end

    # Checks if the function "glSecondaryColor3fv" is loaded.
    @[AlwaysInline]
    def secondary_color_3fv? : Bool
      !@proc_secondary_color_3fv.pointer.null?
    end

    # Invokes glSecondaryColor3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3i!(*args)
      @proc_secondary_color_3i.call(*args)
    end

    # Invokes glSecondaryColor3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3i(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3i") unless secondary_color_3i?

      @proc_secondary_color_3i.call(*args)
    end

    # Checks if the function "glSecondaryColor3i" is loaded.
    @[AlwaysInline]
    def secondary_color_3i? : Bool
      !@proc_secondary_color_3i.pointer.null?
    end

    # Invokes glSecondaryColor3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3iv!(*args)
      @proc_secondary_color_3iv.call(*args)
    end

    # Invokes glSecondaryColor3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3iv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3iv") unless secondary_color_3iv?

      @proc_secondary_color_3iv.call(*args)
    end

    # Checks if the function "glSecondaryColor3iv" is loaded.
    @[AlwaysInline]
    def secondary_color_3iv? : Bool
      !@proc_secondary_color_3iv.pointer.null?
    end

    # Invokes glSecondaryColor3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3s!(*args)
      @proc_secondary_color_3s.call(*args)
    end

    # Invokes glSecondaryColor3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3s(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3s") unless secondary_color_3s?

      @proc_secondary_color_3s.call(*args)
    end

    # Checks if the function "glSecondaryColor3s" is loaded.
    @[AlwaysInline]
    def secondary_color_3s? : Bool
      !@proc_secondary_color_3s.pointer.null?
    end

    # Invokes glSecondaryColor3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3sv!(*args)
      @proc_secondary_color_3sv.call(*args)
    end

    # Invokes glSecondaryColor3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3sv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3sv") unless secondary_color_3sv?

      @proc_secondary_color_3sv.call(*args)
    end

    # Checks if the function "glSecondaryColor3sv" is loaded.
    @[AlwaysInline]
    def secondary_color_3sv? : Bool
      !@proc_secondary_color_3sv.pointer.null?
    end

    # Invokes glSecondaryColor3ub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3ub!(*args)
      @proc_secondary_color_3ub.call(*args)
    end

    # Invokes glSecondaryColor3ub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3ub(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3ub") unless secondary_color_3ub?

      @proc_secondary_color_3ub.call(*args)
    end

    # Checks if the function "glSecondaryColor3ub" is loaded.
    @[AlwaysInline]
    def secondary_color_3ub? : Bool
      !@proc_secondary_color_3ub.pointer.null?
    end

    # Invokes glSecondaryColor3ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3ubv!(*args)
      @proc_secondary_color_3ubv.call(*args)
    end

    # Invokes glSecondaryColor3ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3ubv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3ubv") unless secondary_color_3ubv?

      @proc_secondary_color_3ubv.call(*args)
    end

    # Checks if the function "glSecondaryColor3ubv" is loaded.
    @[AlwaysInline]
    def secondary_color_3ubv? : Bool
      !@proc_secondary_color_3ubv.pointer.null?
    end

    # Invokes glSecondaryColor3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3ui!(*args)
      @proc_secondary_color_3ui.call(*args)
    end

    # Invokes glSecondaryColor3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3ui(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3ui") unless secondary_color_3ui?

      @proc_secondary_color_3ui.call(*args)
    end

    # Checks if the function "glSecondaryColor3ui" is loaded.
    @[AlwaysInline]
    def secondary_color_3ui? : Bool
      !@proc_secondary_color_3ui.pointer.null?
    end

    # Invokes glSecondaryColor3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3uiv!(*args)
      @proc_secondary_color_3uiv.call(*args)
    end

    # Invokes glSecondaryColor3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3uiv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3uiv") unless secondary_color_3uiv?

      @proc_secondary_color_3uiv.call(*args)
    end

    # Checks if the function "glSecondaryColor3uiv" is loaded.
    @[AlwaysInline]
    def secondary_color_3uiv? : Bool
      !@proc_secondary_color_3uiv.pointer.null?
    end

    # Invokes glSecondaryColor3us.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3us!(*args)
      @proc_secondary_color_3us.call(*args)
    end

    # Invokes glSecondaryColor3us.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3us(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3us") unless secondary_color_3us?

      @proc_secondary_color_3us.call(*args)
    end

    # Checks if the function "glSecondaryColor3us" is loaded.
    @[AlwaysInline]
    def secondary_color_3us? : Bool
      !@proc_secondary_color_3us.pointer.null?
    end

    # Invokes glSecondaryColor3usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_3usv!(*args)
      @proc_secondary_color_3usv.call(*args)
    end

    # Invokes glSecondaryColor3usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_3usv(*args)
      raise FunctionUnavailableError.new("glSecondaryColor3usv") unless secondary_color_3usv?

      @proc_secondary_color_3usv.call(*args)
    end

    # Checks if the function "glSecondaryColor3usv" is loaded.
    @[AlwaysInline]
    def secondary_color_3usv? : Bool
      !@proc_secondary_color_3usv.pointer.null?
    end

    # Invokes glSecondaryColorPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_pointer!(*args)
      @proc_secondary_color_pointer.call(*args)
    end

    # Invokes glSecondaryColorPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_pointer(*args)
      raise FunctionUnavailableError.new("glSecondaryColorPointer") unless secondary_color_pointer?

      @proc_secondary_color_pointer.call(*args)
    end

    # Checks if the function "glSecondaryColorPointer" is loaded.
    @[AlwaysInline]
    def secondary_color_pointer? : Bool
      !@proc_secondary_color_pointer.pointer.null?
    end

    # Invokes glWindowPos2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2d!(*args)
      @proc_window_pos_2d.call(*args)
    end

    # Invokes glWindowPos2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2d(*args)
      raise FunctionUnavailableError.new("glWindowPos2d") unless window_pos_2d?

      @proc_window_pos_2d.call(*args)
    end

    # Checks if the function "glWindowPos2d" is loaded.
    @[AlwaysInline]
    def window_pos_2d? : Bool
      !@proc_window_pos_2d.pointer.null?
    end

    # Invokes glWindowPos2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2dv!(*args)
      @proc_window_pos_2dv.call(*args)
    end

    # Invokes glWindowPos2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2dv(*args)
      raise FunctionUnavailableError.new("glWindowPos2dv") unless window_pos_2dv?

      @proc_window_pos_2dv.call(*args)
    end

    # Checks if the function "glWindowPos2dv" is loaded.
    @[AlwaysInline]
    def window_pos_2dv? : Bool
      !@proc_window_pos_2dv.pointer.null?
    end

    # Invokes glWindowPos2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2f!(*args)
      @proc_window_pos_2f.call(*args)
    end

    # Invokes glWindowPos2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2f(*args)
      raise FunctionUnavailableError.new("glWindowPos2f") unless window_pos_2f?

      @proc_window_pos_2f.call(*args)
    end

    # Checks if the function "glWindowPos2f" is loaded.
    @[AlwaysInline]
    def window_pos_2f? : Bool
      !@proc_window_pos_2f.pointer.null?
    end

    # Invokes glWindowPos2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2fv!(*args)
      @proc_window_pos_2fv.call(*args)
    end

    # Invokes glWindowPos2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2fv(*args)
      raise FunctionUnavailableError.new("glWindowPos2fv") unless window_pos_2fv?

      @proc_window_pos_2fv.call(*args)
    end

    # Checks if the function "glWindowPos2fv" is loaded.
    @[AlwaysInline]
    def window_pos_2fv? : Bool
      !@proc_window_pos_2fv.pointer.null?
    end

    # Invokes glWindowPos2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2i!(*args)
      @proc_window_pos_2i.call(*args)
    end

    # Invokes glWindowPos2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2i(*args)
      raise FunctionUnavailableError.new("glWindowPos2i") unless window_pos_2i?

      @proc_window_pos_2i.call(*args)
    end

    # Checks if the function "glWindowPos2i" is loaded.
    @[AlwaysInline]
    def window_pos_2i? : Bool
      !@proc_window_pos_2i.pointer.null?
    end

    # Invokes glWindowPos2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2iv!(*args)
      @proc_window_pos_2iv.call(*args)
    end

    # Invokes glWindowPos2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2iv(*args)
      raise FunctionUnavailableError.new("glWindowPos2iv") unless window_pos_2iv?

      @proc_window_pos_2iv.call(*args)
    end

    # Checks if the function "glWindowPos2iv" is loaded.
    @[AlwaysInline]
    def window_pos_2iv? : Bool
      !@proc_window_pos_2iv.pointer.null?
    end

    # Invokes glWindowPos2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2s!(*args)
      @proc_window_pos_2s.call(*args)
    end

    # Invokes glWindowPos2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2s(*args)
      raise FunctionUnavailableError.new("glWindowPos2s") unless window_pos_2s?

      @proc_window_pos_2s.call(*args)
    end

    # Checks if the function "glWindowPos2s" is loaded.
    @[AlwaysInline]
    def window_pos_2s? : Bool
      !@proc_window_pos_2s.pointer.null?
    end

    # Invokes glWindowPos2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_2sv!(*args)
      @proc_window_pos_2sv.call(*args)
    end

    # Invokes glWindowPos2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_2sv(*args)
      raise FunctionUnavailableError.new("glWindowPos2sv") unless window_pos_2sv?

      @proc_window_pos_2sv.call(*args)
    end

    # Checks if the function "glWindowPos2sv" is loaded.
    @[AlwaysInline]
    def window_pos_2sv? : Bool
      !@proc_window_pos_2sv.pointer.null?
    end

    # Invokes glWindowPos3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3d!(*args)
      @proc_window_pos_3d.call(*args)
    end

    # Invokes glWindowPos3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3d(*args)
      raise FunctionUnavailableError.new("glWindowPos3d") unless window_pos_3d?

      @proc_window_pos_3d.call(*args)
    end

    # Checks if the function "glWindowPos3d" is loaded.
    @[AlwaysInline]
    def window_pos_3d? : Bool
      !@proc_window_pos_3d.pointer.null?
    end

    # Invokes glWindowPos3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3dv!(*args)
      @proc_window_pos_3dv.call(*args)
    end

    # Invokes glWindowPos3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3dv(*args)
      raise FunctionUnavailableError.new("glWindowPos3dv") unless window_pos_3dv?

      @proc_window_pos_3dv.call(*args)
    end

    # Checks if the function "glWindowPos3dv" is loaded.
    @[AlwaysInline]
    def window_pos_3dv? : Bool
      !@proc_window_pos_3dv.pointer.null?
    end

    # Invokes glWindowPos3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3f!(*args)
      @proc_window_pos_3f.call(*args)
    end

    # Invokes glWindowPos3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3f(*args)
      raise FunctionUnavailableError.new("glWindowPos3f") unless window_pos_3f?

      @proc_window_pos_3f.call(*args)
    end

    # Checks if the function "glWindowPos3f" is loaded.
    @[AlwaysInline]
    def window_pos_3f? : Bool
      !@proc_window_pos_3f.pointer.null?
    end

    # Invokes glWindowPos3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3fv!(*args)
      @proc_window_pos_3fv.call(*args)
    end

    # Invokes glWindowPos3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3fv(*args)
      raise FunctionUnavailableError.new("glWindowPos3fv") unless window_pos_3fv?

      @proc_window_pos_3fv.call(*args)
    end

    # Checks if the function "glWindowPos3fv" is loaded.
    @[AlwaysInline]
    def window_pos_3fv? : Bool
      !@proc_window_pos_3fv.pointer.null?
    end

    # Invokes glWindowPos3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3i!(*args)
      @proc_window_pos_3i.call(*args)
    end

    # Invokes glWindowPos3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3i(*args)
      raise FunctionUnavailableError.new("glWindowPos3i") unless window_pos_3i?

      @proc_window_pos_3i.call(*args)
    end

    # Checks if the function "glWindowPos3i" is loaded.
    @[AlwaysInline]
    def window_pos_3i? : Bool
      !@proc_window_pos_3i.pointer.null?
    end

    # Invokes glWindowPos3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3iv!(*args)
      @proc_window_pos_3iv.call(*args)
    end

    # Invokes glWindowPos3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3iv(*args)
      raise FunctionUnavailableError.new("glWindowPos3iv") unless window_pos_3iv?

      @proc_window_pos_3iv.call(*args)
    end

    # Checks if the function "glWindowPos3iv" is loaded.
    @[AlwaysInline]
    def window_pos_3iv? : Bool
      !@proc_window_pos_3iv.pointer.null?
    end

    # Invokes glWindowPos3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3s!(*args)
      @proc_window_pos_3s.call(*args)
    end

    # Invokes glWindowPos3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3s(*args)
      raise FunctionUnavailableError.new("glWindowPos3s") unless window_pos_3s?

      @proc_window_pos_3s.call(*args)
    end

    # Checks if the function "glWindowPos3s" is loaded.
    @[AlwaysInline]
    def window_pos_3s? : Bool
      !@proc_window_pos_3s.pointer.null?
    end

    # Invokes glWindowPos3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def window_pos_3sv!(*args)
      @proc_window_pos_3sv.call(*args)
    end

    # Invokes glWindowPos3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def window_pos_3sv(*args)
      raise FunctionUnavailableError.new("glWindowPos3sv") unless window_pos_3sv?

      @proc_window_pos_3sv.call(*args)
    end

    # Checks if the function "glWindowPos3sv" is loaded.
    @[AlwaysInline]
    def window_pos_3sv? : Bool
      !@proc_window_pos_3sv.pointer.null?
    end

    # Invokes glBlendColor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_color!(*args)
      @proc_blend_color.call(*args)
    end

    # Invokes glBlendColor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_color(*args)
      raise FunctionUnavailableError.new("glBlendColor") unless blend_color?

      @proc_blend_color.call(*args)
    end

    # Checks if the function "glBlendColor" is loaded.
    @[AlwaysInline]
    def blend_color? : Bool
      !@proc_blend_color.pointer.null?
    end

    # Invokes glBlendEquation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation!(*args)
      @proc_blend_equation.call(*args)
    end

    # Invokes glBlendEquation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation(*args)
      raise FunctionUnavailableError.new("glBlendEquation") unless blend_equation?

      @proc_blend_equation.call(*args)
    end

    # Checks if the function "glBlendEquation" is loaded.
    @[AlwaysInline]
    def blend_equation? : Bool
      !@proc_blend_equation.pointer.null?
    end

    # Invokes glGenQueries.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_queries!(*args)
      @proc_gen_queries.call(*args)
    end

    # Invokes glGenQueries.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_queries(*args)
      raise FunctionUnavailableError.new("glGenQueries") unless gen_queries?

      @proc_gen_queries.call(*args)
    end

    # Checks if the function "glGenQueries" is loaded.
    @[AlwaysInline]
    def gen_queries? : Bool
      !@proc_gen_queries.pointer.null?
    end

    # Invokes glDeleteQueries.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_queries!(*args)
      @proc_delete_queries.call(*args)
    end

    # Invokes glDeleteQueries.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_queries(*args)
      raise FunctionUnavailableError.new("glDeleteQueries") unless delete_queries?

      @proc_delete_queries.call(*args)
    end

    # Checks if the function "glDeleteQueries" is loaded.
    @[AlwaysInline]
    def delete_queries? : Bool
      !@proc_delete_queries.pointer.null?
    end

    # Invokes glIsQuery.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_query!(*args)
      @proc_is_query.call(*args)
    end

    # Invokes glIsQuery.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_query(*args)
      raise FunctionUnavailableError.new("glIsQuery") unless is_query?

      @proc_is_query.call(*args)
    end

    # Checks if the function "glIsQuery" is loaded.
    @[AlwaysInline]
    def is_query? : Bool
      !@proc_is_query.pointer.null?
    end

    # Invokes glBeginQuery.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_query!(*args)
      @proc_begin_query.call(*args)
    end

    # Invokes glBeginQuery.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_query(*args)
      raise FunctionUnavailableError.new("glBeginQuery") unless begin_query?

      @proc_begin_query.call(*args)
    end

    # Checks if the function "glBeginQuery" is loaded.
    @[AlwaysInline]
    def begin_query? : Bool
      !@proc_begin_query.pointer.null?
    end

    # Invokes glEndQuery.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_query!(*args)
      @proc_end_query.call(*args)
    end

    # Invokes glEndQuery.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_query(*args)
      raise FunctionUnavailableError.new("glEndQuery") unless end_query?

      @proc_end_query.call(*args)
    end

    # Checks if the function "glEndQuery" is loaded.
    @[AlwaysInline]
    def end_query? : Bool
      !@proc_end_query.pointer.null?
    end

    # Invokes glGetQueryiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_iv!(*args)
      @proc_get_query_iv.call(*args)
    end

    # Invokes glGetQueryiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryiv") unless get_query_iv?

      @proc_get_query_iv.call(*args)
    end

    # Checks if the function "glGetQueryiv" is loaded.
    @[AlwaysInline]
    def get_query_iv? : Bool
      !@proc_get_query_iv.pointer.null?
    end

    # Invokes glGetQueryObjectiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_iv!(*args)
      @proc_get_query_object_iv.call(*args)
    end

    # Invokes glGetQueryObjectiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryObjectiv") unless get_query_object_iv?

      @proc_get_query_object_iv.call(*args)
    end

    # Checks if the function "glGetQueryObjectiv" is loaded.
    @[AlwaysInline]
    def get_query_object_iv? : Bool
      !@proc_get_query_object_iv.pointer.null?
    end

    # Invokes glGetQueryObjectuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_uiv!(*args)
      @proc_get_query_object_uiv.call(*args)
    end

    # Invokes glGetQueryObjectuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_uiv(*args)
      raise FunctionUnavailableError.new("glGetQueryObjectuiv") unless get_query_object_uiv?

      @proc_get_query_object_uiv.call(*args)
    end

    # Checks if the function "glGetQueryObjectuiv" is loaded.
    @[AlwaysInline]
    def get_query_object_uiv? : Bool
      !@proc_get_query_object_uiv.pointer.null?
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

    # Invokes glGetBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_sub_data!(*args)
      @proc_get_buffer_sub_data.call(*args)
    end

    # Invokes glGetBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glGetBufferSubData") unless get_buffer_sub_data?

      @proc_get_buffer_sub_data.call(*args)
    end

    # Checks if the function "glGetBufferSubData" is loaded.
    @[AlwaysInline]
    def get_buffer_sub_data? : Bool
      !@proc_get_buffer_sub_data.pointer.null?
    end

    # Invokes glMapBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_buffer!(*args)
      @proc_map_buffer.call(*args)
    end

    # Invokes glMapBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_buffer(*args)
      raise FunctionUnavailableError.new("glMapBuffer") unless map_buffer?

      @proc_map_buffer.call(*args)
    end

    # Checks if the function "glMapBuffer" is loaded.
    @[AlwaysInline]
    def map_buffer? : Bool
      !@proc_map_buffer.pointer.null?
    end

    # Invokes glUnmapBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def unmap_buffer!(*args)
      @proc_unmap_buffer.call(*args)
    end

    # Invokes glUnmapBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def unmap_buffer(*args)
      raise FunctionUnavailableError.new("glUnmapBuffer") unless unmap_buffer?

      @proc_unmap_buffer.call(*args)
    end

    # Checks if the function "glUnmapBuffer" is loaded.
    @[AlwaysInline]
    def unmap_buffer? : Bool
      !@proc_unmap_buffer.pointer.null?
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

    # Invokes glGetBufferPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_pointer_v!(*args)
      @proc_get_buffer_pointer_v.call(*args)
    end

    # Invokes glGetBufferPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetBufferPointerv") unless get_buffer_pointer_v?

      @proc_get_buffer_pointer_v.call(*args)
    end

    # Checks if the function "glGetBufferPointerv" is loaded.
    @[AlwaysInline]
    def get_buffer_pointer_v? : Bool
      !@proc_get_buffer_pointer_v.pointer.null?
    end

    # Invokes glBlendEquationSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation_separate!(*args)
      @proc_blend_equation_separate.call(*args)
    end

    # Invokes glBlendEquationSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation_separate(*args)
      raise FunctionUnavailableError.new("glBlendEquationSeparate") unless blend_equation_separate?

      @proc_blend_equation_separate.call(*args)
    end

    # Checks if the function "glBlendEquationSeparate" is loaded.
    @[AlwaysInline]
    def blend_equation_separate? : Bool
      !@proc_blend_equation_separate.pointer.null?
    end

    # Invokes glDrawBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_buffers!(*args)
      @proc_draw_buffers.call(*args)
    end

    # Invokes glDrawBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_buffers(*args)
      raise FunctionUnavailableError.new("glDrawBuffers") unless draw_buffers?

      @proc_draw_buffers.call(*args)
    end

    # Checks if the function "glDrawBuffers" is loaded.
    @[AlwaysInline]
    def draw_buffers? : Bool
      !@proc_draw_buffers.pointer.null?
    end

    # Invokes glStencilOpSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_op_separate!(*args)
      @proc_stencil_op_separate.call(*args)
    end

    # Invokes glStencilOpSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_op_separate(*args)
      raise FunctionUnavailableError.new("glStencilOpSeparate") unless stencil_op_separate?

      @proc_stencil_op_separate.call(*args)
    end

    # Checks if the function "glStencilOpSeparate" is loaded.
    @[AlwaysInline]
    def stencil_op_separate? : Bool
      !@proc_stencil_op_separate.pointer.null?
    end

    # Invokes glStencilFuncSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_func_separate!(*args)
      @proc_stencil_func_separate.call(*args)
    end

    # Invokes glStencilFuncSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_func_separate(*args)
      raise FunctionUnavailableError.new("glStencilFuncSeparate") unless stencil_func_separate?

      @proc_stencil_func_separate.call(*args)
    end

    # Checks if the function "glStencilFuncSeparate" is loaded.
    @[AlwaysInline]
    def stencil_func_separate? : Bool
      !@proc_stencil_func_separate.pointer.null?
    end

    # Invokes glStencilMaskSeparate.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def stencil_mask_separate!(*args)
      @proc_stencil_mask_separate.call(*args)
    end

    # Invokes glStencilMaskSeparate.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def stencil_mask_separate(*args)
      raise FunctionUnavailableError.new("glStencilMaskSeparate") unless stencil_mask_separate?

      @proc_stencil_mask_separate.call(*args)
    end

    # Checks if the function "glStencilMaskSeparate" is loaded.
    @[AlwaysInline]
    def stencil_mask_separate? : Bool
      !@proc_stencil_mask_separate.pointer.null?
    end

    # Invokes glAttachShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def attach_shader!(*args)
      @proc_attach_shader.call(*args)
    end

    # Invokes glAttachShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def attach_shader(*args)
      raise FunctionUnavailableError.new("glAttachShader") unless attach_shader?

      @proc_attach_shader.call(*args)
    end

    # Checks if the function "glAttachShader" is loaded.
    @[AlwaysInline]
    def attach_shader? : Bool
      !@proc_attach_shader.pointer.null?
    end

    # Invokes glBindAttribLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_attrib_location!(*args)
      @proc_bind_attrib_location.call(*args)
    end

    # Invokes glBindAttribLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_attrib_location(*args)
      raise FunctionUnavailableError.new("glBindAttribLocation") unless bind_attrib_location?

      @proc_bind_attrib_location.call(*args)
    end

    # Checks if the function "glBindAttribLocation" is loaded.
    @[AlwaysInline]
    def bind_attrib_location? : Bool
      !@proc_bind_attrib_location.pointer.null?
    end

    # Invokes glCompileShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compile_shader!(*args)
      @proc_compile_shader.call(*args)
    end

    # Invokes glCompileShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compile_shader(*args)
      raise FunctionUnavailableError.new("glCompileShader") unless compile_shader?

      @proc_compile_shader.call(*args)
    end

    # Checks if the function "glCompileShader" is loaded.
    @[AlwaysInline]
    def compile_shader? : Bool
      !@proc_compile_shader.pointer.null?
    end

    # Invokes glCreateProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_program!(*args)
      @proc_create_program.call(*args)
    end

    # Invokes glCreateProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_program(*args)
      raise FunctionUnavailableError.new("glCreateProgram") unless create_program?

      @proc_create_program.call(*args)
    end

    # Checks if the function "glCreateProgram" is loaded.
    @[AlwaysInline]
    def create_program? : Bool
      !@proc_create_program.pointer.null?
    end

    # Invokes glCreateShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_shader!(*args)
      @proc_create_shader.call(*args)
    end

    # Invokes glCreateShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_shader(*args)
      raise FunctionUnavailableError.new("glCreateShader") unless create_shader?

      @proc_create_shader.call(*args)
    end

    # Checks if the function "glCreateShader" is loaded.
    @[AlwaysInline]
    def create_shader? : Bool
      !@proc_create_shader.pointer.null?
    end

    # Invokes glDeleteProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_program!(*args)
      @proc_delete_program.call(*args)
    end

    # Invokes glDeleteProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_program(*args)
      raise FunctionUnavailableError.new("glDeleteProgram") unless delete_program?

      @proc_delete_program.call(*args)
    end

    # Checks if the function "glDeleteProgram" is loaded.
    @[AlwaysInline]
    def delete_program? : Bool
      !@proc_delete_program.pointer.null?
    end

    # Invokes glDeleteShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_shader!(*args)
      @proc_delete_shader.call(*args)
    end

    # Invokes glDeleteShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_shader(*args)
      raise FunctionUnavailableError.new("glDeleteShader") unless delete_shader?

      @proc_delete_shader.call(*args)
    end

    # Checks if the function "glDeleteShader" is loaded.
    @[AlwaysInline]
    def delete_shader? : Bool
      !@proc_delete_shader.pointer.null?
    end

    # Invokes glDetachShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def detach_shader!(*args)
      @proc_detach_shader.call(*args)
    end

    # Invokes glDetachShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def detach_shader(*args)
      raise FunctionUnavailableError.new("glDetachShader") unless detach_shader?

      @proc_detach_shader.call(*args)
    end

    # Checks if the function "glDetachShader" is loaded.
    @[AlwaysInline]
    def detach_shader? : Bool
      !@proc_detach_shader.pointer.null?
    end

    # Invokes glDisableVertexAttribArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_vertex_attrib_array!(*args)
      @proc_disable_vertex_attrib_array.call(*args)
    end

    # Invokes glDisableVertexAttribArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_vertex_attrib_array(*args)
      raise FunctionUnavailableError.new("glDisableVertexAttribArray") unless disable_vertex_attrib_array?

      @proc_disable_vertex_attrib_array.call(*args)
    end

    # Checks if the function "glDisableVertexAttribArray" is loaded.
    @[AlwaysInline]
    def disable_vertex_attrib_array? : Bool
      !@proc_disable_vertex_attrib_array.pointer.null?
    end

    # Invokes glEnableVertexAttribArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_vertex_attrib_array!(*args)
      @proc_enable_vertex_attrib_array.call(*args)
    end

    # Invokes glEnableVertexAttribArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_vertex_attrib_array(*args)
      raise FunctionUnavailableError.new("glEnableVertexAttribArray") unless enable_vertex_attrib_array?

      @proc_enable_vertex_attrib_array.call(*args)
    end

    # Checks if the function "glEnableVertexAttribArray" is loaded.
    @[AlwaysInline]
    def enable_vertex_attrib_array? : Bool
      !@proc_enable_vertex_attrib_array.pointer.null?
    end

    # Invokes glGetActiveAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_attrib!(*args)
      @proc_get_active_attrib.call(*args)
    end

    # Invokes glGetActiveAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_attrib(*args)
      raise FunctionUnavailableError.new("glGetActiveAttrib") unless get_active_attrib?

      @proc_get_active_attrib.call(*args)
    end

    # Checks if the function "glGetActiveAttrib" is loaded.
    @[AlwaysInline]
    def get_active_attrib? : Bool
      !@proc_get_active_attrib.pointer.null?
    end

    # Invokes glGetActiveUniform.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform!(*args)
      @proc_get_active_uniform.call(*args)
    end

    # Invokes glGetActiveUniform.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform(*args)
      raise FunctionUnavailableError.new("glGetActiveUniform") unless get_active_uniform?

      @proc_get_active_uniform.call(*args)
    end

    # Checks if the function "glGetActiveUniform" is loaded.
    @[AlwaysInline]
    def get_active_uniform? : Bool
      !@proc_get_active_uniform.pointer.null?
    end

    # Invokes glGetAttachedShaders.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_attached_shaders!(*args)
      @proc_get_attached_shaders.call(*args)
    end

    # Invokes glGetAttachedShaders.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_attached_shaders(*args)
      raise FunctionUnavailableError.new("glGetAttachedShaders") unless get_attached_shaders?

      @proc_get_attached_shaders.call(*args)
    end

    # Checks if the function "glGetAttachedShaders" is loaded.
    @[AlwaysInline]
    def get_attached_shaders? : Bool
      !@proc_get_attached_shaders.pointer.null?
    end

    # Invokes glGetAttribLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_attrib_location!(*args)
      @proc_get_attrib_location.call(*args)
    end

    # Invokes glGetAttribLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_attrib_location(*args)
      raise FunctionUnavailableError.new("glGetAttribLocation") unless get_attrib_location?

      @proc_get_attrib_location.call(*args)
    end

    # Checks if the function "glGetAttribLocation" is loaded.
    @[AlwaysInline]
    def get_attrib_location? : Bool
      !@proc_get_attrib_location.pointer.null?
    end

    # Invokes glGetProgramiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_iv!(*args)
      @proc_get_program_iv.call(*args)
    end

    # Invokes glGetProgramiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramiv") unless get_program_iv?

      @proc_get_program_iv.call(*args)
    end

    # Checks if the function "glGetProgramiv" is loaded.
    @[AlwaysInline]
    def get_program_iv? : Bool
      !@proc_get_program_iv.pointer.null?
    end

    # Invokes glGetProgramInfoLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_info_log!(*args)
      @proc_get_program_info_log.call(*args)
    end

    # Invokes glGetProgramInfoLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_info_log(*args)
      raise FunctionUnavailableError.new("glGetProgramInfoLog") unless get_program_info_log?

      @proc_get_program_info_log.call(*args)
    end

    # Checks if the function "glGetProgramInfoLog" is loaded.
    @[AlwaysInline]
    def get_program_info_log? : Bool
      !@proc_get_program_info_log.pointer.null?
    end

    # Invokes glGetShaderiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_iv!(*args)
      @proc_get_shader_iv.call(*args)
    end

    # Invokes glGetShaderiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_iv(*args)
      raise FunctionUnavailableError.new("glGetShaderiv") unless get_shader_iv?

      @proc_get_shader_iv.call(*args)
    end

    # Checks if the function "glGetShaderiv" is loaded.
    @[AlwaysInline]
    def get_shader_iv? : Bool
      !@proc_get_shader_iv.pointer.null?
    end

    # Invokes glGetShaderInfoLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_info_log!(*args)
      @proc_get_shader_info_log.call(*args)
    end

    # Invokes glGetShaderInfoLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_info_log(*args)
      raise FunctionUnavailableError.new("glGetShaderInfoLog") unless get_shader_info_log?

      @proc_get_shader_info_log.call(*args)
    end

    # Checks if the function "glGetShaderInfoLog" is loaded.
    @[AlwaysInline]
    def get_shader_info_log? : Bool
      !@proc_get_shader_info_log.pointer.null?
    end

    # Invokes glGetShaderSource.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_source!(*args)
      @proc_get_shader_source.call(*args)
    end

    # Invokes glGetShaderSource.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_source(*args)
      raise FunctionUnavailableError.new("glGetShaderSource") unless get_shader_source?

      @proc_get_shader_source.call(*args)
    end

    # Checks if the function "glGetShaderSource" is loaded.
    @[AlwaysInline]
    def get_shader_source? : Bool
      !@proc_get_shader_source.pointer.null?
    end

    # Invokes glGetUniformLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_location!(*args)
      @proc_get_uniform_location.call(*args)
    end

    # Invokes glGetUniformLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_location(*args)
      raise FunctionUnavailableError.new("glGetUniformLocation") unless get_uniform_location?

      @proc_get_uniform_location.call(*args)
    end

    # Checks if the function "glGetUniformLocation" is loaded.
    @[AlwaysInline]
    def get_uniform_location? : Bool
      !@proc_get_uniform_location.pointer.null?
    end

    # Invokes glGetUniformfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_fv!(*args)
      @proc_get_uniform_fv.call(*args)
    end

    # Invokes glGetUniformfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_fv(*args)
      raise FunctionUnavailableError.new("glGetUniformfv") unless get_uniform_fv?

      @proc_get_uniform_fv.call(*args)
    end

    # Checks if the function "glGetUniformfv" is loaded.
    @[AlwaysInline]
    def get_uniform_fv? : Bool
      !@proc_get_uniform_fv.pointer.null?
    end

    # Invokes glGetUniformiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_iv!(*args)
      @proc_get_uniform_iv.call(*args)
    end

    # Invokes glGetUniformiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_iv(*args)
      raise FunctionUnavailableError.new("glGetUniformiv") unless get_uniform_iv?

      @proc_get_uniform_iv.call(*args)
    end

    # Checks if the function "glGetUniformiv" is loaded.
    @[AlwaysInline]
    def get_uniform_iv? : Bool
      !@proc_get_uniform_iv.pointer.null?
    end

    # Invokes glGetVertexAttribdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_dv!(*args)
      @proc_get_vertex_attrib_dv.call(*args)
    end

    # Invokes glGetVertexAttribdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_dv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribdv") unless get_vertex_attrib_dv?

      @proc_get_vertex_attrib_dv.call(*args)
    end

    # Checks if the function "glGetVertexAttribdv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_dv? : Bool
      !@proc_get_vertex_attrib_dv.pointer.null?
    end

    # Invokes glGetVertexAttribfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_fv!(*args)
      @proc_get_vertex_attrib_fv.call(*args)
    end

    # Invokes glGetVertexAttribfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_fv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribfv") unless get_vertex_attrib_fv?

      @proc_get_vertex_attrib_fv.call(*args)
    end

    # Checks if the function "glGetVertexAttribfv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_fv? : Bool
      !@proc_get_vertex_attrib_fv.pointer.null?
    end

    # Invokes glGetVertexAttribiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_iv!(*args)
      @proc_get_vertex_attrib_iv.call(*args)
    end

    # Invokes glGetVertexAttribiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_iv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribiv") unless get_vertex_attrib_iv?

      @proc_get_vertex_attrib_iv.call(*args)
    end

    # Checks if the function "glGetVertexAttribiv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_iv? : Bool
      !@proc_get_vertex_attrib_iv.pointer.null?
    end

    # Invokes glGetVertexAttribPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_pointer_v!(*args)
      @proc_get_vertex_attrib_pointer_v.call(*args)
    end

    # Invokes glGetVertexAttribPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribPointerv") unless get_vertex_attrib_pointer_v?

      @proc_get_vertex_attrib_pointer_v.call(*args)
    end

    # Checks if the function "glGetVertexAttribPointerv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_pointer_v? : Bool
      !@proc_get_vertex_attrib_pointer_v.pointer.null?
    end

    # Invokes glIsProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_program!(*args)
      @proc_is_program.call(*args)
    end

    # Invokes glIsProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_program(*args)
      raise FunctionUnavailableError.new("glIsProgram") unless is_program?

      @proc_is_program.call(*args)
    end

    # Checks if the function "glIsProgram" is loaded.
    @[AlwaysInline]
    def is_program? : Bool
      !@proc_is_program.pointer.null?
    end

    # Invokes glIsShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_shader!(*args)
      @proc_is_shader.call(*args)
    end

    # Invokes glIsShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_shader(*args)
      raise FunctionUnavailableError.new("glIsShader") unless is_shader?

      @proc_is_shader.call(*args)
    end

    # Checks if the function "glIsShader" is loaded.
    @[AlwaysInline]
    def is_shader? : Bool
      !@proc_is_shader.pointer.null?
    end

    # Invokes glLinkProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def link_program!(*args)
      @proc_link_program.call(*args)
    end

    # Invokes glLinkProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def link_program(*args)
      raise FunctionUnavailableError.new("glLinkProgram") unless link_program?

      @proc_link_program.call(*args)
    end

    # Checks if the function "glLinkProgram" is loaded.
    @[AlwaysInline]
    def link_program? : Bool
      !@proc_link_program.pointer.null?
    end

    # Invokes glShaderSource.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shader_source!(*args)
      @proc_shader_source.call(*args)
    end

    # Invokes glShaderSource.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shader_source(*args)
      raise FunctionUnavailableError.new("glShaderSource") unless shader_source?

      @proc_shader_source.call(*args)
    end

    # Checks if the function "glShaderSource" is loaded.
    @[AlwaysInline]
    def shader_source? : Bool
      !@proc_shader_source.pointer.null?
    end

    # Invokes glUseProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def use_program!(*args)
      @proc_use_program.call(*args)
    end

    # Invokes glUseProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def use_program(*args)
      raise FunctionUnavailableError.new("glUseProgram") unless use_program?

      @proc_use_program.call(*args)
    end

    # Checks if the function "glUseProgram" is loaded.
    @[AlwaysInline]
    def use_program? : Bool
      !@proc_use_program.pointer.null?
    end

    # Invokes glUniform1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1f!(*args)
      @proc_uniform_1f.call(*args)
    end

    # Invokes glUniform1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1f(*args)
      raise FunctionUnavailableError.new("glUniform1f") unless uniform_1f?

      @proc_uniform_1f.call(*args)
    end

    # Checks if the function "glUniform1f" is loaded.
    @[AlwaysInline]
    def uniform_1f? : Bool
      !@proc_uniform_1f.pointer.null?
    end

    # Invokes glUniform2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2f!(*args)
      @proc_uniform_2f.call(*args)
    end

    # Invokes glUniform2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2f(*args)
      raise FunctionUnavailableError.new("glUniform2f") unless uniform_2f?

      @proc_uniform_2f.call(*args)
    end

    # Checks if the function "glUniform2f" is loaded.
    @[AlwaysInline]
    def uniform_2f? : Bool
      !@proc_uniform_2f.pointer.null?
    end

    # Invokes glUniform3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3f!(*args)
      @proc_uniform_3f.call(*args)
    end

    # Invokes glUniform3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3f(*args)
      raise FunctionUnavailableError.new("glUniform3f") unless uniform_3f?

      @proc_uniform_3f.call(*args)
    end

    # Checks if the function "glUniform3f" is loaded.
    @[AlwaysInline]
    def uniform_3f? : Bool
      !@proc_uniform_3f.pointer.null?
    end

    # Invokes glUniform4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4f!(*args)
      @proc_uniform_4f.call(*args)
    end

    # Invokes glUniform4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4f(*args)
      raise FunctionUnavailableError.new("glUniform4f") unless uniform_4f?

      @proc_uniform_4f.call(*args)
    end

    # Checks if the function "glUniform4f" is loaded.
    @[AlwaysInline]
    def uniform_4f? : Bool
      !@proc_uniform_4f.pointer.null?
    end

    # Invokes glUniform1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1i!(*args)
      @proc_uniform_1i.call(*args)
    end

    # Invokes glUniform1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1i(*args)
      raise FunctionUnavailableError.new("glUniform1i") unless uniform_1i?

      @proc_uniform_1i.call(*args)
    end

    # Checks if the function "glUniform1i" is loaded.
    @[AlwaysInline]
    def uniform_1i? : Bool
      !@proc_uniform_1i.pointer.null?
    end

    # Invokes glUniform2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2i!(*args)
      @proc_uniform_2i.call(*args)
    end

    # Invokes glUniform2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2i(*args)
      raise FunctionUnavailableError.new("glUniform2i") unless uniform_2i?

      @proc_uniform_2i.call(*args)
    end

    # Checks if the function "glUniform2i" is loaded.
    @[AlwaysInline]
    def uniform_2i? : Bool
      !@proc_uniform_2i.pointer.null?
    end

    # Invokes glUniform3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3i!(*args)
      @proc_uniform_3i.call(*args)
    end

    # Invokes glUniform3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3i(*args)
      raise FunctionUnavailableError.new("glUniform3i") unless uniform_3i?

      @proc_uniform_3i.call(*args)
    end

    # Checks if the function "glUniform3i" is loaded.
    @[AlwaysInline]
    def uniform_3i? : Bool
      !@proc_uniform_3i.pointer.null?
    end

    # Invokes glUniform4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4i!(*args)
      @proc_uniform_4i.call(*args)
    end

    # Invokes glUniform4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4i(*args)
      raise FunctionUnavailableError.new("glUniform4i") unless uniform_4i?

      @proc_uniform_4i.call(*args)
    end

    # Checks if the function "glUniform4i" is loaded.
    @[AlwaysInline]
    def uniform_4i? : Bool
      !@proc_uniform_4i.pointer.null?
    end

    # Invokes glUniform1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1fv!(*args)
      @proc_uniform_1fv.call(*args)
    end

    # Invokes glUniform1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1fv(*args)
      raise FunctionUnavailableError.new("glUniform1fv") unless uniform_1fv?

      @proc_uniform_1fv.call(*args)
    end

    # Checks if the function "glUniform1fv" is loaded.
    @[AlwaysInline]
    def uniform_1fv? : Bool
      !@proc_uniform_1fv.pointer.null?
    end

    # Invokes glUniform2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2fv!(*args)
      @proc_uniform_2fv.call(*args)
    end

    # Invokes glUniform2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2fv(*args)
      raise FunctionUnavailableError.new("glUniform2fv") unless uniform_2fv?

      @proc_uniform_2fv.call(*args)
    end

    # Checks if the function "glUniform2fv" is loaded.
    @[AlwaysInline]
    def uniform_2fv? : Bool
      !@proc_uniform_2fv.pointer.null?
    end

    # Invokes glUniform3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3fv!(*args)
      @proc_uniform_3fv.call(*args)
    end

    # Invokes glUniform3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3fv(*args)
      raise FunctionUnavailableError.new("glUniform3fv") unless uniform_3fv?

      @proc_uniform_3fv.call(*args)
    end

    # Checks if the function "glUniform3fv" is loaded.
    @[AlwaysInline]
    def uniform_3fv? : Bool
      !@proc_uniform_3fv.pointer.null?
    end

    # Invokes glUniform4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4fv!(*args)
      @proc_uniform_4fv.call(*args)
    end

    # Invokes glUniform4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4fv(*args)
      raise FunctionUnavailableError.new("glUniform4fv") unless uniform_4fv?

      @proc_uniform_4fv.call(*args)
    end

    # Checks if the function "glUniform4fv" is loaded.
    @[AlwaysInline]
    def uniform_4fv? : Bool
      !@proc_uniform_4fv.pointer.null?
    end

    # Invokes glUniform1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1iv!(*args)
      @proc_uniform_1iv.call(*args)
    end

    # Invokes glUniform1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1iv(*args)
      raise FunctionUnavailableError.new("glUniform1iv") unless uniform_1iv?

      @proc_uniform_1iv.call(*args)
    end

    # Checks if the function "glUniform1iv" is loaded.
    @[AlwaysInline]
    def uniform_1iv? : Bool
      !@proc_uniform_1iv.pointer.null?
    end

    # Invokes glUniform2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2iv!(*args)
      @proc_uniform_2iv.call(*args)
    end

    # Invokes glUniform2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2iv(*args)
      raise FunctionUnavailableError.new("glUniform2iv") unless uniform_2iv?

      @proc_uniform_2iv.call(*args)
    end

    # Checks if the function "glUniform2iv" is loaded.
    @[AlwaysInline]
    def uniform_2iv? : Bool
      !@proc_uniform_2iv.pointer.null?
    end

    # Invokes glUniform3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3iv!(*args)
      @proc_uniform_3iv.call(*args)
    end

    # Invokes glUniform3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3iv(*args)
      raise FunctionUnavailableError.new("glUniform3iv") unless uniform_3iv?

      @proc_uniform_3iv.call(*args)
    end

    # Checks if the function "glUniform3iv" is loaded.
    @[AlwaysInline]
    def uniform_3iv? : Bool
      !@proc_uniform_3iv.pointer.null?
    end

    # Invokes glUniform4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4iv!(*args)
      @proc_uniform_4iv.call(*args)
    end

    # Invokes glUniform4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4iv(*args)
      raise FunctionUnavailableError.new("glUniform4iv") unless uniform_4iv?

      @proc_uniform_4iv.call(*args)
    end

    # Checks if the function "glUniform4iv" is loaded.
    @[AlwaysInline]
    def uniform_4iv? : Bool
      !@proc_uniform_4iv.pointer.null?
    end

    # Invokes glUniformMatrix2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2_fv!(*args)
      @proc_uniform_matrix2_fv.call(*args)
    end

    # Invokes glUniformMatrix2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2fv") unless uniform_matrix2_fv?

      @proc_uniform_matrix2_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix2fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2_fv? : Bool
      !@proc_uniform_matrix2_fv.pointer.null?
    end

    # Invokes glUniformMatrix3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3_fv!(*args)
      @proc_uniform_matrix3_fv.call(*args)
    end

    # Invokes glUniformMatrix3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3fv") unless uniform_matrix3_fv?

      @proc_uniform_matrix3_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix3fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3_fv? : Bool
      !@proc_uniform_matrix3_fv.pointer.null?
    end

    # Invokes glUniformMatrix4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4_fv!(*args)
      @proc_uniform_matrix4_fv.call(*args)
    end

    # Invokes glUniformMatrix4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4fv") unless uniform_matrix4_fv?

      @proc_uniform_matrix4_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix4fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4_fv? : Bool
      !@proc_uniform_matrix4_fv.pointer.null?
    end

    # Invokes glValidateProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def validate_program!(*args)
      @proc_validate_program.call(*args)
    end

    # Invokes glValidateProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def validate_program(*args)
      raise FunctionUnavailableError.new("glValidateProgram") unless validate_program?

      @proc_validate_program.call(*args)
    end

    # Checks if the function "glValidateProgram" is loaded.
    @[AlwaysInline]
    def validate_program? : Bool
      !@proc_validate_program.pointer.null?
    end

    # Invokes glVertexAttrib1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1d!(*args)
      @proc_vertex_attrib_1d.call(*args)
    end

    # Invokes glVertexAttrib1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1d") unless vertex_attrib_1d?

      @proc_vertex_attrib_1d.call(*args)
    end

    # Checks if the function "glVertexAttrib1d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1d? : Bool
      !@proc_vertex_attrib_1d.pointer.null?
    end

    # Invokes glVertexAttrib1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1dv!(*args)
      @proc_vertex_attrib_1dv.call(*args)
    end

    # Invokes glVertexAttrib1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1dv") unless vertex_attrib_1dv?

      @proc_vertex_attrib_1dv.call(*args)
    end

    # Checks if the function "glVertexAttrib1dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1dv? : Bool
      !@proc_vertex_attrib_1dv.pointer.null?
    end

    # Invokes glVertexAttrib1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1f!(*args)
      @proc_vertex_attrib_1f.call(*args)
    end

    # Invokes glVertexAttrib1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1f") unless vertex_attrib_1f?

      @proc_vertex_attrib_1f.call(*args)
    end

    # Checks if the function "glVertexAttrib1f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1f? : Bool
      !@proc_vertex_attrib_1f.pointer.null?
    end

    # Invokes glVertexAttrib1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1fv!(*args)
      @proc_vertex_attrib_1fv.call(*args)
    end

    # Invokes glVertexAttrib1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1fv") unless vertex_attrib_1fv?

      @proc_vertex_attrib_1fv.call(*args)
    end

    # Checks if the function "glVertexAttrib1fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1fv? : Bool
      !@proc_vertex_attrib_1fv.pointer.null?
    end

    # Invokes glVertexAttrib1s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1s!(*args)
      @proc_vertex_attrib_1s.call(*args)
    end

    # Invokes glVertexAttrib1s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1s") unless vertex_attrib_1s?

      @proc_vertex_attrib_1s.call(*args)
    end

    # Checks if the function "glVertexAttrib1s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1s? : Bool
      !@proc_vertex_attrib_1s.pointer.null?
    end

    # Invokes glVertexAttrib1sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_1sv!(*args)
      @proc_vertex_attrib_1sv.call(*args)
    end

    # Invokes glVertexAttrib1sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_1sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib1sv") unless vertex_attrib_1sv?

      @proc_vertex_attrib_1sv.call(*args)
    end

    # Checks if the function "glVertexAttrib1sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_1sv? : Bool
      !@proc_vertex_attrib_1sv.pointer.null?
    end

    # Invokes glVertexAttrib2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2d!(*args)
      @proc_vertex_attrib_2d.call(*args)
    end

    # Invokes glVertexAttrib2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2d") unless vertex_attrib_2d?

      @proc_vertex_attrib_2d.call(*args)
    end

    # Checks if the function "glVertexAttrib2d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2d? : Bool
      !@proc_vertex_attrib_2d.pointer.null?
    end

    # Invokes glVertexAttrib2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2dv!(*args)
      @proc_vertex_attrib_2dv.call(*args)
    end

    # Invokes glVertexAttrib2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2dv") unless vertex_attrib_2dv?

      @proc_vertex_attrib_2dv.call(*args)
    end

    # Checks if the function "glVertexAttrib2dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2dv? : Bool
      !@proc_vertex_attrib_2dv.pointer.null?
    end

    # Invokes glVertexAttrib2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2f!(*args)
      @proc_vertex_attrib_2f.call(*args)
    end

    # Invokes glVertexAttrib2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2f") unless vertex_attrib_2f?

      @proc_vertex_attrib_2f.call(*args)
    end

    # Checks if the function "glVertexAttrib2f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2f? : Bool
      !@proc_vertex_attrib_2f.pointer.null?
    end

    # Invokes glVertexAttrib2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2fv!(*args)
      @proc_vertex_attrib_2fv.call(*args)
    end

    # Invokes glVertexAttrib2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2fv") unless vertex_attrib_2fv?

      @proc_vertex_attrib_2fv.call(*args)
    end

    # Checks if the function "glVertexAttrib2fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2fv? : Bool
      !@proc_vertex_attrib_2fv.pointer.null?
    end

    # Invokes glVertexAttrib2s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2s!(*args)
      @proc_vertex_attrib_2s.call(*args)
    end

    # Invokes glVertexAttrib2s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2s") unless vertex_attrib_2s?

      @proc_vertex_attrib_2s.call(*args)
    end

    # Checks if the function "glVertexAttrib2s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2s? : Bool
      !@proc_vertex_attrib_2s.pointer.null?
    end

    # Invokes glVertexAttrib2sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_2sv!(*args)
      @proc_vertex_attrib_2sv.call(*args)
    end

    # Invokes glVertexAttrib2sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_2sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib2sv") unless vertex_attrib_2sv?

      @proc_vertex_attrib_2sv.call(*args)
    end

    # Checks if the function "glVertexAttrib2sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_2sv? : Bool
      !@proc_vertex_attrib_2sv.pointer.null?
    end

    # Invokes glVertexAttrib3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3d!(*args)
      @proc_vertex_attrib_3d.call(*args)
    end

    # Invokes glVertexAttrib3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3d") unless vertex_attrib_3d?

      @proc_vertex_attrib_3d.call(*args)
    end

    # Checks if the function "glVertexAttrib3d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3d? : Bool
      !@proc_vertex_attrib_3d.pointer.null?
    end

    # Invokes glVertexAttrib3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3dv!(*args)
      @proc_vertex_attrib_3dv.call(*args)
    end

    # Invokes glVertexAttrib3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3dv") unless vertex_attrib_3dv?

      @proc_vertex_attrib_3dv.call(*args)
    end

    # Checks if the function "glVertexAttrib3dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3dv? : Bool
      !@proc_vertex_attrib_3dv.pointer.null?
    end

    # Invokes glVertexAttrib3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3f!(*args)
      @proc_vertex_attrib_3f.call(*args)
    end

    # Invokes glVertexAttrib3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3f") unless vertex_attrib_3f?

      @proc_vertex_attrib_3f.call(*args)
    end

    # Checks if the function "glVertexAttrib3f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3f? : Bool
      !@proc_vertex_attrib_3f.pointer.null?
    end

    # Invokes glVertexAttrib3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3fv!(*args)
      @proc_vertex_attrib_3fv.call(*args)
    end

    # Invokes glVertexAttrib3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3fv") unless vertex_attrib_3fv?

      @proc_vertex_attrib_3fv.call(*args)
    end

    # Checks if the function "glVertexAttrib3fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3fv? : Bool
      !@proc_vertex_attrib_3fv.pointer.null?
    end

    # Invokes glVertexAttrib3s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3s!(*args)
      @proc_vertex_attrib_3s.call(*args)
    end

    # Invokes glVertexAttrib3s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3s") unless vertex_attrib_3s?

      @proc_vertex_attrib_3s.call(*args)
    end

    # Checks if the function "glVertexAttrib3s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3s? : Bool
      !@proc_vertex_attrib_3s.pointer.null?
    end

    # Invokes glVertexAttrib3sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_3sv!(*args)
      @proc_vertex_attrib_3sv.call(*args)
    end

    # Invokes glVertexAttrib3sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_3sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib3sv") unless vertex_attrib_3sv?

      @proc_vertex_attrib_3sv.call(*args)
    end

    # Checks if the function "glVertexAttrib3sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_3sv? : Bool
      !@proc_vertex_attrib_3sv.pointer.null?
    end

    # Invokes glVertexAttrib4Nbv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nbv!(*args)
      @proc_vertex_attrib_4nbv.call(*args)
    end

    # Invokes glVertexAttrib4Nbv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nbv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nbv") unless vertex_attrib_4nbv?

      @proc_vertex_attrib_4nbv.call(*args)
    end

    # Checks if the function "glVertexAttrib4Nbv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nbv? : Bool
      !@proc_vertex_attrib_4nbv.pointer.null?
    end

    # Invokes glVertexAttrib4Niv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4niv!(*args)
      @proc_vertex_attrib_4niv.call(*args)
    end

    # Invokes glVertexAttrib4Niv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4niv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Niv") unless vertex_attrib_4niv?

      @proc_vertex_attrib_4niv.call(*args)
    end

    # Checks if the function "glVertexAttrib4Niv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4niv? : Bool
      !@proc_vertex_attrib_4niv.pointer.null?
    end

    # Invokes glVertexAttrib4Nsv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nsv!(*args)
      @proc_vertex_attrib_4nsv.call(*args)
    end

    # Invokes glVertexAttrib4Nsv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nsv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nsv") unless vertex_attrib_4nsv?

      @proc_vertex_attrib_4nsv.call(*args)
    end

    # Checks if the function "glVertexAttrib4Nsv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nsv? : Bool
      !@proc_vertex_attrib_4nsv.pointer.null?
    end

    # Invokes glVertexAttrib4Nub.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nub!(*args)
      @proc_vertex_attrib_4nub.call(*args)
    end

    # Invokes glVertexAttrib4Nub.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nub(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nub") unless vertex_attrib_4nub?

      @proc_vertex_attrib_4nub.call(*args)
    end

    # Checks if the function "glVertexAttrib4Nub" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nub? : Bool
      !@proc_vertex_attrib_4nub.pointer.null?
    end

    # Invokes glVertexAttrib4Nubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nubv!(*args)
      @proc_vertex_attrib_4nubv.call(*args)
    end

    # Invokes glVertexAttrib4Nubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nubv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nubv") unless vertex_attrib_4nubv?

      @proc_vertex_attrib_4nubv.call(*args)
    end

    # Checks if the function "glVertexAttrib4Nubv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nubv? : Bool
      !@proc_vertex_attrib_4nubv.pointer.null?
    end

    # Invokes glVertexAttrib4Nuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nuiv!(*args)
      @proc_vertex_attrib_4nuiv.call(*args)
    end

    # Invokes glVertexAttrib4Nuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nuiv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nuiv") unless vertex_attrib_4nuiv?

      @proc_vertex_attrib_4nuiv.call(*args)
    end

    # Checks if the function "glVertexAttrib4Nuiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nuiv? : Bool
      !@proc_vertex_attrib_4nuiv.pointer.null?
    end

    # Invokes glVertexAttrib4Nusv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4nusv!(*args)
      @proc_vertex_attrib_4nusv.call(*args)
    end

    # Invokes glVertexAttrib4Nusv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4nusv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4Nusv") unless vertex_attrib_4nusv?

      @proc_vertex_attrib_4nusv.call(*args)
    end

    # Checks if the function "glVertexAttrib4Nusv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4nusv? : Bool
      !@proc_vertex_attrib_4nusv.pointer.null?
    end

    # Invokes glVertexAttrib4bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4bv!(*args)
      @proc_vertex_attrib_4bv.call(*args)
    end

    # Invokes glVertexAttrib4bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4bv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4bv") unless vertex_attrib_4bv?

      @proc_vertex_attrib_4bv.call(*args)
    end

    # Checks if the function "glVertexAttrib4bv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4bv? : Bool
      !@proc_vertex_attrib_4bv.pointer.null?
    end

    # Invokes glVertexAttrib4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4d!(*args)
      @proc_vertex_attrib_4d.call(*args)
    end

    # Invokes glVertexAttrib4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4d(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4d") unless vertex_attrib_4d?

      @proc_vertex_attrib_4d.call(*args)
    end

    # Checks if the function "glVertexAttrib4d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4d? : Bool
      !@proc_vertex_attrib_4d.pointer.null?
    end

    # Invokes glVertexAttrib4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4dv!(*args)
      @proc_vertex_attrib_4dv.call(*args)
    end

    # Invokes glVertexAttrib4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4dv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4dv") unless vertex_attrib_4dv?

      @proc_vertex_attrib_4dv.call(*args)
    end

    # Checks if the function "glVertexAttrib4dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4dv? : Bool
      !@proc_vertex_attrib_4dv.pointer.null?
    end

    # Invokes glVertexAttrib4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4f!(*args)
      @proc_vertex_attrib_4f.call(*args)
    end

    # Invokes glVertexAttrib4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4f(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4f") unless vertex_attrib_4f?

      @proc_vertex_attrib_4f.call(*args)
    end

    # Checks if the function "glVertexAttrib4f" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4f? : Bool
      !@proc_vertex_attrib_4f.pointer.null?
    end

    # Invokes glVertexAttrib4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4fv!(*args)
      @proc_vertex_attrib_4fv.call(*args)
    end

    # Invokes glVertexAttrib4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4fv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4fv") unless vertex_attrib_4fv?

      @proc_vertex_attrib_4fv.call(*args)
    end

    # Checks if the function "glVertexAttrib4fv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4fv? : Bool
      !@proc_vertex_attrib_4fv.pointer.null?
    end

    # Invokes glVertexAttrib4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4iv!(*args)
      @proc_vertex_attrib_4iv.call(*args)
    end

    # Invokes glVertexAttrib4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4iv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4iv") unless vertex_attrib_4iv?

      @proc_vertex_attrib_4iv.call(*args)
    end

    # Checks if the function "glVertexAttrib4iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4iv? : Bool
      !@proc_vertex_attrib_4iv.pointer.null?
    end

    # Invokes glVertexAttrib4s.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4s!(*args)
      @proc_vertex_attrib_4s.call(*args)
    end

    # Invokes glVertexAttrib4s.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4s(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4s") unless vertex_attrib_4s?

      @proc_vertex_attrib_4s.call(*args)
    end

    # Checks if the function "glVertexAttrib4s" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4s? : Bool
      !@proc_vertex_attrib_4s.pointer.null?
    end

    # Invokes glVertexAttrib4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4sv!(*args)
      @proc_vertex_attrib_4sv.call(*args)
    end

    # Invokes glVertexAttrib4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4sv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4sv") unless vertex_attrib_4sv?

      @proc_vertex_attrib_4sv.call(*args)
    end

    # Checks if the function "glVertexAttrib4sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4sv? : Bool
      !@proc_vertex_attrib_4sv.pointer.null?
    end

    # Invokes glVertexAttrib4ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4ubv!(*args)
      @proc_vertex_attrib_4ubv.call(*args)
    end

    # Invokes glVertexAttrib4ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4ubv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4ubv") unless vertex_attrib_4ubv?

      @proc_vertex_attrib_4ubv.call(*args)
    end

    # Checks if the function "glVertexAttrib4ubv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4ubv? : Bool
      !@proc_vertex_attrib_4ubv.pointer.null?
    end

    # Invokes glVertexAttrib4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4uiv!(*args)
      @proc_vertex_attrib_4uiv.call(*args)
    end

    # Invokes glVertexAttrib4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4uiv") unless vertex_attrib_4uiv?

      @proc_vertex_attrib_4uiv.call(*args)
    end

    # Checks if the function "glVertexAttrib4uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4uiv? : Bool
      !@proc_vertex_attrib_4uiv.pointer.null?
    end

    # Invokes glVertexAttrib4usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_4usv!(*args)
      @proc_vertex_attrib_4usv.call(*args)
    end

    # Invokes glVertexAttrib4usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_4usv(*args)
      raise FunctionUnavailableError.new("glVertexAttrib4usv") unless vertex_attrib_4usv?

      @proc_vertex_attrib_4usv.call(*args)
    end

    # Checks if the function "glVertexAttrib4usv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_4usv? : Bool
      !@proc_vertex_attrib_4usv.pointer.null?
    end

    # Invokes glVertexAttribPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_pointer!(*args)
      @proc_vertex_attrib_pointer.call(*args)
    end

    # Invokes glVertexAttribPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_pointer(*args)
      raise FunctionUnavailableError.new("glVertexAttribPointer") unless vertex_attrib_pointer?

      @proc_vertex_attrib_pointer.call(*args)
    end

    # Checks if the function "glVertexAttribPointer" is loaded.
    @[AlwaysInline]
    def vertex_attrib_pointer? : Bool
      !@proc_vertex_attrib_pointer.pointer.null?
    end

    # Invokes glUniformMatrix2x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x3_fv!(*args)
      @proc_uniform_matrix2x3_fv.call(*args)
    end

    # Invokes glUniformMatrix2x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x3_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x3fv") unless uniform_matrix2x3_fv?

      @proc_uniform_matrix2x3_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix2x3fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x3_fv? : Bool
      !@proc_uniform_matrix2x3_fv.pointer.null?
    end

    # Invokes glUniformMatrix3x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x2_fv!(*args)
      @proc_uniform_matrix3x2_fv.call(*args)
    end

    # Invokes glUniformMatrix3x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x2_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x2fv") unless uniform_matrix3x2_fv?

      @proc_uniform_matrix3x2_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix3x2fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x2_fv? : Bool
      !@proc_uniform_matrix3x2_fv.pointer.null?
    end

    # Invokes glUniformMatrix2x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x4_fv!(*args)
      @proc_uniform_matrix2x4_fv.call(*args)
    end

    # Invokes glUniformMatrix2x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x4_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x4fv") unless uniform_matrix2x4_fv?

      @proc_uniform_matrix2x4_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix2x4fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x4_fv? : Bool
      !@proc_uniform_matrix2x4_fv.pointer.null?
    end

    # Invokes glUniformMatrix4x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x2_fv!(*args)
      @proc_uniform_matrix4x2_fv.call(*args)
    end

    # Invokes glUniformMatrix4x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x2_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x2fv") unless uniform_matrix4x2_fv?

      @proc_uniform_matrix4x2_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix4x2fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x2_fv? : Bool
      !@proc_uniform_matrix4x2_fv.pointer.null?
    end

    # Invokes glUniformMatrix3x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x4_fv!(*args)
      @proc_uniform_matrix3x4_fv.call(*args)
    end

    # Invokes glUniformMatrix3x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x4_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x4fv") unless uniform_matrix3x4_fv?

      @proc_uniform_matrix3x4_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix3x4fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x4_fv? : Bool
      !@proc_uniform_matrix3x4_fv.pointer.null?
    end

    # Invokes glUniformMatrix4x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x3_fv!(*args)
      @proc_uniform_matrix4x3_fv.call(*args)
    end

    # Invokes glUniformMatrix4x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x3_fv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x3fv") unless uniform_matrix4x3_fv?

      @proc_uniform_matrix4x3_fv.call(*args)
    end

    # Checks if the function "glUniformMatrix4x3fv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x3_fv? : Bool
      !@proc_uniform_matrix4x3_fv.pointer.null?
    end

    # Invokes glColorMaski.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_mask_i!(*args)
      @proc_color_mask_i.call(*args)
    end

    # Invokes glColorMaski.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_mask_i(*args)
      raise FunctionUnavailableError.new("glColorMaski") unless color_mask_i?

      @proc_color_mask_i.call(*args)
    end

    # Checks if the function "glColorMaski" is loaded.
    @[AlwaysInline]
    def color_mask_i? : Bool
      !@proc_color_mask_i.pointer.null?
    end

    # Invokes glGetBooleani_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_boolean_i_v!(*args)
      @proc_get_boolean_i_v.call(*args)
    end

    # Invokes glGetBooleani_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_boolean_i_v(*args)
      raise FunctionUnavailableError.new("glGetBooleani_v") unless get_boolean_i_v?

      @proc_get_boolean_i_v.call(*args)
    end

    # Checks if the function "glGetBooleani_v" is loaded.
    @[AlwaysInline]
    def get_boolean_i_v? : Bool
      !@proc_get_boolean_i_v.pointer.null?
    end

    # Invokes glGetIntegeri_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_i_v!(*args)
      @proc_get_integer_i_v.call(*args)
    end

    # Invokes glGetIntegeri_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_i_v(*args)
      raise FunctionUnavailableError.new("glGetIntegeri_v") unless get_integer_i_v?

      @proc_get_integer_i_v.call(*args)
    end

    # Checks if the function "glGetIntegeri_v" is loaded.
    @[AlwaysInline]
    def get_integer_i_v? : Bool
      !@proc_get_integer_i_v.pointer.null?
    end

    # Invokes glEnablei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_i!(*args)
      @proc_enable_i.call(*args)
    end

    # Invokes glEnablei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_i(*args)
      raise FunctionUnavailableError.new("glEnablei") unless enable_i?

      @proc_enable_i.call(*args)
    end

    # Checks if the function "glEnablei" is loaded.
    @[AlwaysInline]
    def enable_i? : Bool
      !@proc_enable_i.pointer.null?
    end

    # Invokes glDisablei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_i!(*args)
      @proc_disable_i.call(*args)
    end

    # Invokes glDisablei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_i(*args)
      raise FunctionUnavailableError.new("glDisablei") unless disable_i?

      @proc_disable_i.call(*args)
    end

    # Checks if the function "glDisablei" is loaded.
    @[AlwaysInline]
    def disable_i? : Bool
      !@proc_disable_i.pointer.null?
    end

    # Invokes glIsEnabledi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_enabled_i!(*args)
      @proc_is_enabled_i.call(*args)
    end

    # Invokes glIsEnabledi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_enabled_i(*args)
      raise FunctionUnavailableError.new("glIsEnabledi") unless is_enabled_i?

      @proc_is_enabled_i.call(*args)
    end

    # Checks if the function "glIsEnabledi" is loaded.
    @[AlwaysInline]
    def is_enabled_i? : Bool
      !@proc_is_enabled_i.pointer.null?
    end

    # Invokes glBeginTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_transform_feedback!(*args)
      @proc_begin_transform_feedback.call(*args)
    end

    # Invokes glBeginTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_transform_feedback(*args)
      raise FunctionUnavailableError.new("glBeginTransformFeedback") unless begin_transform_feedback?

      @proc_begin_transform_feedback.call(*args)
    end

    # Checks if the function "glBeginTransformFeedback" is loaded.
    @[AlwaysInline]
    def begin_transform_feedback? : Bool
      !@proc_begin_transform_feedback.pointer.null?
    end

    # Invokes glEndTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_transform_feedback!(*args)
      @proc_end_transform_feedback.call(*args)
    end

    # Invokes glEndTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_transform_feedback(*args)
      raise FunctionUnavailableError.new("glEndTransformFeedback") unless end_transform_feedback?

      @proc_end_transform_feedback.call(*args)
    end

    # Checks if the function "glEndTransformFeedback" is loaded.
    @[AlwaysInline]
    def end_transform_feedback? : Bool
      !@proc_end_transform_feedback.pointer.null?
    end

    # Invokes glBindBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffer_range!(*args)
      @proc_bind_buffer_range.call(*args)
    end

    # Invokes glBindBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffer_range(*args)
      raise FunctionUnavailableError.new("glBindBufferRange") unless bind_buffer_range?

      @proc_bind_buffer_range.call(*args)
    end

    # Checks if the function "glBindBufferRange" is loaded.
    @[AlwaysInline]
    def bind_buffer_range? : Bool
      !@proc_bind_buffer_range.pointer.null?
    end

    # Invokes glBindBufferBase.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffer_base!(*args)
      @proc_bind_buffer_base.call(*args)
    end

    # Invokes glBindBufferBase.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffer_base(*args)
      raise FunctionUnavailableError.new("glBindBufferBase") unless bind_buffer_base?

      @proc_bind_buffer_base.call(*args)
    end

    # Checks if the function "glBindBufferBase" is loaded.
    @[AlwaysInline]
    def bind_buffer_base? : Bool
      !@proc_bind_buffer_base.pointer.null?
    end

    # Invokes glTransformFeedbackVaryings.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def transform_feedback_varyings!(*args)
      @proc_transform_feedback_varyings.call(*args)
    end

    # Invokes glTransformFeedbackVaryings.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def transform_feedback_varyings(*args)
      raise FunctionUnavailableError.new("glTransformFeedbackVaryings") unless transform_feedback_varyings?

      @proc_transform_feedback_varyings.call(*args)
    end

    # Checks if the function "glTransformFeedbackVaryings" is loaded.
    @[AlwaysInline]
    def transform_feedback_varyings? : Bool
      !@proc_transform_feedback_varyings.pointer.null?
    end

    # Invokes glGetTransformFeedbackVarying.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_transform_feedback_varying!(*args)
      @proc_get_transform_feedback_varying.call(*args)
    end

    # Invokes glGetTransformFeedbackVarying.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_transform_feedback_varying(*args)
      raise FunctionUnavailableError.new("glGetTransformFeedbackVarying") unless get_transform_feedback_varying?

      @proc_get_transform_feedback_varying.call(*args)
    end

    # Checks if the function "glGetTransformFeedbackVarying" is loaded.
    @[AlwaysInline]
    def get_transform_feedback_varying? : Bool
      !@proc_get_transform_feedback_varying.pointer.null?
    end

    # Invokes glClampColor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clamp_color!(*args)
      @proc_clamp_color.call(*args)
    end

    # Invokes glClampColor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clamp_color(*args)
      raise FunctionUnavailableError.new("glClampColor") unless clamp_color?

      @proc_clamp_color.call(*args)
    end

    # Checks if the function "glClampColor" is loaded.
    @[AlwaysInline]
    def clamp_color? : Bool
      !@proc_clamp_color.pointer.null?
    end

    # Invokes glBeginConditionalRender.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_conditional_render!(*args)
      @proc_begin_conditional_render.call(*args)
    end

    # Invokes glBeginConditionalRender.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_conditional_render(*args)
      raise FunctionUnavailableError.new("glBeginConditionalRender") unless begin_conditional_render?

      @proc_begin_conditional_render.call(*args)
    end

    # Checks if the function "glBeginConditionalRender" is loaded.
    @[AlwaysInline]
    def begin_conditional_render? : Bool
      !@proc_begin_conditional_render.pointer.null?
    end

    # Invokes glEndConditionalRender.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_conditional_render!(*args)
      @proc_end_conditional_render.call(*args)
    end

    # Invokes glEndConditionalRender.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_conditional_render(*args)
      raise FunctionUnavailableError.new("glEndConditionalRender") unless end_conditional_render?

      @proc_end_conditional_render.call(*args)
    end

    # Checks if the function "glEndConditionalRender" is loaded.
    @[AlwaysInline]
    def end_conditional_render? : Bool
      !@proc_end_conditional_render.pointer.null?
    end

    # Invokes glVertexAttribIPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_pointer!(*args)
      @proc_vertex_attrib_i_pointer.call(*args)
    end

    # Invokes glVertexAttribIPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_pointer(*args)
      raise FunctionUnavailableError.new("glVertexAttribIPointer") unless vertex_attrib_i_pointer?

      @proc_vertex_attrib_i_pointer.call(*args)
    end

    # Checks if the function "glVertexAttribIPointer" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_pointer? : Bool
      !@proc_vertex_attrib_i_pointer.pointer.null?
    end

    # Invokes glGetVertexAttribIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_i_iv!(*args)
      @proc_get_vertex_attrib_i_iv.call(*args)
    end

    # Invokes glGetVertexAttribIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_i_iv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribIiv") unless get_vertex_attrib_i_iv?

      @proc_get_vertex_attrib_i_iv.call(*args)
    end

    # Checks if the function "glGetVertexAttribIiv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_i_iv? : Bool
      !@proc_get_vertex_attrib_i_iv.pointer.null?
    end

    # Invokes glGetVertexAttribIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_i_uiv!(*args)
      @proc_get_vertex_attrib_i_uiv.call(*args)
    end

    # Invokes glGetVertexAttribIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribIuiv") unless get_vertex_attrib_i_uiv?

      @proc_get_vertex_attrib_i_uiv.call(*args)
    end

    # Checks if the function "glGetVertexAttribIuiv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_i_uiv? : Bool
      !@proc_get_vertex_attrib_i_uiv.pointer.null?
    end

    # Invokes glVertexAttribI1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1i!(*args)
      @proc_vertex_attrib_i_1i.call(*args)
    end

    # Invokes glVertexAttribI1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1i") unless vertex_attrib_i_1i?

      @proc_vertex_attrib_i_1i.call(*args)
    end

    # Checks if the function "glVertexAttribI1i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1i? : Bool
      !@proc_vertex_attrib_i_1i.pointer.null?
    end

    # Invokes glVertexAttribI2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2i!(*args)
      @proc_vertex_attrib_i_2i.call(*args)
    end

    # Invokes glVertexAttribI2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2i") unless vertex_attrib_i_2i?

      @proc_vertex_attrib_i_2i.call(*args)
    end

    # Checks if the function "glVertexAttribI2i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2i? : Bool
      !@proc_vertex_attrib_i_2i.pointer.null?
    end

    # Invokes glVertexAttribI3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3i!(*args)
      @proc_vertex_attrib_i_3i.call(*args)
    end

    # Invokes glVertexAttribI3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3i") unless vertex_attrib_i_3i?

      @proc_vertex_attrib_i_3i.call(*args)
    end

    # Checks if the function "glVertexAttribI3i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3i? : Bool
      !@proc_vertex_attrib_i_3i.pointer.null?
    end

    # Invokes glVertexAttribI4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4i!(*args)
      @proc_vertex_attrib_i_4i.call(*args)
    end

    # Invokes glVertexAttribI4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4i(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4i") unless vertex_attrib_i_4i?

      @proc_vertex_attrib_i_4i.call(*args)
    end

    # Checks if the function "glVertexAttribI4i" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4i? : Bool
      !@proc_vertex_attrib_i_4i.pointer.null?
    end

    # Invokes glVertexAttribI1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1ui!(*args)
      @proc_vertex_attrib_i_1ui.call(*args)
    end

    # Invokes glVertexAttribI1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1ui") unless vertex_attrib_i_1ui?

      @proc_vertex_attrib_i_1ui.call(*args)
    end

    # Checks if the function "glVertexAttribI1ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1ui? : Bool
      !@proc_vertex_attrib_i_1ui.pointer.null?
    end

    # Invokes glVertexAttribI2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2ui!(*args)
      @proc_vertex_attrib_i_2ui.call(*args)
    end

    # Invokes glVertexAttribI2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2ui") unless vertex_attrib_i_2ui?

      @proc_vertex_attrib_i_2ui.call(*args)
    end

    # Checks if the function "glVertexAttribI2ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2ui? : Bool
      !@proc_vertex_attrib_i_2ui.pointer.null?
    end

    # Invokes glVertexAttribI3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3ui!(*args)
      @proc_vertex_attrib_i_3ui.call(*args)
    end

    # Invokes glVertexAttribI3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3ui") unless vertex_attrib_i_3ui?

      @proc_vertex_attrib_i_3ui.call(*args)
    end

    # Checks if the function "glVertexAttribI3ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3ui? : Bool
      !@proc_vertex_attrib_i_3ui.pointer.null?
    end

    # Invokes glVertexAttribI4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4ui!(*args)
      @proc_vertex_attrib_i_4ui.call(*args)
    end

    # Invokes glVertexAttribI4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4ui") unless vertex_attrib_i_4ui?

      @proc_vertex_attrib_i_4ui.call(*args)
    end

    # Checks if the function "glVertexAttribI4ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4ui? : Bool
      !@proc_vertex_attrib_i_4ui.pointer.null?
    end

    # Invokes glVertexAttribI1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1iv!(*args)
      @proc_vertex_attrib_i_1iv.call(*args)
    end

    # Invokes glVertexAttribI1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1iv") unless vertex_attrib_i_1iv?

      @proc_vertex_attrib_i_1iv.call(*args)
    end

    # Checks if the function "glVertexAttribI1iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1iv? : Bool
      !@proc_vertex_attrib_i_1iv.pointer.null?
    end

    # Invokes glVertexAttribI2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2iv!(*args)
      @proc_vertex_attrib_i_2iv.call(*args)
    end

    # Invokes glVertexAttribI2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2iv") unless vertex_attrib_i_2iv?

      @proc_vertex_attrib_i_2iv.call(*args)
    end

    # Checks if the function "glVertexAttribI2iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2iv? : Bool
      !@proc_vertex_attrib_i_2iv.pointer.null?
    end

    # Invokes glVertexAttribI3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3iv!(*args)
      @proc_vertex_attrib_i_3iv.call(*args)
    end

    # Invokes glVertexAttribI3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3iv") unless vertex_attrib_i_3iv?

      @proc_vertex_attrib_i_3iv.call(*args)
    end

    # Checks if the function "glVertexAttribI3iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3iv? : Bool
      !@proc_vertex_attrib_i_3iv.pointer.null?
    end

    # Invokes glVertexAttribI4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4iv!(*args)
      @proc_vertex_attrib_i_4iv.call(*args)
    end

    # Invokes glVertexAttribI4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4iv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4iv") unless vertex_attrib_i_4iv?

      @proc_vertex_attrib_i_4iv.call(*args)
    end

    # Checks if the function "glVertexAttribI4iv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4iv? : Bool
      !@proc_vertex_attrib_i_4iv.pointer.null?
    end

    # Invokes glVertexAttribI1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_1uiv!(*args)
      @proc_vertex_attrib_i_1uiv.call(*args)
    end

    # Invokes glVertexAttribI1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_1uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI1uiv") unless vertex_attrib_i_1uiv?

      @proc_vertex_attrib_i_1uiv.call(*args)
    end

    # Checks if the function "glVertexAttribI1uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_1uiv? : Bool
      !@proc_vertex_attrib_i_1uiv.pointer.null?
    end

    # Invokes glVertexAttribI2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_2uiv!(*args)
      @proc_vertex_attrib_i_2uiv.call(*args)
    end

    # Invokes glVertexAttribI2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_2uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI2uiv") unless vertex_attrib_i_2uiv?

      @proc_vertex_attrib_i_2uiv.call(*args)
    end

    # Checks if the function "glVertexAttribI2uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_2uiv? : Bool
      !@proc_vertex_attrib_i_2uiv.pointer.null?
    end

    # Invokes glVertexAttribI3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_3uiv!(*args)
      @proc_vertex_attrib_i_3uiv.call(*args)
    end

    # Invokes glVertexAttribI3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_3uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI3uiv") unless vertex_attrib_i_3uiv?

      @proc_vertex_attrib_i_3uiv.call(*args)
    end

    # Checks if the function "glVertexAttribI3uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_3uiv? : Bool
      !@proc_vertex_attrib_i_3uiv.pointer.null?
    end

    # Invokes glVertexAttribI4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4uiv!(*args)
      @proc_vertex_attrib_i_4uiv.call(*args)
    end

    # Invokes glVertexAttribI4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4uiv") unless vertex_attrib_i_4uiv?

      @proc_vertex_attrib_i_4uiv.call(*args)
    end

    # Checks if the function "glVertexAttribI4uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4uiv? : Bool
      !@proc_vertex_attrib_i_4uiv.pointer.null?
    end

    # Invokes glVertexAttribI4bv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4bv!(*args)
      @proc_vertex_attrib_i_4bv.call(*args)
    end

    # Invokes glVertexAttribI4bv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4bv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4bv") unless vertex_attrib_i_4bv?

      @proc_vertex_attrib_i_4bv.call(*args)
    end

    # Checks if the function "glVertexAttribI4bv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4bv? : Bool
      !@proc_vertex_attrib_i_4bv.pointer.null?
    end

    # Invokes glVertexAttribI4sv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4sv!(*args)
      @proc_vertex_attrib_i_4sv.call(*args)
    end

    # Invokes glVertexAttribI4sv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4sv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4sv") unless vertex_attrib_i_4sv?

      @proc_vertex_attrib_i_4sv.call(*args)
    end

    # Checks if the function "glVertexAttribI4sv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4sv? : Bool
      !@proc_vertex_attrib_i_4sv.pointer.null?
    end

    # Invokes glVertexAttribI4ubv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4ubv!(*args)
      @proc_vertex_attrib_i_4ubv.call(*args)
    end

    # Invokes glVertexAttribI4ubv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4ubv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4ubv") unless vertex_attrib_i_4ubv?

      @proc_vertex_attrib_i_4ubv.call(*args)
    end

    # Checks if the function "glVertexAttribI4ubv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4ubv? : Bool
      !@proc_vertex_attrib_i_4ubv.pointer.null?
    end

    # Invokes glVertexAttribI4usv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_4usv!(*args)
      @proc_vertex_attrib_i_4usv.call(*args)
    end

    # Invokes glVertexAttribI4usv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_4usv(*args)
      raise FunctionUnavailableError.new("glVertexAttribI4usv") unless vertex_attrib_i_4usv?

      @proc_vertex_attrib_i_4usv.call(*args)
    end

    # Checks if the function "glVertexAttribI4usv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_4usv? : Bool
      !@proc_vertex_attrib_i_4usv.pointer.null?
    end

    # Invokes glGetUniformuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_uiv!(*args)
      @proc_get_uniform_uiv.call(*args)
    end

    # Invokes glGetUniformuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_uiv(*args)
      raise FunctionUnavailableError.new("glGetUniformuiv") unless get_uniform_uiv?

      @proc_get_uniform_uiv.call(*args)
    end

    # Checks if the function "glGetUniformuiv" is loaded.
    @[AlwaysInline]
    def get_uniform_uiv? : Bool
      !@proc_get_uniform_uiv.pointer.null?
    end

    # Invokes glBindFragDataLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_frag_data_location!(*args)
      @proc_bind_frag_data_location.call(*args)
    end

    # Invokes glBindFragDataLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_frag_data_location(*args)
      raise FunctionUnavailableError.new("glBindFragDataLocation") unless bind_frag_data_location?

      @proc_bind_frag_data_location.call(*args)
    end

    # Checks if the function "glBindFragDataLocation" is loaded.
    @[AlwaysInline]
    def bind_frag_data_location? : Bool
      !@proc_bind_frag_data_location.pointer.null?
    end

    # Invokes glGetFragDataLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_frag_data_location!(*args)
      @proc_get_frag_data_location.call(*args)
    end

    # Invokes glGetFragDataLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_frag_data_location(*args)
      raise FunctionUnavailableError.new("glGetFragDataLocation") unless get_frag_data_location?

      @proc_get_frag_data_location.call(*args)
    end

    # Checks if the function "glGetFragDataLocation" is loaded.
    @[AlwaysInline]
    def get_frag_data_location? : Bool
      !@proc_get_frag_data_location.pointer.null?
    end

    # Invokes glUniform1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1ui!(*args)
      @proc_uniform_1ui.call(*args)
    end

    # Invokes glUniform1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1ui(*args)
      raise FunctionUnavailableError.new("glUniform1ui") unless uniform_1ui?

      @proc_uniform_1ui.call(*args)
    end

    # Checks if the function "glUniform1ui" is loaded.
    @[AlwaysInline]
    def uniform_1ui? : Bool
      !@proc_uniform_1ui.pointer.null?
    end

    # Invokes glUniform2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2ui!(*args)
      @proc_uniform_2ui.call(*args)
    end

    # Invokes glUniform2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2ui(*args)
      raise FunctionUnavailableError.new("glUniform2ui") unless uniform_2ui?

      @proc_uniform_2ui.call(*args)
    end

    # Checks if the function "glUniform2ui" is loaded.
    @[AlwaysInline]
    def uniform_2ui? : Bool
      !@proc_uniform_2ui.pointer.null?
    end

    # Invokes glUniform3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3ui!(*args)
      @proc_uniform_3ui.call(*args)
    end

    # Invokes glUniform3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3ui(*args)
      raise FunctionUnavailableError.new("glUniform3ui") unless uniform_3ui?

      @proc_uniform_3ui.call(*args)
    end

    # Checks if the function "glUniform3ui" is loaded.
    @[AlwaysInline]
    def uniform_3ui? : Bool
      !@proc_uniform_3ui.pointer.null?
    end

    # Invokes glUniform4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4ui!(*args)
      @proc_uniform_4ui.call(*args)
    end

    # Invokes glUniform4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4ui(*args)
      raise FunctionUnavailableError.new("glUniform4ui") unless uniform_4ui?

      @proc_uniform_4ui.call(*args)
    end

    # Checks if the function "glUniform4ui" is loaded.
    @[AlwaysInline]
    def uniform_4ui? : Bool
      !@proc_uniform_4ui.pointer.null?
    end

    # Invokes glUniform1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1uiv!(*args)
      @proc_uniform_1uiv.call(*args)
    end

    # Invokes glUniform1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1uiv(*args)
      raise FunctionUnavailableError.new("glUniform1uiv") unless uniform_1uiv?

      @proc_uniform_1uiv.call(*args)
    end

    # Checks if the function "glUniform1uiv" is loaded.
    @[AlwaysInline]
    def uniform_1uiv? : Bool
      !@proc_uniform_1uiv.pointer.null?
    end

    # Invokes glUniform2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2uiv!(*args)
      @proc_uniform_2uiv.call(*args)
    end

    # Invokes glUniform2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2uiv(*args)
      raise FunctionUnavailableError.new("glUniform2uiv") unless uniform_2uiv?

      @proc_uniform_2uiv.call(*args)
    end

    # Checks if the function "glUniform2uiv" is loaded.
    @[AlwaysInline]
    def uniform_2uiv? : Bool
      !@proc_uniform_2uiv.pointer.null?
    end

    # Invokes glUniform3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3uiv!(*args)
      @proc_uniform_3uiv.call(*args)
    end

    # Invokes glUniform3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3uiv(*args)
      raise FunctionUnavailableError.new("glUniform3uiv") unless uniform_3uiv?

      @proc_uniform_3uiv.call(*args)
    end

    # Checks if the function "glUniform3uiv" is loaded.
    @[AlwaysInline]
    def uniform_3uiv? : Bool
      !@proc_uniform_3uiv.pointer.null?
    end

    # Invokes glUniform4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4uiv!(*args)
      @proc_uniform_4uiv.call(*args)
    end

    # Invokes glUniform4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4uiv(*args)
      raise FunctionUnavailableError.new("glUniform4uiv") unless uniform_4uiv?

      @proc_uniform_4uiv.call(*args)
    end

    # Checks if the function "glUniform4uiv" is loaded.
    @[AlwaysInline]
    def uniform_4uiv? : Bool
      !@proc_uniform_4uiv.pointer.null?
    end

    # Invokes glTexParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_i_iv!(*args)
      @proc_tex_parameter_i_iv.call(*args)
    end

    # Invokes glTexParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glTexParameterIiv") unless tex_parameter_i_iv?

      @proc_tex_parameter_i_iv.call(*args)
    end

    # Checks if the function "glTexParameterIiv" is loaded.
    @[AlwaysInline]
    def tex_parameter_i_iv? : Bool
      !@proc_tex_parameter_i_iv.pointer.null?
    end

    # Invokes glTexParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_parameter_i_uiv!(*args)
      @proc_tex_parameter_i_uiv.call(*args)
    end

    # Invokes glTexParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glTexParameterIuiv") unless tex_parameter_i_uiv?

      @proc_tex_parameter_i_uiv.call(*args)
    end

    # Checks if the function "glTexParameterIuiv" is loaded.
    @[AlwaysInline]
    def tex_parameter_i_uiv? : Bool
      !@proc_tex_parameter_i_uiv.pointer.null?
    end

    # Invokes glGetTexParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_i_iv!(*args)
      @proc_get_tex_parameter_i_iv.call(*args)
    end

    # Invokes glGetTexParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterIiv") unless get_tex_parameter_i_iv?

      @proc_get_tex_parameter_i_iv.call(*args)
    end

    # Checks if the function "glGetTexParameterIiv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_i_iv? : Bool
      !@proc_get_tex_parameter_i_iv.pointer.null?
    end

    # Invokes glGetTexParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_tex_parameter_i_uiv!(*args)
      @proc_get_tex_parameter_i_uiv.call(*args)
    end

    # Invokes glGetTexParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_tex_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetTexParameterIuiv") unless get_tex_parameter_i_uiv?

      @proc_get_tex_parameter_i_uiv.call(*args)
    end

    # Checks if the function "glGetTexParameterIuiv" is loaded.
    @[AlwaysInline]
    def get_tex_parameter_i_uiv? : Bool
      !@proc_get_tex_parameter_i_uiv.pointer.null?
    end

    # Invokes glClearBufferiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_iv!(*args)
      @proc_clear_buffer_iv.call(*args)
    end

    # Invokes glClearBufferiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_iv(*args)
      raise FunctionUnavailableError.new("glClearBufferiv") unless clear_buffer_iv?

      @proc_clear_buffer_iv.call(*args)
    end

    # Checks if the function "glClearBufferiv" is loaded.
    @[AlwaysInline]
    def clear_buffer_iv? : Bool
      !@proc_clear_buffer_iv.pointer.null?
    end

    # Invokes glClearBufferuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_uiv!(*args)
      @proc_clear_buffer_uiv.call(*args)
    end

    # Invokes glClearBufferuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_uiv(*args)
      raise FunctionUnavailableError.new("glClearBufferuiv") unless clear_buffer_uiv?

      @proc_clear_buffer_uiv.call(*args)
    end

    # Checks if the function "glClearBufferuiv" is loaded.
    @[AlwaysInline]
    def clear_buffer_uiv? : Bool
      !@proc_clear_buffer_uiv.pointer.null?
    end

    # Invokes glClearBufferfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_fv!(*args)
      @proc_clear_buffer_fv.call(*args)
    end

    # Invokes glClearBufferfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_fv(*args)
      raise FunctionUnavailableError.new("glClearBufferfv") unless clear_buffer_fv?

      @proc_clear_buffer_fv.call(*args)
    end

    # Checks if the function "glClearBufferfv" is loaded.
    @[AlwaysInline]
    def clear_buffer_fv? : Bool
      !@proc_clear_buffer_fv.pointer.null?
    end

    # Invokes glClearBufferfi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_fi!(*args)
      @proc_clear_buffer_fi.call(*args)
    end

    # Invokes glClearBufferfi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_fi(*args)
      raise FunctionUnavailableError.new("glClearBufferfi") unless clear_buffer_fi?

      @proc_clear_buffer_fi.call(*args)
    end

    # Checks if the function "glClearBufferfi" is loaded.
    @[AlwaysInline]
    def clear_buffer_fi? : Bool
      !@proc_clear_buffer_fi.pointer.null?
    end

    # Invokes glGetStringi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_string_i!(*args)
      @proc_get_string_i.call(*args)
    end

    # Invokes glGetStringi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_string_i(*args)
      raise FunctionUnavailableError.new("glGetStringi") unless get_string_i?

      @proc_get_string_i.call(*args)
    end

    # Checks if the function "glGetStringi" is loaded.
    @[AlwaysInline]
    def get_string_i? : Bool
      !@proc_get_string_i.pointer.null?
    end

    # Invokes glIsRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_renderbuffer!(*args)
      @proc_is_renderbuffer.call(*args)
    end

    # Invokes glIsRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_renderbuffer(*args)
      raise FunctionUnavailableError.new("glIsRenderbuffer") unless is_renderbuffer?

      @proc_is_renderbuffer.call(*args)
    end

    # Checks if the function "glIsRenderbuffer" is loaded.
    @[AlwaysInline]
    def is_renderbuffer? : Bool
      !@proc_is_renderbuffer.pointer.null?
    end

    # Invokes glBindRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_renderbuffer!(*args)
      @proc_bind_renderbuffer.call(*args)
    end

    # Invokes glBindRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_renderbuffer(*args)
      raise FunctionUnavailableError.new("glBindRenderbuffer") unless bind_renderbuffer?

      @proc_bind_renderbuffer.call(*args)
    end

    # Checks if the function "glBindRenderbuffer" is loaded.
    @[AlwaysInline]
    def bind_renderbuffer? : Bool
      !@proc_bind_renderbuffer.pointer.null?
    end

    # Invokes glDeleteRenderbuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_renderbuffers!(*args)
      @proc_delete_renderbuffers.call(*args)
    end

    # Invokes glDeleteRenderbuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_renderbuffers(*args)
      raise FunctionUnavailableError.new("glDeleteRenderbuffers") unless delete_renderbuffers?

      @proc_delete_renderbuffers.call(*args)
    end

    # Checks if the function "glDeleteRenderbuffers" is loaded.
    @[AlwaysInline]
    def delete_renderbuffers? : Bool
      !@proc_delete_renderbuffers.pointer.null?
    end

    # Invokes glGenRenderbuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_renderbuffers!(*args)
      @proc_gen_renderbuffers.call(*args)
    end

    # Invokes glGenRenderbuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_renderbuffers(*args)
      raise FunctionUnavailableError.new("glGenRenderbuffers") unless gen_renderbuffers?

      @proc_gen_renderbuffers.call(*args)
    end

    # Checks if the function "glGenRenderbuffers" is loaded.
    @[AlwaysInline]
    def gen_renderbuffers? : Bool
      !@proc_gen_renderbuffers.pointer.null?
    end

    # Invokes glRenderbufferStorage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def renderbuffer_storage!(*args)
      @proc_renderbuffer_storage.call(*args)
    end

    # Invokes glRenderbufferStorage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def renderbuffer_storage(*args)
      raise FunctionUnavailableError.new("glRenderbufferStorage") unless renderbuffer_storage?

      @proc_renderbuffer_storage.call(*args)
    end

    # Checks if the function "glRenderbufferStorage" is loaded.
    @[AlwaysInline]
    def renderbuffer_storage? : Bool
      !@proc_renderbuffer_storage.pointer.null?
    end

    # Invokes glGetRenderbufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_renderbuffer_parameter_iv!(*args)
      @proc_get_renderbuffer_parameter_iv.call(*args)
    end

    # Invokes glGetRenderbufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_renderbuffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetRenderbufferParameteriv") unless get_renderbuffer_parameter_iv?

      @proc_get_renderbuffer_parameter_iv.call(*args)
    end

    # Checks if the function "glGetRenderbufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_renderbuffer_parameter_iv? : Bool
      !@proc_get_renderbuffer_parameter_iv.pointer.null?
    end

    # Invokes glIsFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_framebuffer!(*args)
      @proc_is_framebuffer.call(*args)
    end

    # Invokes glIsFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_framebuffer(*args)
      raise FunctionUnavailableError.new("glIsFramebuffer") unless is_framebuffer?

      @proc_is_framebuffer.call(*args)
    end

    # Checks if the function "glIsFramebuffer" is loaded.
    @[AlwaysInline]
    def is_framebuffer? : Bool
      !@proc_is_framebuffer.pointer.null?
    end

    # Invokes glBindFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_framebuffer!(*args)
      @proc_bind_framebuffer.call(*args)
    end

    # Invokes glBindFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_framebuffer(*args)
      raise FunctionUnavailableError.new("glBindFramebuffer") unless bind_framebuffer?

      @proc_bind_framebuffer.call(*args)
    end

    # Checks if the function "glBindFramebuffer" is loaded.
    @[AlwaysInline]
    def bind_framebuffer? : Bool
      !@proc_bind_framebuffer.pointer.null?
    end

    # Invokes glDeleteFramebuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_framebuffers!(*args)
      @proc_delete_framebuffers.call(*args)
    end

    # Invokes glDeleteFramebuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_framebuffers(*args)
      raise FunctionUnavailableError.new("glDeleteFramebuffers") unless delete_framebuffers?

      @proc_delete_framebuffers.call(*args)
    end

    # Checks if the function "glDeleteFramebuffers" is loaded.
    @[AlwaysInline]
    def delete_framebuffers? : Bool
      !@proc_delete_framebuffers.pointer.null?
    end

    # Invokes glGenFramebuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_framebuffers!(*args)
      @proc_gen_framebuffers.call(*args)
    end

    # Invokes glGenFramebuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_framebuffers(*args)
      raise FunctionUnavailableError.new("glGenFramebuffers") unless gen_framebuffers?

      @proc_gen_framebuffers.call(*args)
    end

    # Checks if the function "glGenFramebuffers" is loaded.
    @[AlwaysInline]
    def gen_framebuffers? : Bool
      !@proc_gen_framebuffers.pointer.null?
    end

    # Invokes glCheckFramebufferStatus.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def check_framebuffer_status!(*args)
      @proc_check_framebuffer_status.call(*args)
    end

    # Invokes glCheckFramebufferStatus.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def check_framebuffer_status(*args)
      raise FunctionUnavailableError.new("glCheckFramebufferStatus") unless check_framebuffer_status?

      @proc_check_framebuffer_status.call(*args)
    end

    # Checks if the function "glCheckFramebufferStatus" is loaded.
    @[AlwaysInline]
    def check_framebuffer_status? : Bool
      !@proc_check_framebuffer_status.pointer.null?
    end

    # Invokes glFramebufferTexture1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_1d!(*args)
      @proc_framebuffer_texture_1d.call(*args)
    end

    # Invokes glFramebufferTexture1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_1d(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture1D") unless framebuffer_texture_1d?

      @proc_framebuffer_texture_1d.call(*args)
    end

    # Checks if the function "glFramebufferTexture1D" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_1d? : Bool
      !@proc_framebuffer_texture_1d.pointer.null?
    end

    # Invokes glFramebufferTexture2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_2d!(*args)
      @proc_framebuffer_texture_2d.call(*args)
    end

    # Invokes glFramebufferTexture2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_2d(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture2D") unless framebuffer_texture_2d?

      @proc_framebuffer_texture_2d.call(*args)
    end

    # Checks if the function "glFramebufferTexture2D" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_2d? : Bool
      !@proc_framebuffer_texture_2d.pointer.null?
    end

    # Invokes glFramebufferTexture3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_3d!(*args)
      @proc_framebuffer_texture_3d.call(*args)
    end

    # Invokes glFramebufferTexture3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_3d(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture3D") unless framebuffer_texture_3d?

      @proc_framebuffer_texture_3d.call(*args)
    end

    # Checks if the function "glFramebufferTexture3D" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_3d? : Bool
      !@proc_framebuffer_texture_3d.pointer.null?
    end

    # Invokes glFramebufferRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_renderbuffer!(*args)
      @proc_framebuffer_renderbuffer.call(*args)
    end

    # Invokes glFramebufferRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_renderbuffer(*args)
      raise FunctionUnavailableError.new("glFramebufferRenderbuffer") unless framebuffer_renderbuffer?

      @proc_framebuffer_renderbuffer.call(*args)
    end

    # Checks if the function "glFramebufferRenderbuffer" is loaded.
    @[AlwaysInline]
    def framebuffer_renderbuffer? : Bool
      !@proc_framebuffer_renderbuffer.pointer.null?
    end

    # Invokes glGetFramebufferAttachmentParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_framebuffer_attachment_parameter_iv!(*args)
      @proc_get_framebuffer_attachment_parameter_iv.call(*args)
    end

    # Invokes glGetFramebufferAttachmentParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_framebuffer_attachment_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetFramebufferAttachmentParameteriv") unless get_framebuffer_attachment_parameter_iv?

      @proc_get_framebuffer_attachment_parameter_iv.call(*args)
    end

    # Checks if the function "glGetFramebufferAttachmentParameteriv" is loaded.
    @[AlwaysInline]
    def get_framebuffer_attachment_parameter_iv? : Bool
      !@proc_get_framebuffer_attachment_parameter_iv.pointer.null?
    end

    # Invokes glGenerateMipmap.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def generate_mipmap!(*args)
      @proc_generate_mipmap.call(*args)
    end

    # Invokes glGenerateMipmap.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def generate_mipmap(*args)
      raise FunctionUnavailableError.new("glGenerateMipmap") unless generate_mipmap?

      @proc_generate_mipmap.call(*args)
    end

    # Checks if the function "glGenerateMipmap" is loaded.
    @[AlwaysInline]
    def generate_mipmap? : Bool
      !@proc_generate_mipmap.pointer.null?
    end

    # Invokes glBlitFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blit_framebuffer!(*args)
      @proc_blit_framebuffer.call(*args)
    end

    # Invokes glBlitFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blit_framebuffer(*args)
      raise FunctionUnavailableError.new("glBlitFramebuffer") unless blit_framebuffer?

      @proc_blit_framebuffer.call(*args)
    end

    # Checks if the function "glBlitFramebuffer" is loaded.
    @[AlwaysInline]
    def blit_framebuffer? : Bool
      !@proc_blit_framebuffer.pointer.null?
    end

    # Invokes glRenderbufferStorageMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def renderbuffer_storage_multisample!(*args)
      @proc_renderbuffer_storage_multisample.call(*args)
    end

    # Invokes glRenderbufferStorageMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def renderbuffer_storage_multisample(*args)
      raise FunctionUnavailableError.new("glRenderbufferStorageMultisample") unless renderbuffer_storage_multisample?

      @proc_renderbuffer_storage_multisample.call(*args)
    end

    # Checks if the function "glRenderbufferStorageMultisample" is loaded.
    @[AlwaysInline]
    def renderbuffer_storage_multisample? : Bool
      !@proc_renderbuffer_storage_multisample.pointer.null?
    end

    # Invokes glFramebufferTextureLayer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture_layer!(*args)
      @proc_framebuffer_texture_layer.call(*args)
    end

    # Invokes glFramebufferTextureLayer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture_layer(*args)
      raise FunctionUnavailableError.new("glFramebufferTextureLayer") unless framebuffer_texture_layer?

      @proc_framebuffer_texture_layer.call(*args)
    end

    # Checks if the function "glFramebufferTextureLayer" is loaded.
    @[AlwaysInline]
    def framebuffer_texture_layer? : Bool
      !@proc_framebuffer_texture_layer.pointer.null?
    end

    # Invokes glMapBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_buffer_range!(*args)
      @proc_map_buffer_range.call(*args)
    end

    # Invokes glMapBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_buffer_range(*args)
      raise FunctionUnavailableError.new("glMapBufferRange") unless map_buffer_range?

      @proc_map_buffer_range.call(*args)
    end

    # Checks if the function "glMapBufferRange" is loaded.
    @[AlwaysInline]
    def map_buffer_range? : Bool
      !@proc_map_buffer_range.pointer.null?
    end

    # Invokes glFlushMappedBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def flush_mapped_buffer_range!(*args)
      @proc_flush_mapped_buffer_range.call(*args)
    end

    # Invokes glFlushMappedBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def flush_mapped_buffer_range(*args)
      raise FunctionUnavailableError.new("glFlushMappedBufferRange") unless flush_mapped_buffer_range?

      @proc_flush_mapped_buffer_range.call(*args)
    end

    # Checks if the function "glFlushMappedBufferRange" is loaded.
    @[AlwaysInline]
    def flush_mapped_buffer_range? : Bool
      !@proc_flush_mapped_buffer_range.pointer.null?
    end

    # Invokes glBindVertexArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_vertex_array!(*args)
      @proc_bind_vertex_array.call(*args)
    end

    # Invokes glBindVertexArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_vertex_array(*args)
      raise FunctionUnavailableError.new("glBindVertexArray") unless bind_vertex_array?

      @proc_bind_vertex_array.call(*args)
    end

    # Checks if the function "glBindVertexArray" is loaded.
    @[AlwaysInline]
    def bind_vertex_array? : Bool
      !@proc_bind_vertex_array.pointer.null?
    end

    # Invokes glDeleteVertexArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_vertex_arrays!(*args)
      @proc_delete_vertex_arrays.call(*args)
    end

    # Invokes glDeleteVertexArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_vertex_arrays(*args)
      raise FunctionUnavailableError.new("glDeleteVertexArrays") unless delete_vertex_arrays?

      @proc_delete_vertex_arrays.call(*args)
    end

    # Checks if the function "glDeleteVertexArrays" is loaded.
    @[AlwaysInline]
    def delete_vertex_arrays? : Bool
      !@proc_delete_vertex_arrays.pointer.null?
    end

    # Invokes glGenVertexArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_vertex_arrays!(*args)
      @proc_gen_vertex_arrays.call(*args)
    end

    # Invokes glGenVertexArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_vertex_arrays(*args)
      raise FunctionUnavailableError.new("glGenVertexArrays") unless gen_vertex_arrays?

      @proc_gen_vertex_arrays.call(*args)
    end

    # Checks if the function "glGenVertexArrays" is loaded.
    @[AlwaysInline]
    def gen_vertex_arrays? : Bool
      !@proc_gen_vertex_arrays.pointer.null?
    end

    # Invokes glIsVertexArray.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_vertex_array!(*args)
      @proc_is_vertex_array.call(*args)
    end

    # Invokes glIsVertexArray.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_vertex_array(*args)
      raise FunctionUnavailableError.new("glIsVertexArray") unless is_vertex_array?

      @proc_is_vertex_array.call(*args)
    end

    # Checks if the function "glIsVertexArray" is loaded.
    @[AlwaysInline]
    def is_vertex_array? : Bool
      !@proc_is_vertex_array.pointer.null?
    end

    # Invokes glDrawArraysInstanced.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays_instanced!(*args)
      @proc_draw_arrays_instanced.call(*args)
    end

    # Invokes glDrawArraysInstanced.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays_instanced(*args)
      raise FunctionUnavailableError.new("glDrawArraysInstanced") unless draw_arrays_instanced?

      @proc_draw_arrays_instanced.call(*args)
    end

    # Checks if the function "glDrawArraysInstanced" is loaded.
    @[AlwaysInline]
    def draw_arrays_instanced? : Bool
      !@proc_draw_arrays_instanced.pointer.null?
    end

    # Invokes glDrawElementsInstanced.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_instanced!(*args)
      @proc_draw_elements_instanced.call(*args)
    end

    # Invokes glDrawElementsInstanced.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_instanced(*args)
      raise FunctionUnavailableError.new("glDrawElementsInstanced") unless draw_elements_instanced?

      @proc_draw_elements_instanced.call(*args)
    end

    # Checks if the function "glDrawElementsInstanced" is loaded.
    @[AlwaysInline]
    def draw_elements_instanced? : Bool
      !@proc_draw_elements_instanced.pointer.null?
    end

    # Invokes glTexBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_buffer!(*args)
      @proc_tex_buffer.call(*args)
    end

    # Invokes glTexBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_buffer(*args)
      raise FunctionUnavailableError.new("glTexBuffer") unless tex_buffer?

      @proc_tex_buffer.call(*args)
    end

    # Checks if the function "glTexBuffer" is loaded.
    @[AlwaysInline]
    def tex_buffer? : Bool
      !@proc_tex_buffer.pointer.null?
    end

    # Invokes glPrimitiveRestartIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def primitive_restart_index!(*args)
      @proc_primitive_restart_index.call(*args)
    end

    # Invokes glPrimitiveRestartIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def primitive_restart_index(*args)
      raise FunctionUnavailableError.new("glPrimitiveRestartIndex") unless primitive_restart_index?

      @proc_primitive_restart_index.call(*args)
    end

    # Checks if the function "glPrimitiveRestartIndex" is loaded.
    @[AlwaysInline]
    def primitive_restart_index? : Bool
      !@proc_primitive_restart_index.pointer.null?
    end

    # Invokes glCopyBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_buffer_sub_data!(*args)
      @proc_copy_buffer_sub_data.call(*args)
    end

    # Invokes glCopyBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glCopyBufferSubData") unless copy_buffer_sub_data?

      @proc_copy_buffer_sub_data.call(*args)
    end

    # Checks if the function "glCopyBufferSubData" is loaded.
    @[AlwaysInline]
    def copy_buffer_sub_data? : Bool
      !@proc_copy_buffer_sub_data.pointer.null?
    end

    # Invokes glGetUniformIndices.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_indices!(*args)
      @proc_get_uniform_indices.call(*args)
    end

    # Invokes glGetUniformIndices.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_indices(*args)
      raise FunctionUnavailableError.new("glGetUniformIndices") unless get_uniform_indices?

      @proc_get_uniform_indices.call(*args)
    end

    # Checks if the function "glGetUniformIndices" is loaded.
    @[AlwaysInline]
    def get_uniform_indices? : Bool
      !@proc_get_uniform_indices.pointer.null?
    end

    # Invokes glGetActiveUniformsiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniforms_iv!(*args)
      @proc_get_active_uniforms_iv.call(*args)
    end

    # Invokes glGetActiveUniformsiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniforms_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformsiv") unless get_active_uniforms_iv?

      @proc_get_active_uniforms_iv.call(*args)
    end

    # Checks if the function "glGetActiveUniformsiv" is loaded.
    @[AlwaysInline]
    def get_active_uniforms_iv? : Bool
      !@proc_get_active_uniforms_iv.pointer.null?
    end

    # Invokes glGetActiveUniformName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform_name!(*args)
      @proc_get_active_uniform_name.call(*args)
    end

    # Invokes glGetActiveUniformName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform_name(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformName") unless get_active_uniform_name?

      @proc_get_active_uniform_name.call(*args)
    end

    # Checks if the function "glGetActiveUniformName" is loaded.
    @[AlwaysInline]
    def get_active_uniform_name? : Bool
      !@proc_get_active_uniform_name.pointer.null?
    end

    # Invokes glGetUniformBlockIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_block_index!(*args)
      @proc_get_uniform_block_index.call(*args)
    end

    # Invokes glGetUniformBlockIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_block_index(*args)
      raise FunctionUnavailableError.new("glGetUniformBlockIndex") unless get_uniform_block_index?

      @proc_get_uniform_block_index.call(*args)
    end

    # Checks if the function "glGetUniformBlockIndex" is loaded.
    @[AlwaysInline]
    def get_uniform_block_index? : Bool
      !@proc_get_uniform_block_index.pointer.null?
    end

    # Invokes glGetActiveUniformBlockiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform_block_iv!(*args)
      @proc_get_active_uniform_block_iv.call(*args)
    end

    # Invokes glGetActiveUniformBlockiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform_block_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformBlockiv") unless get_active_uniform_block_iv?

      @proc_get_active_uniform_block_iv.call(*args)
    end

    # Checks if the function "glGetActiveUniformBlockiv" is loaded.
    @[AlwaysInline]
    def get_active_uniform_block_iv? : Bool
      !@proc_get_active_uniform_block_iv.pointer.null?
    end

    # Invokes glGetActiveUniformBlockName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_uniform_block_name!(*args)
      @proc_get_active_uniform_block_name.call(*args)
    end

    # Invokes glGetActiveUniformBlockName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_uniform_block_name(*args)
      raise FunctionUnavailableError.new("glGetActiveUniformBlockName") unless get_active_uniform_block_name?

      @proc_get_active_uniform_block_name.call(*args)
    end

    # Checks if the function "glGetActiveUniformBlockName" is loaded.
    @[AlwaysInline]
    def get_active_uniform_block_name? : Bool
      !@proc_get_active_uniform_block_name.pointer.null?
    end

    # Invokes glUniformBlockBinding.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_block_binding!(*args)
      @proc_uniform_block_binding.call(*args)
    end

    # Invokes glUniformBlockBinding.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_block_binding(*args)
      raise FunctionUnavailableError.new("glUniformBlockBinding") unless uniform_block_binding?

      @proc_uniform_block_binding.call(*args)
    end

    # Checks if the function "glUniformBlockBinding" is loaded.
    @[AlwaysInline]
    def uniform_block_binding? : Bool
      !@proc_uniform_block_binding.pointer.null?
    end

    # Invokes glDrawElementsBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_base_vertex!(*args)
      @proc_draw_elements_base_vertex.call(*args)
    end

    # Invokes glDrawElementsBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_base_vertex(*args)
      raise FunctionUnavailableError.new("glDrawElementsBaseVertex") unless draw_elements_base_vertex?

      @proc_draw_elements_base_vertex.call(*args)
    end

    # Checks if the function "glDrawElementsBaseVertex" is loaded.
    @[AlwaysInline]
    def draw_elements_base_vertex? : Bool
      !@proc_draw_elements_base_vertex.pointer.null?
    end

    # Invokes glDrawRangeElementsBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_range_elements_base_vertex!(*args)
      @proc_draw_range_elements_base_vertex.call(*args)
    end

    # Invokes glDrawRangeElementsBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_range_elements_base_vertex(*args)
      raise FunctionUnavailableError.new("glDrawRangeElementsBaseVertex") unless draw_range_elements_base_vertex?

      @proc_draw_range_elements_base_vertex.call(*args)
    end

    # Checks if the function "glDrawRangeElementsBaseVertex" is loaded.
    @[AlwaysInline]
    def draw_range_elements_base_vertex? : Bool
      !@proc_draw_range_elements_base_vertex.pointer.null?
    end

    # Invokes glDrawElementsInstancedBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_instanced_base_vertex!(*args)
      @proc_draw_elements_instanced_base_vertex.call(*args)
    end

    # Invokes glDrawElementsInstancedBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_instanced_base_vertex(*args)
      raise FunctionUnavailableError.new("glDrawElementsInstancedBaseVertex") unless draw_elements_instanced_base_vertex?

      @proc_draw_elements_instanced_base_vertex.call(*args)
    end

    # Checks if the function "glDrawElementsInstancedBaseVertex" is loaded.
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex? : Bool
      !@proc_draw_elements_instanced_base_vertex.pointer.null?
    end

    # Invokes glMultiDrawElementsBaseVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_elements_base_vertex!(*args)
      @proc_multi_draw_elements_base_vertex.call(*args)
    end

    # Invokes glMultiDrawElementsBaseVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_elements_base_vertex(*args)
      raise FunctionUnavailableError.new("glMultiDrawElementsBaseVertex") unless multi_draw_elements_base_vertex?

      @proc_multi_draw_elements_base_vertex.call(*args)
    end

    # Checks if the function "glMultiDrawElementsBaseVertex" is loaded.
    @[AlwaysInline]
    def multi_draw_elements_base_vertex? : Bool
      !@proc_multi_draw_elements_base_vertex.pointer.null?
    end

    # Invokes glProvokingVertex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def provoking_vertex!(*args)
      @proc_provoking_vertex.call(*args)
    end

    # Invokes glProvokingVertex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def provoking_vertex(*args)
      raise FunctionUnavailableError.new("glProvokingVertex") unless provoking_vertex?

      @proc_provoking_vertex.call(*args)
    end

    # Checks if the function "glProvokingVertex" is loaded.
    @[AlwaysInline]
    def provoking_vertex? : Bool
      !@proc_provoking_vertex.pointer.null?
    end

    # Invokes glFenceSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def fence_sync!(*args)
      @proc_fence_sync.call(*args)
    end

    # Invokes glFenceSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def fence_sync(*args)
      raise FunctionUnavailableError.new("glFenceSync") unless fence_sync?

      @proc_fence_sync.call(*args)
    end

    # Checks if the function "glFenceSync" is loaded.
    @[AlwaysInline]
    def fence_sync? : Bool
      !@proc_fence_sync.pointer.null?
    end

    # Invokes glIsSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_sync!(*args)
      @proc_is_sync.call(*args)
    end

    # Invokes glIsSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_sync(*args)
      raise FunctionUnavailableError.new("glIsSync") unless is_sync?

      @proc_is_sync.call(*args)
    end

    # Checks if the function "glIsSync" is loaded.
    @[AlwaysInline]
    def is_sync? : Bool
      !@proc_is_sync.pointer.null?
    end

    # Invokes glDeleteSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_sync!(*args)
      @proc_delete_sync.call(*args)
    end

    # Invokes glDeleteSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_sync(*args)
      raise FunctionUnavailableError.new("glDeleteSync") unless delete_sync?

      @proc_delete_sync.call(*args)
    end

    # Checks if the function "glDeleteSync" is loaded.
    @[AlwaysInline]
    def delete_sync? : Bool
      !@proc_delete_sync.pointer.null?
    end

    # Invokes glClientWaitSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def client_wait_sync!(*args)
      @proc_client_wait_sync.call(*args)
    end

    # Invokes glClientWaitSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def client_wait_sync(*args)
      raise FunctionUnavailableError.new("glClientWaitSync") unless client_wait_sync?

      @proc_client_wait_sync.call(*args)
    end

    # Checks if the function "glClientWaitSync" is loaded.
    @[AlwaysInline]
    def client_wait_sync? : Bool
      !@proc_client_wait_sync.pointer.null?
    end

    # Invokes glWaitSync.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def wait_sync!(*args)
      @proc_wait_sync.call(*args)
    end

    # Invokes glWaitSync.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def wait_sync(*args)
      raise FunctionUnavailableError.new("glWaitSync") unless wait_sync?

      @proc_wait_sync.call(*args)
    end

    # Checks if the function "glWaitSync" is loaded.
    @[AlwaysInline]
    def wait_sync? : Bool
      !@proc_wait_sync.pointer.null?
    end

    # Invokes glGetInteger64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_64v!(*args)
      @proc_get_integer_64v.call(*args)
    end

    # Invokes glGetInteger64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_64v(*args)
      raise FunctionUnavailableError.new("glGetInteger64v") unless get_integer_64v?

      @proc_get_integer_64v.call(*args)
    end

    # Checks if the function "glGetInteger64v" is loaded.
    @[AlwaysInline]
    def get_integer_64v? : Bool
      !@proc_get_integer_64v.pointer.null?
    end

    # Invokes glGetSynciv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sync_iv!(*args)
      @proc_get_sync_iv.call(*args)
    end

    # Invokes glGetSynciv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sync_iv(*args)
      raise FunctionUnavailableError.new("glGetSynciv") unless get_sync_iv?

      @proc_get_sync_iv.call(*args)
    end

    # Checks if the function "glGetSynciv" is loaded.
    @[AlwaysInline]
    def get_sync_iv? : Bool
      !@proc_get_sync_iv.pointer.null?
    end

    # Invokes glGetInteger64i_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_integer_64i_v!(*args)
      @proc_get_integer_64i_v.call(*args)
    end

    # Invokes glGetInteger64i_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_integer_64i_v(*args)
      raise FunctionUnavailableError.new("glGetInteger64i_v") unless get_integer_64i_v?

      @proc_get_integer_64i_v.call(*args)
    end

    # Checks if the function "glGetInteger64i_v" is loaded.
    @[AlwaysInline]
    def get_integer_64i_v? : Bool
      !@proc_get_integer_64i_v.pointer.null?
    end

    # Invokes glGetBufferParameteri64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_buffer_parameter_i64v!(*args)
      @proc_get_buffer_parameter_i64v.call(*args)
    end

    # Invokes glGetBufferParameteri64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_buffer_parameter_i64v(*args)
      raise FunctionUnavailableError.new("glGetBufferParameteri64v") unless get_buffer_parameter_i64v?

      @proc_get_buffer_parameter_i64v.call(*args)
    end

    # Checks if the function "glGetBufferParameteri64v" is loaded.
    @[AlwaysInline]
    def get_buffer_parameter_i64v? : Bool
      !@proc_get_buffer_parameter_i64v.pointer.null?
    end

    # Invokes glFramebufferTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_texture!(*args)
      @proc_framebuffer_texture.call(*args)
    end

    # Invokes glFramebufferTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_texture(*args)
      raise FunctionUnavailableError.new("glFramebufferTexture") unless framebuffer_texture?

      @proc_framebuffer_texture.call(*args)
    end

    # Checks if the function "glFramebufferTexture" is loaded.
    @[AlwaysInline]
    def framebuffer_texture? : Bool
      !@proc_framebuffer_texture.pointer.null?
    end

    # Invokes glTexImage2DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_2d_multisample!(*args)
      @proc_tex_image_2d_multisample.call(*args)
    end

    # Invokes glTexImage2DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_2d_multisample(*args)
      raise FunctionUnavailableError.new("glTexImage2DMultisample") unless tex_image_2d_multisample?

      @proc_tex_image_2d_multisample.call(*args)
    end

    # Checks if the function "glTexImage2DMultisample" is loaded.
    @[AlwaysInline]
    def tex_image_2d_multisample? : Bool
      !@proc_tex_image_2d_multisample.pointer.null?
    end

    # Invokes glTexImage3DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_image_3d_multisample!(*args)
      @proc_tex_image_3d_multisample.call(*args)
    end

    # Invokes glTexImage3DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_image_3d_multisample(*args)
      raise FunctionUnavailableError.new("glTexImage3DMultisample") unless tex_image_3d_multisample?

      @proc_tex_image_3d_multisample.call(*args)
    end

    # Checks if the function "glTexImage3DMultisample" is loaded.
    @[AlwaysInline]
    def tex_image_3d_multisample? : Bool
      !@proc_tex_image_3d_multisample.pointer.null?
    end

    # Invokes glGetMultisamplefv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_multisample_fv!(*args)
      @proc_get_multisample_fv.call(*args)
    end

    # Invokes glGetMultisamplefv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_multisample_fv(*args)
      raise FunctionUnavailableError.new("glGetMultisamplefv") unless get_multisample_fv?

      @proc_get_multisample_fv.call(*args)
    end

    # Checks if the function "glGetMultisamplefv" is loaded.
    @[AlwaysInline]
    def get_multisample_fv? : Bool
      !@proc_get_multisample_fv.pointer.null?
    end

    # Invokes glSampleMaski.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sample_mask_i!(*args)
      @proc_sample_mask_i.call(*args)
    end

    # Invokes glSampleMaski.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sample_mask_i(*args)
      raise FunctionUnavailableError.new("glSampleMaski") unless sample_mask_i?

      @proc_sample_mask_i.call(*args)
    end

    # Checks if the function "glSampleMaski" is loaded.
    @[AlwaysInline]
    def sample_mask_i? : Bool
      !@proc_sample_mask_i.pointer.null?
    end

    # Invokes glBindFragDataLocationIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_frag_data_location_indexed!(*args)
      @proc_bind_frag_data_location_indexed.call(*args)
    end

    # Invokes glBindFragDataLocationIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_frag_data_location_indexed(*args)
      raise FunctionUnavailableError.new("glBindFragDataLocationIndexed") unless bind_frag_data_location_indexed?

      @proc_bind_frag_data_location_indexed.call(*args)
    end

    # Checks if the function "glBindFragDataLocationIndexed" is loaded.
    @[AlwaysInline]
    def bind_frag_data_location_indexed? : Bool
      !@proc_bind_frag_data_location_indexed.pointer.null?
    end

    # Invokes glGetFragDataIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_frag_data_index!(*args)
      @proc_get_frag_data_index.call(*args)
    end

    # Invokes glGetFragDataIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_frag_data_index(*args)
      raise FunctionUnavailableError.new("glGetFragDataIndex") unless get_frag_data_index?

      @proc_get_frag_data_index.call(*args)
    end

    # Checks if the function "glGetFragDataIndex" is loaded.
    @[AlwaysInline]
    def get_frag_data_index? : Bool
      !@proc_get_frag_data_index.pointer.null?
    end

    # Invokes glGenSamplers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_samplers!(*args)
      @proc_gen_samplers.call(*args)
    end

    # Invokes glGenSamplers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_samplers(*args)
      raise FunctionUnavailableError.new("glGenSamplers") unless gen_samplers?

      @proc_gen_samplers.call(*args)
    end

    # Checks if the function "glGenSamplers" is loaded.
    @[AlwaysInline]
    def gen_samplers? : Bool
      !@proc_gen_samplers.pointer.null?
    end

    # Invokes glDeleteSamplers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_samplers!(*args)
      @proc_delete_samplers.call(*args)
    end

    # Invokes glDeleteSamplers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_samplers(*args)
      raise FunctionUnavailableError.new("glDeleteSamplers") unless delete_samplers?

      @proc_delete_samplers.call(*args)
    end

    # Checks if the function "glDeleteSamplers" is loaded.
    @[AlwaysInline]
    def delete_samplers? : Bool
      !@proc_delete_samplers.pointer.null?
    end

    # Invokes glIsSampler.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_sampler!(*args)
      @proc_is_sampler.call(*args)
    end

    # Invokes glIsSampler.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_sampler(*args)
      raise FunctionUnavailableError.new("glIsSampler") unless is_sampler?

      @proc_is_sampler.call(*args)
    end

    # Checks if the function "glIsSampler" is loaded.
    @[AlwaysInline]
    def is_sampler? : Bool
      !@proc_is_sampler.pointer.null?
    end

    # Invokes glBindSampler.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_sampler!(*args)
      @proc_bind_sampler.call(*args)
    end

    # Invokes glBindSampler.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_sampler(*args)
      raise FunctionUnavailableError.new("glBindSampler") unless bind_sampler?

      @proc_bind_sampler.call(*args)
    end

    # Checks if the function "glBindSampler" is loaded.
    @[AlwaysInline]
    def bind_sampler? : Bool
      !@proc_bind_sampler.pointer.null?
    end

    # Invokes glSamplerParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_i!(*args)
      @proc_sampler_parameter_i.call(*args)
    end

    # Invokes glSamplerParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_i(*args)
      raise FunctionUnavailableError.new("glSamplerParameteri") unless sampler_parameter_i?

      @proc_sampler_parameter_i.call(*args)
    end

    # Checks if the function "glSamplerParameteri" is loaded.
    @[AlwaysInline]
    def sampler_parameter_i? : Bool
      !@proc_sampler_parameter_i.pointer.null?
    end

    # Invokes glSamplerParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_iv!(*args)
      @proc_sampler_parameter_iv.call(*args)
    end

    # Invokes glSamplerParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_iv(*args)
      raise FunctionUnavailableError.new("glSamplerParameteriv") unless sampler_parameter_iv?

      @proc_sampler_parameter_iv.call(*args)
    end

    # Checks if the function "glSamplerParameteriv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_iv? : Bool
      !@proc_sampler_parameter_iv.pointer.null?
    end

    # Invokes glSamplerParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_f!(*args)
      @proc_sampler_parameter_f.call(*args)
    end

    # Invokes glSamplerParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_f(*args)
      raise FunctionUnavailableError.new("glSamplerParameterf") unless sampler_parameter_f?

      @proc_sampler_parameter_f.call(*args)
    end

    # Checks if the function "glSamplerParameterf" is loaded.
    @[AlwaysInline]
    def sampler_parameter_f? : Bool
      !@proc_sampler_parameter_f.pointer.null?
    end

    # Invokes glSamplerParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_fv!(*args)
      @proc_sampler_parameter_fv.call(*args)
    end

    # Invokes glSamplerParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_fv(*args)
      raise FunctionUnavailableError.new("glSamplerParameterfv") unless sampler_parameter_fv?

      @proc_sampler_parameter_fv.call(*args)
    end

    # Checks if the function "glSamplerParameterfv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_fv? : Bool
      !@proc_sampler_parameter_fv.pointer.null?
    end

    # Invokes glSamplerParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_i_iv!(*args)
      @proc_sampler_parameter_i_iv.call(*args)
    end

    # Invokes glSamplerParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glSamplerParameterIiv") unless sampler_parameter_i_iv?

      @proc_sampler_parameter_i_iv.call(*args)
    end

    # Checks if the function "glSamplerParameterIiv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_i_iv? : Bool
      !@proc_sampler_parameter_i_iv.pointer.null?
    end

    # Invokes glSamplerParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_i_uiv!(*args)
      @proc_sampler_parameter_i_uiv.call(*args)
    end

    # Invokes glSamplerParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glSamplerParameterIuiv") unless sampler_parameter_i_uiv?

      @proc_sampler_parameter_i_uiv.call(*args)
    end

    # Checks if the function "glSamplerParameterIuiv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_i_uiv? : Bool
      !@proc_sampler_parameter_i_uiv.pointer.null?
    end

    # Invokes glGetSamplerParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_iv!(*args)
      @proc_get_sampler_parameter_iv.call(*args)
    end

    # Invokes glGetSamplerParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameteriv") unless get_sampler_parameter_iv?

      @proc_get_sampler_parameter_iv.call(*args)
    end

    # Checks if the function "glGetSamplerParameteriv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_iv? : Bool
      !@proc_get_sampler_parameter_iv.pointer.null?
    end

    # Invokes glGetSamplerParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_i_iv!(*args)
      @proc_get_sampler_parameter_i_iv.call(*args)
    end

    # Invokes glGetSamplerParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameterIiv") unless get_sampler_parameter_i_iv?

      @proc_get_sampler_parameter_i_iv.call(*args)
    end

    # Checks if the function "glGetSamplerParameterIiv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_i_iv? : Bool
      !@proc_get_sampler_parameter_i_iv.pointer.null?
    end

    # Invokes glGetSamplerParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_fv!(*args)
      @proc_get_sampler_parameter_fv.call(*args)
    end

    # Invokes glGetSamplerParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameterfv") unless get_sampler_parameter_fv?

      @proc_get_sampler_parameter_fv.call(*args)
    end

    # Checks if the function "glGetSamplerParameterfv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_fv? : Bool
      !@proc_get_sampler_parameter_fv.pointer.null?
    end

    # Invokes glGetSamplerParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_i_uiv!(*args)
      @proc_get_sampler_parameter_i_uiv.call(*args)
    end

    # Invokes glGetSamplerParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameterIuiv") unless get_sampler_parameter_i_uiv?

      @proc_get_sampler_parameter_i_uiv.call(*args)
    end

    # Checks if the function "glGetSamplerParameterIuiv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_i_uiv? : Bool
      !@proc_get_sampler_parameter_i_uiv.pointer.null?
    end

    # Invokes glQueryCounter.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def query_counter!(*args)
      @proc_query_counter.call(*args)
    end

    # Invokes glQueryCounter.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def query_counter(*args)
      raise FunctionUnavailableError.new("glQueryCounter") unless query_counter?

      @proc_query_counter.call(*args)
    end

    # Checks if the function "glQueryCounter" is loaded.
    @[AlwaysInline]
    def query_counter? : Bool
      !@proc_query_counter.pointer.null?
    end

    # Invokes glGetQueryObjecti64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_i64v!(*args)
      @proc_get_query_object_i64v.call(*args)
    end

    # Invokes glGetQueryObjecti64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_i64v(*args)
      raise FunctionUnavailableError.new("glGetQueryObjecti64v") unless get_query_object_i64v?

      @proc_get_query_object_i64v.call(*args)
    end

    # Checks if the function "glGetQueryObjecti64v" is loaded.
    @[AlwaysInline]
    def get_query_object_i64v? : Bool
      !@proc_get_query_object_i64v.pointer.null?
    end

    # Invokes glGetQueryObjectui64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_ui64v!(*args)
      @proc_get_query_object_ui64v.call(*args)
    end

    # Invokes glGetQueryObjectui64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_ui64v(*args)
      raise FunctionUnavailableError.new("glGetQueryObjectui64v") unless get_query_object_ui64v?

      @proc_get_query_object_ui64v.call(*args)
    end

    # Checks if the function "glGetQueryObjectui64v" is loaded.
    @[AlwaysInline]
    def get_query_object_ui64v? : Bool
      !@proc_get_query_object_ui64v.pointer.null?
    end

    # Invokes glVertexAttribDivisor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_divisor!(*args)
      @proc_vertex_attrib_divisor.call(*args)
    end

    # Invokes glVertexAttribDivisor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_divisor(*args)
      raise FunctionUnavailableError.new("glVertexAttribDivisor") unless vertex_attrib_divisor?

      @proc_vertex_attrib_divisor.call(*args)
    end

    # Checks if the function "glVertexAttribDivisor" is loaded.
    @[AlwaysInline]
    def vertex_attrib_divisor? : Bool
      !@proc_vertex_attrib_divisor.pointer.null?
    end

    # Invokes glVertexAttribP1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_1ui!(*args)
      @proc_vertex_attrib_p_1ui.call(*args)
    end

    # Invokes glVertexAttribP1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_1ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP1ui") unless vertex_attrib_p_1ui?

      @proc_vertex_attrib_p_1ui.call(*args)
    end

    # Checks if the function "glVertexAttribP1ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_1ui? : Bool
      !@proc_vertex_attrib_p_1ui.pointer.null?
    end

    # Invokes glVertexAttribP1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_1uiv!(*args)
      @proc_vertex_attrib_p_1uiv.call(*args)
    end

    # Invokes glVertexAttribP1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_1uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP1uiv") unless vertex_attrib_p_1uiv?

      @proc_vertex_attrib_p_1uiv.call(*args)
    end

    # Checks if the function "glVertexAttribP1uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_1uiv? : Bool
      !@proc_vertex_attrib_p_1uiv.pointer.null?
    end

    # Invokes glVertexAttribP2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_2ui!(*args)
      @proc_vertex_attrib_p_2ui.call(*args)
    end

    # Invokes glVertexAttribP2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_2ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP2ui") unless vertex_attrib_p_2ui?

      @proc_vertex_attrib_p_2ui.call(*args)
    end

    # Checks if the function "glVertexAttribP2ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_2ui? : Bool
      !@proc_vertex_attrib_p_2ui.pointer.null?
    end

    # Invokes glVertexAttribP2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_2uiv!(*args)
      @proc_vertex_attrib_p_2uiv.call(*args)
    end

    # Invokes glVertexAttribP2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_2uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP2uiv") unless vertex_attrib_p_2uiv?

      @proc_vertex_attrib_p_2uiv.call(*args)
    end

    # Checks if the function "glVertexAttribP2uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_2uiv? : Bool
      !@proc_vertex_attrib_p_2uiv.pointer.null?
    end

    # Invokes glVertexAttribP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_3ui!(*args)
      @proc_vertex_attrib_p_3ui.call(*args)
    end

    # Invokes glVertexAttribP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_3ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP3ui") unless vertex_attrib_p_3ui?

      @proc_vertex_attrib_p_3ui.call(*args)
    end

    # Checks if the function "glVertexAttribP3ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_3ui? : Bool
      !@proc_vertex_attrib_p_3ui.pointer.null?
    end

    # Invokes glVertexAttribP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_3uiv!(*args)
      @proc_vertex_attrib_p_3uiv.call(*args)
    end

    # Invokes glVertexAttribP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_3uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP3uiv") unless vertex_attrib_p_3uiv?

      @proc_vertex_attrib_p_3uiv.call(*args)
    end

    # Checks if the function "glVertexAttribP3uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_3uiv? : Bool
      !@proc_vertex_attrib_p_3uiv.pointer.null?
    end

    # Invokes glVertexAttribP4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_4ui!(*args)
      @proc_vertex_attrib_p_4ui.call(*args)
    end

    # Invokes glVertexAttribP4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_4ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP4ui") unless vertex_attrib_p_4ui?

      @proc_vertex_attrib_p_4ui.call(*args)
    end

    # Checks if the function "glVertexAttribP4ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_4ui? : Bool
      !@proc_vertex_attrib_p_4ui.pointer.null?
    end

    # Invokes glVertexAttribP4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_4uiv!(*args)
      @proc_vertex_attrib_p_4uiv.call(*args)
    end

    # Invokes glVertexAttribP4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP4uiv") unless vertex_attrib_p_4uiv?

      @proc_vertex_attrib_p_4uiv.call(*args)
    end

    # Checks if the function "glVertexAttribP4uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_4uiv? : Bool
      !@proc_vertex_attrib_p_4uiv.pointer.null?
    end

    # Invokes glVertexP2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_p_2ui!(*args)
      @proc_vertex_p_2ui.call(*args)
    end

    # Invokes glVertexP2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_p_2ui(*args)
      raise FunctionUnavailableError.new("glVertexP2ui") unless vertex_p_2ui?

      @proc_vertex_p_2ui.call(*args)
    end

    # Checks if the function "glVertexP2ui" is loaded.
    @[AlwaysInline]
    def vertex_p_2ui? : Bool
      !@proc_vertex_p_2ui.pointer.null?
    end

    # Invokes glVertexP2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_p_2uiv!(*args)
      @proc_vertex_p_2uiv.call(*args)
    end

    # Invokes glVertexP2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_p_2uiv(*args)
      raise FunctionUnavailableError.new("glVertexP2uiv") unless vertex_p_2uiv?

      @proc_vertex_p_2uiv.call(*args)
    end

    # Checks if the function "glVertexP2uiv" is loaded.
    @[AlwaysInline]
    def vertex_p_2uiv? : Bool
      !@proc_vertex_p_2uiv.pointer.null?
    end

    # Invokes glVertexP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_p_3ui!(*args)
      @proc_vertex_p_3ui.call(*args)
    end

    # Invokes glVertexP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_p_3ui(*args)
      raise FunctionUnavailableError.new("glVertexP3ui") unless vertex_p_3ui?

      @proc_vertex_p_3ui.call(*args)
    end

    # Checks if the function "glVertexP3ui" is loaded.
    @[AlwaysInline]
    def vertex_p_3ui? : Bool
      !@proc_vertex_p_3ui.pointer.null?
    end

    # Invokes glVertexP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_p_3uiv!(*args)
      @proc_vertex_p_3uiv.call(*args)
    end

    # Invokes glVertexP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_p_3uiv(*args)
      raise FunctionUnavailableError.new("glVertexP3uiv") unless vertex_p_3uiv?

      @proc_vertex_p_3uiv.call(*args)
    end

    # Checks if the function "glVertexP3uiv" is loaded.
    @[AlwaysInline]
    def vertex_p_3uiv? : Bool
      !@proc_vertex_p_3uiv.pointer.null?
    end

    # Invokes glVertexP4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_p_4ui!(*args)
      @proc_vertex_p_4ui.call(*args)
    end

    # Invokes glVertexP4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_p_4ui(*args)
      raise FunctionUnavailableError.new("glVertexP4ui") unless vertex_p_4ui?

      @proc_vertex_p_4ui.call(*args)
    end

    # Checks if the function "glVertexP4ui" is loaded.
    @[AlwaysInline]
    def vertex_p_4ui? : Bool
      !@proc_vertex_p_4ui.pointer.null?
    end

    # Invokes glVertexP4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_p_4uiv!(*args)
      @proc_vertex_p_4uiv.call(*args)
    end

    # Invokes glVertexP4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_p_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexP4uiv") unless vertex_p_4uiv?

      @proc_vertex_p_4uiv.call(*args)
    end

    # Checks if the function "glVertexP4uiv" is loaded.
    @[AlwaysInline]
    def vertex_p_4uiv? : Bool
      !@proc_vertex_p_4uiv.pointer.null?
    end

    # Invokes glTexCoordP1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_1ui!(*args)
      @proc_tex_coord_p_1ui.call(*args)
    end

    # Invokes glTexCoordP1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_1ui(*args)
      raise FunctionUnavailableError.new("glTexCoordP1ui") unless tex_coord_p_1ui?

      @proc_tex_coord_p_1ui.call(*args)
    end

    # Checks if the function "glTexCoordP1ui" is loaded.
    @[AlwaysInline]
    def tex_coord_p_1ui? : Bool
      !@proc_tex_coord_p_1ui.pointer.null?
    end

    # Invokes glTexCoordP1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_1uiv!(*args)
      @proc_tex_coord_p_1uiv.call(*args)
    end

    # Invokes glTexCoordP1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_1uiv(*args)
      raise FunctionUnavailableError.new("glTexCoordP1uiv") unless tex_coord_p_1uiv?

      @proc_tex_coord_p_1uiv.call(*args)
    end

    # Checks if the function "glTexCoordP1uiv" is loaded.
    @[AlwaysInline]
    def tex_coord_p_1uiv? : Bool
      !@proc_tex_coord_p_1uiv.pointer.null?
    end

    # Invokes glTexCoordP2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_2ui!(*args)
      @proc_tex_coord_p_2ui.call(*args)
    end

    # Invokes glTexCoordP2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_2ui(*args)
      raise FunctionUnavailableError.new("glTexCoordP2ui") unless tex_coord_p_2ui?

      @proc_tex_coord_p_2ui.call(*args)
    end

    # Checks if the function "glTexCoordP2ui" is loaded.
    @[AlwaysInline]
    def tex_coord_p_2ui? : Bool
      !@proc_tex_coord_p_2ui.pointer.null?
    end

    # Invokes glTexCoordP2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_2uiv!(*args)
      @proc_tex_coord_p_2uiv.call(*args)
    end

    # Invokes glTexCoordP2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_2uiv(*args)
      raise FunctionUnavailableError.new("glTexCoordP2uiv") unless tex_coord_p_2uiv?

      @proc_tex_coord_p_2uiv.call(*args)
    end

    # Checks if the function "glTexCoordP2uiv" is loaded.
    @[AlwaysInline]
    def tex_coord_p_2uiv? : Bool
      !@proc_tex_coord_p_2uiv.pointer.null?
    end

    # Invokes glTexCoordP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_3ui!(*args)
      @proc_tex_coord_p_3ui.call(*args)
    end

    # Invokes glTexCoordP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_3ui(*args)
      raise FunctionUnavailableError.new("glTexCoordP3ui") unless tex_coord_p_3ui?

      @proc_tex_coord_p_3ui.call(*args)
    end

    # Checks if the function "glTexCoordP3ui" is loaded.
    @[AlwaysInline]
    def tex_coord_p_3ui? : Bool
      !@proc_tex_coord_p_3ui.pointer.null?
    end

    # Invokes glTexCoordP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_3uiv!(*args)
      @proc_tex_coord_p_3uiv.call(*args)
    end

    # Invokes glTexCoordP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_3uiv(*args)
      raise FunctionUnavailableError.new("glTexCoordP3uiv") unless tex_coord_p_3uiv?

      @proc_tex_coord_p_3uiv.call(*args)
    end

    # Checks if the function "glTexCoordP3uiv" is loaded.
    @[AlwaysInline]
    def tex_coord_p_3uiv? : Bool
      !@proc_tex_coord_p_3uiv.pointer.null?
    end

    # Invokes glTexCoordP4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_4ui!(*args)
      @proc_tex_coord_p_4ui.call(*args)
    end

    # Invokes glTexCoordP4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_4ui(*args)
      raise FunctionUnavailableError.new("glTexCoordP4ui") unless tex_coord_p_4ui?

      @proc_tex_coord_p_4ui.call(*args)
    end

    # Checks if the function "glTexCoordP4ui" is loaded.
    @[AlwaysInline]
    def tex_coord_p_4ui? : Bool
      !@proc_tex_coord_p_4ui.pointer.null?
    end

    # Invokes glTexCoordP4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_coord_p_4uiv!(*args)
      @proc_tex_coord_p_4uiv.call(*args)
    end

    # Invokes glTexCoordP4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_coord_p_4uiv(*args)
      raise FunctionUnavailableError.new("glTexCoordP4uiv") unless tex_coord_p_4uiv?

      @proc_tex_coord_p_4uiv.call(*args)
    end

    # Checks if the function "glTexCoordP4uiv" is loaded.
    @[AlwaysInline]
    def tex_coord_p_4uiv? : Bool
      !@proc_tex_coord_p_4uiv.pointer.null?
    end

    # Invokes glMultiTexCoordP1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_1ui!(*args)
      @proc_multi_tex_coord_p_1ui.call(*args)
    end

    # Invokes glMultiTexCoordP1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_1ui(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP1ui") unless multi_tex_coord_p_1ui?

      @proc_multi_tex_coord_p_1ui.call(*args)
    end

    # Checks if the function "glMultiTexCoordP1ui" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_1ui? : Bool
      !@proc_multi_tex_coord_p_1ui.pointer.null?
    end

    # Invokes glMultiTexCoordP1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_1uiv!(*args)
      @proc_multi_tex_coord_p_1uiv.call(*args)
    end

    # Invokes glMultiTexCoordP1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_1uiv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP1uiv") unless multi_tex_coord_p_1uiv?

      @proc_multi_tex_coord_p_1uiv.call(*args)
    end

    # Checks if the function "glMultiTexCoordP1uiv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_1uiv? : Bool
      !@proc_multi_tex_coord_p_1uiv.pointer.null?
    end

    # Invokes glMultiTexCoordP2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_2ui!(*args)
      @proc_multi_tex_coord_p_2ui.call(*args)
    end

    # Invokes glMultiTexCoordP2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_2ui(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP2ui") unless multi_tex_coord_p_2ui?

      @proc_multi_tex_coord_p_2ui.call(*args)
    end

    # Checks if the function "glMultiTexCoordP2ui" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_2ui? : Bool
      !@proc_multi_tex_coord_p_2ui.pointer.null?
    end

    # Invokes glMultiTexCoordP2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_2uiv!(*args)
      @proc_multi_tex_coord_p_2uiv.call(*args)
    end

    # Invokes glMultiTexCoordP2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_2uiv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP2uiv") unless multi_tex_coord_p_2uiv?

      @proc_multi_tex_coord_p_2uiv.call(*args)
    end

    # Checks if the function "glMultiTexCoordP2uiv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_2uiv? : Bool
      !@proc_multi_tex_coord_p_2uiv.pointer.null?
    end

    # Invokes glMultiTexCoordP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_3ui!(*args)
      @proc_multi_tex_coord_p_3ui.call(*args)
    end

    # Invokes glMultiTexCoordP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_3ui(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP3ui") unless multi_tex_coord_p_3ui?

      @proc_multi_tex_coord_p_3ui.call(*args)
    end

    # Checks if the function "glMultiTexCoordP3ui" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_3ui? : Bool
      !@proc_multi_tex_coord_p_3ui.pointer.null?
    end

    # Invokes glMultiTexCoordP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_3uiv!(*args)
      @proc_multi_tex_coord_p_3uiv.call(*args)
    end

    # Invokes glMultiTexCoordP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_3uiv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP3uiv") unless multi_tex_coord_p_3uiv?

      @proc_multi_tex_coord_p_3uiv.call(*args)
    end

    # Checks if the function "glMultiTexCoordP3uiv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_3uiv? : Bool
      !@proc_multi_tex_coord_p_3uiv.pointer.null?
    end

    # Invokes glMultiTexCoordP4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_4ui!(*args)
      @proc_multi_tex_coord_p_4ui.call(*args)
    end

    # Invokes glMultiTexCoordP4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_4ui(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP4ui") unless multi_tex_coord_p_4ui?

      @proc_multi_tex_coord_p_4ui.call(*args)
    end

    # Checks if the function "glMultiTexCoordP4ui" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_4ui? : Bool
      !@proc_multi_tex_coord_p_4ui.pointer.null?
    end

    # Invokes glMultiTexCoordP4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_tex_coord_p_4uiv!(*args)
      @proc_multi_tex_coord_p_4uiv.call(*args)
    end

    # Invokes glMultiTexCoordP4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_tex_coord_p_4uiv(*args)
      raise FunctionUnavailableError.new("glMultiTexCoordP4uiv") unless multi_tex_coord_p_4uiv?

      @proc_multi_tex_coord_p_4uiv.call(*args)
    end

    # Checks if the function "glMultiTexCoordP4uiv" is loaded.
    @[AlwaysInline]
    def multi_tex_coord_p_4uiv? : Bool
      !@proc_multi_tex_coord_p_4uiv.pointer.null?
    end

    # Invokes glNormalP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_p_3ui!(*args)
      @proc_normal_p_3ui.call(*args)
    end

    # Invokes glNormalP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_p_3ui(*args)
      raise FunctionUnavailableError.new("glNormalP3ui") unless normal_p_3ui?

      @proc_normal_p_3ui.call(*args)
    end

    # Checks if the function "glNormalP3ui" is loaded.
    @[AlwaysInline]
    def normal_p_3ui? : Bool
      !@proc_normal_p_3ui.pointer.null?
    end

    # Invokes glNormalP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def normal_p_3uiv!(*args)
      @proc_normal_p_3uiv.call(*args)
    end

    # Invokes glNormalP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def normal_p_3uiv(*args)
      raise FunctionUnavailableError.new("glNormalP3uiv") unless normal_p_3uiv?

      @proc_normal_p_3uiv.call(*args)
    end

    # Checks if the function "glNormalP3uiv" is loaded.
    @[AlwaysInline]
    def normal_p_3uiv? : Bool
      !@proc_normal_p_3uiv.pointer.null?
    end

    # Invokes glColorP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_p_3ui!(*args)
      @proc_color_p_3ui.call(*args)
    end

    # Invokes glColorP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_p_3ui(*args)
      raise FunctionUnavailableError.new("glColorP3ui") unless color_p_3ui?

      @proc_color_p_3ui.call(*args)
    end

    # Checks if the function "glColorP3ui" is loaded.
    @[AlwaysInline]
    def color_p_3ui? : Bool
      !@proc_color_p_3ui.pointer.null?
    end

    # Invokes glColorP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_p_3uiv!(*args)
      @proc_color_p_3uiv.call(*args)
    end

    # Invokes glColorP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_p_3uiv(*args)
      raise FunctionUnavailableError.new("glColorP3uiv") unless color_p_3uiv?

      @proc_color_p_3uiv.call(*args)
    end

    # Checks if the function "glColorP3uiv" is loaded.
    @[AlwaysInline]
    def color_p_3uiv? : Bool
      !@proc_color_p_3uiv.pointer.null?
    end

    # Invokes glColorP4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_p_4ui!(*args)
      @proc_color_p_4ui.call(*args)
    end

    # Invokes glColorP4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_p_4ui(*args)
      raise FunctionUnavailableError.new("glColorP4ui") unless color_p_4ui?

      @proc_color_p_4ui.call(*args)
    end

    # Checks if the function "glColorP4ui" is loaded.
    @[AlwaysInline]
    def color_p_4ui? : Bool
      !@proc_color_p_4ui.pointer.null?
    end

    # Invokes glColorP4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def color_p_4uiv!(*args)
      @proc_color_p_4uiv.call(*args)
    end

    # Invokes glColorP4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def color_p_4uiv(*args)
      raise FunctionUnavailableError.new("glColorP4uiv") unless color_p_4uiv?

      @proc_color_p_4uiv.call(*args)
    end

    # Checks if the function "glColorP4uiv" is loaded.
    @[AlwaysInline]
    def color_p_4uiv? : Bool
      !@proc_color_p_4uiv.pointer.null?
    end

    # Invokes glSecondaryColorP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_p_3ui!(*args)
      @proc_secondary_color_p_3ui.call(*args)
    end

    # Invokes glSecondaryColorP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_p_3ui(*args)
      raise FunctionUnavailableError.new("glSecondaryColorP3ui") unless secondary_color_p_3ui?

      @proc_secondary_color_p_3ui.call(*args)
    end

    # Checks if the function "glSecondaryColorP3ui" is loaded.
    @[AlwaysInline]
    def secondary_color_p_3ui? : Bool
      !@proc_secondary_color_p_3ui.pointer.null?
    end

    # Invokes glSecondaryColorP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def secondary_color_p_3uiv!(*args)
      @proc_secondary_color_p_3uiv.call(*args)
    end

    # Invokes glSecondaryColorP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def secondary_color_p_3uiv(*args)
      raise FunctionUnavailableError.new("glSecondaryColorP3uiv") unless secondary_color_p_3uiv?

      @proc_secondary_color_p_3uiv.call(*args)
    end

    # Checks if the function "glSecondaryColorP3uiv" is loaded.
    @[AlwaysInline]
    def secondary_color_p_3uiv? : Bool
      !@proc_secondary_color_p_3uiv.pointer.null?
    end

    # Invokes glMinSampleShading.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def min_sample_shading!(*args)
      @proc_min_sample_shading.call(*args)
    end

    # Invokes glMinSampleShading.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def min_sample_shading(*args)
      raise FunctionUnavailableError.new("glMinSampleShading") unless min_sample_shading?

      @proc_min_sample_shading.call(*args)
    end

    # Checks if the function "glMinSampleShading" is loaded.
    @[AlwaysInline]
    def min_sample_shading? : Bool
      !@proc_min_sample_shading.pointer.null?
    end

    # Invokes glBlendEquationi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation_i!(*args)
      @proc_blend_equation_i.call(*args)
    end

    # Invokes glBlendEquationi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation_i(*args)
      raise FunctionUnavailableError.new("glBlendEquationi") unless blend_equation_i?

      @proc_blend_equation_i.call(*args)
    end

    # Checks if the function "glBlendEquationi" is loaded.
    @[AlwaysInline]
    def blend_equation_i? : Bool
      !@proc_blend_equation_i.pointer.null?
    end

    # Invokes glBlendEquationSeparatei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation_separate_i!(*args)
      @proc_blend_equation_separate_i.call(*args)
    end

    # Invokes glBlendEquationSeparatei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation_separate_i(*args)
      raise FunctionUnavailableError.new("glBlendEquationSeparatei") unless blend_equation_separate_i?

      @proc_blend_equation_separate_i.call(*args)
    end

    # Checks if the function "glBlendEquationSeparatei" is loaded.
    @[AlwaysInline]
    def blend_equation_separate_i? : Bool
      !@proc_blend_equation_separate_i.pointer.null?
    end

    # Invokes glBlendFunci.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func_i!(*args)
      @proc_blend_func_i.call(*args)
    end

    # Invokes glBlendFunci.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func_i(*args)
      raise FunctionUnavailableError.new("glBlendFunci") unless blend_func_i?

      @proc_blend_func_i.call(*args)
    end

    # Checks if the function "glBlendFunci" is loaded.
    @[AlwaysInline]
    def blend_func_i? : Bool
      !@proc_blend_func_i.pointer.null?
    end

    # Invokes glBlendFuncSeparatei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func_separate_i!(*args)
      @proc_blend_func_separate_i.call(*args)
    end

    # Invokes glBlendFuncSeparatei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func_separate_i(*args)
      raise FunctionUnavailableError.new("glBlendFuncSeparatei") unless blend_func_separate_i?

      @proc_blend_func_separate_i.call(*args)
    end

    # Checks if the function "glBlendFuncSeparatei" is loaded.
    @[AlwaysInline]
    def blend_func_separate_i? : Bool
      !@proc_blend_func_separate_i.pointer.null?
    end

    # Invokes glDrawArraysIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays_indirect!(*args)
      @proc_draw_arrays_indirect.call(*args)
    end

    # Invokes glDrawArraysIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays_indirect(*args)
      raise FunctionUnavailableError.new("glDrawArraysIndirect") unless draw_arrays_indirect?

      @proc_draw_arrays_indirect.call(*args)
    end

    # Checks if the function "glDrawArraysIndirect" is loaded.
    @[AlwaysInline]
    def draw_arrays_indirect? : Bool
      !@proc_draw_arrays_indirect.pointer.null?
    end

    # Invokes glDrawElementsIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_indirect!(*args)
      @proc_draw_elements_indirect.call(*args)
    end

    # Invokes glDrawElementsIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_indirect(*args)
      raise FunctionUnavailableError.new("glDrawElementsIndirect") unless draw_elements_indirect?

      @proc_draw_elements_indirect.call(*args)
    end

    # Checks if the function "glDrawElementsIndirect" is loaded.
    @[AlwaysInline]
    def draw_elements_indirect? : Bool
      !@proc_draw_elements_indirect.pointer.null?
    end

    # Invokes glUniform1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1d!(*args)
      @proc_uniform_1d.call(*args)
    end

    # Invokes glUniform1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1d(*args)
      raise FunctionUnavailableError.new("glUniform1d") unless uniform_1d?

      @proc_uniform_1d.call(*args)
    end

    # Checks if the function "glUniform1d" is loaded.
    @[AlwaysInline]
    def uniform_1d? : Bool
      !@proc_uniform_1d.pointer.null?
    end

    # Invokes glUniform2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2d!(*args)
      @proc_uniform_2d.call(*args)
    end

    # Invokes glUniform2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2d(*args)
      raise FunctionUnavailableError.new("glUniform2d") unless uniform_2d?

      @proc_uniform_2d.call(*args)
    end

    # Checks if the function "glUniform2d" is loaded.
    @[AlwaysInline]
    def uniform_2d? : Bool
      !@proc_uniform_2d.pointer.null?
    end

    # Invokes glUniform3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3d!(*args)
      @proc_uniform_3d.call(*args)
    end

    # Invokes glUniform3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3d(*args)
      raise FunctionUnavailableError.new("glUniform3d") unless uniform_3d?

      @proc_uniform_3d.call(*args)
    end

    # Checks if the function "glUniform3d" is loaded.
    @[AlwaysInline]
    def uniform_3d? : Bool
      !@proc_uniform_3d.pointer.null?
    end

    # Invokes glUniform4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4d!(*args)
      @proc_uniform_4d.call(*args)
    end

    # Invokes glUniform4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4d(*args)
      raise FunctionUnavailableError.new("glUniform4d") unless uniform_4d?

      @proc_uniform_4d.call(*args)
    end

    # Checks if the function "glUniform4d" is loaded.
    @[AlwaysInline]
    def uniform_4d? : Bool
      !@proc_uniform_4d.pointer.null?
    end

    # Invokes glUniform1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1dv!(*args)
      @proc_uniform_1dv.call(*args)
    end

    # Invokes glUniform1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1dv(*args)
      raise FunctionUnavailableError.new("glUniform1dv") unless uniform_1dv?

      @proc_uniform_1dv.call(*args)
    end

    # Checks if the function "glUniform1dv" is loaded.
    @[AlwaysInline]
    def uniform_1dv? : Bool
      !@proc_uniform_1dv.pointer.null?
    end

    # Invokes glUniform2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2dv!(*args)
      @proc_uniform_2dv.call(*args)
    end

    # Invokes glUniform2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2dv(*args)
      raise FunctionUnavailableError.new("glUniform2dv") unless uniform_2dv?

      @proc_uniform_2dv.call(*args)
    end

    # Checks if the function "glUniform2dv" is loaded.
    @[AlwaysInline]
    def uniform_2dv? : Bool
      !@proc_uniform_2dv.pointer.null?
    end

    # Invokes glUniform3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3dv!(*args)
      @proc_uniform_3dv.call(*args)
    end

    # Invokes glUniform3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3dv(*args)
      raise FunctionUnavailableError.new("glUniform3dv") unless uniform_3dv?

      @proc_uniform_3dv.call(*args)
    end

    # Checks if the function "glUniform3dv" is loaded.
    @[AlwaysInline]
    def uniform_3dv? : Bool
      !@proc_uniform_3dv.pointer.null?
    end

    # Invokes glUniform4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4dv!(*args)
      @proc_uniform_4dv.call(*args)
    end

    # Invokes glUniform4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4dv(*args)
      raise FunctionUnavailableError.new("glUniform4dv") unless uniform_4dv?

      @proc_uniform_4dv.call(*args)
    end

    # Checks if the function "glUniform4dv" is loaded.
    @[AlwaysInline]
    def uniform_4dv? : Bool
      !@proc_uniform_4dv.pointer.null?
    end

    # Invokes glUniformMatrix2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2_dv!(*args)
      @proc_uniform_matrix2_dv.call(*args)
    end

    # Invokes glUniformMatrix2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2dv") unless uniform_matrix2_dv?

      @proc_uniform_matrix2_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix2dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2_dv? : Bool
      !@proc_uniform_matrix2_dv.pointer.null?
    end

    # Invokes glUniformMatrix3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3_dv!(*args)
      @proc_uniform_matrix3_dv.call(*args)
    end

    # Invokes glUniformMatrix3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3dv") unless uniform_matrix3_dv?

      @proc_uniform_matrix3_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix3dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3_dv? : Bool
      !@proc_uniform_matrix3_dv.pointer.null?
    end

    # Invokes glUniformMatrix4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4_dv!(*args)
      @proc_uniform_matrix4_dv.call(*args)
    end

    # Invokes glUniformMatrix4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4dv") unless uniform_matrix4_dv?

      @proc_uniform_matrix4_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix4dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4_dv? : Bool
      !@proc_uniform_matrix4_dv.pointer.null?
    end

    # Invokes glUniformMatrix2x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x3_dv!(*args)
      @proc_uniform_matrix2x3_dv.call(*args)
    end

    # Invokes glUniformMatrix2x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x3_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x3dv") unless uniform_matrix2x3_dv?

      @proc_uniform_matrix2x3_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix2x3dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x3_dv? : Bool
      !@proc_uniform_matrix2x3_dv.pointer.null?
    end

    # Invokes glUniformMatrix2x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x4_dv!(*args)
      @proc_uniform_matrix2x4_dv.call(*args)
    end

    # Invokes glUniformMatrix2x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x4_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x4dv") unless uniform_matrix2x4_dv?

      @proc_uniform_matrix2x4_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix2x4dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x4_dv? : Bool
      !@proc_uniform_matrix2x4_dv.pointer.null?
    end

    # Invokes glUniformMatrix3x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x2_dv!(*args)
      @proc_uniform_matrix3x2_dv.call(*args)
    end

    # Invokes glUniformMatrix3x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x2_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x2dv") unless uniform_matrix3x2_dv?

      @proc_uniform_matrix3x2_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix3x2dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x2_dv? : Bool
      !@proc_uniform_matrix3x2_dv.pointer.null?
    end

    # Invokes glUniformMatrix3x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x4_dv!(*args)
      @proc_uniform_matrix3x4_dv.call(*args)
    end

    # Invokes glUniformMatrix3x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x4_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x4dv") unless uniform_matrix3x4_dv?

      @proc_uniform_matrix3x4_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix3x4dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x4_dv? : Bool
      !@proc_uniform_matrix3x4_dv.pointer.null?
    end

    # Invokes glUniformMatrix4x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x2_dv!(*args)
      @proc_uniform_matrix4x2_dv.call(*args)
    end

    # Invokes glUniformMatrix4x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x2_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x2dv") unless uniform_matrix4x2_dv?

      @proc_uniform_matrix4x2_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix4x2dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x2_dv? : Bool
      !@proc_uniform_matrix4x2_dv.pointer.null?
    end

    # Invokes glUniformMatrix4x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x3_dv!(*args)
      @proc_uniform_matrix4x3_dv.call(*args)
    end

    # Invokes glUniformMatrix4x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x3_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x3dv") unless uniform_matrix4x3_dv?

      @proc_uniform_matrix4x3_dv.call(*args)
    end

    # Checks if the function "glUniformMatrix4x3dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x3_dv? : Bool
      !@proc_uniform_matrix4x3_dv.pointer.null?
    end

    # Invokes glGetUniformdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_dv!(*args)
      @proc_get_uniform_dv.call(*args)
    end

    # Invokes glGetUniformdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_dv(*args)
      raise FunctionUnavailableError.new("glGetUniformdv") unless get_uniform_dv?

      @proc_get_uniform_dv.call(*args)
    end

    # Checks if the function "glGetUniformdv" is loaded.
    @[AlwaysInline]
    def get_uniform_dv? : Bool
      !@proc_get_uniform_dv.pointer.null?
    end

    # Invokes glGetSubroutineUniformLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_subroutine_uniform_location!(*args)
      @proc_get_subroutine_uniform_location.call(*args)
    end

    # Invokes glGetSubroutineUniformLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_subroutine_uniform_location(*args)
      raise FunctionUnavailableError.new("glGetSubroutineUniformLocation") unless get_subroutine_uniform_location?

      @proc_get_subroutine_uniform_location.call(*args)
    end

    # Checks if the function "glGetSubroutineUniformLocation" is loaded.
    @[AlwaysInline]
    def get_subroutine_uniform_location? : Bool
      !@proc_get_subroutine_uniform_location.pointer.null?
    end

    # Invokes glGetSubroutineIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_subroutine_index!(*args)
      @proc_get_subroutine_index.call(*args)
    end

    # Invokes glGetSubroutineIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_subroutine_index(*args)
      raise FunctionUnavailableError.new("glGetSubroutineIndex") unless get_subroutine_index?

      @proc_get_subroutine_index.call(*args)
    end

    # Checks if the function "glGetSubroutineIndex" is loaded.
    @[AlwaysInline]
    def get_subroutine_index? : Bool
      !@proc_get_subroutine_index.pointer.null?
    end

    # Invokes glGetActiveSubroutineUniformiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_subroutine_uniform_iv!(*args)
      @proc_get_active_subroutine_uniform_iv.call(*args)
    end

    # Invokes glGetActiveSubroutineUniformiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_subroutine_uniform_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveSubroutineUniformiv") unless get_active_subroutine_uniform_iv?

      @proc_get_active_subroutine_uniform_iv.call(*args)
    end

    # Checks if the function "glGetActiveSubroutineUniformiv" is loaded.
    @[AlwaysInline]
    def get_active_subroutine_uniform_iv? : Bool
      !@proc_get_active_subroutine_uniform_iv.pointer.null?
    end

    # Invokes glGetActiveSubroutineUniformName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_subroutine_uniform_name!(*args)
      @proc_get_active_subroutine_uniform_name.call(*args)
    end

    # Invokes glGetActiveSubroutineUniformName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_subroutine_uniform_name(*args)
      raise FunctionUnavailableError.new("glGetActiveSubroutineUniformName") unless get_active_subroutine_uniform_name?

      @proc_get_active_subroutine_uniform_name.call(*args)
    end

    # Checks if the function "glGetActiveSubroutineUniformName" is loaded.
    @[AlwaysInline]
    def get_active_subroutine_uniform_name? : Bool
      !@proc_get_active_subroutine_uniform_name.pointer.null?
    end

    # Invokes glGetActiveSubroutineName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_subroutine_name!(*args)
      @proc_get_active_subroutine_name.call(*args)
    end

    # Invokes glGetActiveSubroutineName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_subroutine_name(*args)
      raise FunctionUnavailableError.new("glGetActiveSubroutineName") unless get_active_subroutine_name?

      @proc_get_active_subroutine_name.call(*args)
    end

    # Checks if the function "glGetActiveSubroutineName" is loaded.
    @[AlwaysInline]
    def get_active_subroutine_name? : Bool
      !@proc_get_active_subroutine_name.pointer.null?
    end

    # Invokes glUniformSubroutinesuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_subroutines_uiv!(*args)
      @proc_uniform_subroutines_uiv.call(*args)
    end

    # Invokes glUniformSubroutinesuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_subroutines_uiv(*args)
      raise FunctionUnavailableError.new("glUniformSubroutinesuiv") unless uniform_subroutines_uiv?

      @proc_uniform_subroutines_uiv.call(*args)
    end

    # Checks if the function "glUniformSubroutinesuiv" is loaded.
    @[AlwaysInline]
    def uniform_subroutines_uiv? : Bool
      !@proc_uniform_subroutines_uiv.pointer.null?
    end

    # Invokes glGetUniformSubroutineuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_subroutine_uiv!(*args)
      @proc_get_uniform_subroutine_uiv.call(*args)
    end

    # Invokes glGetUniformSubroutineuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_subroutine_uiv(*args)
      raise FunctionUnavailableError.new("glGetUniformSubroutineuiv") unless get_uniform_subroutine_uiv?

      @proc_get_uniform_subroutine_uiv.call(*args)
    end

    # Checks if the function "glGetUniformSubroutineuiv" is loaded.
    @[AlwaysInline]
    def get_uniform_subroutine_uiv? : Bool
      !@proc_get_uniform_subroutine_uiv.pointer.null?
    end

    # Invokes glGetProgramStageiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_stage_iv!(*args)
      @proc_get_program_stage_iv.call(*args)
    end

    # Invokes glGetProgramStageiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_stage_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramStageiv") unless get_program_stage_iv?

      @proc_get_program_stage_iv.call(*args)
    end

    # Checks if the function "glGetProgramStageiv" is loaded.
    @[AlwaysInline]
    def get_program_stage_iv? : Bool
      !@proc_get_program_stage_iv.pointer.null?
    end

    # Invokes glPatchParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def patch_parameter_i!(*args)
      @proc_patch_parameter_i.call(*args)
    end

    # Invokes glPatchParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def patch_parameter_i(*args)
      raise FunctionUnavailableError.new("glPatchParameteri") unless patch_parameter_i?

      @proc_patch_parameter_i.call(*args)
    end

    # Checks if the function "glPatchParameteri" is loaded.
    @[AlwaysInline]
    def patch_parameter_i? : Bool
      !@proc_patch_parameter_i.pointer.null?
    end

    # Invokes glPatchParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def patch_parameter_fv!(*args)
      @proc_patch_parameter_fv.call(*args)
    end

    # Invokes glPatchParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def patch_parameter_fv(*args)
      raise FunctionUnavailableError.new("glPatchParameterfv") unless patch_parameter_fv?

      @proc_patch_parameter_fv.call(*args)
    end

    # Checks if the function "glPatchParameterfv" is loaded.
    @[AlwaysInline]
    def patch_parameter_fv? : Bool
      !@proc_patch_parameter_fv.pointer.null?
    end

    # Invokes glBindTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_transform_feedback!(*args)
      @proc_bind_transform_feedback.call(*args)
    end

    # Invokes glBindTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_transform_feedback(*args)
      raise FunctionUnavailableError.new("glBindTransformFeedback") unless bind_transform_feedback?

      @proc_bind_transform_feedback.call(*args)
    end

    # Checks if the function "glBindTransformFeedback" is loaded.
    @[AlwaysInline]
    def bind_transform_feedback? : Bool
      !@proc_bind_transform_feedback.pointer.null?
    end

    # Invokes glDeleteTransformFeedbacks.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_transform_feedbacks!(*args)
      @proc_delete_transform_feedbacks.call(*args)
    end

    # Invokes glDeleteTransformFeedbacks.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_transform_feedbacks(*args)
      raise FunctionUnavailableError.new("glDeleteTransformFeedbacks") unless delete_transform_feedbacks?

      @proc_delete_transform_feedbacks.call(*args)
    end

    # Checks if the function "glDeleteTransformFeedbacks" is loaded.
    @[AlwaysInline]
    def delete_transform_feedbacks? : Bool
      !@proc_delete_transform_feedbacks.pointer.null?
    end

    # Invokes glGenTransformFeedbacks.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_transform_feedbacks!(*args)
      @proc_gen_transform_feedbacks.call(*args)
    end

    # Invokes glGenTransformFeedbacks.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_transform_feedbacks(*args)
      raise FunctionUnavailableError.new("glGenTransformFeedbacks") unless gen_transform_feedbacks?

      @proc_gen_transform_feedbacks.call(*args)
    end

    # Checks if the function "glGenTransformFeedbacks" is loaded.
    @[AlwaysInline]
    def gen_transform_feedbacks? : Bool
      !@proc_gen_transform_feedbacks.pointer.null?
    end

    # Invokes glIsTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_transform_feedback!(*args)
      @proc_is_transform_feedback.call(*args)
    end

    # Invokes glIsTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_transform_feedback(*args)
      raise FunctionUnavailableError.new("glIsTransformFeedback") unless is_transform_feedback?

      @proc_is_transform_feedback.call(*args)
    end

    # Checks if the function "glIsTransformFeedback" is loaded.
    @[AlwaysInline]
    def is_transform_feedback? : Bool
      !@proc_is_transform_feedback.pointer.null?
    end

    # Invokes glPauseTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pause_transform_feedback!(*args)
      @proc_pause_transform_feedback.call(*args)
    end

    # Invokes glPauseTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pause_transform_feedback(*args)
      raise FunctionUnavailableError.new("glPauseTransformFeedback") unless pause_transform_feedback?

      @proc_pause_transform_feedback.call(*args)
    end

    # Checks if the function "glPauseTransformFeedback" is loaded.
    @[AlwaysInline]
    def pause_transform_feedback? : Bool
      !@proc_pause_transform_feedback.pointer.null?
    end

    # Invokes glResumeTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def resume_transform_feedback!(*args)
      @proc_resume_transform_feedback.call(*args)
    end

    # Invokes glResumeTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def resume_transform_feedback(*args)
      raise FunctionUnavailableError.new("glResumeTransformFeedback") unless resume_transform_feedback?

      @proc_resume_transform_feedback.call(*args)
    end

    # Checks if the function "glResumeTransformFeedback" is loaded.
    @[AlwaysInline]
    def resume_transform_feedback? : Bool
      !@proc_resume_transform_feedback.pointer.null?
    end

    # Invokes glDrawTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_transform_feedback!(*args)
      @proc_draw_transform_feedback.call(*args)
    end

    # Invokes glDrawTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_transform_feedback(*args)
      raise FunctionUnavailableError.new("glDrawTransformFeedback") unless draw_transform_feedback?

      @proc_draw_transform_feedback.call(*args)
    end

    # Checks if the function "glDrawTransformFeedback" is loaded.
    @[AlwaysInline]
    def draw_transform_feedback? : Bool
      !@proc_draw_transform_feedback.pointer.null?
    end

    # Invokes glDrawTransformFeedbackStream.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_transform_feedback_stream!(*args)
      @proc_draw_transform_feedback_stream.call(*args)
    end

    # Invokes glDrawTransformFeedbackStream.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_transform_feedback_stream(*args)
      raise FunctionUnavailableError.new("glDrawTransformFeedbackStream") unless draw_transform_feedback_stream?

      @proc_draw_transform_feedback_stream.call(*args)
    end

    # Checks if the function "glDrawTransformFeedbackStream" is loaded.
    @[AlwaysInline]
    def draw_transform_feedback_stream? : Bool
      !@proc_draw_transform_feedback_stream.pointer.null?
    end

    # Invokes glBeginQueryIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_query_indexed!(*args)
      @proc_begin_query_indexed.call(*args)
    end

    # Invokes glBeginQueryIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_query_indexed(*args)
      raise FunctionUnavailableError.new("glBeginQueryIndexed") unless begin_query_indexed?

      @proc_begin_query_indexed.call(*args)
    end

    # Checks if the function "glBeginQueryIndexed" is loaded.
    @[AlwaysInline]
    def begin_query_indexed? : Bool
      !@proc_begin_query_indexed.pointer.null?
    end

    # Invokes glEndQueryIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_query_indexed!(*args)
      @proc_end_query_indexed.call(*args)
    end

    # Invokes glEndQueryIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_query_indexed(*args)
      raise FunctionUnavailableError.new("glEndQueryIndexed") unless end_query_indexed?

      @proc_end_query_indexed.call(*args)
    end

    # Checks if the function "glEndQueryIndexed" is loaded.
    @[AlwaysInline]
    def end_query_indexed? : Bool
      !@proc_end_query_indexed.pointer.null?
    end

    # Invokes glGetQueryIndexediv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_indexed_iv!(*args)
      @proc_get_query_indexed_iv.call(*args)
    end

    # Invokes glGetQueryIndexediv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_indexed_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryIndexediv") unless get_query_indexed_iv?

      @proc_get_query_indexed_iv.call(*args)
    end

    # Checks if the function "glGetQueryIndexediv" is loaded.
    @[AlwaysInline]
    def get_query_indexed_iv? : Bool
      !@proc_get_query_indexed_iv.pointer.null?
    end

    # Invokes glReleaseShaderCompiler.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def release_shader_compiler!(*args)
      @proc_release_shader_compiler.call(*args)
    end

    # Invokes glReleaseShaderCompiler.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def release_shader_compiler(*args)
      raise FunctionUnavailableError.new("glReleaseShaderCompiler") unless release_shader_compiler?

      @proc_release_shader_compiler.call(*args)
    end

    # Checks if the function "glReleaseShaderCompiler" is loaded.
    @[AlwaysInline]
    def release_shader_compiler? : Bool
      !@proc_release_shader_compiler.pointer.null?
    end

    # Invokes glShaderBinary.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shader_binary!(*args)
      @proc_shader_binary.call(*args)
    end

    # Invokes glShaderBinary.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shader_binary(*args)
      raise FunctionUnavailableError.new("glShaderBinary") unless shader_binary?

      @proc_shader_binary.call(*args)
    end

    # Checks if the function "glShaderBinary" is loaded.
    @[AlwaysInline]
    def shader_binary? : Bool
      !@proc_shader_binary.pointer.null?
    end

    # Invokes glGetShaderPrecisionFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_precision_format!(*args)
      @proc_get_shader_precision_format.call(*args)
    end

    # Invokes glGetShaderPrecisionFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_precision_format(*args)
      raise FunctionUnavailableError.new("glGetShaderPrecisionFormat") unless get_shader_precision_format?

      @proc_get_shader_precision_format.call(*args)
    end

    # Checks if the function "glGetShaderPrecisionFormat" is loaded.
    @[AlwaysInline]
    def get_shader_precision_format? : Bool
      !@proc_get_shader_precision_format.pointer.null?
    end

    # Invokes glDepthRangef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range_f!(*args)
      @proc_depth_range_f.call(*args)
    end

    # Invokes glDepthRangef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range_f(*args)
      raise FunctionUnavailableError.new("glDepthRangef") unless depth_range_f?

      @proc_depth_range_f.call(*args)
    end

    # Checks if the function "glDepthRangef" is loaded.
    @[AlwaysInline]
    def depth_range_f? : Bool
      !@proc_depth_range_f.pointer.null?
    end

    # Invokes glClearDepthf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_depth_f!(*args)
      @proc_clear_depth_f.call(*args)
    end

    # Invokes glClearDepthf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_depth_f(*args)
      raise FunctionUnavailableError.new("glClearDepthf") unless clear_depth_f?

      @proc_clear_depth_f.call(*args)
    end

    # Checks if the function "glClearDepthf" is loaded.
    @[AlwaysInline]
    def clear_depth_f? : Bool
      !@proc_clear_depth_f.pointer.null?
    end

    # Invokes glGetProgramBinary.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_binary!(*args)
      @proc_get_program_binary.call(*args)
    end

    # Invokes glGetProgramBinary.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_binary(*args)
      raise FunctionUnavailableError.new("glGetProgramBinary") unless get_program_binary?

      @proc_get_program_binary.call(*args)
    end

    # Checks if the function "glGetProgramBinary" is loaded.
    @[AlwaysInline]
    def get_program_binary? : Bool
      !@proc_get_program_binary.pointer.null?
    end

    # Invokes glProgramBinary.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_binary!(*args)
      @proc_program_binary.call(*args)
    end

    # Invokes glProgramBinary.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_binary(*args)
      raise FunctionUnavailableError.new("glProgramBinary") unless program_binary?

      @proc_program_binary.call(*args)
    end

    # Checks if the function "glProgramBinary" is loaded.
    @[AlwaysInline]
    def program_binary? : Bool
      !@proc_program_binary.pointer.null?
    end

    # Invokes glProgramParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_parameter_i!(*args)
      @proc_program_parameter_i.call(*args)
    end

    # Invokes glProgramParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_parameter_i(*args)
      raise FunctionUnavailableError.new("glProgramParameteri") unless program_parameter_i?

      @proc_program_parameter_i.call(*args)
    end

    # Checks if the function "glProgramParameteri" is loaded.
    @[AlwaysInline]
    def program_parameter_i? : Bool
      !@proc_program_parameter_i.pointer.null?
    end

    # Invokes glUseProgramStages.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def use_program_stages!(*args)
      @proc_use_program_stages.call(*args)
    end

    # Invokes glUseProgramStages.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def use_program_stages(*args)
      raise FunctionUnavailableError.new("glUseProgramStages") unless use_program_stages?

      @proc_use_program_stages.call(*args)
    end

    # Checks if the function "glUseProgramStages" is loaded.
    @[AlwaysInline]
    def use_program_stages? : Bool
      !@proc_use_program_stages.pointer.null?
    end

    # Invokes glActiveShaderProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def active_shader_program!(*args)
      @proc_active_shader_program.call(*args)
    end

    # Invokes glActiveShaderProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def active_shader_program(*args)
      raise FunctionUnavailableError.new("glActiveShaderProgram") unless active_shader_program?

      @proc_active_shader_program.call(*args)
    end

    # Checks if the function "glActiveShaderProgram" is loaded.
    @[AlwaysInline]
    def active_shader_program? : Bool
      !@proc_active_shader_program.pointer.null?
    end

    # Invokes glCreateShaderProgramv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_shader_program_v!(*args)
      @proc_create_shader_program_v.call(*args)
    end

    # Invokes glCreateShaderProgramv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_shader_program_v(*args)
      raise FunctionUnavailableError.new("glCreateShaderProgramv") unless create_shader_program_v?

      @proc_create_shader_program_v.call(*args)
    end

    # Checks if the function "glCreateShaderProgramv" is loaded.
    @[AlwaysInline]
    def create_shader_program_v? : Bool
      !@proc_create_shader_program_v.pointer.null?
    end

    # Invokes glBindProgramPipeline.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_program_pipeline!(*args)
      @proc_bind_program_pipeline.call(*args)
    end

    # Invokes glBindProgramPipeline.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_program_pipeline(*args)
      raise FunctionUnavailableError.new("glBindProgramPipeline") unless bind_program_pipeline?

      @proc_bind_program_pipeline.call(*args)
    end

    # Checks if the function "glBindProgramPipeline" is loaded.
    @[AlwaysInline]
    def bind_program_pipeline? : Bool
      !@proc_bind_program_pipeline.pointer.null?
    end

    # Invokes glDeleteProgramPipelines.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_program_pipelines!(*args)
      @proc_delete_program_pipelines.call(*args)
    end

    # Invokes glDeleteProgramPipelines.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_program_pipelines(*args)
      raise FunctionUnavailableError.new("glDeleteProgramPipelines") unless delete_program_pipelines?

      @proc_delete_program_pipelines.call(*args)
    end

    # Checks if the function "glDeleteProgramPipelines" is loaded.
    @[AlwaysInline]
    def delete_program_pipelines? : Bool
      !@proc_delete_program_pipelines.pointer.null?
    end

    # Invokes glGenProgramPipelines.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_program_pipelines!(*args)
      @proc_gen_program_pipelines.call(*args)
    end

    # Invokes glGenProgramPipelines.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_program_pipelines(*args)
      raise FunctionUnavailableError.new("glGenProgramPipelines") unless gen_program_pipelines?

      @proc_gen_program_pipelines.call(*args)
    end

    # Checks if the function "glGenProgramPipelines" is loaded.
    @[AlwaysInline]
    def gen_program_pipelines? : Bool
      !@proc_gen_program_pipelines.pointer.null?
    end

    # Invokes glIsProgramPipeline.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_program_pipeline!(*args)
      @proc_is_program_pipeline.call(*args)
    end

    # Invokes glIsProgramPipeline.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_program_pipeline(*args)
      raise FunctionUnavailableError.new("glIsProgramPipeline") unless is_program_pipeline?

      @proc_is_program_pipeline.call(*args)
    end

    # Checks if the function "glIsProgramPipeline" is loaded.
    @[AlwaysInline]
    def is_program_pipeline? : Bool
      !@proc_is_program_pipeline.pointer.null?
    end

    # Invokes glGetProgramPipelineiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_pipeline_iv!(*args)
      @proc_get_program_pipeline_iv.call(*args)
    end

    # Invokes glGetProgramPipelineiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_pipeline_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramPipelineiv") unless get_program_pipeline_iv?

      @proc_get_program_pipeline_iv.call(*args)
    end

    # Checks if the function "glGetProgramPipelineiv" is loaded.
    @[AlwaysInline]
    def get_program_pipeline_iv? : Bool
      !@proc_get_program_pipeline_iv.pointer.null?
    end

    # Invokes glProgramUniform1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1i!(*args)
      @proc_program_uniform_1i.call(*args)
    end

    # Invokes glProgramUniform1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1i(*args)
      raise FunctionUnavailableError.new("glProgramUniform1i") unless program_uniform_1i?

      @proc_program_uniform_1i.call(*args)
    end

    # Checks if the function "glProgramUniform1i" is loaded.
    @[AlwaysInline]
    def program_uniform_1i? : Bool
      !@proc_program_uniform_1i.pointer.null?
    end

    # Invokes glProgramUniform1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1iv!(*args)
      @proc_program_uniform_1iv.call(*args)
    end

    # Invokes glProgramUniform1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1iv") unless program_uniform_1iv?

      @proc_program_uniform_1iv.call(*args)
    end

    # Checks if the function "glProgramUniform1iv" is loaded.
    @[AlwaysInline]
    def program_uniform_1iv? : Bool
      !@proc_program_uniform_1iv.pointer.null?
    end

    # Invokes glProgramUniform1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1f!(*args)
      @proc_program_uniform_1f.call(*args)
    end

    # Invokes glProgramUniform1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1f(*args)
      raise FunctionUnavailableError.new("glProgramUniform1f") unless program_uniform_1f?

      @proc_program_uniform_1f.call(*args)
    end

    # Checks if the function "glProgramUniform1f" is loaded.
    @[AlwaysInline]
    def program_uniform_1f? : Bool
      !@proc_program_uniform_1f.pointer.null?
    end

    # Invokes glProgramUniform1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1fv!(*args)
      @proc_program_uniform_1fv.call(*args)
    end

    # Invokes glProgramUniform1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1fv") unless program_uniform_1fv?

      @proc_program_uniform_1fv.call(*args)
    end

    # Checks if the function "glProgramUniform1fv" is loaded.
    @[AlwaysInline]
    def program_uniform_1fv? : Bool
      !@proc_program_uniform_1fv.pointer.null?
    end

    # Invokes glProgramUniform1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1d!(*args)
      @proc_program_uniform_1d.call(*args)
    end

    # Invokes glProgramUniform1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1d(*args)
      raise FunctionUnavailableError.new("glProgramUniform1d") unless program_uniform_1d?

      @proc_program_uniform_1d.call(*args)
    end

    # Checks if the function "glProgramUniform1d" is loaded.
    @[AlwaysInline]
    def program_uniform_1d? : Bool
      !@proc_program_uniform_1d.pointer.null?
    end

    # Invokes glProgramUniform1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1dv!(*args)
      @proc_program_uniform_1dv.call(*args)
    end

    # Invokes glProgramUniform1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1dv") unless program_uniform_1dv?

      @proc_program_uniform_1dv.call(*args)
    end

    # Checks if the function "glProgramUniform1dv" is loaded.
    @[AlwaysInline]
    def program_uniform_1dv? : Bool
      !@proc_program_uniform_1dv.pointer.null?
    end

    # Invokes glProgramUniform1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1ui!(*args)
      @proc_program_uniform_1ui.call(*args)
    end

    # Invokes glProgramUniform1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform1ui") unless program_uniform_1ui?

      @proc_program_uniform_1ui.call(*args)
    end

    # Checks if the function "glProgramUniform1ui" is loaded.
    @[AlwaysInline]
    def program_uniform_1ui? : Bool
      !@proc_program_uniform_1ui.pointer.null?
    end

    # Invokes glProgramUniform1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1uiv!(*args)
      @proc_program_uniform_1uiv.call(*args)
    end

    # Invokes glProgramUniform1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1uiv") unless program_uniform_1uiv?

      @proc_program_uniform_1uiv.call(*args)
    end

    # Checks if the function "glProgramUniform1uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_1uiv? : Bool
      !@proc_program_uniform_1uiv.pointer.null?
    end

    # Invokes glProgramUniform2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2i!(*args)
      @proc_program_uniform_2i.call(*args)
    end

    # Invokes glProgramUniform2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2i(*args)
      raise FunctionUnavailableError.new("glProgramUniform2i") unless program_uniform_2i?

      @proc_program_uniform_2i.call(*args)
    end

    # Checks if the function "glProgramUniform2i" is loaded.
    @[AlwaysInline]
    def program_uniform_2i? : Bool
      !@proc_program_uniform_2i.pointer.null?
    end

    # Invokes glProgramUniform2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2iv!(*args)
      @proc_program_uniform_2iv.call(*args)
    end

    # Invokes glProgramUniform2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2iv") unless program_uniform_2iv?

      @proc_program_uniform_2iv.call(*args)
    end

    # Checks if the function "glProgramUniform2iv" is loaded.
    @[AlwaysInline]
    def program_uniform_2iv? : Bool
      !@proc_program_uniform_2iv.pointer.null?
    end

    # Invokes glProgramUniform2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2f!(*args)
      @proc_program_uniform_2f.call(*args)
    end

    # Invokes glProgramUniform2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2f(*args)
      raise FunctionUnavailableError.new("glProgramUniform2f") unless program_uniform_2f?

      @proc_program_uniform_2f.call(*args)
    end

    # Checks if the function "glProgramUniform2f" is loaded.
    @[AlwaysInline]
    def program_uniform_2f? : Bool
      !@proc_program_uniform_2f.pointer.null?
    end

    # Invokes glProgramUniform2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2fv!(*args)
      @proc_program_uniform_2fv.call(*args)
    end

    # Invokes glProgramUniform2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2fv") unless program_uniform_2fv?

      @proc_program_uniform_2fv.call(*args)
    end

    # Checks if the function "glProgramUniform2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_2fv? : Bool
      !@proc_program_uniform_2fv.pointer.null?
    end

    # Invokes glProgramUniform2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2d!(*args)
      @proc_program_uniform_2d.call(*args)
    end

    # Invokes glProgramUniform2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2d(*args)
      raise FunctionUnavailableError.new("glProgramUniform2d") unless program_uniform_2d?

      @proc_program_uniform_2d.call(*args)
    end

    # Checks if the function "glProgramUniform2d" is loaded.
    @[AlwaysInline]
    def program_uniform_2d? : Bool
      !@proc_program_uniform_2d.pointer.null?
    end

    # Invokes glProgramUniform2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2dv!(*args)
      @proc_program_uniform_2dv.call(*args)
    end

    # Invokes glProgramUniform2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2dv") unless program_uniform_2dv?

      @proc_program_uniform_2dv.call(*args)
    end

    # Checks if the function "glProgramUniform2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_2dv? : Bool
      !@proc_program_uniform_2dv.pointer.null?
    end

    # Invokes glProgramUniform2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2ui!(*args)
      @proc_program_uniform_2ui.call(*args)
    end

    # Invokes glProgramUniform2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform2ui") unless program_uniform_2ui?

      @proc_program_uniform_2ui.call(*args)
    end

    # Checks if the function "glProgramUniform2ui" is loaded.
    @[AlwaysInline]
    def program_uniform_2ui? : Bool
      !@proc_program_uniform_2ui.pointer.null?
    end

    # Invokes glProgramUniform2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2uiv!(*args)
      @proc_program_uniform_2uiv.call(*args)
    end

    # Invokes glProgramUniform2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2uiv") unless program_uniform_2uiv?

      @proc_program_uniform_2uiv.call(*args)
    end

    # Checks if the function "glProgramUniform2uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_2uiv? : Bool
      !@proc_program_uniform_2uiv.pointer.null?
    end

    # Invokes glProgramUniform3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3i!(*args)
      @proc_program_uniform_3i.call(*args)
    end

    # Invokes glProgramUniform3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3i(*args)
      raise FunctionUnavailableError.new("glProgramUniform3i") unless program_uniform_3i?

      @proc_program_uniform_3i.call(*args)
    end

    # Checks if the function "glProgramUniform3i" is loaded.
    @[AlwaysInline]
    def program_uniform_3i? : Bool
      !@proc_program_uniform_3i.pointer.null?
    end

    # Invokes glProgramUniform3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3iv!(*args)
      @proc_program_uniform_3iv.call(*args)
    end

    # Invokes glProgramUniform3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3iv") unless program_uniform_3iv?

      @proc_program_uniform_3iv.call(*args)
    end

    # Checks if the function "glProgramUniform3iv" is loaded.
    @[AlwaysInline]
    def program_uniform_3iv? : Bool
      !@proc_program_uniform_3iv.pointer.null?
    end

    # Invokes glProgramUniform3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3f!(*args)
      @proc_program_uniform_3f.call(*args)
    end

    # Invokes glProgramUniform3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3f(*args)
      raise FunctionUnavailableError.new("glProgramUniform3f") unless program_uniform_3f?

      @proc_program_uniform_3f.call(*args)
    end

    # Checks if the function "glProgramUniform3f" is loaded.
    @[AlwaysInline]
    def program_uniform_3f? : Bool
      !@proc_program_uniform_3f.pointer.null?
    end

    # Invokes glProgramUniform3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3fv!(*args)
      @proc_program_uniform_3fv.call(*args)
    end

    # Invokes glProgramUniform3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3fv") unless program_uniform_3fv?

      @proc_program_uniform_3fv.call(*args)
    end

    # Checks if the function "glProgramUniform3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_3fv? : Bool
      !@proc_program_uniform_3fv.pointer.null?
    end

    # Invokes glProgramUniform3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3d!(*args)
      @proc_program_uniform_3d.call(*args)
    end

    # Invokes glProgramUniform3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3d(*args)
      raise FunctionUnavailableError.new("glProgramUniform3d") unless program_uniform_3d?

      @proc_program_uniform_3d.call(*args)
    end

    # Checks if the function "glProgramUniform3d" is loaded.
    @[AlwaysInline]
    def program_uniform_3d? : Bool
      !@proc_program_uniform_3d.pointer.null?
    end

    # Invokes glProgramUniform3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3dv!(*args)
      @proc_program_uniform_3dv.call(*args)
    end

    # Invokes glProgramUniform3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3dv") unless program_uniform_3dv?

      @proc_program_uniform_3dv.call(*args)
    end

    # Checks if the function "glProgramUniform3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_3dv? : Bool
      !@proc_program_uniform_3dv.pointer.null?
    end

    # Invokes glProgramUniform3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3ui!(*args)
      @proc_program_uniform_3ui.call(*args)
    end

    # Invokes glProgramUniform3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform3ui") unless program_uniform_3ui?

      @proc_program_uniform_3ui.call(*args)
    end

    # Checks if the function "glProgramUniform3ui" is loaded.
    @[AlwaysInline]
    def program_uniform_3ui? : Bool
      !@proc_program_uniform_3ui.pointer.null?
    end

    # Invokes glProgramUniform3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3uiv!(*args)
      @proc_program_uniform_3uiv.call(*args)
    end

    # Invokes glProgramUniform3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3uiv") unless program_uniform_3uiv?

      @proc_program_uniform_3uiv.call(*args)
    end

    # Checks if the function "glProgramUniform3uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_3uiv? : Bool
      !@proc_program_uniform_3uiv.pointer.null?
    end

    # Invokes glProgramUniform4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4i!(*args)
      @proc_program_uniform_4i.call(*args)
    end

    # Invokes glProgramUniform4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4i(*args)
      raise FunctionUnavailableError.new("glProgramUniform4i") unless program_uniform_4i?

      @proc_program_uniform_4i.call(*args)
    end

    # Checks if the function "glProgramUniform4i" is loaded.
    @[AlwaysInline]
    def program_uniform_4i? : Bool
      !@proc_program_uniform_4i.pointer.null?
    end

    # Invokes glProgramUniform4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4iv!(*args)
      @proc_program_uniform_4iv.call(*args)
    end

    # Invokes glProgramUniform4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4iv") unless program_uniform_4iv?

      @proc_program_uniform_4iv.call(*args)
    end

    # Checks if the function "glProgramUniform4iv" is loaded.
    @[AlwaysInline]
    def program_uniform_4iv? : Bool
      !@proc_program_uniform_4iv.pointer.null?
    end

    # Invokes glProgramUniform4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4f!(*args)
      @proc_program_uniform_4f.call(*args)
    end

    # Invokes glProgramUniform4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4f(*args)
      raise FunctionUnavailableError.new("glProgramUniform4f") unless program_uniform_4f?

      @proc_program_uniform_4f.call(*args)
    end

    # Checks if the function "glProgramUniform4f" is loaded.
    @[AlwaysInline]
    def program_uniform_4f? : Bool
      !@proc_program_uniform_4f.pointer.null?
    end

    # Invokes glProgramUniform4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4fv!(*args)
      @proc_program_uniform_4fv.call(*args)
    end

    # Invokes glProgramUniform4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4fv") unless program_uniform_4fv?

      @proc_program_uniform_4fv.call(*args)
    end

    # Checks if the function "glProgramUniform4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_4fv? : Bool
      !@proc_program_uniform_4fv.pointer.null?
    end

    # Invokes glProgramUniform4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4d!(*args)
      @proc_program_uniform_4d.call(*args)
    end

    # Invokes glProgramUniform4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4d(*args)
      raise FunctionUnavailableError.new("glProgramUniform4d") unless program_uniform_4d?

      @proc_program_uniform_4d.call(*args)
    end

    # Checks if the function "glProgramUniform4d" is loaded.
    @[AlwaysInline]
    def program_uniform_4d? : Bool
      !@proc_program_uniform_4d.pointer.null?
    end

    # Invokes glProgramUniform4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4dv!(*args)
      @proc_program_uniform_4dv.call(*args)
    end

    # Invokes glProgramUniform4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4dv") unless program_uniform_4dv?

      @proc_program_uniform_4dv.call(*args)
    end

    # Checks if the function "glProgramUniform4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_4dv? : Bool
      !@proc_program_uniform_4dv.pointer.null?
    end

    # Invokes glProgramUniform4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4ui!(*args)
      @proc_program_uniform_4ui.call(*args)
    end

    # Invokes glProgramUniform4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform4ui") unless program_uniform_4ui?

      @proc_program_uniform_4ui.call(*args)
    end

    # Checks if the function "glProgramUniform4ui" is loaded.
    @[AlwaysInline]
    def program_uniform_4ui? : Bool
      !@proc_program_uniform_4ui.pointer.null?
    end

    # Invokes glProgramUniform4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4uiv!(*args)
      @proc_program_uniform_4uiv.call(*args)
    end

    # Invokes glProgramUniform4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4uiv") unless program_uniform_4uiv?

      @proc_program_uniform_4uiv.call(*args)
    end

    # Checks if the function "glProgramUniform4uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_4uiv? : Bool
      !@proc_program_uniform_4uiv.pointer.null?
    end

    # Invokes glProgramUniformMatrix2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2_fv!(*args)
      @proc_program_uniform_matrix2_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2fv") unless program_uniform_matrix2_fv?

      @proc_program_uniform_matrix2_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2_fv? : Bool
      !@proc_program_uniform_matrix2_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3_fv!(*args)
      @proc_program_uniform_matrix3_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3fv") unless program_uniform_matrix3_fv?

      @proc_program_uniform_matrix3_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3_fv? : Bool
      !@proc_program_uniform_matrix3_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4_fv!(*args)
      @proc_program_uniform_matrix4_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4fv") unless program_uniform_matrix4_fv?

      @proc_program_uniform_matrix4_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4_fv? : Bool
      !@proc_program_uniform_matrix4_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2_dv!(*args)
      @proc_program_uniform_matrix2_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2dv") unless program_uniform_matrix2_dv?

      @proc_program_uniform_matrix2_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2_dv? : Bool
      !@proc_program_uniform_matrix2_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3_dv!(*args)
      @proc_program_uniform_matrix3_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3dv") unless program_uniform_matrix3_dv?

      @proc_program_uniform_matrix3_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3_dv? : Bool
      !@proc_program_uniform_matrix3_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4_dv!(*args)
      @proc_program_uniform_matrix4_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4dv") unless program_uniform_matrix4_dv?

      @proc_program_uniform_matrix4_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4_dv? : Bool
      !@proc_program_uniform_matrix4_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix2x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x3_fv!(*args)
      @proc_program_uniform_matrix2x3_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix2x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x3_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x3fv") unless program_uniform_matrix2x3_fv?

      @proc_program_uniform_matrix2x3_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x3_fv? : Bool
      !@proc_program_uniform_matrix2x3_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix3x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x2_fv!(*args)
      @proc_program_uniform_matrix3x2_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix3x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x2_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x2fv") unless program_uniform_matrix3x2_fv?

      @proc_program_uniform_matrix3x2_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x2_fv? : Bool
      !@proc_program_uniform_matrix3x2_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix2x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x4_fv!(*args)
      @proc_program_uniform_matrix2x4_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix2x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x4_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x4fv") unless program_uniform_matrix2x4_fv?

      @proc_program_uniform_matrix2x4_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x4_fv? : Bool
      !@proc_program_uniform_matrix2x4_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix4x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x2_fv!(*args)
      @proc_program_uniform_matrix4x2_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix4x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x2_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x2fv") unless program_uniform_matrix4x2_fv?

      @proc_program_uniform_matrix4x2_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x2_fv? : Bool
      !@proc_program_uniform_matrix4x2_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix3x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x4_fv!(*args)
      @proc_program_uniform_matrix3x4_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix3x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x4_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x4fv") unless program_uniform_matrix3x4_fv?

      @proc_program_uniform_matrix3x4_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x4_fv? : Bool
      !@proc_program_uniform_matrix3x4_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix4x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x3_fv!(*args)
      @proc_program_uniform_matrix4x3_fv.call(*args)
    end

    # Invokes glProgramUniformMatrix4x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x3_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x3fv") unless program_uniform_matrix4x3_fv?

      @proc_program_uniform_matrix4x3_fv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x3_fv? : Bool
      !@proc_program_uniform_matrix4x3_fv.pointer.null?
    end

    # Invokes glProgramUniformMatrix2x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x3_dv!(*args)
      @proc_program_uniform_matrix2x3_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix2x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x3_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x3dv") unless program_uniform_matrix2x3_dv?

      @proc_program_uniform_matrix2x3_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x3_dv? : Bool
      !@proc_program_uniform_matrix2x3_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix3x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x2_dv!(*args)
      @proc_program_uniform_matrix3x2_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix3x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x2_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x2dv") unless program_uniform_matrix3x2_dv?

      @proc_program_uniform_matrix3x2_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x2_dv? : Bool
      !@proc_program_uniform_matrix3x2_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix2x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x4_dv!(*args)
      @proc_program_uniform_matrix2x4_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix2x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x4_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x4dv") unless program_uniform_matrix2x4_dv?

      @proc_program_uniform_matrix2x4_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x4_dv? : Bool
      !@proc_program_uniform_matrix2x4_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix4x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x2_dv!(*args)
      @proc_program_uniform_matrix4x2_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix4x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x2_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x2dv") unless program_uniform_matrix4x2_dv?

      @proc_program_uniform_matrix4x2_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x2_dv? : Bool
      !@proc_program_uniform_matrix4x2_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix3x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x4_dv!(*args)
      @proc_program_uniform_matrix3x4_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix3x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x4_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x4dv") unless program_uniform_matrix3x4_dv?

      @proc_program_uniform_matrix3x4_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x4_dv? : Bool
      !@proc_program_uniform_matrix3x4_dv.pointer.null?
    end

    # Invokes glProgramUniformMatrix4x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x3_dv!(*args)
      @proc_program_uniform_matrix4x3_dv.call(*args)
    end

    # Invokes glProgramUniformMatrix4x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x3_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x3dv") unless program_uniform_matrix4x3_dv?

      @proc_program_uniform_matrix4x3_dv.call(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x3_dv? : Bool
      !@proc_program_uniform_matrix4x3_dv.pointer.null?
    end

    # Invokes glValidateProgramPipeline.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def validate_program_pipeline!(*args)
      @proc_validate_program_pipeline.call(*args)
    end

    # Invokes glValidateProgramPipeline.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def validate_program_pipeline(*args)
      raise FunctionUnavailableError.new("glValidateProgramPipeline") unless validate_program_pipeline?

      @proc_validate_program_pipeline.call(*args)
    end

    # Checks if the function "glValidateProgramPipeline" is loaded.
    @[AlwaysInline]
    def validate_program_pipeline? : Bool
      !@proc_validate_program_pipeline.pointer.null?
    end

    # Invokes glGetProgramPipelineInfoLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_pipeline_info_log!(*args)
      @proc_get_program_pipeline_info_log.call(*args)
    end

    # Invokes glGetProgramPipelineInfoLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_pipeline_info_log(*args)
      raise FunctionUnavailableError.new("glGetProgramPipelineInfoLog") unless get_program_pipeline_info_log?

      @proc_get_program_pipeline_info_log.call(*args)
    end

    # Checks if the function "glGetProgramPipelineInfoLog" is loaded.
    @[AlwaysInline]
    def get_program_pipeline_info_log? : Bool
      !@proc_get_program_pipeline_info_log.pointer.null?
    end

    # Invokes glVertexAttribL1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_1d!(*args)
      @proc_vertex_attrib_l_1d.call(*args)
    end

    # Invokes glVertexAttribL1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_1d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL1d") unless vertex_attrib_l_1d?

      @proc_vertex_attrib_l_1d.call(*args)
    end

    # Checks if the function "glVertexAttribL1d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_1d? : Bool
      !@proc_vertex_attrib_l_1d.pointer.null?
    end

    # Invokes glVertexAttribL2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_2d!(*args)
      @proc_vertex_attrib_l_2d.call(*args)
    end

    # Invokes glVertexAttribL2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_2d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL2d") unless vertex_attrib_l_2d?

      @proc_vertex_attrib_l_2d.call(*args)
    end

    # Checks if the function "glVertexAttribL2d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_2d? : Bool
      !@proc_vertex_attrib_l_2d.pointer.null?
    end

    # Invokes glVertexAttribL3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_3d!(*args)
      @proc_vertex_attrib_l_3d.call(*args)
    end

    # Invokes glVertexAttribL3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_3d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL3d") unless vertex_attrib_l_3d?

      @proc_vertex_attrib_l_3d.call(*args)
    end

    # Checks if the function "glVertexAttribL3d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_3d? : Bool
      !@proc_vertex_attrib_l_3d.pointer.null?
    end

    # Invokes glVertexAttribL4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_4d!(*args)
      @proc_vertex_attrib_l_4d.call(*args)
    end

    # Invokes glVertexAttribL4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_4d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL4d") unless vertex_attrib_l_4d?

      @proc_vertex_attrib_l_4d.call(*args)
    end

    # Checks if the function "glVertexAttribL4d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_4d? : Bool
      !@proc_vertex_attrib_l_4d.pointer.null?
    end

    # Invokes glVertexAttribL1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_1dv!(*args)
      @proc_vertex_attrib_l_1dv.call(*args)
    end

    # Invokes glVertexAttribL1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_1dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL1dv") unless vertex_attrib_l_1dv?

      @proc_vertex_attrib_l_1dv.call(*args)
    end

    # Checks if the function "glVertexAttribL1dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_1dv? : Bool
      !@proc_vertex_attrib_l_1dv.pointer.null?
    end

    # Invokes glVertexAttribL2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_2dv!(*args)
      @proc_vertex_attrib_l_2dv.call(*args)
    end

    # Invokes glVertexAttribL2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_2dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL2dv") unless vertex_attrib_l_2dv?

      @proc_vertex_attrib_l_2dv.call(*args)
    end

    # Checks if the function "glVertexAttribL2dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_2dv? : Bool
      !@proc_vertex_attrib_l_2dv.pointer.null?
    end

    # Invokes glVertexAttribL3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_3dv!(*args)
      @proc_vertex_attrib_l_3dv.call(*args)
    end

    # Invokes glVertexAttribL3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_3dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL3dv") unless vertex_attrib_l_3dv?

      @proc_vertex_attrib_l_3dv.call(*args)
    end

    # Checks if the function "glVertexAttribL3dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_3dv? : Bool
      !@proc_vertex_attrib_l_3dv.pointer.null?
    end

    # Invokes glVertexAttribL4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_4dv!(*args)
      @proc_vertex_attrib_l_4dv.call(*args)
    end

    # Invokes glVertexAttribL4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_4dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL4dv") unless vertex_attrib_l_4dv?

      @proc_vertex_attrib_l_4dv.call(*args)
    end

    # Checks if the function "glVertexAttribL4dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_4dv? : Bool
      !@proc_vertex_attrib_l_4dv.pointer.null?
    end

    # Invokes glVertexAttribLPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_pointer!(*args)
      @proc_vertex_attrib_l_pointer.call(*args)
    end

    # Invokes glVertexAttribLPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_pointer(*args)
      raise FunctionUnavailableError.new("glVertexAttribLPointer") unless vertex_attrib_l_pointer?

      @proc_vertex_attrib_l_pointer.call(*args)
    end

    # Checks if the function "glVertexAttribLPointer" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_pointer? : Bool
      !@proc_vertex_attrib_l_pointer.pointer.null?
    end

    # Invokes glGetVertexAttribLdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_l_dv!(*args)
      @proc_get_vertex_attrib_l_dv.call(*args)
    end

    # Invokes glGetVertexAttribLdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_l_dv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribLdv") unless get_vertex_attrib_l_dv?

      @proc_get_vertex_attrib_l_dv.call(*args)
    end

    # Checks if the function "glGetVertexAttribLdv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_l_dv? : Bool
      !@proc_get_vertex_attrib_l_dv.pointer.null?
    end

    # Invokes glViewportArrayv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport_array_v!(*args)
      @proc_viewport_array_v.call(*args)
    end

    # Invokes glViewportArrayv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport_array_v(*args)
      raise FunctionUnavailableError.new("glViewportArrayv") unless viewport_array_v?

      @proc_viewport_array_v.call(*args)
    end

    # Checks if the function "glViewportArrayv" is loaded.
    @[AlwaysInline]
    def viewport_array_v? : Bool
      !@proc_viewport_array_v.pointer.null?
    end

    # Invokes glViewportIndexedf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport_indexed_f!(*args)
      @proc_viewport_indexed_f.call(*args)
    end

    # Invokes glViewportIndexedf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport_indexed_f(*args)
      raise FunctionUnavailableError.new("glViewportIndexedf") unless viewport_indexed_f?

      @proc_viewport_indexed_f.call(*args)
    end

    # Checks if the function "glViewportIndexedf" is loaded.
    @[AlwaysInline]
    def viewport_indexed_f? : Bool
      !@proc_viewport_indexed_f.pointer.null?
    end

    # Invokes glViewportIndexedfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport_indexed_fv!(*args)
      @proc_viewport_indexed_fv.call(*args)
    end

    # Invokes glViewportIndexedfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport_indexed_fv(*args)
      raise FunctionUnavailableError.new("glViewportIndexedfv") unless viewport_indexed_fv?

      @proc_viewport_indexed_fv.call(*args)
    end

    # Checks if the function "glViewportIndexedfv" is loaded.
    @[AlwaysInline]
    def viewport_indexed_fv? : Bool
      !@proc_viewport_indexed_fv.pointer.null?
    end

    # Invokes glScissorArrayv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor_array_v!(*args)
      @proc_scissor_array_v.call(*args)
    end

    # Invokes glScissorArrayv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor_array_v(*args)
      raise FunctionUnavailableError.new("glScissorArrayv") unless scissor_array_v?

      @proc_scissor_array_v.call(*args)
    end

    # Checks if the function "glScissorArrayv" is loaded.
    @[AlwaysInline]
    def scissor_array_v? : Bool
      !@proc_scissor_array_v.pointer.null?
    end

    # Invokes glScissorIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor_indexed!(*args)
      @proc_scissor_indexed.call(*args)
    end

    # Invokes glScissorIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor_indexed(*args)
      raise FunctionUnavailableError.new("glScissorIndexed") unless scissor_indexed?

      @proc_scissor_indexed.call(*args)
    end

    # Checks if the function "glScissorIndexed" is loaded.
    @[AlwaysInline]
    def scissor_indexed? : Bool
      !@proc_scissor_indexed.pointer.null?
    end

    # Invokes glScissorIndexedv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor_indexedv!(*args)
      @proc_scissor_indexedv.call(*args)
    end

    # Invokes glScissorIndexedv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor_indexedv(*args)
      raise FunctionUnavailableError.new("glScissorIndexedv") unless scissor_indexedv?

      @proc_scissor_indexedv.call(*args)
    end

    # Checks if the function "glScissorIndexedv" is loaded.
    @[AlwaysInline]
    def scissor_indexedv? : Bool
      !@proc_scissor_indexedv.pointer.null?
    end

    # Invokes glDepthRangeArrayv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range_array_v!(*args)
      @proc_depth_range_array_v.call(*args)
    end

    # Invokes glDepthRangeArrayv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range_array_v(*args)
      raise FunctionUnavailableError.new("glDepthRangeArrayv") unless depth_range_array_v?

      @proc_depth_range_array_v.call(*args)
    end

    # Checks if the function "glDepthRangeArrayv" is loaded.
    @[AlwaysInline]
    def depth_range_array_v? : Bool
      !@proc_depth_range_array_v.pointer.null?
    end

    # Invokes glDepthRangeIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range_indexed!(*args)
      @proc_depth_range_indexed.call(*args)
    end

    # Invokes glDepthRangeIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range_indexed(*args)
      raise FunctionUnavailableError.new("glDepthRangeIndexed") unless depth_range_indexed?

      @proc_depth_range_indexed.call(*args)
    end

    # Checks if the function "glDepthRangeIndexed" is loaded.
    @[AlwaysInline]
    def depth_range_indexed? : Bool
      !@proc_depth_range_indexed.pointer.null?
    end

    # Invokes glGetFloati_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_float_i_v!(*args)
      @proc_get_float_i_v.call(*args)
    end

    # Invokes glGetFloati_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_float_i_v(*args)
      raise FunctionUnavailableError.new("glGetFloati_v") unless get_float_i_v?

      @proc_get_float_i_v.call(*args)
    end

    # Checks if the function "glGetFloati_v" is loaded.
    @[AlwaysInline]
    def get_float_i_v? : Bool
      !@proc_get_float_i_v.pointer.null?
    end

    # Invokes glGetDoublei_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_double_i_v!(*args)
      @proc_get_double_i_v.call(*args)
    end

    # Invokes glGetDoublei_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_double_i_v(*args)
      raise FunctionUnavailableError.new("glGetDoublei_v") unless get_double_i_v?

      @proc_get_double_i_v.call(*args)
    end

    # Checks if the function "glGetDoublei_v" is loaded.
    @[AlwaysInline]
    def get_double_i_v? : Bool
      !@proc_get_double_i_v.pointer.null?
    end
  end
end
