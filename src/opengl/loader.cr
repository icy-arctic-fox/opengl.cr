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
  end
end
