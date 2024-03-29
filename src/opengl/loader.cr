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
      @addr_draw_arrays = ::Pointer(::Void).null
      @addr_draw_elements = ::Pointer(::Void).null
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
      @addr_blend_func_separate = ::Pointer(::Void).null
      @addr_multi_draw_arrays = ::Pointer(::Void).null
      @addr_multi_draw_elements = ::Pointer(::Void).null
      @addr_point_parameter_f = ::Pointer(::Void).null
      @addr_point_parameter_fv = ::Pointer(::Void).null
      @addr_point_parameter_i = ::Pointer(::Void).null
      @addr_point_parameter_iv = ::Pointer(::Void).null
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
      @addr_bind_frag_data_location_indexed = ::Pointer(::Void).null
      @addr_get_frag_data_index = ::Pointer(::Void).null
      @addr_gen_samplers = ::Pointer(::Void).null
      @addr_delete_samplers = ::Pointer(::Void).null
      @addr_is_sampler = ::Pointer(::Void).null
      @addr_bind_sampler = ::Pointer(::Void).null
      @addr_sampler_parameter_i = ::Pointer(::Void).null
      @addr_sampler_parameter_iv = ::Pointer(::Void).null
      @addr_sampler_parameter_f = ::Pointer(::Void).null
      @addr_sampler_parameter_fv = ::Pointer(::Void).null
      @addr_sampler_parameter_i_iv = ::Pointer(::Void).null
      @addr_sampler_parameter_i_uiv = ::Pointer(::Void).null
      @addr_get_sampler_parameter_iv = ::Pointer(::Void).null
      @addr_get_sampler_parameter_i_iv = ::Pointer(::Void).null
      @addr_get_sampler_parameter_fv = ::Pointer(::Void).null
      @addr_get_sampler_parameter_i_uiv = ::Pointer(::Void).null
      @addr_query_counter = ::Pointer(::Void).null
      @addr_get_query_object_i64v = ::Pointer(::Void).null
      @addr_get_query_object_ui64v = ::Pointer(::Void).null
      @addr_vertex_attrib_divisor = ::Pointer(::Void).null
      @addr_vertex_attrib_p_1ui = ::Pointer(::Void).null
      @addr_vertex_attrib_p_1uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_p_2ui = ::Pointer(::Void).null
      @addr_vertex_attrib_p_2uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_p_3ui = ::Pointer(::Void).null
      @addr_vertex_attrib_p_3uiv = ::Pointer(::Void).null
      @addr_vertex_attrib_p_4ui = ::Pointer(::Void).null
      @addr_vertex_attrib_p_4uiv = ::Pointer(::Void).null
      @addr_min_sample_shading = ::Pointer(::Void).null
      @addr_blend_equation_i = ::Pointer(::Void).null
      @addr_blend_equation_separate_i = ::Pointer(::Void).null
      @addr_blend_func_i = ::Pointer(::Void).null
      @addr_blend_func_separate_i = ::Pointer(::Void).null
      @addr_draw_arrays_indirect = ::Pointer(::Void).null
      @addr_draw_elements_indirect = ::Pointer(::Void).null
      @addr_uniform_1d = ::Pointer(::Void).null
      @addr_uniform_2d = ::Pointer(::Void).null
      @addr_uniform_3d = ::Pointer(::Void).null
      @addr_uniform_4d = ::Pointer(::Void).null
      @addr_uniform_1dv = ::Pointer(::Void).null
      @addr_uniform_2dv = ::Pointer(::Void).null
      @addr_uniform_3dv = ::Pointer(::Void).null
      @addr_uniform_4dv = ::Pointer(::Void).null
      @addr_uniform_matrix2_dv = ::Pointer(::Void).null
      @addr_uniform_matrix3_dv = ::Pointer(::Void).null
      @addr_uniform_matrix4_dv = ::Pointer(::Void).null
      @addr_uniform_matrix2x3_dv = ::Pointer(::Void).null
      @addr_uniform_matrix2x4_dv = ::Pointer(::Void).null
      @addr_uniform_matrix3x2_dv = ::Pointer(::Void).null
      @addr_uniform_matrix3x4_dv = ::Pointer(::Void).null
      @addr_uniform_matrix4x2_dv = ::Pointer(::Void).null
      @addr_uniform_matrix4x3_dv = ::Pointer(::Void).null
      @addr_get_uniform_dv = ::Pointer(::Void).null
      @addr_get_subroutine_uniform_location = ::Pointer(::Void).null
      @addr_get_subroutine_index = ::Pointer(::Void).null
      @addr_get_active_subroutine_uniform_iv = ::Pointer(::Void).null
      @addr_get_active_subroutine_uniform_name = ::Pointer(::Void).null
      @addr_get_active_subroutine_name = ::Pointer(::Void).null
      @addr_uniform_subroutines_uiv = ::Pointer(::Void).null
      @addr_get_uniform_subroutine_uiv = ::Pointer(::Void).null
      @addr_get_program_stage_iv = ::Pointer(::Void).null
      @addr_patch_parameter_i = ::Pointer(::Void).null
      @addr_patch_parameter_fv = ::Pointer(::Void).null
      @addr_bind_transform_feedback = ::Pointer(::Void).null
      @addr_delete_transform_feedbacks = ::Pointer(::Void).null
      @addr_gen_transform_feedbacks = ::Pointer(::Void).null
      @addr_is_transform_feedback = ::Pointer(::Void).null
      @addr_pause_transform_feedback = ::Pointer(::Void).null
      @addr_resume_transform_feedback = ::Pointer(::Void).null
      @addr_draw_transform_feedback = ::Pointer(::Void).null
      @addr_draw_transform_feedback_stream = ::Pointer(::Void).null
      @addr_begin_query_indexed = ::Pointer(::Void).null
      @addr_end_query_indexed = ::Pointer(::Void).null
      @addr_get_query_indexed_iv = ::Pointer(::Void).null
      @addr_release_shader_compiler = ::Pointer(::Void).null
      @addr_shader_binary = ::Pointer(::Void).null
      @addr_get_shader_precision_format = ::Pointer(::Void).null
      @addr_depth_range_f = ::Pointer(::Void).null
      @addr_clear_depth_f = ::Pointer(::Void).null
      @addr_get_program_binary = ::Pointer(::Void).null
      @addr_program_binary = ::Pointer(::Void).null
      @addr_program_parameter_i = ::Pointer(::Void).null
      @addr_use_program_stages = ::Pointer(::Void).null
      @addr_active_shader_program = ::Pointer(::Void).null
      @addr_create_shader_program_v = ::Pointer(::Void).null
      @addr_bind_program_pipeline = ::Pointer(::Void).null
      @addr_delete_program_pipelines = ::Pointer(::Void).null
      @addr_gen_program_pipelines = ::Pointer(::Void).null
      @addr_is_program_pipeline = ::Pointer(::Void).null
      @addr_get_program_pipeline_iv = ::Pointer(::Void).null
      @addr_program_uniform_1i = ::Pointer(::Void).null
      @addr_program_uniform_1iv = ::Pointer(::Void).null
      @addr_program_uniform_1f = ::Pointer(::Void).null
      @addr_program_uniform_1fv = ::Pointer(::Void).null
      @addr_program_uniform_1d = ::Pointer(::Void).null
      @addr_program_uniform_1dv = ::Pointer(::Void).null
      @addr_program_uniform_1ui = ::Pointer(::Void).null
      @addr_program_uniform_1uiv = ::Pointer(::Void).null
      @addr_program_uniform_2i = ::Pointer(::Void).null
      @addr_program_uniform_2iv = ::Pointer(::Void).null
      @addr_program_uniform_2f = ::Pointer(::Void).null
      @addr_program_uniform_2fv = ::Pointer(::Void).null
      @addr_program_uniform_2d = ::Pointer(::Void).null
      @addr_program_uniform_2dv = ::Pointer(::Void).null
      @addr_program_uniform_2ui = ::Pointer(::Void).null
      @addr_program_uniform_2uiv = ::Pointer(::Void).null
      @addr_program_uniform_3i = ::Pointer(::Void).null
      @addr_program_uniform_3iv = ::Pointer(::Void).null
      @addr_program_uniform_3f = ::Pointer(::Void).null
      @addr_program_uniform_3fv = ::Pointer(::Void).null
      @addr_program_uniform_3d = ::Pointer(::Void).null
      @addr_program_uniform_3dv = ::Pointer(::Void).null
      @addr_program_uniform_3ui = ::Pointer(::Void).null
      @addr_program_uniform_3uiv = ::Pointer(::Void).null
      @addr_program_uniform_4i = ::Pointer(::Void).null
      @addr_program_uniform_4iv = ::Pointer(::Void).null
      @addr_program_uniform_4f = ::Pointer(::Void).null
      @addr_program_uniform_4fv = ::Pointer(::Void).null
      @addr_program_uniform_4d = ::Pointer(::Void).null
      @addr_program_uniform_4dv = ::Pointer(::Void).null
      @addr_program_uniform_4ui = ::Pointer(::Void).null
      @addr_program_uniform_4uiv = ::Pointer(::Void).null
      @addr_program_uniform_matrix2_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix3_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix4_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix2_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix3_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix4_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix2x3_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix3x2_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix2x4_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix4x2_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix3x4_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix4x3_fv = ::Pointer(::Void).null
      @addr_program_uniform_matrix2x3_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix3x2_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix2x4_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix4x2_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix3x4_dv = ::Pointer(::Void).null
      @addr_program_uniform_matrix4x3_dv = ::Pointer(::Void).null
      @addr_validate_program_pipeline = ::Pointer(::Void).null
      @addr_get_program_pipeline_info_log = ::Pointer(::Void).null
      @addr_vertex_attrib_l_1d = ::Pointer(::Void).null
      @addr_vertex_attrib_l_2d = ::Pointer(::Void).null
      @addr_vertex_attrib_l_3d = ::Pointer(::Void).null
      @addr_vertex_attrib_l_4d = ::Pointer(::Void).null
      @addr_vertex_attrib_l_1dv = ::Pointer(::Void).null
      @addr_vertex_attrib_l_2dv = ::Pointer(::Void).null
      @addr_vertex_attrib_l_3dv = ::Pointer(::Void).null
      @addr_vertex_attrib_l_4dv = ::Pointer(::Void).null
      @addr_vertex_attrib_l_pointer = ::Pointer(::Void).null
      @addr_get_vertex_attrib_l_dv = ::Pointer(::Void).null
      @addr_viewport_array_v = ::Pointer(::Void).null
      @addr_viewport_indexed_f = ::Pointer(::Void).null
      @addr_viewport_indexed_fv = ::Pointer(::Void).null
      @addr_scissor_array_v = ::Pointer(::Void).null
      @addr_scissor_indexed = ::Pointer(::Void).null
      @addr_scissor_indexedv = ::Pointer(::Void).null
      @addr_depth_range_array_v = ::Pointer(::Void).null
      @addr_depth_range_indexed = ::Pointer(::Void).null
      @addr_get_float_i_v = ::Pointer(::Void).null
      @addr_get_double_i_v = ::Pointer(::Void).null
      @addr_draw_arrays_instanced_base_instance = ::Pointer(::Void).null
      @addr_draw_elements_instanced_base_instance = ::Pointer(::Void).null
      @addr_draw_elements_instanced_base_vertex_base_instance = ::Pointer(::Void).null
      @addr_get_internalformat_iv = ::Pointer(::Void).null
      @addr_get_active_atomic_counter_buffer_iv = ::Pointer(::Void).null
      @addr_bind_image_texture = ::Pointer(::Void).null
      @addr_memory_barrier = ::Pointer(::Void).null
      @addr_tex_storage_1d = ::Pointer(::Void).null
      @addr_tex_storage_2d = ::Pointer(::Void).null
      @addr_tex_storage_3d = ::Pointer(::Void).null
      @addr_draw_transform_feedback_instanced = ::Pointer(::Void).null
      @addr_draw_transform_feedback_stream_instanced = ::Pointer(::Void).null
      @addr_clear_buffer_data = ::Pointer(::Void).null
      @addr_clear_buffer_sub_data = ::Pointer(::Void).null
      @addr_dispatch_compute = ::Pointer(::Void).null
      @addr_dispatch_compute_indirect = ::Pointer(::Void).null
      @addr_copy_image_sub_data = ::Pointer(::Void).null
      @addr_framebuffer_parameter_i = ::Pointer(::Void).null
      @addr_get_framebuffer_parameter_iv = ::Pointer(::Void).null
      @addr_get_internalformat_i64v = ::Pointer(::Void).null
      @addr_invalidate_tex_sub_image = ::Pointer(::Void).null
      @addr_invalidate_tex_image = ::Pointer(::Void).null
      @addr_invalidate_buffer_sub_data = ::Pointer(::Void).null
      @addr_invalidate_buffer_data = ::Pointer(::Void).null
      @addr_invalidate_framebuffer = ::Pointer(::Void).null
      @addr_invalidate_sub_framebuffer = ::Pointer(::Void).null
      @addr_multi_draw_arrays_indirect = ::Pointer(::Void).null
      @addr_multi_draw_elements_indirect = ::Pointer(::Void).null
      @addr_get_program_interface_iv = ::Pointer(::Void).null
      @addr_get_program_resource_index = ::Pointer(::Void).null
      @addr_get_program_resource_name = ::Pointer(::Void).null
      @addr_get_program_resource_iv = ::Pointer(::Void).null
      @addr_get_program_resource_location = ::Pointer(::Void).null
      @addr_get_program_resource_location_index = ::Pointer(::Void).null
      @addr_shader_storage_block_binding = ::Pointer(::Void).null
      @addr_tex_buffer_range = ::Pointer(::Void).null
      @addr_tex_storage_2d_multisample = ::Pointer(::Void).null
      @addr_tex_storage_3d_multisample = ::Pointer(::Void).null
      @addr_texture_view = ::Pointer(::Void).null
      @addr_bind_vertex_buffer = ::Pointer(::Void).null
      @addr_vertex_attrib_format = ::Pointer(::Void).null
      @addr_vertex_attrib_i_format = ::Pointer(::Void).null
      @addr_vertex_attrib_l_format = ::Pointer(::Void).null
      @addr_vertex_attrib_binding = ::Pointer(::Void).null
      @addr_vertex_binding_divisor = ::Pointer(::Void).null
      @addr_debug_message_control = ::Pointer(::Void).null
      @addr_debug_message_insert = ::Pointer(::Void).null
      @addr_debug_message_callback = ::Pointer(::Void).null
      @addr_get_debug_message_log = ::Pointer(::Void).null
      @addr_push_debug_group = ::Pointer(::Void).null
      @addr_pop_debug_group = ::Pointer(::Void).null
      @addr_object_label = ::Pointer(::Void).null
      @addr_get_object_label = ::Pointer(::Void).null
      @addr_object_ptr_label = ::Pointer(::Void).null
      @addr_get_object_ptr_label = ::Pointer(::Void).null
      @addr_get_pointer_v = ::Pointer(::Void).null
      @addr_buffer_storage = ::Pointer(::Void).null
      @addr_clear_tex_image = ::Pointer(::Void).null
      @addr_clear_tex_sub_image = ::Pointer(::Void).null
      @addr_bind_buffers_base = ::Pointer(::Void).null
      @addr_bind_buffers_range = ::Pointer(::Void).null
      @addr_bind_textures = ::Pointer(::Void).null
      @addr_bind_samplers = ::Pointer(::Void).null
      @addr_bind_image_textures = ::Pointer(::Void).null
      @addr_bind_vertex_buffers = ::Pointer(::Void).null
      @addr_clip_control = ::Pointer(::Void).null
      @addr_create_transform_feedbacks = ::Pointer(::Void).null
      @addr_transform_feedback_buffer_base = ::Pointer(::Void).null
      @addr_transform_feedback_buffer_range = ::Pointer(::Void).null
      @addr_get_transform_feedback_iv = ::Pointer(::Void).null
      @addr_get_transform_feedback_i_v = ::Pointer(::Void).null
      @addr_get_transform_feedback_i64_v = ::Pointer(::Void).null
      @addr_create_buffers = ::Pointer(::Void).null
      @addr_named_buffer_storage = ::Pointer(::Void).null
      @addr_named_buffer_data = ::Pointer(::Void).null
      @addr_named_buffer_sub_data = ::Pointer(::Void).null
      @addr_copy_named_buffer_sub_data = ::Pointer(::Void).null
      @addr_clear_named_buffer_data = ::Pointer(::Void).null
      @addr_clear_named_buffer_sub_data = ::Pointer(::Void).null
      @addr_map_named_buffer = ::Pointer(::Void).null
      @addr_map_named_buffer_range = ::Pointer(::Void).null
      @addr_unmap_named_buffer = ::Pointer(::Void).null
      @addr_flush_mapped_named_buffer_range = ::Pointer(::Void).null
      @addr_get_named_buffer_parameter_iv = ::Pointer(::Void).null
      @addr_get_named_buffer_parameter_i64v = ::Pointer(::Void).null
      @addr_get_named_buffer_pointer_v = ::Pointer(::Void).null
      @addr_get_named_buffer_sub_data = ::Pointer(::Void).null
      @addr_create_framebuffers = ::Pointer(::Void).null
      @addr_named_framebuffer_renderbuffer = ::Pointer(::Void).null
      @addr_named_framebuffer_parameter_i = ::Pointer(::Void).null
      @addr_named_framebuffer_texture = ::Pointer(::Void).null
      @addr_named_framebuffer_texture_layer = ::Pointer(::Void).null
      @addr_named_framebuffer_draw_buffer = ::Pointer(::Void).null
      @addr_named_framebuffer_draw_buffers = ::Pointer(::Void).null
      @addr_named_framebuffer_read_buffer = ::Pointer(::Void).null
      @addr_invalidate_named_framebuffer_data = ::Pointer(::Void).null
      @addr_invalidate_named_framebuffer_sub_data = ::Pointer(::Void).null
      @addr_clear_named_framebuffer_iv = ::Pointer(::Void).null
      @addr_clear_named_framebuffer_uiv = ::Pointer(::Void).null
      @addr_clear_named_framebuffer_fv = ::Pointer(::Void).null
      @addr_clear_named_framebuffer_fi = ::Pointer(::Void).null
      @addr_blit_named_framebuffer = ::Pointer(::Void).null
      @addr_check_named_framebuffer_status = ::Pointer(::Void).null
      @addr_get_named_framebuffer_parameter_iv = ::Pointer(::Void).null
      @addr_get_named_framebuffer_attachment_parameter_iv = ::Pointer(::Void).null
      @addr_create_renderbuffers = ::Pointer(::Void).null
      @addr_named_renderbuffer_storage = ::Pointer(::Void).null
      @addr_named_renderbuffer_storage_multisample = ::Pointer(::Void).null
      @addr_get_named_renderbuffer_parameter_iv = ::Pointer(::Void).null
      @addr_create_textures = ::Pointer(::Void).null
      @addr_texture_buffer = ::Pointer(::Void).null
      @addr_texture_buffer_range = ::Pointer(::Void).null
      @addr_texture_storage_1d = ::Pointer(::Void).null
      @addr_texture_storage_2d = ::Pointer(::Void).null
      @addr_texture_storage_3d = ::Pointer(::Void).null
      @addr_texture_storage_2d_multisample = ::Pointer(::Void).null
      @addr_texture_storage_3d_multisample = ::Pointer(::Void).null
      @addr_texture_sub_image_1d = ::Pointer(::Void).null
      @addr_texture_sub_image_2d = ::Pointer(::Void).null
      @addr_texture_sub_image_3d = ::Pointer(::Void).null
      @addr_compressed_texture_sub_image_1d = ::Pointer(::Void).null
      @addr_compressed_texture_sub_image_2d = ::Pointer(::Void).null
      @addr_compressed_texture_sub_image_3d = ::Pointer(::Void).null
      @addr_copy_texture_sub_image_1d = ::Pointer(::Void).null
      @addr_copy_texture_sub_image_2d = ::Pointer(::Void).null
      @addr_copy_texture_sub_image_3d = ::Pointer(::Void).null
      @addr_texture_parameter_f = ::Pointer(::Void).null
      @addr_texture_parameter_fv = ::Pointer(::Void).null
      @addr_texture_parameter_i = ::Pointer(::Void).null
      @addr_texture_parameter_i_iv = ::Pointer(::Void).null
      @addr_texture_parameter_i_uiv = ::Pointer(::Void).null
      @addr_texture_parameter_iv = ::Pointer(::Void).null
      @addr_generate_texture_mipmap = ::Pointer(::Void).null
      @addr_bind_texture_unit = ::Pointer(::Void).null
      @addr_get_texture_image = ::Pointer(::Void).null
      @addr_get_compressed_texture_image = ::Pointer(::Void).null
      @addr_get_texture_level_parameter_fv = ::Pointer(::Void).null
      @addr_get_texture_level_parameter_iv = ::Pointer(::Void).null
      @addr_get_texture_parameter_fv = ::Pointer(::Void).null
      @addr_get_texture_parameter_i_iv = ::Pointer(::Void).null
      @addr_get_texture_parameter_i_uiv = ::Pointer(::Void).null
      @addr_get_texture_parameter_iv = ::Pointer(::Void).null
      @addr_create_vertex_arrays = ::Pointer(::Void).null
      @addr_disable_vertex_array_attrib = ::Pointer(::Void).null
      @addr_enable_vertex_array_attrib = ::Pointer(::Void).null
      @addr_vertex_array_element_buffer = ::Pointer(::Void).null
      @addr_vertex_array_vertex_buffer = ::Pointer(::Void).null
      @addr_vertex_array_vertex_buffers = ::Pointer(::Void).null
      @addr_vertex_array_attrib_binding = ::Pointer(::Void).null
      @addr_vertex_array_attrib_format = ::Pointer(::Void).null
      @addr_vertex_array_attrib_i_format = ::Pointer(::Void).null
      @addr_vertex_array_attrib_l_format = ::Pointer(::Void).null
      @addr_vertex_array_binding_divisor = ::Pointer(::Void).null
      @addr_get_vertex_array_iv = ::Pointer(::Void).null
      @addr_get_vertex_array_indexed_iv = ::Pointer(::Void).null
      @addr_get_vertex_array_indexed_64iv = ::Pointer(::Void).null
      @addr_create_samplers = ::Pointer(::Void).null
      @addr_create_program_pipelines = ::Pointer(::Void).null
      @addr_create_queries = ::Pointer(::Void).null
      @addr_get_query_buffer_object_i64v = ::Pointer(::Void).null
      @addr_get_query_buffer_object_iv = ::Pointer(::Void).null
      @addr_get_query_buffer_object_ui64v = ::Pointer(::Void).null
      @addr_get_query_buffer_object_uiv = ::Pointer(::Void).null
      @addr_memory_barrier_by_region = ::Pointer(::Void).null
      @addr_get_texture_sub_image = ::Pointer(::Void).null
      @addr_get_compressed_texture_sub_image = ::Pointer(::Void).null
      @addr_get_graphics_reset_status = ::Pointer(::Void).null
      @addr_getn_compressed_tex_image = ::Pointer(::Void).null
      @addr_getn_tex_image = ::Pointer(::Void).null
      @addr_getn_uniform_dv = ::Pointer(::Void).null
      @addr_getn_uniform_fv = ::Pointer(::Void).null
      @addr_getn_uniform_iv = ::Pointer(::Void).null
      @addr_getn_uniform_uiv = ::Pointer(::Void).null
      @addr_readn_pixels = ::Pointer(::Void).null
      @addr_texture_barrier = ::Pointer(::Void).null
      @addr_specialize_shader = ::Pointer(::Void).null
      @addr_multi_draw_arrays_indirect_count = ::Pointer(::Void).null
      @addr_multi_draw_elements_indirect_count = ::Pointer(::Void).null
      @addr_polygon_offset_clamp = ::Pointer(::Void).null
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
      @addr_draw_arrays = yield "glDrawArrays"
      @addr_draw_elements = yield "glDrawElements"
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
      @addr_blend_func_separate = yield "glBlendFuncSeparate"
      @addr_multi_draw_arrays = yield "glMultiDrawArrays"
      @addr_multi_draw_elements = yield "glMultiDrawElements"
      @addr_point_parameter_f = yield "glPointParameterf"
      @addr_point_parameter_fv = yield "glPointParameterfv"
      @addr_point_parameter_i = yield "glPointParameteri"
      @addr_point_parameter_iv = yield "glPointParameteriv"
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
      @addr_bind_frag_data_location_indexed = yield "glBindFragDataLocationIndexed"
      @addr_get_frag_data_index = yield "glGetFragDataIndex"
      @addr_gen_samplers = yield "glGenSamplers"
      @addr_delete_samplers = yield "glDeleteSamplers"
      @addr_is_sampler = yield "glIsSampler"
      @addr_bind_sampler = yield "glBindSampler"
      @addr_sampler_parameter_i = yield "glSamplerParameteri"
      @addr_sampler_parameter_iv = yield "glSamplerParameteriv"
      @addr_sampler_parameter_f = yield "glSamplerParameterf"
      @addr_sampler_parameter_fv = yield "glSamplerParameterfv"
      @addr_sampler_parameter_i_iv = yield "glSamplerParameterIiv"
      @addr_sampler_parameter_i_uiv = yield "glSamplerParameterIuiv"
      @addr_get_sampler_parameter_iv = yield "glGetSamplerParameteriv"
      @addr_get_sampler_parameter_i_iv = yield "glGetSamplerParameterIiv"
      @addr_get_sampler_parameter_fv = yield "glGetSamplerParameterfv"
      @addr_get_sampler_parameter_i_uiv = yield "glGetSamplerParameterIuiv"
      @addr_query_counter = yield "glQueryCounter"
      @addr_get_query_object_i64v = yield "glGetQueryObjecti64v"
      @addr_get_query_object_ui64v = yield "glGetQueryObjectui64v"
      @addr_vertex_attrib_divisor = yield "glVertexAttribDivisor"
      @addr_vertex_attrib_p_1ui = yield "glVertexAttribP1ui"
      @addr_vertex_attrib_p_1uiv = yield "glVertexAttribP1uiv"
      @addr_vertex_attrib_p_2ui = yield "glVertexAttribP2ui"
      @addr_vertex_attrib_p_2uiv = yield "glVertexAttribP2uiv"
      @addr_vertex_attrib_p_3ui = yield "glVertexAttribP3ui"
      @addr_vertex_attrib_p_3uiv = yield "glVertexAttribP3uiv"
      @addr_vertex_attrib_p_4ui = yield "glVertexAttribP4ui"
      @addr_vertex_attrib_p_4uiv = yield "glVertexAttribP4uiv"
      @addr_min_sample_shading = yield "glMinSampleShading"
      @addr_blend_equation_i = yield "glBlendEquationi"
      @addr_blend_equation_separate_i = yield "glBlendEquationSeparatei"
      @addr_blend_func_i = yield "glBlendFunci"
      @addr_blend_func_separate_i = yield "glBlendFuncSeparatei"
      @addr_draw_arrays_indirect = yield "glDrawArraysIndirect"
      @addr_draw_elements_indirect = yield "glDrawElementsIndirect"
      @addr_uniform_1d = yield "glUniform1d"
      @addr_uniform_2d = yield "glUniform2d"
      @addr_uniform_3d = yield "glUniform3d"
      @addr_uniform_4d = yield "glUniform4d"
      @addr_uniform_1dv = yield "glUniform1dv"
      @addr_uniform_2dv = yield "glUniform2dv"
      @addr_uniform_3dv = yield "glUniform3dv"
      @addr_uniform_4dv = yield "glUniform4dv"
      @addr_uniform_matrix2_dv = yield "glUniformMatrix2dv"
      @addr_uniform_matrix3_dv = yield "glUniformMatrix3dv"
      @addr_uniform_matrix4_dv = yield "glUniformMatrix4dv"
      @addr_uniform_matrix2x3_dv = yield "glUniformMatrix2x3dv"
      @addr_uniform_matrix2x4_dv = yield "glUniformMatrix2x4dv"
      @addr_uniform_matrix3x2_dv = yield "glUniformMatrix3x2dv"
      @addr_uniform_matrix3x4_dv = yield "glUniformMatrix3x4dv"
      @addr_uniform_matrix4x2_dv = yield "glUniformMatrix4x2dv"
      @addr_uniform_matrix4x3_dv = yield "glUniformMatrix4x3dv"
      @addr_get_uniform_dv = yield "glGetUniformdv"
      @addr_get_subroutine_uniform_location = yield "glGetSubroutineUniformLocation"
      @addr_get_subroutine_index = yield "glGetSubroutineIndex"
      @addr_get_active_subroutine_uniform_iv = yield "glGetActiveSubroutineUniformiv"
      @addr_get_active_subroutine_uniform_name = yield "glGetActiveSubroutineUniformName"
      @addr_get_active_subroutine_name = yield "glGetActiveSubroutineName"
      @addr_uniform_subroutines_uiv = yield "glUniformSubroutinesuiv"
      @addr_get_uniform_subroutine_uiv = yield "glGetUniformSubroutineuiv"
      @addr_get_program_stage_iv = yield "glGetProgramStageiv"
      @addr_patch_parameter_i = yield "glPatchParameteri"
      @addr_patch_parameter_fv = yield "glPatchParameterfv"
      @addr_bind_transform_feedback = yield "glBindTransformFeedback"
      @addr_delete_transform_feedbacks = yield "glDeleteTransformFeedbacks"
      @addr_gen_transform_feedbacks = yield "glGenTransformFeedbacks"
      @addr_is_transform_feedback = yield "glIsTransformFeedback"
      @addr_pause_transform_feedback = yield "glPauseTransformFeedback"
      @addr_resume_transform_feedback = yield "glResumeTransformFeedback"
      @addr_draw_transform_feedback = yield "glDrawTransformFeedback"
      @addr_draw_transform_feedback_stream = yield "glDrawTransformFeedbackStream"
      @addr_begin_query_indexed = yield "glBeginQueryIndexed"
      @addr_end_query_indexed = yield "glEndQueryIndexed"
      @addr_get_query_indexed_iv = yield "glGetQueryIndexediv"
      @addr_release_shader_compiler = yield "glReleaseShaderCompiler"
      @addr_shader_binary = yield "glShaderBinary"
      @addr_get_shader_precision_format = yield "glGetShaderPrecisionFormat"
      @addr_depth_range_f = yield "glDepthRangef"
      @addr_clear_depth_f = yield "glClearDepthf"
      @addr_get_program_binary = yield "glGetProgramBinary"
      @addr_program_binary = yield "glProgramBinary"
      @addr_program_parameter_i = yield "glProgramParameteri"
      @addr_use_program_stages = yield "glUseProgramStages"
      @addr_active_shader_program = yield "glActiveShaderProgram"
      @addr_create_shader_program_v = yield "glCreateShaderProgramv"
      @addr_bind_program_pipeline = yield "glBindProgramPipeline"
      @addr_delete_program_pipelines = yield "glDeleteProgramPipelines"
      @addr_gen_program_pipelines = yield "glGenProgramPipelines"
      @addr_is_program_pipeline = yield "glIsProgramPipeline"
      @addr_get_program_pipeline_iv = yield "glGetProgramPipelineiv"
      @addr_program_uniform_1i = yield "glProgramUniform1i"
      @addr_program_uniform_1iv = yield "glProgramUniform1iv"
      @addr_program_uniform_1f = yield "glProgramUniform1f"
      @addr_program_uniform_1fv = yield "glProgramUniform1fv"
      @addr_program_uniform_1d = yield "glProgramUniform1d"
      @addr_program_uniform_1dv = yield "glProgramUniform1dv"
      @addr_program_uniform_1ui = yield "glProgramUniform1ui"
      @addr_program_uniform_1uiv = yield "glProgramUniform1uiv"
      @addr_program_uniform_2i = yield "glProgramUniform2i"
      @addr_program_uniform_2iv = yield "glProgramUniform2iv"
      @addr_program_uniform_2f = yield "glProgramUniform2f"
      @addr_program_uniform_2fv = yield "glProgramUniform2fv"
      @addr_program_uniform_2d = yield "glProgramUniform2d"
      @addr_program_uniform_2dv = yield "glProgramUniform2dv"
      @addr_program_uniform_2ui = yield "glProgramUniform2ui"
      @addr_program_uniform_2uiv = yield "glProgramUniform2uiv"
      @addr_program_uniform_3i = yield "glProgramUniform3i"
      @addr_program_uniform_3iv = yield "glProgramUniform3iv"
      @addr_program_uniform_3f = yield "glProgramUniform3f"
      @addr_program_uniform_3fv = yield "glProgramUniform3fv"
      @addr_program_uniform_3d = yield "glProgramUniform3d"
      @addr_program_uniform_3dv = yield "glProgramUniform3dv"
      @addr_program_uniform_3ui = yield "glProgramUniform3ui"
      @addr_program_uniform_3uiv = yield "glProgramUniform3uiv"
      @addr_program_uniform_4i = yield "glProgramUniform4i"
      @addr_program_uniform_4iv = yield "glProgramUniform4iv"
      @addr_program_uniform_4f = yield "glProgramUniform4f"
      @addr_program_uniform_4fv = yield "glProgramUniform4fv"
      @addr_program_uniform_4d = yield "glProgramUniform4d"
      @addr_program_uniform_4dv = yield "glProgramUniform4dv"
      @addr_program_uniform_4ui = yield "glProgramUniform4ui"
      @addr_program_uniform_4uiv = yield "glProgramUniform4uiv"
      @addr_program_uniform_matrix2_fv = yield "glProgramUniformMatrix2fv"
      @addr_program_uniform_matrix3_fv = yield "glProgramUniformMatrix3fv"
      @addr_program_uniform_matrix4_fv = yield "glProgramUniformMatrix4fv"
      @addr_program_uniform_matrix2_dv = yield "glProgramUniformMatrix2dv"
      @addr_program_uniform_matrix3_dv = yield "glProgramUniformMatrix3dv"
      @addr_program_uniform_matrix4_dv = yield "glProgramUniformMatrix4dv"
      @addr_program_uniform_matrix2x3_fv = yield "glProgramUniformMatrix2x3fv"
      @addr_program_uniform_matrix3x2_fv = yield "glProgramUniformMatrix3x2fv"
      @addr_program_uniform_matrix2x4_fv = yield "glProgramUniformMatrix2x4fv"
      @addr_program_uniform_matrix4x2_fv = yield "glProgramUniformMatrix4x2fv"
      @addr_program_uniform_matrix3x4_fv = yield "glProgramUniformMatrix3x4fv"
      @addr_program_uniform_matrix4x3_fv = yield "glProgramUniformMatrix4x3fv"
      @addr_program_uniform_matrix2x3_dv = yield "glProgramUniformMatrix2x3dv"
      @addr_program_uniform_matrix3x2_dv = yield "glProgramUniformMatrix3x2dv"
      @addr_program_uniform_matrix2x4_dv = yield "glProgramUniformMatrix2x4dv"
      @addr_program_uniform_matrix4x2_dv = yield "glProgramUniformMatrix4x2dv"
      @addr_program_uniform_matrix3x4_dv = yield "glProgramUniformMatrix3x4dv"
      @addr_program_uniform_matrix4x3_dv = yield "glProgramUniformMatrix4x3dv"
      @addr_validate_program_pipeline = yield "glValidateProgramPipeline"
      @addr_get_program_pipeline_info_log = yield "glGetProgramPipelineInfoLog"
      @addr_vertex_attrib_l_1d = yield "glVertexAttribL1d"
      @addr_vertex_attrib_l_2d = yield "glVertexAttribL2d"
      @addr_vertex_attrib_l_3d = yield "glVertexAttribL3d"
      @addr_vertex_attrib_l_4d = yield "glVertexAttribL4d"
      @addr_vertex_attrib_l_1dv = yield "glVertexAttribL1dv"
      @addr_vertex_attrib_l_2dv = yield "glVertexAttribL2dv"
      @addr_vertex_attrib_l_3dv = yield "glVertexAttribL3dv"
      @addr_vertex_attrib_l_4dv = yield "glVertexAttribL4dv"
      @addr_vertex_attrib_l_pointer = yield "glVertexAttribLPointer"
      @addr_get_vertex_attrib_l_dv = yield "glGetVertexAttribLdv"
      @addr_viewport_array_v = yield "glViewportArrayv"
      @addr_viewport_indexed_f = yield "glViewportIndexedf"
      @addr_viewport_indexed_fv = yield "glViewportIndexedfv"
      @addr_scissor_array_v = yield "glScissorArrayv"
      @addr_scissor_indexed = yield "glScissorIndexed"
      @addr_scissor_indexedv = yield "glScissorIndexedv"
      @addr_depth_range_array_v = yield "glDepthRangeArrayv"
      @addr_depth_range_indexed = yield "glDepthRangeIndexed"
      @addr_get_float_i_v = yield "glGetFloati_v"
      @addr_get_double_i_v = yield "glGetDoublei_v"
      @addr_draw_arrays_instanced_base_instance = yield "glDrawArraysInstancedBaseInstance"
      @addr_draw_elements_instanced_base_instance = yield "glDrawElementsInstancedBaseInstance"
      @addr_draw_elements_instanced_base_vertex_base_instance = yield "glDrawElementsInstancedBaseVertexBaseInstance"
      @addr_get_internalformat_iv = yield "glGetInternalformativ"
      @addr_get_active_atomic_counter_buffer_iv = yield "glGetActiveAtomicCounterBufferiv"
      @addr_bind_image_texture = yield "glBindImageTexture"
      @addr_memory_barrier = yield "glMemoryBarrier"
      @addr_tex_storage_1d = yield "glTexStorage1D"
      @addr_tex_storage_2d = yield "glTexStorage2D"
      @addr_tex_storage_3d = yield "glTexStorage3D"
      @addr_draw_transform_feedback_instanced = yield "glDrawTransformFeedbackInstanced"
      @addr_draw_transform_feedback_stream_instanced = yield "glDrawTransformFeedbackStreamInstanced"
      @addr_clear_buffer_data = yield "glClearBufferData"
      @addr_clear_buffer_sub_data = yield "glClearBufferSubData"
      @addr_dispatch_compute = yield "glDispatchCompute"
      @addr_dispatch_compute_indirect = yield "glDispatchComputeIndirect"
      @addr_copy_image_sub_data = yield "glCopyImageSubData"
      @addr_framebuffer_parameter_i = yield "glFramebufferParameteri"
      @addr_get_framebuffer_parameter_iv = yield "glGetFramebufferParameteriv"
      @addr_get_internalformat_i64v = yield "glGetInternalformati64v"
      @addr_invalidate_tex_sub_image = yield "glInvalidateTexSubImage"
      @addr_invalidate_tex_image = yield "glInvalidateTexImage"
      @addr_invalidate_buffer_sub_data = yield "glInvalidateBufferSubData"
      @addr_invalidate_buffer_data = yield "glInvalidateBufferData"
      @addr_invalidate_framebuffer = yield "glInvalidateFramebuffer"
      @addr_invalidate_sub_framebuffer = yield "glInvalidateSubFramebuffer"
      @addr_multi_draw_arrays_indirect = yield "glMultiDrawArraysIndirect"
      @addr_multi_draw_elements_indirect = yield "glMultiDrawElementsIndirect"
      @addr_get_program_interface_iv = yield "glGetProgramInterfaceiv"
      @addr_get_program_resource_index = yield "glGetProgramResourceIndex"
      @addr_get_program_resource_name = yield "glGetProgramResourceName"
      @addr_get_program_resource_iv = yield "glGetProgramResourceiv"
      @addr_get_program_resource_location = yield "glGetProgramResourceLocation"
      @addr_get_program_resource_location_index = yield "glGetProgramResourceLocationIndex"
      @addr_shader_storage_block_binding = yield "glShaderStorageBlockBinding"
      @addr_tex_buffer_range = yield "glTexBufferRange"
      @addr_tex_storage_2d_multisample = yield "glTexStorage2DMultisample"
      @addr_tex_storage_3d_multisample = yield "glTexStorage3DMultisample"
      @addr_texture_view = yield "glTextureView"
      @addr_bind_vertex_buffer = yield "glBindVertexBuffer"
      @addr_vertex_attrib_format = yield "glVertexAttribFormat"
      @addr_vertex_attrib_i_format = yield "glVertexAttribIFormat"
      @addr_vertex_attrib_l_format = yield "glVertexAttribLFormat"
      @addr_vertex_attrib_binding = yield "glVertexAttribBinding"
      @addr_vertex_binding_divisor = yield "glVertexBindingDivisor"
      @addr_debug_message_control = yield "glDebugMessageControl"
      @addr_debug_message_insert = yield "glDebugMessageInsert"
      @addr_debug_message_callback = yield "glDebugMessageCallback"
      @addr_get_debug_message_log = yield "glGetDebugMessageLog"
      @addr_push_debug_group = yield "glPushDebugGroup"
      @addr_pop_debug_group = yield "glPopDebugGroup"
      @addr_object_label = yield "glObjectLabel"
      @addr_get_object_label = yield "glGetObjectLabel"
      @addr_object_ptr_label = yield "glObjectPtrLabel"
      @addr_get_object_ptr_label = yield "glGetObjectPtrLabel"
      @addr_get_pointer_v = yield "glGetPointerv"
      @addr_buffer_storage = yield "glBufferStorage"
      @addr_clear_tex_image = yield "glClearTexImage"
      @addr_clear_tex_sub_image = yield "glClearTexSubImage"
      @addr_bind_buffers_base = yield "glBindBuffersBase"
      @addr_bind_buffers_range = yield "glBindBuffersRange"
      @addr_bind_textures = yield "glBindTextures"
      @addr_bind_samplers = yield "glBindSamplers"
      @addr_bind_image_textures = yield "glBindImageTextures"
      @addr_bind_vertex_buffers = yield "glBindVertexBuffers"
      @addr_clip_control = yield "glClipControl"
      @addr_create_transform_feedbacks = yield "glCreateTransformFeedbacks"
      @addr_transform_feedback_buffer_base = yield "glTransformFeedbackBufferBase"
      @addr_transform_feedback_buffer_range = yield "glTransformFeedbackBufferRange"
      @addr_get_transform_feedback_iv = yield "glGetTransformFeedbackiv"
      @addr_get_transform_feedback_i_v = yield "glGetTransformFeedbacki_v"
      @addr_get_transform_feedback_i64_v = yield "glGetTransformFeedbacki64_v"
      @addr_create_buffers = yield "glCreateBuffers"
      @addr_named_buffer_storage = yield "glNamedBufferStorage"
      @addr_named_buffer_data = yield "glNamedBufferData"
      @addr_named_buffer_sub_data = yield "glNamedBufferSubData"
      @addr_copy_named_buffer_sub_data = yield "glCopyNamedBufferSubData"
      @addr_clear_named_buffer_data = yield "glClearNamedBufferData"
      @addr_clear_named_buffer_sub_data = yield "glClearNamedBufferSubData"
      @addr_map_named_buffer = yield "glMapNamedBuffer"
      @addr_map_named_buffer_range = yield "glMapNamedBufferRange"
      @addr_unmap_named_buffer = yield "glUnmapNamedBuffer"
      @addr_flush_mapped_named_buffer_range = yield "glFlushMappedNamedBufferRange"
      @addr_get_named_buffer_parameter_iv = yield "glGetNamedBufferParameteriv"
      @addr_get_named_buffer_parameter_i64v = yield "glGetNamedBufferParameteri64v"
      @addr_get_named_buffer_pointer_v = yield "glGetNamedBufferPointerv"
      @addr_get_named_buffer_sub_data = yield "glGetNamedBufferSubData"
      @addr_create_framebuffers = yield "glCreateFramebuffers"
      @addr_named_framebuffer_renderbuffer = yield "glNamedFramebufferRenderbuffer"
      @addr_named_framebuffer_parameter_i = yield "glNamedFramebufferParameteri"
      @addr_named_framebuffer_texture = yield "glNamedFramebufferTexture"
      @addr_named_framebuffer_texture_layer = yield "glNamedFramebufferTextureLayer"
      @addr_named_framebuffer_draw_buffer = yield "glNamedFramebufferDrawBuffer"
      @addr_named_framebuffer_draw_buffers = yield "glNamedFramebufferDrawBuffers"
      @addr_named_framebuffer_read_buffer = yield "glNamedFramebufferReadBuffer"
      @addr_invalidate_named_framebuffer_data = yield "glInvalidateNamedFramebufferData"
      @addr_invalidate_named_framebuffer_sub_data = yield "glInvalidateNamedFramebufferSubData"
      @addr_clear_named_framebuffer_iv = yield "glClearNamedFramebufferiv"
      @addr_clear_named_framebuffer_uiv = yield "glClearNamedFramebufferuiv"
      @addr_clear_named_framebuffer_fv = yield "glClearNamedFramebufferfv"
      @addr_clear_named_framebuffer_fi = yield "glClearNamedFramebufferfi"
      @addr_blit_named_framebuffer = yield "glBlitNamedFramebuffer"
      @addr_check_named_framebuffer_status = yield "glCheckNamedFramebufferStatus"
      @addr_get_named_framebuffer_parameter_iv = yield "glGetNamedFramebufferParameteriv"
      @addr_get_named_framebuffer_attachment_parameter_iv = yield "glGetNamedFramebufferAttachmentParameteriv"
      @addr_create_renderbuffers = yield "glCreateRenderbuffers"
      @addr_named_renderbuffer_storage = yield "glNamedRenderbufferStorage"
      @addr_named_renderbuffer_storage_multisample = yield "glNamedRenderbufferStorageMultisample"
      @addr_get_named_renderbuffer_parameter_iv = yield "glGetNamedRenderbufferParameteriv"
      @addr_create_textures = yield "glCreateTextures"
      @addr_texture_buffer = yield "glTextureBuffer"
      @addr_texture_buffer_range = yield "glTextureBufferRange"
      @addr_texture_storage_1d = yield "glTextureStorage1D"
      @addr_texture_storage_2d = yield "glTextureStorage2D"
      @addr_texture_storage_3d = yield "glTextureStorage3D"
      @addr_texture_storage_2d_multisample = yield "glTextureStorage2DMultisample"
      @addr_texture_storage_3d_multisample = yield "glTextureStorage3DMultisample"
      @addr_texture_sub_image_1d = yield "glTextureSubImage1D"
      @addr_texture_sub_image_2d = yield "glTextureSubImage2D"
      @addr_texture_sub_image_3d = yield "glTextureSubImage3D"
      @addr_compressed_texture_sub_image_1d = yield "glCompressedTextureSubImage1D"
      @addr_compressed_texture_sub_image_2d = yield "glCompressedTextureSubImage2D"
      @addr_compressed_texture_sub_image_3d = yield "glCompressedTextureSubImage3D"
      @addr_copy_texture_sub_image_1d = yield "glCopyTextureSubImage1D"
      @addr_copy_texture_sub_image_2d = yield "glCopyTextureSubImage2D"
      @addr_copy_texture_sub_image_3d = yield "glCopyTextureSubImage3D"
      @addr_texture_parameter_f = yield "glTextureParameterf"
      @addr_texture_parameter_fv = yield "glTextureParameterfv"
      @addr_texture_parameter_i = yield "glTextureParameteri"
      @addr_texture_parameter_i_iv = yield "glTextureParameterIiv"
      @addr_texture_parameter_i_uiv = yield "glTextureParameterIuiv"
      @addr_texture_parameter_iv = yield "glTextureParameteriv"
      @addr_generate_texture_mipmap = yield "glGenerateTextureMipmap"
      @addr_bind_texture_unit = yield "glBindTextureUnit"
      @addr_get_texture_image = yield "glGetTextureImage"
      @addr_get_compressed_texture_image = yield "glGetCompressedTextureImage"
      @addr_get_texture_level_parameter_fv = yield "glGetTextureLevelParameterfv"
      @addr_get_texture_level_parameter_iv = yield "glGetTextureLevelParameteriv"
      @addr_get_texture_parameter_fv = yield "glGetTextureParameterfv"
      @addr_get_texture_parameter_i_iv = yield "glGetTextureParameterIiv"
      @addr_get_texture_parameter_i_uiv = yield "glGetTextureParameterIuiv"
      @addr_get_texture_parameter_iv = yield "glGetTextureParameteriv"
      @addr_create_vertex_arrays = yield "glCreateVertexArrays"
      @addr_disable_vertex_array_attrib = yield "glDisableVertexArrayAttrib"
      @addr_enable_vertex_array_attrib = yield "glEnableVertexArrayAttrib"
      @addr_vertex_array_element_buffer = yield "glVertexArrayElementBuffer"
      @addr_vertex_array_vertex_buffer = yield "glVertexArrayVertexBuffer"
      @addr_vertex_array_vertex_buffers = yield "glVertexArrayVertexBuffers"
      @addr_vertex_array_attrib_binding = yield "glVertexArrayAttribBinding"
      @addr_vertex_array_attrib_format = yield "glVertexArrayAttribFormat"
      @addr_vertex_array_attrib_i_format = yield "glVertexArrayAttribIFormat"
      @addr_vertex_array_attrib_l_format = yield "glVertexArrayAttribLFormat"
      @addr_vertex_array_binding_divisor = yield "glVertexArrayBindingDivisor"
      @addr_get_vertex_array_iv = yield "glGetVertexArrayiv"
      @addr_get_vertex_array_indexed_iv = yield "glGetVertexArrayIndexediv"
      @addr_get_vertex_array_indexed_64iv = yield "glGetVertexArrayIndexed64iv"
      @addr_create_samplers = yield "glCreateSamplers"
      @addr_create_program_pipelines = yield "glCreateProgramPipelines"
      @addr_create_queries = yield "glCreateQueries"
      @addr_get_query_buffer_object_i64v = yield "glGetQueryBufferObjecti64v"
      @addr_get_query_buffer_object_iv = yield "glGetQueryBufferObjectiv"
      @addr_get_query_buffer_object_ui64v = yield "glGetQueryBufferObjectui64v"
      @addr_get_query_buffer_object_uiv = yield "glGetQueryBufferObjectuiv"
      @addr_memory_barrier_by_region = yield "glMemoryBarrierByRegion"
      @addr_get_texture_sub_image = yield "glGetTextureSubImage"
      @addr_get_compressed_texture_sub_image = yield "glGetCompressedTextureSubImage"
      @addr_get_graphics_reset_status = yield "glGetGraphicsResetStatus"
      @addr_getn_compressed_tex_image = yield "glGetnCompressedTexImage"
      @addr_getn_tex_image = yield "glGetnTexImage"
      @addr_getn_uniform_dv = yield "glGetnUniformdv"
      @addr_getn_uniform_fv = yield "glGetnUniformfv"
      @addr_getn_uniform_iv = yield "glGetnUniformiv"
      @addr_getn_uniform_uiv = yield "glGetnUniformuiv"
      @addr_readn_pixels = yield "glReadnPixels"
      @addr_texture_barrier = yield "glTextureBarrier"
      @addr_specialize_shader = yield "glSpecializeShader"
      @addr_multi_draw_arrays_indirect_count = yield "glMultiDrawArraysIndirectCount"
      @addr_multi_draw_elements_indirect_count = yield "glMultiDrawElementsIndirectCount"
      @addr_polygon_offset_clamp = yield "glPolygonOffsetClamp"
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

    # Invokes glBindFragDataLocationIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_frag_data_location_indexed!(*args)
      addr = @addr_bind_frag_data_location_indexed
      proc = Procs.bind_frag_data_location_indexed(addr)
      proc.call(*args)
    end

    # Invokes glBindFragDataLocationIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_frag_data_location_indexed(*args)
      raise FunctionUnavailableError.new("glBindFragDataLocationIndexed") unless bind_frag_data_location_indexed?

      bind_frag_data_location_indexed!(*args)
    end

    # Checks if the function "glBindFragDataLocationIndexed" is loaded.
    @[AlwaysInline]
    def bind_frag_data_location_indexed? : Bool
      !@addr_bind_frag_data_location_indexed.null?
    end

    # Invokes glGetFragDataIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_frag_data_index!(*args)
      addr = @addr_get_frag_data_index
      proc = Procs.get_frag_data_index(addr)
      proc.call(*args)
    end

    # Invokes glGetFragDataIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_frag_data_index(*args)
      raise FunctionUnavailableError.new("glGetFragDataIndex") unless get_frag_data_index?

      get_frag_data_index!(*args)
    end

    # Checks if the function "glGetFragDataIndex" is loaded.
    @[AlwaysInline]
    def get_frag_data_index? : Bool
      !@addr_get_frag_data_index.null?
    end

    # Invokes glGenSamplers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_samplers!(*args)
      addr = @addr_gen_samplers
      proc = Procs.gen_samplers(addr)
      proc.call(*args)
    end

    # Invokes glGenSamplers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_samplers(*args)
      raise FunctionUnavailableError.new("glGenSamplers") unless gen_samplers?

      gen_samplers!(*args)
    end

    # Checks if the function "glGenSamplers" is loaded.
    @[AlwaysInline]
    def gen_samplers? : Bool
      !@addr_gen_samplers.null?
    end

    # Invokes glDeleteSamplers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_samplers!(*args)
      addr = @addr_delete_samplers
      proc = Procs.delete_samplers(addr)
      proc.call(*args)
    end

    # Invokes glDeleteSamplers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_samplers(*args)
      raise FunctionUnavailableError.new("glDeleteSamplers") unless delete_samplers?

      delete_samplers!(*args)
    end

    # Checks if the function "glDeleteSamplers" is loaded.
    @[AlwaysInline]
    def delete_samplers? : Bool
      !@addr_delete_samplers.null?
    end

    # Invokes glIsSampler.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_sampler!(*args)
      addr = @addr_is_sampler
      proc = Procs.is_sampler(addr)
      proc.call(*args)
    end

    # Invokes glIsSampler.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_sampler(*args)
      raise FunctionUnavailableError.new("glIsSampler") unless is_sampler?

      is_sampler!(*args)
    end

    # Checks if the function "glIsSampler" is loaded.
    @[AlwaysInline]
    def is_sampler? : Bool
      !@addr_is_sampler.null?
    end

    # Invokes glBindSampler.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_sampler!(*args)
      addr = @addr_bind_sampler
      proc = Procs.bind_sampler(addr)
      proc.call(*args)
    end

    # Invokes glBindSampler.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_sampler(*args)
      raise FunctionUnavailableError.new("glBindSampler") unless bind_sampler?

      bind_sampler!(*args)
    end

    # Checks if the function "glBindSampler" is loaded.
    @[AlwaysInline]
    def bind_sampler? : Bool
      !@addr_bind_sampler.null?
    end

    # Invokes glSamplerParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_i!(*args)
      addr = @addr_sampler_parameter_i
      proc = Procs.sampler_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glSamplerParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_i(*args)
      raise FunctionUnavailableError.new("glSamplerParameteri") unless sampler_parameter_i?

      sampler_parameter_i!(*args)
    end

    # Checks if the function "glSamplerParameteri" is loaded.
    @[AlwaysInline]
    def sampler_parameter_i? : Bool
      !@addr_sampler_parameter_i.null?
    end

    # Invokes glSamplerParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_iv!(*args)
      addr = @addr_sampler_parameter_iv
      proc = Procs.sampler_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glSamplerParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_iv(*args)
      raise FunctionUnavailableError.new("glSamplerParameteriv") unless sampler_parameter_iv?

      sampler_parameter_iv!(*args)
    end

    # Checks if the function "glSamplerParameteriv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_iv? : Bool
      !@addr_sampler_parameter_iv.null?
    end

    # Invokes glSamplerParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_f!(*args)
      addr = @addr_sampler_parameter_f
      proc = Procs.sampler_parameter_f(addr)
      proc.call(*args)
    end

    # Invokes glSamplerParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_f(*args)
      raise FunctionUnavailableError.new("glSamplerParameterf") unless sampler_parameter_f?

      sampler_parameter_f!(*args)
    end

    # Checks if the function "glSamplerParameterf" is loaded.
    @[AlwaysInline]
    def sampler_parameter_f? : Bool
      !@addr_sampler_parameter_f.null?
    end

    # Invokes glSamplerParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_fv!(*args)
      addr = @addr_sampler_parameter_fv
      proc = Procs.sampler_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glSamplerParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_fv(*args)
      raise FunctionUnavailableError.new("glSamplerParameterfv") unless sampler_parameter_fv?

      sampler_parameter_fv!(*args)
    end

    # Checks if the function "glSamplerParameterfv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_fv? : Bool
      !@addr_sampler_parameter_fv.null?
    end

    # Invokes glSamplerParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_i_iv!(*args)
      addr = @addr_sampler_parameter_i_iv
      proc = Procs.sampler_parameter_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glSamplerParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glSamplerParameterIiv") unless sampler_parameter_i_iv?

      sampler_parameter_i_iv!(*args)
    end

    # Checks if the function "glSamplerParameterIiv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_i_iv? : Bool
      !@addr_sampler_parameter_i_iv.null?
    end

    # Invokes glSamplerParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def sampler_parameter_i_uiv!(*args)
      addr = @addr_sampler_parameter_i_uiv
      proc = Procs.sampler_parameter_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glSamplerParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def sampler_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glSamplerParameterIuiv") unless sampler_parameter_i_uiv?

      sampler_parameter_i_uiv!(*args)
    end

    # Checks if the function "glSamplerParameterIuiv" is loaded.
    @[AlwaysInline]
    def sampler_parameter_i_uiv? : Bool
      !@addr_sampler_parameter_i_uiv.null?
    end

    # Invokes glGetSamplerParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_iv!(*args)
      addr = @addr_get_sampler_parameter_iv
      proc = Procs.get_sampler_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetSamplerParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameteriv") unless get_sampler_parameter_iv?

      get_sampler_parameter_iv!(*args)
    end

    # Checks if the function "glGetSamplerParameteriv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_iv? : Bool
      !@addr_get_sampler_parameter_iv.null?
    end

    # Invokes glGetSamplerParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_i_iv!(*args)
      addr = @addr_get_sampler_parameter_i_iv
      proc = Procs.get_sampler_parameter_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetSamplerParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameterIiv") unless get_sampler_parameter_i_iv?

      get_sampler_parameter_i_iv!(*args)
    end

    # Checks if the function "glGetSamplerParameterIiv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_i_iv? : Bool
      !@addr_get_sampler_parameter_i_iv.null?
    end

    # Invokes glGetSamplerParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_fv!(*args)
      addr = @addr_get_sampler_parameter_fv
      proc = Procs.get_sampler_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetSamplerParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameterfv") unless get_sampler_parameter_fv?

      get_sampler_parameter_fv!(*args)
    end

    # Checks if the function "glGetSamplerParameterfv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_fv? : Bool
      !@addr_get_sampler_parameter_fv.null?
    end

    # Invokes glGetSamplerParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_sampler_parameter_i_uiv!(*args)
      addr = @addr_get_sampler_parameter_i_uiv
      proc = Procs.get_sampler_parameter_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetSamplerParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_sampler_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetSamplerParameterIuiv") unless get_sampler_parameter_i_uiv?

      get_sampler_parameter_i_uiv!(*args)
    end

    # Checks if the function "glGetSamplerParameterIuiv" is loaded.
    @[AlwaysInline]
    def get_sampler_parameter_i_uiv? : Bool
      !@addr_get_sampler_parameter_i_uiv.null?
    end

    # Invokes glQueryCounter.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def query_counter!(*args)
      addr = @addr_query_counter
      proc = Procs.query_counter(addr)
      proc.call(*args)
    end

    # Invokes glQueryCounter.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def query_counter(*args)
      raise FunctionUnavailableError.new("glQueryCounter") unless query_counter?

      query_counter!(*args)
    end

    # Checks if the function "glQueryCounter" is loaded.
    @[AlwaysInline]
    def query_counter? : Bool
      !@addr_query_counter.null?
    end

    # Invokes glGetQueryObjecti64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_i64v!(*args)
      addr = @addr_get_query_object_i64v
      proc = Procs.get_query_object_i64v(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryObjecti64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_i64v(*args)
      raise FunctionUnavailableError.new("glGetQueryObjecti64v") unless get_query_object_i64v?

      get_query_object_i64v!(*args)
    end

    # Checks if the function "glGetQueryObjecti64v" is loaded.
    @[AlwaysInline]
    def get_query_object_i64v? : Bool
      !@addr_get_query_object_i64v.null?
    end

    # Invokes glGetQueryObjectui64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_object_ui64v!(*args)
      addr = @addr_get_query_object_ui64v
      proc = Procs.get_query_object_ui64v(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryObjectui64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_object_ui64v(*args)
      raise FunctionUnavailableError.new("glGetQueryObjectui64v") unless get_query_object_ui64v?

      get_query_object_ui64v!(*args)
    end

    # Checks if the function "glGetQueryObjectui64v" is loaded.
    @[AlwaysInline]
    def get_query_object_ui64v? : Bool
      !@addr_get_query_object_ui64v.null?
    end

    # Invokes glVertexAttribDivisor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_divisor!(*args)
      addr = @addr_vertex_attrib_divisor
      proc = Procs.vertex_attrib_divisor(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribDivisor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_divisor(*args)
      raise FunctionUnavailableError.new("glVertexAttribDivisor") unless vertex_attrib_divisor?

      vertex_attrib_divisor!(*args)
    end

    # Checks if the function "glVertexAttribDivisor" is loaded.
    @[AlwaysInline]
    def vertex_attrib_divisor? : Bool
      !@addr_vertex_attrib_divisor.null?
    end

    # Invokes glVertexAttribP1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_1ui!(*args)
      addr = @addr_vertex_attrib_p_1ui
      proc = Procs.vertex_attrib_p_1ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_1ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP1ui") unless vertex_attrib_p_1ui?

      vertex_attrib_p_1ui!(*args)
    end

    # Checks if the function "glVertexAttribP1ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_1ui? : Bool
      !@addr_vertex_attrib_p_1ui.null?
    end

    # Invokes glVertexAttribP1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_1uiv!(*args)
      addr = @addr_vertex_attrib_p_1uiv
      proc = Procs.vertex_attrib_p_1uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_1uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP1uiv") unless vertex_attrib_p_1uiv?

      vertex_attrib_p_1uiv!(*args)
    end

    # Checks if the function "glVertexAttribP1uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_1uiv? : Bool
      !@addr_vertex_attrib_p_1uiv.null?
    end

    # Invokes glVertexAttribP2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_2ui!(*args)
      addr = @addr_vertex_attrib_p_2ui
      proc = Procs.vertex_attrib_p_2ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_2ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP2ui") unless vertex_attrib_p_2ui?

      vertex_attrib_p_2ui!(*args)
    end

    # Checks if the function "glVertexAttribP2ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_2ui? : Bool
      !@addr_vertex_attrib_p_2ui.null?
    end

    # Invokes glVertexAttribP2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_2uiv!(*args)
      addr = @addr_vertex_attrib_p_2uiv
      proc = Procs.vertex_attrib_p_2uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_2uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP2uiv") unless vertex_attrib_p_2uiv?

      vertex_attrib_p_2uiv!(*args)
    end

    # Checks if the function "glVertexAttribP2uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_2uiv? : Bool
      !@addr_vertex_attrib_p_2uiv.null?
    end

    # Invokes glVertexAttribP3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_3ui!(*args)
      addr = @addr_vertex_attrib_p_3ui
      proc = Procs.vertex_attrib_p_3ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_3ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP3ui") unless vertex_attrib_p_3ui?

      vertex_attrib_p_3ui!(*args)
    end

    # Checks if the function "glVertexAttribP3ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_3ui? : Bool
      !@addr_vertex_attrib_p_3ui.null?
    end

    # Invokes glVertexAttribP3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_3uiv!(*args)
      addr = @addr_vertex_attrib_p_3uiv
      proc = Procs.vertex_attrib_p_3uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_3uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP3uiv") unless vertex_attrib_p_3uiv?

      vertex_attrib_p_3uiv!(*args)
    end

    # Checks if the function "glVertexAttribP3uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_3uiv? : Bool
      !@addr_vertex_attrib_p_3uiv.null?
    end

    # Invokes glVertexAttribP4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_4ui!(*args)
      addr = @addr_vertex_attrib_p_4ui
      proc = Procs.vertex_attrib_p_4ui(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_4ui(*args)
      raise FunctionUnavailableError.new("glVertexAttribP4ui") unless vertex_attrib_p_4ui?

      vertex_attrib_p_4ui!(*args)
    end

    # Checks if the function "glVertexAttribP4ui" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_4ui? : Bool
      !@addr_vertex_attrib_p_4ui.null?
    end

    # Invokes glVertexAttribP4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_p_4uiv!(*args)
      addr = @addr_vertex_attrib_p_4uiv
      proc = Procs.vertex_attrib_p_4uiv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribP4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_p_4uiv(*args)
      raise FunctionUnavailableError.new("glVertexAttribP4uiv") unless vertex_attrib_p_4uiv?

      vertex_attrib_p_4uiv!(*args)
    end

    # Checks if the function "glVertexAttribP4uiv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_p_4uiv? : Bool
      !@addr_vertex_attrib_p_4uiv.null?
    end

    # Invokes glMinSampleShading.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def min_sample_shading!(*args)
      addr = @addr_min_sample_shading
      proc = Procs.min_sample_shading(addr)
      proc.call(*args)
    end

    # Invokes glMinSampleShading.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def min_sample_shading(*args)
      raise FunctionUnavailableError.new("glMinSampleShading") unless min_sample_shading?

      min_sample_shading!(*args)
    end

    # Checks if the function "glMinSampleShading" is loaded.
    @[AlwaysInline]
    def min_sample_shading? : Bool
      !@addr_min_sample_shading.null?
    end

    # Invokes glBlendEquationi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation_i!(*args)
      addr = @addr_blend_equation_i
      proc = Procs.blend_equation_i(addr)
      proc.call(*args)
    end

    # Invokes glBlendEquationi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation_i(*args)
      raise FunctionUnavailableError.new("glBlendEquationi") unless blend_equation_i?

      blend_equation_i!(*args)
    end

    # Checks if the function "glBlendEquationi" is loaded.
    @[AlwaysInline]
    def blend_equation_i? : Bool
      !@addr_blend_equation_i.null?
    end

    # Invokes glBlendEquationSeparatei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_equation_separate_i!(*args)
      addr = @addr_blend_equation_separate_i
      proc = Procs.blend_equation_separate_i(addr)
      proc.call(*args)
    end

    # Invokes glBlendEquationSeparatei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_equation_separate_i(*args)
      raise FunctionUnavailableError.new("glBlendEquationSeparatei") unless blend_equation_separate_i?

      blend_equation_separate_i!(*args)
    end

    # Checks if the function "glBlendEquationSeparatei" is loaded.
    @[AlwaysInline]
    def blend_equation_separate_i? : Bool
      !@addr_blend_equation_separate_i.null?
    end

    # Invokes glBlendFunci.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func_i!(*args)
      addr = @addr_blend_func_i
      proc = Procs.blend_func_i(addr)
      proc.call(*args)
    end

    # Invokes glBlendFunci.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func_i(*args)
      raise FunctionUnavailableError.new("glBlendFunci") unless blend_func_i?

      blend_func_i!(*args)
    end

    # Checks if the function "glBlendFunci" is loaded.
    @[AlwaysInline]
    def blend_func_i? : Bool
      !@addr_blend_func_i.null?
    end

    # Invokes glBlendFuncSeparatei.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blend_func_separate_i!(*args)
      addr = @addr_blend_func_separate_i
      proc = Procs.blend_func_separate_i(addr)
      proc.call(*args)
    end

    # Invokes glBlendFuncSeparatei.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blend_func_separate_i(*args)
      raise FunctionUnavailableError.new("glBlendFuncSeparatei") unless blend_func_separate_i?

      blend_func_separate_i!(*args)
    end

    # Checks if the function "glBlendFuncSeparatei" is loaded.
    @[AlwaysInline]
    def blend_func_separate_i? : Bool
      !@addr_blend_func_separate_i.null?
    end

    # Invokes glDrawArraysIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays_indirect!(*args)
      addr = @addr_draw_arrays_indirect
      proc = Procs.draw_arrays_indirect(addr)
      proc.call(*args)
    end

    # Invokes glDrawArraysIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays_indirect(*args)
      raise FunctionUnavailableError.new("glDrawArraysIndirect") unless draw_arrays_indirect?

      draw_arrays_indirect!(*args)
    end

    # Checks if the function "glDrawArraysIndirect" is loaded.
    @[AlwaysInline]
    def draw_arrays_indirect? : Bool
      !@addr_draw_arrays_indirect.null?
    end

    # Invokes glDrawElementsIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_indirect!(*args)
      addr = @addr_draw_elements_indirect
      proc = Procs.draw_elements_indirect(addr)
      proc.call(*args)
    end

    # Invokes glDrawElementsIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_indirect(*args)
      raise FunctionUnavailableError.new("glDrawElementsIndirect") unless draw_elements_indirect?

      draw_elements_indirect!(*args)
    end

    # Checks if the function "glDrawElementsIndirect" is loaded.
    @[AlwaysInline]
    def draw_elements_indirect? : Bool
      !@addr_draw_elements_indirect.null?
    end

    # Invokes glUniform1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1d!(*args)
      addr = @addr_uniform_1d
      proc = Procs.uniform_1d(addr)
      proc.call(*args)
    end

    # Invokes glUniform1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1d(*args)
      raise FunctionUnavailableError.new("glUniform1d") unless uniform_1d?

      uniform_1d!(*args)
    end

    # Checks if the function "glUniform1d" is loaded.
    @[AlwaysInline]
    def uniform_1d? : Bool
      !@addr_uniform_1d.null?
    end

    # Invokes glUniform2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2d!(*args)
      addr = @addr_uniform_2d
      proc = Procs.uniform_2d(addr)
      proc.call(*args)
    end

    # Invokes glUniform2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2d(*args)
      raise FunctionUnavailableError.new("glUniform2d") unless uniform_2d?

      uniform_2d!(*args)
    end

    # Checks if the function "glUniform2d" is loaded.
    @[AlwaysInline]
    def uniform_2d? : Bool
      !@addr_uniform_2d.null?
    end

    # Invokes glUniform3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3d!(*args)
      addr = @addr_uniform_3d
      proc = Procs.uniform_3d(addr)
      proc.call(*args)
    end

    # Invokes glUniform3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3d(*args)
      raise FunctionUnavailableError.new("glUniform3d") unless uniform_3d?

      uniform_3d!(*args)
    end

    # Checks if the function "glUniform3d" is loaded.
    @[AlwaysInline]
    def uniform_3d? : Bool
      !@addr_uniform_3d.null?
    end

    # Invokes glUniform4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4d!(*args)
      addr = @addr_uniform_4d
      proc = Procs.uniform_4d(addr)
      proc.call(*args)
    end

    # Invokes glUniform4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4d(*args)
      raise FunctionUnavailableError.new("glUniform4d") unless uniform_4d?

      uniform_4d!(*args)
    end

    # Checks if the function "glUniform4d" is loaded.
    @[AlwaysInline]
    def uniform_4d? : Bool
      !@addr_uniform_4d.null?
    end

    # Invokes glUniform1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_1dv!(*args)
      addr = @addr_uniform_1dv
      proc = Procs.uniform_1dv(addr)
      proc.call(*args)
    end

    # Invokes glUniform1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_1dv(*args)
      raise FunctionUnavailableError.new("glUniform1dv") unless uniform_1dv?

      uniform_1dv!(*args)
    end

    # Checks if the function "glUniform1dv" is loaded.
    @[AlwaysInline]
    def uniform_1dv? : Bool
      !@addr_uniform_1dv.null?
    end

    # Invokes glUniform2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_2dv!(*args)
      addr = @addr_uniform_2dv
      proc = Procs.uniform_2dv(addr)
      proc.call(*args)
    end

    # Invokes glUniform2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_2dv(*args)
      raise FunctionUnavailableError.new("glUniform2dv") unless uniform_2dv?

      uniform_2dv!(*args)
    end

    # Checks if the function "glUniform2dv" is loaded.
    @[AlwaysInline]
    def uniform_2dv? : Bool
      !@addr_uniform_2dv.null?
    end

    # Invokes glUniform3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_3dv!(*args)
      addr = @addr_uniform_3dv
      proc = Procs.uniform_3dv(addr)
      proc.call(*args)
    end

    # Invokes glUniform3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_3dv(*args)
      raise FunctionUnavailableError.new("glUniform3dv") unless uniform_3dv?

      uniform_3dv!(*args)
    end

    # Checks if the function "glUniform3dv" is loaded.
    @[AlwaysInline]
    def uniform_3dv? : Bool
      !@addr_uniform_3dv.null?
    end

    # Invokes glUniform4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_4dv!(*args)
      addr = @addr_uniform_4dv
      proc = Procs.uniform_4dv(addr)
      proc.call(*args)
    end

    # Invokes glUniform4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_4dv(*args)
      raise FunctionUnavailableError.new("glUniform4dv") unless uniform_4dv?

      uniform_4dv!(*args)
    end

    # Checks if the function "glUniform4dv" is loaded.
    @[AlwaysInline]
    def uniform_4dv? : Bool
      !@addr_uniform_4dv.null?
    end

    # Invokes glUniformMatrix2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2_dv!(*args)
      addr = @addr_uniform_matrix2_dv
      proc = Procs.uniform_matrix2_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2dv") unless uniform_matrix2_dv?

      uniform_matrix2_dv!(*args)
    end

    # Checks if the function "glUniformMatrix2dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2_dv? : Bool
      !@addr_uniform_matrix2_dv.null?
    end

    # Invokes glUniformMatrix3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3_dv!(*args)
      addr = @addr_uniform_matrix3_dv
      proc = Procs.uniform_matrix3_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3dv") unless uniform_matrix3_dv?

      uniform_matrix3_dv!(*args)
    end

    # Checks if the function "glUniformMatrix3dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3_dv? : Bool
      !@addr_uniform_matrix3_dv.null?
    end

    # Invokes glUniformMatrix4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4_dv!(*args)
      addr = @addr_uniform_matrix4_dv
      proc = Procs.uniform_matrix4_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4dv") unless uniform_matrix4_dv?

      uniform_matrix4_dv!(*args)
    end

    # Checks if the function "glUniformMatrix4dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4_dv? : Bool
      !@addr_uniform_matrix4_dv.null?
    end

    # Invokes glUniformMatrix2x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x3_dv!(*args)
      addr = @addr_uniform_matrix2x3_dv
      proc = Procs.uniform_matrix2x3_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix2x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x3_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x3dv") unless uniform_matrix2x3_dv?

      uniform_matrix2x3_dv!(*args)
    end

    # Checks if the function "glUniformMatrix2x3dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x3_dv? : Bool
      !@addr_uniform_matrix2x3_dv.null?
    end

    # Invokes glUniformMatrix2x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix2x4_dv!(*args)
      addr = @addr_uniform_matrix2x4_dv
      proc = Procs.uniform_matrix2x4_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix2x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix2x4_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix2x4dv") unless uniform_matrix2x4_dv?

      uniform_matrix2x4_dv!(*args)
    end

    # Checks if the function "glUniformMatrix2x4dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix2x4_dv? : Bool
      !@addr_uniform_matrix2x4_dv.null?
    end

    # Invokes glUniformMatrix3x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x2_dv!(*args)
      addr = @addr_uniform_matrix3x2_dv
      proc = Procs.uniform_matrix3x2_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix3x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x2_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x2dv") unless uniform_matrix3x2_dv?

      uniform_matrix3x2_dv!(*args)
    end

    # Checks if the function "glUniformMatrix3x2dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x2_dv? : Bool
      !@addr_uniform_matrix3x2_dv.null?
    end

    # Invokes glUniformMatrix3x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix3x4_dv!(*args)
      addr = @addr_uniform_matrix3x4_dv
      proc = Procs.uniform_matrix3x4_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix3x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix3x4_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix3x4dv") unless uniform_matrix3x4_dv?

      uniform_matrix3x4_dv!(*args)
    end

    # Checks if the function "glUniformMatrix3x4dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix3x4_dv? : Bool
      !@addr_uniform_matrix3x4_dv.null?
    end

    # Invokes glUniformMatrix4x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x2_dv!(*args)
      addr = @addr_uniform_matrix4x2_dv
      proc = Procs.uniform_matrix4x2_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix4x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x2_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x2dv") unless uniform_matrix4x2_dv?

      uniform_matrix4x2_dv!(*args)
    end

    # Checks if the function "glUniformMatrix4x2dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x2_dv? : Bool
      !@addr_uniform_matrix4x2_dv.null?
    end

    # Invokes glUniformMatrix4x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_matrix4x3_dv!(*args)
      addr = @addr_uniform_matrix4x3_dv
      proc = Procs.uniform_matrix4x3_dv(addr)
      proc.call(*args)
    end

    # Invokes glUniformMatrix4x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_matrix4x3_dv(*args)
      raise FunctionUnavailableError.new("glUniformMatrix4x3dv") unless uniform_matrix4x3_dv?

      uniform_matrix4x3_dv!(*args)
    end

    # Checks if the function "glUniformMatrix4x3dv" is loaded.
    @[AlwaysInline]
    def uniform_matrix4x3_dv? : Bool
      !@addr_uniform_matrix4x3_dv.null?
    end

    # Invokes glGetUniformdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_dv!(*args)
      addr = @addr_get_uniform_dv
      proc = Procs.get_uniform_dv(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_dv(*args)
      raise FunctionUnavailableError.new("glGetUniformdv") unless get_uniform_dv?

      get_uniform_dv!(*args)
    end

    # Checks if the function "glGetUniformdv" is loaded.
    @[AlwaysInline]
    def get_uniform_dv? : Bool
      !@addr_get_uniform_dv.null?
    end

    # Invokes glGetSubroutineUniformLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_subroutine_uniform_location!(*args)
      addr = @addr_get_subroutine_uniform_location
      proc = Procs.get_subroutine_uniform_location(addr)
      proc.call(*args)
    end

    # Invokes glGetSubroutineUniformLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_subroutine_uniform_location(*args)
      raise FunctionUnavailableError.new("glGetSubroutineUniformLocation") unless get_subroutine_uniform_location?

      get_subroutine_uniform_location!(*args)
    end

    # Checks if the function "glGetSubroutineUniformLocation" is loaded.
    @[AlwaysInline]
    def get_subroutine_uniform_location? : Bool
      !@addr_get_subroutine_uniform_location.null?
    end

    # Invokes glGetSubroutineIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_subroutine_index!(*args)
      addr = @addr_get_subroutine_index
      proc = Procs.get_subroutine_index(addr)
      proc.call(*args)
    end

    # Invokes glGetSubroutineIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_subroutine_index(*args)
      raise FunctionUnavailableError.new("glGetSubroutineIndex") unless get_subroutine_index?

      get_subroutine_index!(*args)
    end

    # Checks if the function "glGetSubroutineIndex" is loaded.
    @[AlwaysInline]
    def get_subroutine_index? : Bool
      !@addr_get_subroutine_index.null?
    end

    # Invokes glGetActiveSubroutineUniformiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_subroutine_uniform_iv!(*args)
      addr = @addr_get_active_subroutine_uniform_iv
      proc = Procs.get_active_subroutine_uniform_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveSubroutineUniformiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_subroutine_uniform_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveSubroutineUniformiv") unless get_active_subroutine_uniform_iv?

      get_active_subroutine_uniform_iv!(*args)
    end

    # Checks if the function "glGetActiveSubroutineUniformiv" is loaded.
    @[AlwaysInline]
    def get_active_subroutine_uniform_iv? : Bool
      !@addr_get_active_subroutine_uniform_iv.null?
    end

    # Invokes glGetActiveSubroutineUniformName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_subroutine_uniform_name!(*args)
      addr = @addr_get_active_subroutine_uniform_name
      proc = Procs.get_active_subroutine_uniform_name(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveSubroutineUniformName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_subroutine_uniform_name(*args)
      raise FunctionUnavailableError.new("glGetActiveSubroutineUniformName") unless get_active_subroutine_uniform_name?

      get_active_subroutine_uniform_name!(*args)
    end

    # Checks if the function "glGetActiveSubroutineUniformName" is loaded.
    @[AlwaysInline]
    def get_active_subroutine_uniform_name? : Bool
      !@addr_get_active_subroutine_uniform_name.null?
    end

    # Invokes glGetActiveSubroutineName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_subroutine_name!(*args)
      addr = @addr_get_active_subroutine_name
      proc = Procs.get_active_subroutine_name(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveSubroutineName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_subroutine_name(*args)
      raise FunctionUnavailableError.new("glGetActiveSubroutineName") unless get_active_subroutine_name?

      get_active_subroutine_name!(*args)
    end

    # Checks if the function "glGetActiveSubroutineName" is loaded.
    @[AlwaysInline]
    def get_active_subroutine_name? : Bool
      !@addr_get_active_subroutine_name.null?
    end

    # Invokes glUniformSubroutinesuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def uniform_subroutines_uiv!(*args)
      addr = @addr_uniform_subroutines_uiv
      proc = Procs.uniform_subroutines_uiv(addr)
      proc.call(*args)
    end

    # Invokes glUniformSubroutinesuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def uniform_subroutines_uiv(*args)
      raise FunctionUnavailableError.new("glUniformSubroutinesuiv") unless uniform_subroutines_uiv?

      uniform_subroutines_uiv!(*args)
    end

    # Checks if the function "glUniformSubroutinesuiv" is loaded.
    @[AlwaysInline]
    def uniform_subroutines_uiv? : Bool
      !@addr_uniform_subroutines_uiv.null?
    end

    # Invokes glGetUniformSubroutineuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_uniform_subroutine_uiv!(*args)
      addr = @addr_get_uniform_subroutine_uiv
      proc = Procs.get_uniform_subroutine_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetUniformSubroutineuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_uniform_subroutine_uiv(*args)
      raise FunctionUnavailableError.new("glGetUniformSubroutineuiv") unless get_uniform_subroutine_uiv?

      get_uniform_subroutine_uiv!(*args)
    end

    # Checks if the function "glGetUniformSubroutineuiv" is loaded.
    @[AlwaysInline]
    def get_uniform_subroutine_uiv? : Bool
      !@addr_get_uniform_subroutine_uiv.null?
    end

    # Invokes glGetProgramStageiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_stage_iv!(*args)
      addr = @addr_get_program_stage_iv
      proc = Procs.get_program_stage_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramStageiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_stage_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramStageiv") unless get_program_stage_iv?

      get_program_stage_iv!(*args)
    end

    # Checks if the function "glGetProgramStageiv" is loaded.
    @[AlwaysInline]
    def get_program_stage_iv? : Bool
      !@addr_get_program_stage_iv.null?
    end

    # Invokes glPatchParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def patch_parameter_i!(*args)
      addr = @addr_patch_parameter_i
      proc = Procs.patch_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glPatchParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def patch_parameter_i(*args)
      raise FunctionUnavailableError.new("glPatchParameteri") unless patch_parameter_i?

      patch_parameter_i!(*args)
    end

    # Checks if the function "glPatchParameteri" is loaded.
    @[AlwaysInline]
    def patch_parameter_i? : Bool
      !@addr_patch_parameter_i.null?
    end

    # Invokes glPatchParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def patch_parameter_fv!(*args)
      addr = @addr_patch_parameter_fv
      proc = Procs.patch_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glPatchParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def patch_parameter_fv(*args)
      raise FunctionUnavailableError.new("glPatchParameterfv") unless patch_parameter_fv?

      patch_parameter_fv!(*args)
    end

    # Checks if the function "glPatchParameterfv" is loaded.
    @[AlwaysInline]
    def patch_parameter_fv? : Bool
      !@addr_patch_parameter_fv.null?
    end

    # Invokes glBindTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_transform_feedback!(*args)
      addr = @addr_bind_transform_feedback
      proc = Procs.bind_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glBindTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_transform_feedback(*args)
      raise FunctionUnavailableError.new("glBindTransformFeedback") unless bind_transform_feedback?

      bind_transform_feedback!(*args)
    end

    # Checks if the function "glBindTransformFeedback" is loaded.
    @[AlwaysInline]
    def bind_transform_feedback? : Bool
      !@addr_bind_transform_feedback.null?
    end

    # Invokes glDeleteTransformFeedbacks.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_transform_feedbacks!(*args)
      addr = @addr_delete_transform_feedbacks
      proc = Procs.delete_transform_feedbacks(addr)
      proc.call(*args)
    end

    # Invokes glDeleteTransformFeedbacks.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_transform_feedbacks(*args)
      raise FunctionUnavailableError.new("glDeleteTransformFeedbacks") unless delete_transform_feedbacks?

      delete_transform_feedbacks!(*args)
    end

    # Checks if the function "glDeleteTransformFeedbacks" is loaded.
    @[AlwaysInline]
    def delete_transform_feedbacks? : Bool
      !@addr_delete_transform_feedbacks.null?
    end

    # Invokes glGenTransformFeedbacks.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_transform_feedbacks!(*args)
      addr = @addr_gen_transform_feedbacks
      proc = Procs.gen_transform_feedbacks(addr)
      proc.call(*args)
    end

    # Invokes glGenTransformFeedbacks.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_transform_feedbacks(*args)
      raise FunctionUnavailableError.new("glGenTransformFeedbacks") unless gen_transform_feedbacks?

      gen_transform_feedbacks!(*args)
    end

    # Checks if the function "glGenTransformFeedbacks" is loaded.
    @[AlwaysInline]
    def gen_transform_feedbacks? : Bool
      !@addr_gen_transform_feedbacks.null?
    end

    # Invokes glIsTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_transform_feedback!(*args)
      addr = @addr_is_transform_feedback
      proc = Procs.is_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glIsTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_transform_feedback(*args)
      raise FunctionUnavailableError.new("glIsTransformFeedback") unless is_transform_feedback?

      is_transform_feedback!(*args)
    end

    # Checks if the function "glIsTransformFeedback" is loaded.
    @[AlwaysInline]
    def is_transform_feedback? : Bool
      !@addr_is_transform_feedback.null?
    end

    # Invokes glPauseTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pause_transform_feedback!(*args)
      addr = @addr_pause_transform_feedback
      proc = Procs.pause_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glPauseTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pause_transform_feedback(*args)
      raise FunctionUnavailableError.new("glPauseTransformFeedback") unless pause_transform_feedback?

      pause_transform_feedback!(*args)
    end

    # Checks if the function "glPauseTransformFeedback" is loaded.
    @[AlwaysInline]
    def pause_transform_feedback? : Bool
      !@addr_pause_transform_feedback.null?
    end

    # Invokes glResumeTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def resume_transform_feedback!(*args)
      addr = @addr_resume_transform_feedback
      proc = Procs.resume_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glResumeTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def resume_transform_feedback(*args)
      raise FunctionUnavailableError.new("glResumeTransformFeedback") unless resume_transform_feedback?

      resume_transform_feedback!(*args)
    end

    # Checks if the function "glResumeTransformFeedback" is loaded.
    @[AlwaysInline]
    def resume_transform_feedback? : Bool
      !@addr_resume_transform_feedback.null?
    end

    # Invokes glDrawTransformFeedback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_transform_feedback!(*args)
      addr = @addr_draw_transform_feedback
      proc = Procs.draw_transform_feedback(addr)
      proc.call(*args)
    end

    # Invokes glDrawTransformFeedback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_transform_feedback(*args)
      raise FunctionUnavailableError.new("glDrawTransformFeedback") unless draw_transform_feedback?

      draw_transform_feedback!(*args)
    end

    # Checks if the function "glDrawTransformFeedback" is loaded.
    @[AlwaysInline]
    def draw_transform_feedback? : Bool
      !@addr_draw_transform_feedback.null?
    end

    # Invokes glDrawTransformFeedbackStream.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_transform_feedback_stream!(*args)
      addr = @addr_draw_transform_feedback_stream
      proc = Procs.draw_transform_feedback_stream(addr)
      proc.call(*args)
    end

    # Invokes glDrawTransformFeedbackStream.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_transform_feedback_stream(*args)
      raise FunctionUnavailableError.new("glDrawTransformFeedbackStream") unless draw_transform_feedback_stream?

      draw_transform_feedback_stream!(*args)
    end

    # Checks if the function "glDrawTransformFeedbackStream" is loaded.
    @[AlwaysInline]
    def draw_transform_feedback_stream? : Bool
      !@addr_draw_transform_feedback_stream.null?
    end

    # Invokes glBeginQueryIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def begin_query_indexed!(*args)
      addr = @addr_begin_query_indexed
      proc = Procs.begin_query_indexed(addr)
      proc.call(*args)
    end

    # Invokes glBeginQueryIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def begin_query_indexed(*args)
      raise FunctionUnavailableError.new("glBeginQueryIndexed") unless begin_query_indexed?

      begin_query_indexed!(*args)
    end

    # Checks if the function "glBeginQueryIndexed" is loaded.
    @[AlwaysInline]
    def begin_query_indexed? : Bool
      !@addr_begin_query_indexed.null?
    end

    # Invokes glEndQueryIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def end_query_indexed!(*args)
      addr = @addr_end_query_indexed
      proc = Procs.end_query_indexed(addr)
      proc.call(*args)
    end

    # Invokes glEndQueryIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def end_query_indexed(*args)
      raise FunctionUnavailableError.new("glEndQueryIndexed") unless end_query_indexed?

      end_query_indexed!(*args)
    end

    # Checks if the function "glEndQueryIndexed" is loaded.
    @[AlwaysInline]
    def end_query_indexed? : Bool
      !@addr_end_query_indexed.null?
    end

    # Invokes glGetQueryIndexediv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_indexed_iv!(*args)
      addr = @addr_get_query_indexed_iv
      proc = Procs.get_query_indexed_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryIndexediv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_indexed_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryIndexediv") unless get_query_indexed_iv?

      get_query_indexed_iv!(*args)
    end

    # Checks if the function "glGetQueryIndexediv" is loaded.
    @[AlwaysInline]
    def get_query_indexed_iv? : Bool
      !@addr_get_query_indexed_iv.null?
    end

    # Invokes glReleaseShaderCompiler.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def release_shader_compiler!(*args)
      addr = @addr_release_shader_compiler
      proc = Procs.release_shader_compiler(addr)
      proc.call(*args)
    end

    # Invokes glReleaseShaderCompiler.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def release_shader_compiler(*args)
      raise FunctionUnavailableError.new("glReleaseShaderCompiler") unless release_shader_compiler?

      release_shader_compiler!(*args)
    end

    # Checks if the function "glReleaseShaderCompiler" is loaded.
    @[AlwaysInline]
    def release_shader_compiler? : Bool
      !@addr_release_shader_compiler.null?
    end

    # Invokes glShaderBinary.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shader_binary!(*args)
      addr = @addr_shader_binary
      proc = Procs.shader_binary(addr)
      proc.call(*args)
    end

    # Invokes glShaderBinary.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shader_binary(*args)
      raise FunctionUnavailableError.new("glShaderBinary") unless shader_binary?

      shader_binary!(*args)
    end

    # Checks if the function "glShaderBinary" is loaded.
    @[AlwaysInline]
    def shader_binary? : Bool
      !@addr_shader_binary.null?
    end

    # Invokes glGetShaderPrecisionFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_shader_precision_format!(*args)
      addr = @addr_get_shader_precision_format
      proc = Procs.get_shader_precision_format(addr)
      proc.call(*args)
    end

    # Invokes glGetShaderPrecisionFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_shader_precision_format(*args)
      raise FunctionUnavailableError.new("glGetShaderPrecisionFormat") unless get_shader_precision_format?

      get_shader_precision_format!(*args)
    end

    # Checks if the function "glGetShaderPrecisionFormat" is loaded.
    @[AlwaysInline]
    def get_shader_precision_format? : Bool
      !@addr_get_shader_precision_format.null?
    end

    # Invokes glDepthRangef.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range_f!(*args)
      addr = @addr_depth_range_f
      proc = Procs.depth_range_f(addr)
      proc.call(*args)
    end

    # Invokes glDepthRangef.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range_f(*args)
      raise FunctionUnavailableError.new("glDepthRangef") unless depth_range_f?

      depth_range_f!(*args)
    end

    # Checks if the function "glDepthRangef" is loaded.
    @[AlwaysInline]
    def depth_range_f? : Bool
      !@addr_depth_range_f.null?
    end

    # Invokes glClearDepthf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_depth_f!(*args)
      addr = @addr_clear_depth_f
      proc = Procs.clear_depth_f(addr)
      proc.call(*args)
    end

    # Invokes glClearDepthf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_depth_f(*args)
      raise FunctionUnavailableError.new("glClearDepthf") unless clear_depth_f?

      clear_depth_f!(*args)
    end

    # Checks if the function "glClearDepthf" is loaded.
    @[AlwaysInline]
    def clear_depth_f? : Bool
      !@addr_clear_depth_f.null?
    end

    # Invokes glGetProgramBinary.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_binary!(*args)
      addr = @addr_get_program_binary
      proc = Procs.get_program_binary(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramBinary.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_binary(*args)
      raise FunctionUnavailableError.new("glGetProgramBinary") unless get_program_binary?

      get_program_binary!(*args)
    end

    # Checks if the function "glGetProgramBinary" is loaded.
    @[AlwaysInline]
    def get_program_binary? : Bool
      !@addr_get_program_binary.null?
    end

    # Invokes glProgramBinary.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_binary!(*args)
      addr = @addr_program_binary
      proc = Procs.program_binary(addr)
      proc.call(*args)
    end

    # Invokes glProgramBinary.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_binary(*args)
      raise FunctionUnavailableError.new("glProgramBinary") unless program_binary?

      program_binary!(*args)
    end

    # Checks if the function "glProgramBinary" is loaded.
    @[AlwaysInline]
    def program_binary? : Bool
      !@addr_program_binary.null?
    end

    # Invokes glProgramParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_parameter_i!(*args)
      addr = @addr_program_parameter_i
      proc = Procs.program_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glProgramParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_parameter_i(*args)
      raise FunctionUnavailableError.new("glProgramParameteri") unless program_parameter_i?

      program_parameter_i!(*args)
    end

    # Checks if the function "glProgramParameteri" is loaded.
    @[AlwaysInline]
    def program_parameter_i? : Bool
      !@addr_program_parameter_i.null?
    end

    # Invokes glUseProgramStages.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def use_program_stages!(*args)
      addr = @addr_use_program_stages
      proc = Procs.use_program_stages(addr)
      proc.call(*args)
    end

    # Invokes glUseProgramStages.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def use_program_stages(*args)
      raise FunctionUnavailableError.new("glUseProgramStages") unless use_program_stages?

      use_program_stages!(*args)
    end

    # Checks if the function "glUseProgramStages" is loaded.
    @[AlwaysInline]
    def use_program_stages? : Bool
      !@addr_use_program_stages.null?
    end

    # Invokes glActiveShaderProgram.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def active_shader_program!(*args)
      addr = @addr_active_shader_program
      proc = Procs.active_shader_program(addr)
      proc.call(*args)
    end

    # Invokes glActiveShaderProgram.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def active_shader_program(*args)
      raise FunctionUnavailableError.new("glActiveShaderProgram") unless active_shader_program?

      active_shader_program!(*args)
    end

    # Checks if the function "glActiveShaderProgram" is loaded.
    @[AlwaysInline]
    def active_shader_program? : Bool
      !@addr_active_shader_program.null?
    end

    # Invokes glCreateShaderProgramv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_shader_program_v!(*args)
      addr = @addr_create_shader_program_v
      proc = Procs.create_shader_program_v(addr)
      proc.call(*args)
    end

    # Invokes glCreateShaderProgramv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_shader_program_v(*args)
      raise FunctionUnavailableError.new("glCreateShaderProgramv") unless create_shader_program_v?

      create_shader_program_v!(*args)
    end

    # Checks if the function "glCreateShaderProgramv" is loaded.
    @[AlwaysInline]
    def create_shader_program_v? : Bool
      !@addr_create_shader_program_v.null?
    end

    # Invokes glBindProgramPipeline.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_program_pipeline!(*args)
      addr = @addr_bind_program_pipeline
      proc = Procs.bind_program_pipeline(addr)
      proc.call(*args)
    end

    # Invokes glBindProgramPipeline.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_program_pipeline(*args)
      raise FunctionUnavailableError.new("glBindProgramPipeline") unless bind_program_pipeline?

      bind_program_pipeline!(*args)
    end

    # Checks if the function "glBindProgramPipeline" is loaded.
    @[AlwaysInline]
    def bind_program_pipeline? : Bool
      !@addr_bind_program_pipeline.null?
    end

    # Invokes glDeleteProgramPipelines.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def delete_program_pipelines!(*args)
      addr = @addr_delete_program_pipelines
      proc = Procs.delete_program_pipelines(addr)
      proc.call(*args)
    end

    # Invokes glDeleteProgramPipelines.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def delete_program_pipelines(*args)
      raise FunctionUnavailableError.new("glDeleteProgramPipelines") unless delete_program_pipelines?

      delete_program_pipelines!(*args)
    end

    # Checks if the function "glDeleteProgramPipelines" is loaded.
    @[AlwaysInline]
    def delete_program_pipelines? : Bool
      !@addr_delete_program_pipelines.null?
    end

    # Invokes glGenProgramPipelines.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def gen_program_pipelines!(*args)
      addr = @addr_gen_program_pipelines
      proc = Procs.gen_program_pipelines(addr)
      proc.call(*args)
    end

    # Invokes glGenProgramPipelines.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def gen_program_pipelines(*args)
      raise FunctionUnavailableError.new("glGenProgramPipelines") unless gen_program_pipelines?

      gen_program_pipelines!(*args)
    end

    # Checks if the function "glGenProgramPipelines" is loaded.
    @[AlwaysInline]
    def gen_program_pipelines? : Bool
      !@addr_gen_program_pipelines.null?
    end

    # Invokes glIsProgramPipeline.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def is_program_pipeline!(*args)
      addr = @addr_is_program_pipeline
      proc = Procs.is_program_pipeline(addr)
      proc.call(*args)
    end

    # Invokes glIsProgramPipeline.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def is_program_pipeline(*args)
      raise FunctionUnavailableError.new("glIsProgramPipeline") unless is_program_pipeline?

      is_program_pipeline!(*args)
    end

    # Checks if the function "glIsProgramPipeline" is loaded.
    @[AlwaysInline]
    def is_program_pipeline? : Bool
      !@addr_is_program_pipeline.null?
    end

    # Invokes glGetProgramPipelineiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_pipeline_iv!(*args)
      addr = @addr_get_program_pipeline_iv
      proc = Procs.get_program_pipeline_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramPipelineiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_pipeline_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramPipelineiv") unless get_program_pipeline_iv?

      get_program_pipeline_iv!(*args)
    end

    # Checks if the function "glGetProgramPipelineiv" is loaded.
    @[AlwaysInline]
    def get_program_pipeline_iv? : Bool
      !@addr_get_program_pipeline_iv.null?
    end

    # Invokes glProgramUniform1i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1i!(*args)
      addr = @addr_program_uniform_1i
      proc = Procs.program_uniform_1i(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1i(*args)
      raise FunctionUnavailableError.new("glProgramUniform1i") unless program_uniform_1i?

      program_uniform_1i!(*args)
    end

    # Checks if the function "glProgramUniform1i" is loaded.
    @[AlwaysInline]
    def program_uniform_1i? : Bool
      !@addr_program_uniform_1i.null?
    end

    # Invokes glProgramUniform1iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1iv!(*args)
      addr = @addr_program_uniform_1iv
      proc = Procs.program_uniform_1iv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1iv") unless program_uniform_1iv?

      program_uniform_1iv!(*args)
    end

    # Checks if the function "glProgramUniform1iv" is loaded.
    @[AlwaysInline]
    def program_uniform_1iv? : Bool
      !@addr_program_uniform_1iv.null?
    end

    # Invokes glProgramUniform1f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1f!(*args)
      addr = @addr_program_uniform_1f
      proc = Procs.program_uniform_1f(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1f(*args)
      raise FunctionUnavailableError.new("glProgramUniform1f") unless program_uniform_1f?

      program_uniform_1f!(*args)
    end

    # Checks if the function "glProgramUniform1f" is loaded.
    @[AlwaysInline]
    def program_uniform_1f? : Bool
      !@addr_program_uniform_1f.null?
    end

    # Invokes glProgramUniform1fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1fv!(*args)
      addr = @addr_program_uniform_1fv
      proc = Procs.program_uniform_1fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1fv") unless program_uniform_1fv?

      program_uniform_1fv!(*args)
    end

    # Checks if the function "glProgramUniform1fv" is loaded.
    @[AlwaysInline]
    def program_uniform_1fv? : Bool
      !@addr_program_uniform_1fv.null?
    end

    # Invokes glProgramUniform1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1d!(*args)
      addr = @addr_program_uniform_1d
      proc = Procs.program_uniform_1d(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1d(*args)
      raise FunctionUnavailableError.new("glProgramUniform1d") unless program_uniform_1d?

      program_uniform_1d!(*args)
    end

    # Checks if the function "glProgramUniform1d" is loaded.
    @[AlwaysInline]
    def program_uniform_1d? : Bool
      !@addr_program_uniform_1d.null?
    end

    # Invokes glProgramUniform1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1dv!(*args)
      addr = @addr_program_uniform_1dv
      proc = Procs.program_uniform_1dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1dv") unless program_uniform_1dv?

      program_uniform_1dv!(*args)
    end

    # Checks if the function "glProgramUniform1dv" is loaded.
    @[AlwaysInline]
    def program_uniform_1dv? : Bool
      !@addr_program_uniform_1dv.null?
    end

    # Invokes glProgramUniform1ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1ui!(*args)
      addr = @addr_program_uniform_1ui
      proc = Procs.program_uniform_1ui(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform1ui") unless program_uniform_1ui?

      program_uniform_1ui!(*args)
    end

    # Checks if the function "glProgramUniform1ui" is loaded.
    @[AlwaysInline]
    def program_uniform_1ui? : Bool
      !@addr_program_uniform_1ui.null?
    end

    # Invokes glProgramUniform1uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_1uiv!(*args)
      addr = @addr_program_uniform_1uiv
      proc = Procs.program_uniform_1uiv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform1uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_1uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform1uiv") unless program_uniform_1uiv?

      program_uniform_1uiv!(*args)
    end

    # Checks if the function "glProgramUniform1uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_1uiv? : Bool
      !@addr_program_uniform_1uiv.null?
    end

    # Invokes glProgramUniform2i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2i!(*args)
      addr = @addr_program_uniform_2i
      proc = Procs.program_uniform_2i(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2i(*args)
      raise FunctionUnavailableError.new("glProgramUniform2i") unless program_uniform_2i?

      program_uniform_2i!(*args)
    end

    # Checks if the function "glProgramUniform2i" is loaded.
    @[AlwaysInline]
    def program_uniform_2i? : Bool
      !@addr_program_uniform_2i.null?
    end

    # Invokes glProgramUniform2iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2iv!(*args)
      addr = @addr_program_uniform_2iv
      proc = Procs.program_uniform_2iv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2iv") unless program_uniform_2iv?

      program_uniform_2iv!(*args)
    end

    # Checks if the function "glProgramUniform2iv" is loaded.
    @[AlwaysInline]
    def program_uniform_2iv? : Bool
      !@addr_program_uniform_2iv.null?
    end

    # Invokes glProgramUniform2f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2f!(*args)
      addr = @addr_program_uniform_2f
      proc = Procs.program_uniform_2f(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2f(*args)
      raise FunctionUnavailableError.new("glProgramUniform2f") unless program_uniform_2f?

      program_uniform_2f!(*args)
    end

    # Checks if the function "glProgramUniform2f" is loaded.
    @[AlwaysInline]
    def program_uniform_2f? : Bool
      !@addr_program_uniform_2f.null?
    end

    # Invokes glProgramUniform2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2fv!(*args)
      addr = @addr_program_uniform_2fv
      proc = Procs.program_uniform_2fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2fv") unless program_uniform_2fv?

      program_uniform_2fv!(*args)
    end

    # Checks if the function "glProgramUniform2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_2fv? : Bool
      !@addr_program_uniform_2fv.null?
    end

    # Invokes glProgramUniform2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2d!(*args)
      addr = @addr_program_uniform_2d
      proc = Procs.program_uniform_2d(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2d(*args)
      raise FunctionUnavailableError.new("glProgramUniform2d") unless program_uniform_2d?

      program_uniform_2d!(*args)
    end

    # Checks if the function "glProgramUniform2d" is loaded.
    @[AlwaysInline]
    def program_uniform_2d? : Bool
      !@addr_program_uniform_2d.null?
    end

    # Invokes glProgramUniform2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2dv!(*args)
      addr = @addr_program_uniform_2dv
      proc = Procs.program_uniform_2dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2dv") unless program_uniform_2dv?

      program_uniform_2dv!(*args)
    end

    # Checks if the function "glProgramUniform2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_2dv? : Bool
      !@addr_program_uniform_2dv.null?
    end

    # Invokes glProgramUniform2ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2ui!(*args)
      addr = @addr_program_uniform_2ui
      proc = Procs.program_uniform_2ui(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform2ui") unless program_uniform_2ui?

      program_uniform_2ui!(*args)
    end

    # Checks if the function "glProgramUniform2ui" is loaded.
    @[AlwaysInline]
    def program_uniform_2ui? : Bool
      !@addr_program_uniform_2ui.null?
    end

    # Invokes glProgramUniform2uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_2uiv!(*args)
      addr = @addr_program_uniform_2uiv
      proc = Procs.program_uniform_2uiv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform2uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_2uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform2uiv") unless program_uniform_2uiv?

      program_uniform_2uiv!(*args)
    end

    # Checks if the function "glProgramUniform2uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_2uiv? : Bool
      !@addr_program_uniform_2uiv.null?
    end

    # Invokes glProgramUniform3i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3i!(*args)
      addr = @addr_program_uniform_3i
      proc = Procs.program_uniform_3i(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3i(*args)
      raise FunctionUnavailableError.new("glProgramUniform3i") unless program_uniform_3i?

      program_uniform_3i!(*args)
    end

    # Checks if the function "glProgramUniform3i" is loaded.
    @[AlwaysInline]
    def program_uniform_3i? : Bool
      !@addr_program_uniform_3i.null?
    end

    # Invokes glProgramUniform3iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3iv!(*args)
      addr = @addr_program_uniform_3iv
      proc = Procs.program_uniform_3iv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3iv") unless program_uniform_3iv?

      program_uniform_3iv!(*args)
    end

    # Checks if the function "glProgramUniform3iv" is loaded.
    @[AlwaysInline]
    def program_uniform_3iv? : Bool
      !@addr_program_uniform_3iv.null?
    end

    # Invokes glProgramUniform3f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3f!(*args)
      addr = @addr_program_uniform_3f
      proc = Procs.program_uniform_3f(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3f(*args)
      raise FunctionUnavailableError.new("glProgramUniform3f") unless program_uniform_3f?

      program_uniform_3f!(*args)
    end

    # Checks if the function "glProgramUniform3f" is loaded.
    @[AlwaysInline]
    def program_uniform_3f? : Bool
      !@addr_program_uniform_3f.null?
    end

    # Invokes glProgramUniform3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3fv!(*args)
      addr = @addr_program_uniform_3fv
      proc = Procs.program_uniform_3fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3fv") unless program_uniform_3fv?

      program_uniform_3fv!(*args)
    end

    # Checks if the function "glProgramUniform3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_3fv? : Bool
      !@addr_program_uniform_3fv.null?
    end

    # Invokes glProgramUniform3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3d!(*args)
      addr = @addr_program_uniform_3d
      proc = Procs.program_uniform_3d(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3d(*args)
      raise FunctionUnavailableError.new("glProgramUniform3d") unless program_uniform_3d?

      program_uniform_3d!(*args)
    end

    # Checks if the function "glProgramUniform3d" is loaded.
    @[AlwaysInline]
    def program_uniform_3d? : Bool
      !@addr_program_uniform_3d.null?
    end

    # Invokes glProgramUniform3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3dv!(*args)
      addr = @addr_program_uniform_3dv
      proc = Procs.program_uniform_3dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3dv") unless program_uniform_3dv?

      program_uniform_3dv!(*args)
    end

    # Checks if the function "glProgramUniform3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_3dv? : Bool
      !@addr_program_uniform_3dv.null?
    end

    # Invokes glProgramUniform3ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3ui!(*args)
      addr = @addr_program_uniform_3ui
      proc = Procs.program_uniform_3ui(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform3ui") unless program_uniform_3ui?

      program_uniform_3ui!(*args)
    end

    # Checks if the function "glProgramUniform3ui" is loaded.
    @[AlwaysInline]
    def program_uniform_3ui? : Bool
      !@addr_program_uniform_3ui.null?
    end

    # Invokes glProgramUniform3uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_3uiv!(*args)
      addr = @addr_program_uniform_3uiv
      proc = Procs.program_uniform_3uiv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform3uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_3uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform3uiv") unless program_uniform_3uiv?

      program_uniform_3uiv!(*args)
    end

    # Checks if the function "glProgramUniform3uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_3uiv? : Bool
      !@addr_program_uniform_3uiv.null?
    end

    # Invokes glProgramUniform4i.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4i!(*args)
      addr = @addr_program_uniform_4i
      proc = Procs.program_uniform_4i(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4i.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4i(*args)
      raise FunctionUnavailableError.new("glProgramUniform4i") unless program_uniform_4i?

      program_uniform_4i!(*args)
    end

    # Checks if the function "glProgramUniform4i" is loaded.
    @[AlwaysInline]
    def program_uniform_4i? : Bool
      !@addr_program_uniform_4i.null?
    end

    # Invokes glProgramUniform4iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4iv!(*args)
      addr = @addr_program_uniform_4iv
      proc = Procs.program_uniform_4iv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4iv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4iv") unless program_uniform_4iv?

      program_uniform_4iv!(*args)
    end

    # Checks if the function "glProgramUniform4iv" is loaded.
    @[AlwaysInline]
    def program_uniform_4iv? : Bool
      !@addr_program_uniform_4iv.null?
    end

    # Invokes glProgramUniform4f.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4f!(*args)
      addr = @addr_program_uniform_4f
      proc = Procs.program_uniform_4f(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4f.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4f(*args)
      raise FunctionUnavailableError.new("glProgramUniform4f") unless program_uniform_4f?

      program_uniform_4f!(*args)
    end

    # Checks if the function "glProgramUniform4f" is loaded.
    @[AlwaysInline]
    def program_uniform_4f? : Bool
      !@addr_program_uniform_4f.null?
    end

    # Invokes glProgramUniform4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4fv!(*args)
      addr = @addr_program_uniform_4fv
      proc = Procs.program_uniform_4fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4fv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4fv") unless program_uniform_4fv?

      program_uniform_4fv!(*args)
    end

    # Checks if the function "glProgramUniform4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_4fv? : Bool
      !@addr_program_uniform_4fv.null?
    end

    # Invokes glProgramUniform4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4d!(*args)
      addr = @addr_program_uniform_4d
      proc = Procs.program_uniform_4d(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4d(*args)
      raise FunctionUnavailableError.new("glProgramUniform4d") unless program_uniform_4d?

      program_uniform_4d!(*args)
    end

    # Checks if the function "glProgramUniform4d" is loaded.
    @[AlwaysInline]
    def program_uniform_4d? : Bool
      !@addr_program_uniform_4d.null?
    end

    # Invokes glProgramUniform4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4dv!(*args)
      addr = @addr_program_uniform_4dv
      proc = Procs.program_uniform_4dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4dv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4dv") unless program_uniform_4dv?

      program_uniform_4dv!(*args)
    end

    # Checks if the function "glProgramUniform4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_4dv? : Bool
      !@addr_program_uniform_4dv.null?
    end

    # Invokes glProgramUniform4ui.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4ui!(*args)
      addr = @addr_program_uniform_4ui
      proc = Procs.program_uniform_4ui(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4ui.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4ui(*args)
      raise FunctionUnavailableError.new("glProgramUniform4ui") unless program_uniform_4ui?

      program_uniform_4ui!(*args)
    end

    # Checks if the function "glProgramUniform4ui" is loaded.
    @[AlwaysInline]
    def program_uniform_4ui? : Bool
      !@addr_program_uniform_4ui.null?
    end

    # Invokes glProgramUniform4uiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_4uiv!(*args)
      addr = @addr_program_uniform_4uiv
      proc = Procs.program_uniform_4uiv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniform4uiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_4uiv(*args)
      raise FunctionUnavailableError.new("glProgramUniform4uiv") unless program_uniform_4uiv?

      program_uniform_4uiv!(*args)
    end

    # Checks if the function "glProgramUniform4uiv" is loaded.
    @[AlwaysInline]
    def program_uniform_4uiv? : Bool
      !@addr_program_uniform_4uiv.null?
    end

    # Invokes glProgramUniformMatrix2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2_fv!(*args)
      addr = @addr_program_uniform_matrix2_fv
      proc = Procs.program_uniform_matrix2_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2fv") unless program_uniform_matrix2_fv?

      program_uniform_matrix2_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2_fv? : Bool
      !@addr_program_uniform_matrix2_fv.null?
    end

    # Invokes glProgramUniformMatrix3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3_fv!(*args)
      addr = @addr_program_uniform_matrix3_fv
      proc = Procs.program_uniform_matrix3_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3fv") unless program_uniform_matrix3_fv?

      program_uniform_matrix3_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3_fv? : Bool
      !@addr_program_uniform_matrix3_fv.null?
    end

    # Invokes glProgramUniformMatrix4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4_fv!(*args)
      addr = @addr_program_uniform_matrix4_fv
      proc = Procs.program_uniform_matrix4_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4fv") unless program_uniform_matrix4_fv?

      program_uniform_matrix4_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4_fv? : Bool
      !@addr_program_uniform_matrix4_fv.null?
    end

    # Invokes glProgramUniformMatrix2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2_dv!(*args)
      addr = @addr_program_uniform_matrix2_dv
      proc = Procs.program_uniform_matrix2_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2dv") unless program_uniform_matrix2_dv?

      program_uniform_matrix2_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2_dv? : Bool
      !@addr_program_uniform_matrix2_dv.null?
    end

    # Invokes glProgramUniformMatrix3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3_dv!(*args)
      addr = @addr_program_uniform_matrix3_dv
      proc = Procs.program_uniform_matrix3_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3dv") unless program_uniform_matrix3_dv?

      program_uniform_matrix3_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3_dv? : Bool
      !@addr_program_uniform_matrix3_dv.null?
    end

    # Invokes glProgramUniformMatrix4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4_dv!(*args)
      addr = @addr_program_uniform_matrix4_dv
      proc = Procs.program_uniform_matrix4_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4dv") unless program_uniform_matrix4_dv?

      program_uniform_matrix4_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4_dv? : Bool
      !@addr_program_uniform_matrix4_dv.null?
    end

    # Invokes glProgramUniformMatrix2x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x3_fv!(*args)
      addr = @addr_program_uniform_matrix2x3_fv
      proc = Procs.program_uniform_matrix2x3_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix2x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x3_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x3fv") unless program_uniform_matrix2x3_fv?

      program_uniform_matrix2x3_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x3_fv? : Bool
      !@addr_program_uniform_matrix2x3_fv.null?
    end

    # Invokes glProgramUniformMatrix3x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x2_fv!(*args)
      addr = @addr_program_uniform_matrix3x2_fv
      proc = Procs.program_uniform_matrix3x2_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix3x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x2_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x2fv") unless program_uniform_matrix3x2_fv?

      program_uniform_matrix3x2_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x2_fv? : Bool
      !@addr_program_uniform_matrix3x2_fv.null?
    end

    # Invokes glProgramUniformMatrix2x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x4_fv!(*args)
      addr = @addr_program_uniform_matrix2x4_fv
      proc = Procs.program_uniform_matrix2x4_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix2x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x4_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x4fv") unless program_uniform_matrix2x4_fv?

      program_uniform_matrix2x4_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x4_fv? : Bool
      !@addr_program_uniform_matrix2x4_fv.null?
    end

    # Invokes glProgramUniformMatrix4x2fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x2_fv!(*args)
      addr = @addr_program_uniform_matrix4x2_fv
      proc = Procs.program_uniform_matrix4x2_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix4x2fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x2_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x2fv") unless program_uniform_matrix4x2_fv?

      program_uniform_matrix4x2_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x2fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x2_fv? : Bool
      !@addr_program_uniform_matrix4x2_fv.null?
    end

    # Invokes glProgramUniformMatrix3x4fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x4_fv!(*args)
      addr = @addr_program_uniform_matrix3x4_fv
      proc = Procs.program_uniform_matrix3x4_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix3x4fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x4_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x4fv") unless program_uniform_matrix3x4_fv?

      program_uniform_matrix3x4_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x4fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x4_fv? : Bool
      !@addr_program_uniform_matrix3x4_fv.null?
    end

    # Invokes glProgramUniformMatrix4x3fv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x3_fv!(*args)
      addr = @addr_program_uniform_matrix4x3_fv
      proc = Procs.program_uniform_matrix4x3_fv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix4x3fv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x3_fv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x3fv") unless program_uniform_matrix4x3_fv?

      program_uniform_matrix4x3_fv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x3fv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x3_fv? : Bool
      !@addr_program_uniform_matrix4x3_fv.null?
    end

    # Invokes glProgramUniformMatrix2x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x3_dv!(*args)
      addr = @addr_program_uniform_matrix2x3_dv
      proc = Procs.program_uniform_matrix2x3_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix2x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x3_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x3dv") unless program_uniform_matrix2x3_dv?

      program_uniform_matrix2x3_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x3_dv? : Bool
      !@addr_program_uniform_matrix2x3_dv.null?
    end

    # Invokes glProgramUniformMatrix3x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x2_dv!(*args)
      addr = @addr_program_uniform_matrix3x2_dv
      proc = Procs.program_uniform_matrix3x2_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix3x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x2_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x2dv") unless program_uniform_matrix3x2_dv?

      program_uniform_matrix3x2_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x2_dv? : Bool
      !@addr_program_uniform_matrix3x2_dv.null?
    end

    # Invokes glProgramUniformMatrix2x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix2x4_dv!(*args)
      addr = @addr_program_uniform_matrix2x4_dv
      proc = Procs.program_uniform_matrix2x4_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix2x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix2x4_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix2x4dv") unless program_uniform_matrix2x4_dv?

      program_uniform_matrix2x4_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix2x4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix2x4_dv? : Bool
      !@addr_program_uniform_matrix2x4_dv.null?
    end

    # Invokes glProgramUniformMatrix4x2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x2_dv!(*args)
      addr = @addr_program_uniform_matrix4x2_dv
      proc = Procs.program_uniform_matrix4x2_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix4x2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x2_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x2dv") unless program_uniform_matrix4x2_dv?

      program_uniform_matrix4x2_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x2dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x2_dv? : Bool
      !@addr_program_uniform_matrix4x2_dv.null?
    end

    # Invokes glProgramUniformMatrix3x4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix3x4_dv!(*args)
      addr = @addr_program_uniform_matrix3x4_dv
      proc = Procs.program_uniform_matrix3x4_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix3x4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix3x4_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix3x4dv") unless program_uniform_matrix3x4_dv?

      program_uniform_matrix3x4_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix3x4dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix3x4_dv? : Bool
      !@addr_program_uniform_matrix3x4_dv.null?
    end

    # Invokes glProgramUniformMatrix4x3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def program_uniform_matrix4x3_dv!(*args)
      addr = @addr_program_uniform_matrix4x3_dv
      proc = Procs.program_uniform_matrix4x3_dv(addr)
      proc.call(*args)
    end

    # Invokes glProgramUniformMatrix4x3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def program_uniform_matrix4x3_dv(*args)
      raise FunctionUnavailableError.new("glProgramUniformMatrix4x3dv") unless program_uniform_matrix4x3_dv?

      program_uniform_matrix4x3_dv!(*args)
    end

    # Checks if the function "glProgramUniformMatrix4x3dv" is loaded.
    @[AlwaysInline]
    def program_uniform_matrix4x3_dv? : Bool
      !@addr_program_uniform_matrix4x3_dv.null?
    end

    # Invokes glValidateProgramPipeline.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def validate_program_pipeline!(*args)
      addr = @addr_validate_program_pipeline
      proc = Procs.validate_program_pipeline(addr)
      proc.call(*args)
    end

    # Invokes glValidateProgramPipeline.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def validate_program_pipeline(*args)
      raise FunctionUnavailableError.new("glValidateProgramPipeline") unless validate_program_pipeline?

      validate_program_pipeline!(*args)
    end

    # Checks if the function "glValidateProgramPipeline" is loaded.
    @[AlwaysInline]
    def validate_program_pipeline? : Bool
      !@addr_validate_program_pipeline.null?
    end

    # Invokes glGetProgramPipelineInfoLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_pipeline_info_log!(*args)
      addr = @addr_get_program_pipeline_info_log
      proc = Procs.get_program_pipeline_info_log(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramPipelineInfoLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_pipeline_info_log(*args)
      raise FunctionUnavailableError.new("glGetProgramPipelineInfoLog") unless get_program_pipeline_info_log?

      get_program_pipeline_info_log!(*args)
    end

    # Checks if the function "glGetProgramPipelineInfoLog" is loaded.
    @[AlwaysInline]
    def get_program_pipeline_info_log? : Bool
      !@addr_get_program_pipeline_info_log.null?
    end

    # Invokes glVertexAttribL1d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_1d!(*args)
      addr = @addr_vertex_attrib_l_1d
      proc = Procs.vertex_attrib_l_1d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL1d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_1d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL1d") unless vertex_attrib_l_1d?

      vertex_attrib_l_1d!(*args)
    end

    # Checks if the function "glVertexAttribL1d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_1d? : Bool
      !@addr_vertex_attrib_l_1d.null?
    end

    # Invokes glVertexAttribL2d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_2d!(*args)
      addr = @addr_vertex_attrib_l_2d
      proc = Procs.vertex_attrib_l_2d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL2d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_2d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL2d") unless vertex_attrib_l_2d?

      vertex_attrib_l_2d!(*args)
    end

    # Checks if the function "glVertexAttribL2d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_2d? : Bool
      !@addr_vertex_attrib_l_2d.null?
    end

    # Invokes glVertexAttribL3d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_3d!(*args)
      addr = @addr_vertex_attrib_l_3d
      proc = Procs.vertex_attrib_l_3d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL3d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_3d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL3d") unless vertex_attrib_l_3d?

      vertex_attrib_l_3d!(*args)
    end

    # Checks if the function "glVertexAttribL3d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_3d? : Bool
      !@addr_vertex_attrib_l_3d.null?
    end

    # Invokes glVertexAttribL4d.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_4d!(*args)
      addr = @addr_vertex_attrib_l_4d
      proc = Procs.vertex_attrib_l_4d(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL4d.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_4d(*args)
      raise FunctionUnavailableError.new("glVertexAttribL4d") unless vertex_attrib_l_4d?

      vertex_attrib_l_4d!(*args)
    end

    # Checks if the function "glVertexAttribL4d" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_4d? : Bool
      !@addr_vertex_attrib_l_4d.null?
    end

    # Invokes glVertexAttribL1dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_1dv!(*args)
      addr = @addr_vertex_attrib_l_1dv
      proc = Procs.vertex_attrib_l_1dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL1dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_1dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL1dv") unless vertex_attrib_l_1dv?

      vertex_attrib_l_1dv!(*args)
    end

    # Checks if the function "glVertexAttribL1dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_1dv? : Bool
      !@addr_vertex_attrib_l_1dv.null?
    end

    # Invokes glVertexAttribL2dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_2dv!(*args)
      addr = @addr_vertex_attrib_l_2dv
      proc = Procs.vertex_attrib_l_2dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL2dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_2dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL2dv") unless vertex_attrib_l_2dv?

      vertex_attrib_l_2dv!(*args)
    end

    # Checks if the function "glVertexAttribL2dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_2dv? : Bool
      !@addr_vertex_attrib_l_2dv.null?
    end

    # Invokes glVertexAttribL3dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_3dv!(*args)
      addr = @addr_vertex_attrib_l_3dv
      proc = Procs.vertex_attrib_l_3dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL3dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_3dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL3dv") unless vertex_attrib_l_3dv?

      vertex_attrib_l_3dv!(*args)
    end

    # Checks if the function "glVertexAttribL3dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_3dv? : Bool
      !@addr_vertex_attrib_l_3dv.null?
    end

    # Invokes glVertexAttribL4dv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_4dv!(*args)
      addr = @addr_vertex_attrib_l_4dv
      proc = Procs.vertex_attrib_l_4dv(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribL4dv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_4dv(*args)
      raise FunctionUnavailableError.new("glVertexAttribL4dv") unless vertex_attrib_l_4dv?

      vertex_attrib_l_4dv!(*args)
    end

    # Checks if the function "glVertexAttribL4dv" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_4dv? : Bool
      !@addr_vertex_attrib_l_4dv.null?
    end

    # Invokes glVertexAttribLPointer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_pointer!(*args)
      addr = @addr_vertex_attrib_l_pointer
      proc = Procs.vertex_attrib_l_pointer(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribLPointer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_pointer(*args)
      raise FunctionUnavailableError.new("glVertexAttribLPointer") unless vertex_attrib_l_pointer?

      vertex_attrib_l_pointer!(*args)
    end

    # Checks if the function "glVertexAttribLPointer" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_pointer? : Bool
      !@addr_vertex_attrib_l_pointer.null?
    end

    # Invokes glGetVertexAttribLdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_attrib_l_dv!(*args)
      addr = @addr_get_vertex_attrib_l_dv
      proc = Procs.get_vertex_attrib_l_dv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexAttribLdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_attrib_l_dv(*args)
      raise FunctionUnavailableError.new("glGetVertexAttribLdv") unless get_vertex_attrib_l_dv?

      get_vertex_attrib_l_dv!(*args)
    end

    # Checks if the function "glGetVertexAttribLdv" is loaded.
    @[AlwaysInline]
    def get_vertex_attrib_l_dv? : Bool
      !@addr_get_vertex_attrib_l_dv.null?
    end

    # Invokes glViewportArrayv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport_array_v!(*args)
      addr = @addr_viewport_array_v
      proc = Procs.viewport_array_v(addr)
      proc.call(*args)
    end

    # Invokes glViewportArrayv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport_array_v(*args)
      raise FunctionUnavailableError.new("glViewportArrayv") unless viewport_array_v?

      viewport_array_v!(*args)
    end

    # Checks if the function "glViewportArrayv" is loaded.
    @[AlwaysInline]
    def viewport_array_v? : Bool
      !@addr_viewport_array_v.null?
    end

    # Invokes glViewportIndexedf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport_indexed_f!(*args)
      addr = @addr_viewport_indexed_f
      proc = Procs.viewport_indexed_f(addr)
      proc.call(*args)
    end

    # Invokes glViewportIndexedf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport_indexed_f(*args)
      raise FunctionUnavailableError.new("glViewportIndexedf") unless viewport_indexed_f?

      viewport_indexed_f!(*args)
    end

    # Checks if the function "glViewportIndexedf" is loaded.
    @[AlwaysInline]
    def viewport_indexed_f? : Bool
      !@addr_viewport_indexed_f.null?
    end

    # Invokes glViewportIndexedfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def viewport_indexed_fv!(*args)
      addr = @addr_viewport_indexed_fv
      proc = Procs.viewport_indexed_fv(addr)
      proc.call(*args)
    end

    # Invokes glViewportIndexedfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def viewport_indexed_fv(*args)
      raise FunctionUnavailableError.new("glViewportIndexedfv") unless viewport_indexed_fv?

      viewport_indexed_fv!(*args)
    end

    # Checks if the function "glViewportIndexedfv" is loaded.
    @[AlwaysInline]
    def viewport_indexed_fv? : Bool
      !@addr_viewport_indexed_fv.null?
    end

    # Invokes glScissorArrayv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor_array_v!(*args)
      addr = @addr_scissor_array_v
      proc = Procs.scissor_array_v(addr)
      proc.call(*args)
    end

    # Invokes glScissorArrayv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor_array_v(*args)
      raise FunctionUnavailableError.new("glScissorArrayv") unless scissor_array_v?

      scissor_array_v!(*args)
    end

    # Checks if the function "glScissorArrayv" is loaded.
    @[AlwaysInline]
    def scissor_array_v? : Bool
      !@addr_scissor_array_v.null?
    end

    # Invokes glScissorIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor_indexed!(*args)
      addr = @addr_scissor_indexed
      proc = Procs.scissor_indexed(addr)
      proc.call(*args)
    end

    # Invokes glScissorIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor_indexed(*args)
      raise FunctionUnavailableError.new("glScissorIndexed") unless scissor_indexed?

      scissor_indexed!(*args)
    end

    # Checks if the function "glScissorIndexed" is loaded.
    @[AlwaysInline]
    def scissor_indexed? : Bool
      !@addr_scissor_indexed.null?
    end

    # Invokes glScissorIndexedv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def scissor_indexedv!(*args)
      addr = @addr_scissor_indexedv
      proc = Procs.scissor_indexedv(addr)
      proc.call(*args)
    end

    # Invokes glScissorIndexedv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def scissor_indexedv(*args)
      raise FunctionUnavailableError.new("glScissorIndexedv") unless scissor_indexedv?

      scissor_indexedv!(*args)
    end

    # Checks if the function "glScissorIndexedv" is loaded.
    @[AlwaysInline]
    def scissor_indexedv? : Bool
      !@addr_scissor_indexedv.null?
    end

    # Invokes glDepthRangeArrayv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range_array_v!(*args)
      addr = @addr_depth_range_array_v
      proc = Procs.depth_range_array_v(addr)
      proc.call(*args)
    end

    # Invokes glDepthRangeArrayv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range_array_v(*args)
      raise FunctionUnavailableError.new("glDepthRangeArrayv") unless depth_range_array_v?

      depth_range_array_v!(*args)
    end

    # Checks if the function "glDepthRangeArrayv" is loaded.
    @[AlwaysInline]
    def depth_range_array_v? : Bool
      !@addr_depth_range_array_v.null?
    end

    # Invokes glDepthRangeIndexed.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def depth_range_indexed!(*args)
      addr = @addr_depth_range_indexed
      proc = Procs.depth_range_indexed(addr)
      proc.call(*args)
    end

    # Invokes glDepthRangeIndexed.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def depth_range_indexed(*args)
      raise FunctionUnavailableError.new("glDepthRangeIndexed") unless depth_range_indexed?

      depth_range_indexed!(*args)
    end

    # Checks if the function "glDepthRangeIndexed" is loaded.
    @[AlwaysInline]
    def depth_range_indexed? : Bool
      !@addr_depth_range_indexed.null?
    end

    # Invokes glGetFloati_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_float_i_v!(*args)
      addr = @addr_get_float_i_v
      proc = Procs.get_float_i_v(addr)
      proc.call(*args)
    end

    # Invokes glGetFloati_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_float_i_v(*args)
      raise FunctionUnavailableError.new("glGetFloati_v") unless get_float_i_v?

      get_float_i_v!(*args)
    end

    # Checks if the function "glGetFloati_v" is loaded.
    @[AlwaysInline]
    def get_float_i_v? : Bool
      !@addr_get_float_i_v.null?
    end

    # Invokes glGetDoublei_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_double_i_v!(*args)
      addr = @addr_get_double_i_v
      proc = Procs.get_double_i_v(addr)
      proc.call(*args)
    end

    # Invokes glGetDoublei_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_double_i_v(*args)
      raise FunctionUnavailableError.new("glGetDoublei_v") unless get_double_i_v?

      get_double_i_v!(*args)
    end

    # Checks if the function "glGetDoublei_v" is loaded.
    @[AlwaysInline]
    def get_double_i_v? : Bool
      !@addr_get_double_i_v.null?
    end

    # Invokes glDrawArraysInstancedBaseInstance.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_arrays_instanced_base_instance!(*args)
      addr = @addr_draw_arrays_instanced_base_instance
      proc = Procs.draw_arrays_instanced_base_instance(addr)
      proc.call(*args)
    end

    # Invokes glDrawArraysInstancedBaseInstance.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_arrays_instanced_base_instance(*args)
      raise FunctionUnavailableError.new("glDrawArraysInstancedBaseInstance") unless draw_arrays_instanced_base_instance?

      draw_arrays_instanced_base_instance!(*args)
    end

    # Checks if the function "glDrawArraysInstancedBaseInstance" is loaded.
    @[AlwaysInline]
    def draw_arrays_instanced_base_instance? : Bool
      !@addr_draw_arrays_instanced_base_instance.null?
    end

    # Invokes glDrawElementsInstancedBaseInstance.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_instanced_base_instance!(*args)
      addr = @addr_draw_elements_instanced_base_instance
      proc = Procs.draw_elements_instanced_base_instance(addr)
      proc.call(*args)
    end

    # Invokes glDrawElementsInstancedBaseInstance.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_instanced_base_instance(*args)
      raise FunctionUnavailableError.new("glDrawElementsInstancedBaseInstance") unless draw_elements_instanced_base_instance?

      draw_elements_instanced_base_instance!(*args)
    end

    # Checks if the function "glDrawElementsInstancedBaseInstance" is loaded.
    @[AlwaysInline]
    def draw_elements_instanced_base_instance? : Bool
      !@addr_draw_elements_instanced_base_instance.null?
    end

    # Invokes glDrawElementsInstancedBaseVertexBaseInstance.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_elements_instanced_base_vertex_base_instance!(*args)
      addr = @addr_draw_elements_instanced_base_vertex_base_instance
      proc = Procs.draw_elements_instanced_base_vertex_base_instance(addr)
      proc.call(*args)
    end

    # Invokes glDrawElementsInstancedBaseVertexBaseInstance.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_elements_instanced_base_vertex_base_instance(*args)
      raise FunctionUnavailableError.new("glDrawElementsInstancedBaseVertexBaseInstance") unless draw_elements_instanced_base_vertex_base_instance?

      draw_elements_instanced_base_vertex_base_instance!(*args)
    end

    # Checks if the function "glDrawElementsInstancedBaseVertexBaseInstance" is loaded.
    @[AlwaysInline]
    def draw_elements_instanced_base_vertex_base_instance? : Bool
      !@addr_draw_elements_instanced_base_vertex_base_instance.null?
    end

    # Invokes glGetInternalformativ.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_internalformat_iv!(*args)
      addr = @addr_get_internalformat_iv
      proc = Procs.get_internalformat_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetInternalformativ.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_internalformat_iv(*args)
      raise FunctionUnavailableError.new("glGetInternalformativ") unless get_internalformat_iv?

      get_internalformat_iv!(*args)
    end

    # Checks if the function "glGetInternalformativ" is loaded.
    @[AlwaysInline]
    def get_internalformat_iv? : Bool
      !@addr_get_internalformat_iv.null?
    end

    # Invokes glGetActiveAtomicCounterBufferiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_active_atomic_counter_buffer_iv!(*args)
      addr = @addr_get_active_atomic_counter_buffer_iv
      proc = Procs.get_active_atomic_counter_buffer_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetActiveAtomicCounterBufferiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_active_atomic_counter_buffer_iv(*args)
      raise FunctionUnavailableError.new("glGetActiveAtomicCounterBufferiv") unless get_active_atomic_counter_buffer_iv?

      get_active_atomic_counter_buffer_iv!(*args)
    end

    # Checks if the function "glGetActiveAtomicCounterBufferiv" is loaded.
    @[AlwaysInline]
    def get_active_atomic_counter_buffer_iv? : Bool
      !@addr_get_active_atomic_counter_buffer_iv.null?
    end

    # Invokes glBindImageTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_image_texture!(*args)
      addr = @addr_bind_image_texture
      proc = Procs.bind_image_texture(addr)
      proc.call(*args)
    end

    # Invokes glBindImageTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_image_texture(*args)
      raise FunctionUnavailableError.new("glBindImageTexture") unless bind_image_texture?

      bind_image_texture!(*args)
    end

    # Checks if the function "glBindImageTexture" is loaded.
    @[AlwaysInline]
    def bind_image_texture? : Bool
      !@addr_bind_image_texture.null?
    end

    # Invokes glMemoryBarrier.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def memory_barrier!(*args)
      addr = @addr_memory_barrier
      proc = Procs.memory_barrier(addr)
      proc.call(*args)
    end

    # Invokes glMemoryBarrier.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def memory_barrier(*args)
      raise FunctionUnavailableError.new("glMemoryBarrier") unless memory_barrier?

      memory_barrier!(*args)
    end

    # Checks if the function "glMemoryBarrier" is loaded.
    @[AlwaysInline]
    def memory_barrier? : Bool
      !@addr_memory_barrier.null?
    end

    # Invokes glTexStorage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_storage_1d!(*args)
      addr = @addr_tex_storage_1d
      proc = Procs.tex_storage_1d(addr)
      proc.call(*args)
    end

    # Invokes glTexStorage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_storage_1d(*args)
      raise FunctionUnavailableError.new("glTexStorage1D") unless tex_storage_1d?

      tex_storage_1d!(*args)
    end

    # Checks if the function "glTexStorage1D" is loaded.
    @[AlwaysInline]
    def tex_storage_1d? : Bool
      !@addr_tex_storage_1d.null?
    end

    # Invokes glTexStorage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_storage_2d!(*args)
      addr = @addr_tex_storage_2d
      proc = Procs.tex_storage_2d(addr)
      proc.call(*args)
    end

    # Invokes glTexStorage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_storage_2d(*args)
      raise FunctionUnavailableError.new("glTexStorage2D") unless tex_storage_2d?

      tex_storage_2d!(*args)
    end

    # Checks if the function "glTexStorage2D" is loaded.
    @[AlwaysInline]
    def tex_storage_2d? : Bool
      !@addr_tex_storage_2d.null?
    end

    # Invokes glTexStorage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_storage_3d!(*args)
      addr = @addr_tex_storage_3d
      proc = Procs.tex_storage_3d(addr)
      proc.call(*args)
    end

    # Invokes glTexStorage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_storage_3d(*args)
      raise FunctionUnavailableError.new("glTexStorage3D") unless tex_storage_3d?

      tex_storage_3d!(*args)
    end

    # Checks if the function "glTexStorage3D" is loaded.
    @[AlwaysInline]
    def tex_storage_3d? : Bool
      !@addr_tex_storage_3d.null?
    end

    # Invokes glDrawTransformFeedbackInstanced.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_transform_feedback_instanced!(*args)
      addr = @addr_draw_transform_feedback_instanced
      proc = Procs.draw_transform_feedback_instanced(addr)
      proc.call(*args)
    end

    # Invokes glDrawTransformFeedbackInstanced.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_transform_feedback_instanced(*args)
      raise FunctionUnavailableError.new("glDrawTransformFeedbackInstanced") unless draw_transform_feedback_instanced?

      draw_transform_feedback_instanced!(*args)
    end

    # Checks if the function "glDrawTransformFeedbackInstanced" is loaded.
    @[AlwaysInline]
    def draw_transform_feedback_instanced? : Bool
      !@addr_draw_transform_feedback_instanced.null?
    end

    # Invokes glDrawTransformFeedbackStreamInstanced.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def draw_transform_feedback_stream_instanced!(*args)
      addr = @addr_draw_transform_feedback_stream_instanced
      proc = Procs.draw_transform_feedback_stream_instanced(addr)
      proc.call(*args)
    end

    # Invokes glDrawTransformFeedbackStreamInstanced.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def draw_transform_feedback_stream_instanced(*args)
      raise FunctionUnavailableError.new("glDrawTransformFeedbackStreamInstanced") unless draw_transform_feedback_stream_instanced?

      draw_transform_feedback_stream_instanced!(*args)
    end

    # Checks if the function "glDrawTransformFeedbackStreamInstanced" is loaded.
    @[AlwaysInline]
    def draw_transform_feedback_stream_instanced? : Bool
      !@addr_draw_transform_feedback_stream_instanced.null?
    end

    # Invokes glClearBufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_data!(*args)
      addr = @addr_clear_buffer_data
      proc = Procs.clear_buffer_data(addr)
      proc.call(*args)
    end

    # Invokes glClearBufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_data(*args)
      raise FunctionUnavailableError.new("glClearBufferData") unless clear_buffer_data?

      clear_buffer_data!(*args)
    end

    # Checks if the function "glClearBufferData" is loaded.
    @[AlwaysInline]
    def clear_buffer_data? : Bool
      !@addr_clear_buffer_data.null?
    end

    # Invokes glClearBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_buffer_sub_data!(*args)
      addr = @addr_clear_buffer_sub_data
      proc = Procs.clear_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glClearBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glClearBufferSubData") unless clear_buffer_sub_data?

      clear_buffer_sub_data!(*args)
    end

    # Checks if the function "glClearBufferSubData" is loaded.
    @[AlwaysInline]
    def clear_buffer_sub_data? : Bool
      !@addr_clear_buffer_sub_data.null?
    end

    # Invokes glDispatchCompute.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def dispatch_compute!(*args)
      addr = @addr_dispatch_compute
      proc = Procs.dispatch_compute(addr)
      proc.call(*args)
    end

    # Invokes glDispatchCompute.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def dispatch_compute(*args)
      raise FunctionUnavailableError.new("glDispatchCompute") unless dispatch_compute?

      dispatch_compute!(*args)
    end

    # Checks if the function "glDispatchCompute" is loaded.
    @[AlwaysInline]
    def dispatch_compute? : Bool
      !@addr_dispatch_compute.null?
    end

    # Invokes glDispatchComputeIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def dispatch_compute_indirect!(*args)
      addr = @addr_dispatch_compute_indirect
      proc = Procs.dispatch_compute_indirect(addr)
      proc.call(*args)
    end

    # Invokes glDispatchComputeIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def dispatch_compute_indirect(*args)
      raise FunctionUnavailableError.new("glDispatchComputeIndirect") unless dispatch_compute_indirect?

      dispatch_compute_indirect!(*args)
    end

    # Checks if the function "glDispatchComputeIndirect" is loaded.
    @[AlwaysInline]
    def dispatch_compute_indirect? : Bool
      !@addr_dispatch_compute_indirect.null?
    end

    # Invokes glCopyImageSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_image_sub_data!(*args)
      addr = @addr_copy_image_sub_data
      proc = Procs.copy_image_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glCopyImageSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_image_sub_data(*args)
      raise FunctionUnavailableError.new("glCopyImageSubData") unless copy_image_sub_data?

      copy_image_sub_data!(*args)
    end

    # Checks if the function "glCopyImageSubData" is loaded.
    @[AlwaysInline]
    def copy_image_sub_data? : Bool
      !@addr_copy_image_sub_data.null?
    end

    # Invokes glFramebufferParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def framebuffer_parameter_i!(*args)
      addr = @addr_framebuffer_parameter_i
      proc = Procs.framebuffer_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glFramebufferParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def framebuffer_parameter_i(*args)
      raise FunctionUnavailableError.new("glFramebufferParameteri") unless framebuffer_parameter_i?

      framebuffer_parameter_i!(*args)
    end

    # Checks if the function "glFramebufferParameteri" is loaded.
    @[AlwaysInline]
    def framebuffer_parameter_i? : Bool
      !@addr_framebuffer_parameter_i.null?
    end

    # Invokes glGetFramebufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_framebuffer_parameter_iv!(*args)
      addr = @addr_get_framebuffer_parameter_iv
      proc = Procs.get_framebuffer_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetFramebufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_framebuffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetFramebufferParameteriv") unless get_framebuffer_parameter_iv?

      get_framebuffer_parameter_iv!(*args)
    end

    # Checks if the function "glGetFramebufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_framebuffer_parameter_iv? : Bool
      !@addr_get_framebuffer_parameter_iv.null?
    end

    # Invokes glGetInternalformati64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_internalformat_i64v!(*args)
      addr = @addr_get_internalformat_i64v
      proc = Procs.get_internalformat_i64v(addr)
      proc.call(*args)
    end

    # Invokes glGetInternalformati64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_internalformat_i64v(*args)
      raise FunctionUnavailableError.new("glGetInternalformati64v") unless get_internalformat_i64v?

      get_internalformat_i64v!(*args)
    end

    # Checks if the function "glGetInternalformati64v" is loaded.
    @[AlwaysInline]
    def get_internalformat_i64v? : Bool
      !@addr_get_internalformat_i64v.null?
    end

    # Invokes glInvalidateTexSubImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_tex_sub_image!(*args)
      addr = @addr_invalidate_tex_sub_image
      proc = Procs.invalidate_tex_sub_image(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateTexSubImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_tex_sub_image(*args)
      raise FunctionUnavailableError.new("glInvalidateTexSubImage") unless invalidate_tex_sub_image?

      invalidate_tex_sub_image!(*args)
    end

    # Checks if the function "glInvalidateTexSubImage" is loaded.
    @[AlwaysInline]
    def invalidate_tex_sub_image? : Bool
      !@addr_invalidate_tex_sub_image.null?
    end

    # Invokes glInvalidateTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_tex_image!(*args)
      addr = @addr_invalidate_tex_image
      proc = Procs.invalidate_tex_image(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_tex_image(*args)
      raise FunctionUnavailableError.new("glInvalidateTexImage") unless invalidate_tex_image?

      invalidate_tex_image!(*args)
    end

    # Checks if the function "glInvalidateTexImage" is loaded.
    @[AlwaysInline]
    def invalidate_tex_image? : Bool
      !@addr_invalidate_tex_image.null?
    end

    # Invokes glInvalidateBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_buffer_sub_data!(*args)
      addr = @addr_invalidate_buffer_sub_data
      proc = Procs.invalidate_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glInvalidateBufferSubData") unless invalidate_buffer_sub_data?

      invalidate_buffer_sub_data!(*args)
    end

    # Checks if the function "glInvalidateBufferSubData" is loaded.
    @[AlwaysInline]
    def invalidate_buffer_sub_data? : Bool
      !@addr_invalidate_buffer_sub_data.null?
    end

    # Invokes glInvalidateBufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_buffer_data!(*args)
      addr = @addr_invalidate_buffer_data
      proc = Procs.invalidate_buffer_data(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateBufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_buffer_data(*args)
      raise FunctionUnavailableError.new("glInvalidateBufferData") unless invalidate_buffer_data?

      invalidate_buffer_data!(*args)
    end

    # Checks if the function "glInvalidateBufferData" is loaded.
    @[AlwaysInline]
    def invalidate_buffer_data? : Bool
      !@addr_invalidate_buffer_data.null?
    end

    # Invokes glInvalidateFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_framebuffer!(*args)
      addr = @addr_invalidate_framebuffer
      proc = Procs.invalidate_framebuffer(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_framebuffer(*args)
      raise FunctionUnavailableError.new("glInvalidateFramebuffer") unless invalidate_framebuffer?

      invalidate_framebuffer!(*args)
    end

    # Checks if the function "glInvalidateFramebuffer" is loaded.
    @[AlwaysInline]
    def invalidate_framebuffer? : Bool
      !@addr_invalidate_framebuffer.null?
    end

    # Invokes glInvalidateSubFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_sub_framebuffer!(*args)
      addr = @addr_invalidate_sub_framebuffer
      proc = Procs.invalidate_sub_framebuffer(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateSubFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_sub_framebuffer(*args)
      raise FunctionUnavailableError.new("glInvalidateSubFramebuffer") unless invalidate_sub_framebuffer?

      invalidate_sub_framebuffer!(*args)
    end

    # Checks if the function "glInvalidateSubFramebuffer" is loaded.
    @[AlwaysInline]
    def invalidate_sub_framebuffer? : Bool
      !@addr_invalidate_sub_framebuffer.null?
    end

    # Invokes glMultiDrawArraysIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_arrays_indirect!(*args)
      addr = @addr_multi_draw_arrays_indirect
      proc = Procs.multi_draw_arrays_indirect(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawArraysIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_arrays_indirect(*args)
      raise FunctionUnavailableError.new("glMultiDrawArraysIndirect") unless multi_draw_arrays_indirect?

      multi_draw_arrays_indirect!(*args)
    end

    # Checks if the function "glMultiDrawArraysIndirect" is loaded.
    @[AlwaysInline]
    def multi_draw_arrays_indirect? : Bool
      !@addr_multi_draw_arrays_indirect.null?
    end

    # Invokes glMultiDrawElementsIndirect.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_elements_indirect!(*args)
      addr = @addr_multi_draw_elements_indirect
      proc = Procs.multi_draw_elements_indirect(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawElementsIndirect.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_elements_indirect(*args)
      raise FunctionUnavailableError.new("glMultiDrawElementsIndirect") unless multi_draw_elements_indirect?

      multi_draw_elements_indirect!(*args)
    end

    # Checks if the function "glMultiDrawElementsIndirect" is loaded.
    @[AlwaysInline]
    def multi_draw_elements_indirect? : Bool
      !@addr_multi_draw_elements_indirect.null?
    end

    # Invokes glGetProgramInterfaceiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_interface_iv!(*args)
      addr = @addr_get_program_interface_iv
      proc = Procs.get_program_interface_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramInterfaceiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_interface_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramInterfaceiv") unless get_program_interface_iv?

      get_program_interface_iv!(*args)
    end

    # Checks if the function "glGetProgramInterfaceiv" is loaded.
    @[AlwaysInline]
    def get_program_interface_iv? : Bool
      !@addr_get_program_interface_iv.null?
    end

    # Invokes glGetProgramResourceIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_resource_index!(*args)
      addr = @addr_get_program_resource_index
      proc = Procs.get_program_resource_index(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramResourceIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_resource_index(*args)
      raise FunctionUnavailableError.new("glGetProgramResourceIndex") unless get_program_resource_index?

      get_program_resource_index!(*args)
    end

    # Checks if the function "glGetProgramResourceIndex" is loaded.
    @[AlwaysInline]
    def get_program_resource_index? : Bool
      !@addr_get_program_resource_index.null?
    end

    # Invokes glGetProgramResourceName.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_resource_name!(*args)
      addr = @addr_get_program_resource_name
      proc = Procs.get_program_resource_name(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramResourceName.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_resource_name(*args)
      raise FunctionUnavailableError.new("glGetProgramResourceName") unless get_program_resource_name?

      get_program_resource_name!(*args)
    end

    # Checks if the function "glGetProgramResourceName" is loaded.
    @[AlwaysInline]
    def get_program_resource_name? : Bool
      !@addr_get_program_resource_name.null?
    end

    # Invokes glGetProgramResourceiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_resource_iv!(*args)
      addr = @addr_get_program_resource_iv
      proc = Procs.get_program_resource_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramResourceiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_resource_iv(*args)
      raise FunctionUnavailableError.new("glGetProgramResourceiv") unless get_program_resource_iv?

      get_program_resource_iv!(*args)
    end

    # Checks if the function "glGetProgramResourceiv" is loaded.
    @[AlwaysInline]
    def get_program_resource_iv? : Bool
      !@addr_get_program_resource_iv.null?
    end

    # Invokes glGetProgramResourceLocation.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_resource_location!(*args)
      addr = @addr_get_program_resource_location
      proc = Procs.get_program_resource_location(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramResourceLocation.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_resource_location(*args)
      raise FunctionUnavailableError.new("glGetProgramResourceLocation") unless get_program_resource_location?

      get_program_resource_location!(*args)
    end

    # Checks if the function "glGetProgramResourceLocation" is loaded.
    @[AlwaysInline]
    def get_program_resource_location? : Bool
      !@addr_get_program_resource_location.null?
    end

    # Invokes glGetProgramResourceLocationIndex.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_program_resource_location_index!(*args)
      addr = @addr_get_program_resource_location_index
      proc = Procs.get_program_resource_location_index(addr)
      proc.call(*args)
    end

    # Invokes glGetProgramResourceLocationIndex.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_program_resource_location_index(*args)
      raise FunctionUnavailableError.new("glGetProgramResourceLocationIndex") unless get_program_resource_location_index?

      get_program_resource_location_index!(*args)
    end

    # Checks if the function "glGetProgramResourceLocationIndex" is loaded.
    @[AlwaysInline]
    def get_program_resource_location_index? : Bool
      !@addr_get_program_resource_location_index.null?
    end

    # Invokes glShaderStorageBlockBinding.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def shader_storage_block_binding!(*args)
      addr = @addr_shader_storage_block_binding
      proc = Procs.shader_storage_block_binding(addr)
      proc.call(*args)
    end

    # Invokes glShaderStorageBlockBinding.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def shader_storage_block_binding(*args)
      raise FunctionUnavailableError.new("glShaderStorageBlockBinding") unless shader_storage_block_binding?

      shader_storage_block_binding!(*args)
    end

    # Checks if the function "glShaderStorageBlockBinding" is loaded.
    @[AlwaysInline]
    def shader_storage_block_binding? : Bool
      !@addr_shader_storage_block_binding.null?
    end

    # Invokes glTexBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_buffer_range!(*args)
      addr = @addr_tex_buffer_range
      proc = Procs.tex_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glTexBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_buffer_range(*args)
      raise FunctionUnavailableError.new("glTexBufferRange") unless tex_buffer_range?

      tex_buffer_range!(*args)
    end

    # Checks if the function "glTexBufferRange" is loaded.
    @[AlwaysInline]
    def tex_buffer_range? : Bool
      !@addr_tex_buffer_range.null?
    end

    # Invokes glTexStorage2DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_storage_2d_multisample!(*args)
      addr = @addr_tex_storage_2d_multisample
      proc = Procs.tex_storage_2d_multisample(addr)
      proc.call(*args)
    end

    # Invokes glTexStorage2DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_storage_2d_multisample(*args)
      raise FunctionUnavailableError.new("glTexStorage2DMultisample") unless tex_storage_2d_multisample?

      tex_storage_2d_multisample!(*args)
    end

    # Checks if the function "glTexStorage2DMultisample" is loaded.
    @[AlwaysInline]
    def tex_storage_2d_multisample? : Bool
      !@addr_tex_storage_2d_multisample.null?
    end

    # Invokes glTexStorage3DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def tex_storage_3d_multisample!(*args)
      addr = @addr_tex_storage_3d_multisample
      proc = Procs.tex_storage_3d_multisample(addr)
      proc.call(*args)
    end

    # Invokes glTexStorage3DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def tex_storage_3d_multisample(*args)
      raise FunctionUnavailableError.new("glTexStorage3DMultisample") unless tex_storage_3d_multisample?

      tex_storage_3d_multisample!(*args)
    end

    # Checks if the function "glTexStorage3DMultisample" is loaded.
    @[AlwaysInline]
    def tex_storage_3d_multisample? : Bool
      !@addr_tex_storage_3d_multisample.null?
    end

    # Invokes glTextureView.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_view!(*args)
      addr = @addr_texture_view
      proc = Procs.texture_view(addr)
      proc.call(*args)
    end

    # Invokes glTextureView.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_view(*args)
      raise FunctionUnavailableError.new("glTextureView") unless texture_view?

      texture_view!(*args)
    end

    # Checks if the function "glTextureView" is loaded.
    @[AlwaysInline]
    def texture_view? : Bool
      !@addr_texture_view.null?
    end

    # Invokes glBindVertexBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_vertex_buffer!(*args)
      addr = @addr_bind_vertex_buffer
      proc = Procs.bind_vertex_buffer(addr)
      proc.call(*args)
    end

    # Invokes glBindVertexBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_vertex_buffer(*args)
      raise FunctionUnavailableError.new("glBindVertexBuffer") unless bind_vertex_buffer?

      bind_vertex_buffer!(*args)
    end

    # Checks if the function "glBindVertexBuffer" is loaded.
    @[AlwaysInline]
    def bind_vertex_buffer? : Bool
      !@addr_bind_vertex_buffer.null?
    end

    # Invokes glVertexAttribFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_format!(*args)
      addr = @addr_vertex_attrib_format
      proc = Procs.vertex_attrib_format(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_format(*args)
      raise FunctionUnavailableError.new("glVertexAttribFormat") unless vertex_attrib_format?

      vertex_attrib_format!(*args)
    end

    # Checks if the function "glVertexAttribFormat" is loaded.
    @[AlwaysInline]
    def vertex_attrib_format? : Bool
      !@addr_vertex_attrib_format.null?
    end

    # Invokes glVertexAttribIFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_i_format!(*args)
      addr = @addr_vertex_attrib_i_format
      proc = Procs.vertex_attrib_i_format(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribIFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_i_format(*args)
      raise FunctionUnavailableError.new("glVertexAttribIFormat") unless vertex_attrib_i_format?

      vertex_attrib_i_format!(*args)
    end

    # Checks if the function "glVertexAttribIFormat" is loaded.
    @[AlwaysInline]
    def vertex_attrib_i_format? : Bool
      !@addr_vertex_attrib_i_format.null?
    end

    # Invokes glVertexAttribLFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_l_format!(*args)
      addr = @addr_vertex_attrib_l_format
      proc = Procs.vertex_attrib_l_format(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribLFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_l_format(*args)
      raise FunctionUnavailableError.new("glVertexAttribLFormat") unless vertex_attrib_l_format?

      vertex_attrib_l_format!(*args)
    end

    # Checks if the function "glVertexAttribLFormat" is loaded.
    @[AlwaysInline]
    def vertex_attrib_l_format? : Bool
      !@addr_vertex_attrib_l_format.null?
    end

    # Invokes glVertexAttribBinding.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_attrib_binding!(*args)
      addr = @addr_vertex_attrib_binding
      proc = Procs.vertex_attrib_binding(addr)
      proc.call(*args)
    end

    # Invokes glVertexAttribBinding.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_attrib_binding(*args)
      raise FunctionUnavailableError.new("glVertexAttribBinding") unless vertex_attrib_binding?

      vertex_attrib_binding!(*args)
    end

    # Checks if the function "glVertexAttribBinding" is loaded.
    @[AlwaysInline]
    def vertex_attrib_binding? : Bool
      !@addr_vertex_attrib_binding.null?
    end

    # Invokes glVertexBindingDivisor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_binding_divisor!(*args)
      addr = @addr_vertex_binding_divisor
      proc = Procs.vertex_binding_divisor(addr)
      proc.call(*args)
    end

    # Invokes glVertexBindingDivisor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_binding_divisor(*args)
      raise FunctionUnavailableError.new("glVertexBindingDivisor") unless vertex_binding_divisor?

      vertex_binding_divisor!(*args)
    end

    # Checks if the function "glVertexBindingDivisor" is loaded.
    @[AlwaysInline]
    def vertex_binding_divisor? : Bool
      !@addr_vertex_binding_divisor.null?
    end

    # Invokes glDebugMessageControl.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def debug_message_control!(*args)
      addr = @addr_debug_message_control
      proc = Procs.debug_message_control(addr)
      proc.call(*args)
    end

    # Invokes glDebugMessageControl.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def debug_message_control(*args)
      raise FunctionUnavailableError.new("glDebugMessageControl") unless debug_message_control?

      debug_message_control!(*args)
    end

    # Checks if the function "glDebugMessageControl" is loaded.
    @[AlwaysInline]
    def debug_message_control? : Bool
      !@addr_debug_message_control.null?
    end

    # Invokes glDebugMessageInsert.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def debug_message_insert!(*args)
      addr = @addr_debug_message_insert
      proc = Procs.debug_message_insert(addr)
      proc.call(*args)
    end

    # Invokes glDebugMessageInsert.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def debug_message_insert(*args)
      raise FunctionUnavailableError.new("glDebugMessageInsert") unless debug_message_insert?

      debug_message_insert!(*args)
    end

    # Checks if the function "glDebugMessageInsert" is loaded.
    @[AlwaysInline]
    def debug_message_insert? : Bool
      !@addr_debug_message_insert.null?
    end

    # Invokes glDebugMessageCallback.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def debug_message_callback!(*args)
      addr = @addr_debug_message_callback
      proc = Procs.debug_message_callback(addr)
      proc.call(*args)
    end

    # Invokes glDebugMessageCallback.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def debug_message_callback(*args)
      raise FunctionUnavailableError.new("glDebugMessageCallback") unless debug_message_callback?

      debug_message_callback!(*args)
    end

    # Checks if the function "glDebugMessageCallback" is loaded.
    @[AlwaysInline]
    def debug_message_callback? : Bool
      !@addr_debug_message_callback.null?
    end

    # Invokes glGetDebugMessageLog.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_debug_message_log!(*args)
      addr = @addr_get_debug_message_log
      proc = Procs.get_debug_message_log(addr)
      proc.call(*args)
    end

    # Invokes glGetDebugMessageLog.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_debug_message_log(*args)
      raise FunctionUnavailableError.new("glGetDebugMessageLog") unless get_debug_message_log?

      get_debug_message_log!(*args)
    end

    # Checks if the function "glGetDebugMessageLog" is loaded.
    @[AlwaysInline]
    def get_debug_message_log? : Bool
      !@addr_get_debug_message_log.null?
    end

    # Invokes glPushDebugGroup.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def push_debug_group!(*args)
      addr = @addr_push_debug_group
      proc = Procs.push_debug_group(addr)
      proc.call(*args)
    end

    # Invokes glPushDebugGroup.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def push_debug_group(*args)
      raise FunctionUnavailableError.new("glPushDebugGroup") unless push_debug_group?

      push_debug_group!(*args)
    end

    # Checks if the function "glPushDebugGroup" is loaded.
    @[AlwaysInline]
    def push_debug_group? : Bool
      !@addr_push_debug_group.null?
    end

    # Invokes glPopDebugGroup.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def pop_debug_group!(*args)
      addr = @addr_pop_debug_group
      proc = Procs.pop_debug_group(addr)
      proc.call(*args)
    end

    # Invokes glPopDebugGroup.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def pop_debug_group(*args)
      raise FunctionUnavailableError.new("glPopDebugGroup") unless pop_debug_group?

      pop_debug_group!(*args)
    end

    # Checks if the function "glPopDebugGroup" is loaded.
    @[AlwaysInline]
    def pop_debug_group? : Bool
      !@addr_pop_debug_group.null?
    end

    # Invokes glObjectLabel.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def object_label!(*args)
      addr = @addr_object_label
      proc = Procs.object_label(addr)
      proc.call(*args)
    end

    # Invokes glObjectLabel.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def object_label(*args)
      raise FunctionUnavailableError.new("glObjectLabel") unless object_label?

      object_label!(*args)
    end

    # Checks if the function "glObjectLabel" is loaded.
    @[AlwaysInline]
    def object_label? : Bool
      !@addr_object_label.null?
    end

    # Invokes glGetObjectLabel.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_object_label!(*args)
      addr = @addr_get_object_label
      proc = Procs.get_object_label(addr)
      proc.call(*args)
    end

    # Invokes glGetObjectLabel.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_object_label(*args)
      raise FunctionUnavailableError.new("glGetObjectLabel") unless get_object_label?

      get_object_label!(*args)
    end

    # Checks if the function "glGetObjectLabel" is loaded.
    @[AlwaysInline]
    def get_object_label? : Bool
      !@addr_get_object_label.null?
    end

    # Invokes glObjectPtrLabel.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def object_ptr_label!(*args)
      addr = @addr_object_ptr_label
      proc = Procs.object_ptr_label(addr)
      proc.call(*args)
    end

    # Invokes glObjectPtrLabel.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def object_ptr_label(*args)
      raise FunctionUnavailableError.new("glObjectPtrLabel") unless object_ptr_label?

      object_ptr_label!(*args)
    end

    # Checks if the function "glObjectPtrLabel" is loaded.
    @[AlwaysInline]
    def object_ptr_label? : Bool
      !@addr_object_ptr_label.null?
    end

    # Invokes glGetObjectPtrLabel.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_object_ptr_label!(*args)
      addr = @addr_get_object_ptr_label
      proc = Procs.get_object_ptr_label(addr)
      proc.call(*args)
    end

    # Invokes glGetObjectPtrLabel.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_object_ptr_label(*args)
      raise FunctionUnavailableError.new("glGetObjectPtrLabel") unless get_object_ptr_label?

      get_object_ptr_label!(*args)
    end

    # Checks if the function "glGetObjectPtrLabel" is loaded.
    @[AlwaysInline]
    def get_object_ptr_label? : Bool
      !@addr_get_object_ptr_label.null?
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

    # Invokes glBufferStorage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def buffer_storage!(*args)
      addr = @addr_buffer_storage
      proc = Procs.buffer_storage(addr)
      proc.call(*args)
    end

    # Invokes glBufferStorage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def buffer_storage(*args)
      raise FunctionUnavailableError.new("glBufferStorage") unless buffer_storage?

      buffer_storage!(*args)
    end

    # Checks if the function "glBufferStorage" is loaded.
    @[AlwaysInline]
    def buffer_storage? : Bool
      !@addr_buffer_storage.null?
    end

    # Invokes glClearTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_tex_image!(*args)
      addr = @addr_clear_tex_image
      proc = Procs.clear_tex_image(addr)
      proc.call(*args)
    end

    # Invokes glClearTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_tex_image(*args)
      raise FunctionUnavailableError.new("glClearTexImage") unless clear_tex_image?

      clear_tex_image!(*args)
    end

    # Checks if the function "glClearTexImage" is loaded.
    @[AlwaysInline]
    def clear_tex_image? : Bool
      !@addr_clear_tex_image.null?
    end

    # Invokes glClearTexSubImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_tex_sub_image!(*args)
      addr = @addr_clear_tex_sub_image
      proc = Procs.clear_tex_sub_image(addr)
      proc.call(*args)
    end

    # Invokes glClearTexSubImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_tex_sub_image(*args)
      raise FunctionUnavailableError.new("glClearTexSubImage") unless clear_tex_sub_image?

      clear_tex_sub_image!(*args)
    end

    # Checks if the function "glClearTexSubImage" is loaded.
    @[AlwaysInline]
    def clear_tex_sub_image? : Bool
      !@addr_clear_tex_sub_image.null?
    end

    # Invokes glBindBuffersBase.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffers_base!(*args)
      addr = @addr_bind_buffers_base
      proc = Procs.bind_buffers_base(addr)
      proc.call(*args)
    end

    # Invokes glBindBuffersBase.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffers_base(*args)
      raise FunctionUnavailableError.new("glBindBuffersBase") unless bind_buffers_base?

      bind_buffers_base!(*args)
    end

    # Checks if the function "glBindBuffersBase" is loaded.
    @[AlwaysInline]
    def bind_buffers_base? : Bool
      !@addr_bind_buffers_base.null?
    end

    # Invokes glBindBuffersRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_buffers_range!(*args)
      addr = @addr_bind_buffers_range
      proc = Procs.bind_buffers_range(addr)
      proc.call(*args)
    end

    # Invokes glBindBuffersRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_buffers_range(*args)
      raise FunctionUnavailableError.new("glBindBuffersRange") unless bind_buffers_range?

      bind_buffers_range!(*args)
    end

    # Checks if the function "glBindBuffersRange" is loaded.
    @[AlwaysInline]
    def bind_buffers_range? : Bool
      !@addr_bind_buffers_range.null?
    end

    # Invokes glBindTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_textures!(*args)
      addr = @addr_bind_textures
      proc = Procs.bind_textures(addr)
      proc.call(*args)
    end

    # Invokes glBindTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_textures(*args)
      raise FunctionUnavailableError.new("glBindTextures") unless bind_textures?

      bind_textures!(*args)
    end

    # Checks if the function "glBindTextures" is loaded.
    @[AlwaysInline]
    def bind_textures? : Bool
      !@addr_bind_textures.null?
    end

    # Invokes glBindSamplers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_samplers!(*args)
      addr = @addr_bind_samplers
      proc = Procs.bind_samplers(addr)
      proc.call(*args)
    end

    # Invokes glBindSamplers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_samplers(*args)
      raise FunctionUnavailableError.new("glBindSamplers") unless bind_samplers?

      bind_samplers!(*args)
    end

    # Checks if the function "glBindSamplers" is loaded.
    @[AlwaysInline]
    def bind_samplers? : Bool
      !@addr_bind_samplers.null?
    end

    # Invokes glBindImageTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_image_textures!(*args)
      addr = @addr_bind_image_textures
      proc = Procs.bind_image_textures(addr)
      proc.call(*args)
    end

    # Invokes glBindImageTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_image_textures(*args)
      raise FunctionUnavailableError.new("glBindImageTextures") unless bind_image_textures?

      bind_image_textures!(*args)
    end

    # Checks if the function "glBindImageTextures" is loaded.
    @[AlwaysInline]
    def bind_image_textures? : Bool
      !@addr_bind_image_textures.null?
    end

    # Invokes glBindVertexBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_vertex_buffers!(*args)
      addr = @addr_bind_vertex_buffers
      proc = Procs.bind_vertex_buffers(addr)
      proc.call(*args)
    end

    # Invokes glBindVertexBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_vertex_buffers(*args)
      raise FunctionUnavailableError.new("glBindVertexBuffers") unless bind_vertex_buffers?

      bind_vertex_buffers!(*args)
    end

    # Checks if the function "glBindVertexBuffers" is loaded.
    @[AlwaysInline]
    def bind_vertex_buffers? : Bool
      !@addr_bind_vertex_buffers.null?
    end

    # Invokes glClipControl.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clip_control!(*args)
      addr = @addr_clip_control
      proc = Procs.clip_control(addr)
      proc.call(*args)
    end

    # Invokes glClipControl.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clip_control(*args)
      raise FunctionUnavailableError.new("glClipControl") unless clip_control?

      clip_control!(*args)
    end

    # Checks if the function "glClipControl" is loaded.
    @[AlwaysInline]
    def clip_control? : Bool
      !@addr_clip_control.null?
    end

    # Invokes glCreateTransformFeedbacks.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_transform_feedbacks!(*args)
      addr = @addr_create_transform_feedbacks
      proc = Procs.create_transform_feedbacks(addr)
      proc.call(*args)
    end

    # Invokes glCreateTransformFeedbacks.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_transform_feedbacks(*args)
      raise FunctionUnavailableError.new("glCreateTransformFeedbacks") unless create_transform_feedbacks?

      create_transform_feedbacks!(*args)
    end

    # Checks if the function "glCreateTransformFeedbacks" is loaded.
    @[AlwaysInline]
    def create_transform_feedbacks? : Bool
      !@addr_create_transform_feedbacks.null?
    end

    # Invokes glTransformFeedbackBufferBase.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def transform_feedback_buffer_base!(*args)
      addr = @addr_transform_feedback_buffer_base
      proc = Procs.transform_feedback_buffer_base(addr)
      proc.call(*args)
    end

    # Invokes glTransformFeedbackBufferBase.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def transform_feedback_buffer_base(*args)
      raise FunctionUnavailableError.new("glTransformFeedbackBufferBase") unless transform_feedback_buffer_base?

      transform_feedback_buffer_base!(*args)
    end

    # Checks if the function "glTransformFeedbackBufferBase" is loaded.
    @[AlwaysInline]
    def transform_feedback_buffer_base? : Bool
      !@addr_transform_feedback_buffer_base.null?
    end

    # Invokes glTransformFeedbackBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def transform_feedback_buffer_range!(*args)
      addr = @addr_transform_feedback_buffer_range
      proc = Procs.transform_feedback_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glTransformFeedbackBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def transform_feedback_buffer_range(*args)
      raise FunctionUnavailableError.new("glTransformFeedbackBufferRange") unless transform_feedback_buffer_range?

      transform_feedback_buffer_range!(*args)
    end

    # Checks if the function "glTransformFeedbackBufferRange" is loaded.
    @[AlwaysInline]
    def transform_feedback_buffer_range? : Bool
      !@addr_transform_feedback_buffer_range.null?
    end

    # Invokes glGetTransformFeedbackiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_transform_feedback_iv!(*args)
      addr = @addr_get_transform_feedback_iv
      proc = Procs.get_transform_feedback_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTransformFeedbackiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_transform_feedback_iv(*args)
      raise FunctionUnavailableError.new("glGetTransformFeedbackiv") unless get_transform_feedback_iv?

      get_transform_feedback_iv!(*args)
    end

    # Checks if the function "glGetTransformFeedbackiv" is loaded.
    @[AlwaysInline]
    def get_transform_feedback_iv? : Bool
      !@addr_get_transform_feedback_iv.null?
    end

    # Invokes glGetTransformFeedbacki_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_transform_feedback_i_v!(*args)
      addr = @addr_get_transform_feedback_i_v
      proc = Procs.get_transform_feedback_i_v(addr)
      proc.call(*args)
    end

    # Invokes glGetTransformFeedbacki_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_transform_feedback_i_v(*args)
      raise FunctionUnavailableError.new("glGetTransformFeedbacki_v") unless get_transform_feedback_i_v?

      get_transform_feedback_i_v!(*args)
    end

    # Checks if the function "glGetTransformFeedbacki_v" is loaded.
    @[AlwaysInline]
    def get_transform_feedback_i_v? : Bool
      !@addr_get_transform_feedback_i_v.null?
    end

    # Invokes glGetTransformFeedbacki64_v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_transform_feedback_i64_v!(*args)
      addr = @addr_get_transform_feedback_i64_v
      proc = Procs.get_transform_feedback_i64_v(addr)
      proc.call(*args)
    end

    # Invokes glGetTransformFeedbacki64_v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_transform_feedback_i64_v(*args)
      raise FunctionUnavailableError.new("glGetTransformFeedbacki64_v") unless get_transform_feedback_i64_v?

      get_transform_feedback_i64_v!(*args)
    end

    # Checks if the function "glGetTransformFeedbacki64_v" is loaded.
    @[AlwaysInline]
    def get_transform_feedback_i64_v? : Bool
      !@addr_get_transform_feedback_i64_v.null?
    end

    # Invokes glCreateBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_buffers!(*args)
      addr = @addr_create_buffers
      proc = Procs.create_buffers(addr)
      proc.call(*args)
    end

    # Invokes glCreateBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_buffers(*args)
      raise FunctionUnavailableError.new("glCreateBuffers") unless create_buffers?

      create_buffers!(*args)
    end

    # Checks if the function "glCreateBuffers" is loaded.
    @[AlwaysInline]
    def create_buffers? : Bool
      !@addr_create_buffers.null?
    end

    # Invokes glNamedBufferStorage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_buffer_storage!(*args)
      addr = @addr_named_buffer_storage
      proc = Procs.named_buffer_storage(addr)
      proc.call(*args)
    end

    # Invokes glNamedBufferStorage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_buffer_storage(*args)
      raise FunctionUnavailableError.new("glNamedBufferStorage") unless named_buffer_storage?

      named_buffer_storage!(*args)
    end

    # Checks if the function "glNamedBufferStorage" is loaded.
    @[AlwaysInline]
    def named_buffer_storage? : Bool
      !@addr_named_buffer_storage.null?
    end

    # Invokes glNamedBufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_buffer_data!(*args)
      addr = @addr_named_buffer_data
      proc = Procs.named_buffer_data(addr)
      proc.call(*args)
    end

    # Invokes glNamedBufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_buffer_data(*args)
      raise FunctionUnavailableError.new("glNamedBufferData") unless named_buffer_data?

      named_buffer_data!(*args)
    end

    # Checks if the function "glNamedBufferData" is loaded.
    @[AlwaysInline]
    def named_buffer_data? : Bool
      !@addr_named_buffer_data.null?
    end

    # Invokes glNamedBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_buffer_sub_data!(*args)
      addr = @addr_named_buffer_sub_data
      proc = Procs.named_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glNamedBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glNamedBufferSubData") unless named_buffer_sub_data?

      named_buffer_sub_data!(*args)
    end

    # Checks if the function "glNamedBufferSubData" is loaded.
    @[AlwaysInline]
    def named_buffer_sub_data? : Bool
      !@addr_named_buffer_sub_data.null?
    end

    # Invokes glCopyNamedBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_named_buffer_sub_data!(*args)
      addr = @addr_copy_named_buffer_sub_data
      proc = Procs.copy_named_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glCopyNamedBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_named_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glCopyNamedBufferSubData") unless copy_named_buffer_sub_data?

      copy_named_buffer_sub_data!(*args)
    end

    # Checks if the function "glCopyNamedBufferSubData" is loaded.
    @[AlwaysInline]
    def copy_named_buffer_sub_data? : Bool
      !@addr_copy_named_buffer_sub_data.null?
    end

    # Invokes glClearNamedBufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_named_buffer_data!(*args)
      addr = @addr_clear_named_buffer_data
      proc = Procs.clear_named_buffer_data(addr)
      proc.call(*args)
    end

    # Invokes glClearNamedBufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_named_buffer_data(*args)
      raise FunctionUnavailableError.new("glClearNamedBufferData") unless clear_named_buffer_data?

      clear_named_buffer_data!(*args)
    end

    # Checks if the function "glClearNamedBufferData" is loaded.
    @[AlwaysInline]
    def clear_named_buffer_data? : Bool
      !@addr_clear_named_buffer_data.null?
    end

    # Invokes glClearNamedBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_named_buffer_sub_data!(*args)
      addr = @addr_clear_named_buffer_sub_data
      proc = Procs.clear_named_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glClearNamedBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_named_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glClearNamedBufferSubData") unless clear_named_buffer_sub_data?

      clear_named_buffer_sub_data!(*args)
    end

    # Checks if the function "glClearNamedBufferSubData" is loaded.
    @[AlwaysInline]
    def clear_named_buffer_sub_data? : Bool
      !@addr_clear_named_buffer_sub_data.null?
    end

    # Invokes glMapNamedBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_named_buffer!(*args)
      addr = @addr_map_named_buffer
      proc = Procs.map_named_buffer(addr)
      proc.call(*args)
    end

    # Invokes glMapNamedBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_named_buffer(*args)
      raise FunctionUnavailableError.new("glMapNamedBuffer") unless map_named_buffer?

      map_named_buffer!(*args)
    end

    # Checks if the function "glMapNamedBuffer" is loaded.
    @[AlwaysInline]
    def map_named_buffer? : Bool
      !@addr_map_named_buffer.null?
    end

    # Invokes glMapNamedBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def map_named_buffer_range!(*args)
      addr = @addr_map_named_buffer_range
      proc = Procs.map_named_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glMapNamedBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def map_named_buffer_range(*args)
      raise FunctionUnavailableError.new("glMapNamedBufferRange") unless map_named_buffer_range?

      map_named_buffer_range!(*args)
    end

    # Checks if the function "glMapNamedBufferRange" is loaded.
    @[AlwaysInline]
    def map_named_buffer_range? : Bool
      !@addr_map_named_buffer_range.null?
    end

    # Invokes glUnmapNamedBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def unmap_named_buffer!(*args)
      addr = @addr_unmap_named_buffer
      proc = Procs.unmap_named_buffer(addr)
      proc.call(*args)
    end

    # Invokes glUnmapNamedBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def unmap_named_buffer(*args)
      raise FunctionUnavailableError.new("glUnmapNamedBuffer") unless unmap_named_buffer?

      unmap_named_buffer!(*args)
    end

    # Checks if the function "glUnmapNamedBuffer" is loaded.
    @[AlwaysInline]
    def unmap_named_buffer? : Bool
      !@addr_unmap_named_buffer.null?
    end

    # Invokes glFlushMappedNamedBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def flush_mapped_named_buffer_range!(*args)
      addr = @addr_flush_mapped_named_buffer_range
      proc = Procs.flush_mapped_named_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glFlushMappedNamedBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def flush_mapped_named_buffer_range(*args)
      raise FunctionUnavailableError.new("glFlushMappedNamedBufferRange") unless flush_mapped_named_buffer_range?

      flush_mapped_named_buffer_range!(*args)
    end

    # Checks if the function "glFlushMappedNamedBufferRange" is loaded.
    @[AlwaysInline]
    def flush_mapped_named_buffer_range? : Bool
      !@addr_flush_mapped_named_buffer_range.null?
    end

    # Invokes glGetNamedBufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_buffer_parameter_iv!(*args)
      addr = @addr_get_named_buffer_parameter_iv
      proc = Procs.get_named_buffer_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedBufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_buffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetNamedBufferParameteriv") unless get_named_buffer_parameter_iv?

      get_named_buffer_parameter_iv!(*args)
    end

    # Checks if the function "glGetNamedBufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_named_buffer_parameter_iv? : Bool
      !@addr_get_named_buffer_parameter_iv.null?
    end

    # Invokes glGetNamedBufferParameteri64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_buffer_parameter_i64v!(*args)
      addr = @addr_get_named_buffer_parameter_i64v
      proc = Procs.get_named_buffer_parameter_i64v(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedBufferParameteri64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_buffer_parameter_i64v(*args)
      raise FunctionUnavailableError.new("glGetNamedBufferParameteri64v") unless get_named_buffer_parameter_i64v?

      get_named_buffer_parameter_i64v!(*args)
    end

    # Checks if the function "glGetNamedBufferParameteri64v" is loaded.
    @[AlwaysInline]
    def get_named_buffer_parameter_i64v? : Bool
      !@addr_get_named_buffer_parameter_i64v.null?
    end

    # Invokes glGetNamedBufferPointerv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_buffer_pointer_v!(*args)
      addr = @addr_get_named_buffer_pointer_v
      proc = Procs.get_named_buffer_pointer_v(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedBufferPointerv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_buffer_pointer_v(*args)
      raise FunctionUnavailableError.new("glGetNamedBufferPointerv") unless get_named_buffer_pointer_v?

      get_named_buffer_pointer_v!(*args)
    end

    # Checks if the function "glGetNamedBufferPointerv" is loaded.
    @[AlwaysInline]
    def get_named_buffer_pointer_v? : Bool
      !@addr_get_named_buffer_pointer_v.null?
    end

    # Invokes glGetNamedBufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_buffer_sub_data!(*args)
      addr = @addr_get_named_buffer_sub_data
      proc = Procs.get_named_buffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedBufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_buffer_sub_data(*args)
      raise FunctionUnavailableError.new("glGetNamedBufferSubData") unless get_named_buffer_sub_data?

      get_named_buffer_sub_data!(*args)
    end

    # Checks if the function "glGetNamedBufferSubData" is loaded.
    @[AlwaysInline]
    def get_named_buffer_sub_data? : Bool
      !@addr_get_named_buffer_sub_data.null?
    end

    # Invokes glCreateFramebuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_framebuffers!(*args)
      addr = @addr_create_framebuffers
      proc = Procs.create_framebuffers(addr)
      proc.call(*args)
    end

    # Invokes glCreateFramebuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_framebuffers(*args)
      raise FunctionUnavailableError.new("glCreateFramebuffers") unless create_framebuffers?

      create_framebuffers!(*args)
    end

    # Checks if the function "glCreateFramebuffers" is loaded.
    @[AlwaysInline]
    def create_framebuffers? : Bool
      !@addr_create_framebuffers.null?
    end

    # Invokes glNamedFramebufferRenderbuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_renderbuffer!(*args)
      addr = @addr_named_framebuffer_renderbuffer
      proc = Procs.named_framebuffer_renderbuffer(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferRenderbuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_renderbuffer(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferRenderbuffer") unless named_framebuffer_renderbuffer?

      named_framebuffer_renderbuffer!(*args)
    end

    # Checks if the function "glNamedFramebufferRenderbuffer" is loaded.
    @[AlwaysInline]
    def named_framebuffer_renderbuffer? : Bool
      !@addr_named_framebuffer_renderbuffer.null?
    end

    # Invokes glNamedFramebufferParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_parameter_i!(*args)
      addr = @addr_named_framebuffer_parameter_i
      proc = Procs.named_framebuffer_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_parameter_i(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferParameteri") unless named_framebuffer_parameter_i?

      named_framebuffer_parameter_i!(*args)
    end

    # Checks if the function "glNamedFramebufferParameteri" is loaded.
    @[AlwaysInline]
    def named_framebuffer_parameter_i? : Bool
      !@addr_named_framebuffer_parameter_i.null?
    end

    # Invokes glNamedFramebufferTexture.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_texture!(*args)
      addr = @addr_named_framebuffer_texture
      proc = Procs.named_framebuffer_texture(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferTexture.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_texture(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferTexture") unless named_framebuffer_texture?

      named_framebuffer_texture!(*args)
    end

    # Checks if the function "glNamedFramebufferTexture" is loaded.
    @[AlwaysInline]
    def named_framebuffer_texture? : Bool
      !@addr_named_framebuffer_texture.null?
    end

    # Invokes glNamedFramebufferTextureLayer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_texture_layer!(*args)
      addr = @addr_named_framebuffer_texture_layer
      proc = Procs.named_framebuffer_texture_layer(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferTextureLayer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_texture_layer(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferTextureLayer") unless named_framebuffer_texture_layer?

      named_framebuffer_texture_layer!(*args)
    end

    # Checks if the function "glNamedFramebufferTextureLayer" is loaded.
    @[AlwaysInline]
    def named_framebuffer_texture_layer? : Bool
      !@addr_named_framebuffer_texture_layer.null?
    end

    # Invokes glNamedFramebufferDrawBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_draw_buffer!(*args)
      addr = @addr_named_framebuffer_draw_buffer
      proc = Procs.named_framebuffer_draw_buffer(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferDrawBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_draw_buffer(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferDrawBuffer") unless named_framebuffer_draw_buffer?

      named_framebuffer_draw_buffer!(*args)
    end

    # Checks if the function "glNamedFramebufferDrawBuffer" is loaded.
    @[AlwaysInline]
    def named_framebuffer_draw_buffer? : Bool
      !@addr_named_framebuffer_draw_buffer.null?
    end

    # Invokes glNamedFramebufferDrawBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_draw_buffers!(*args)
      addr = @addr_named_framebuffer_draw_buffers
      proc = Procs.named_framebuffer_draw_buffers(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferDrawBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_draw_buffers(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferDrawBuffers") unless named_framebuffer_draw_buffers?

      named_framebuffer_draw_buffers!(*args)
    end

    # Checks if the function "glNamedFramebufferDrawBuffers" is loaded.
    @[AlwaysInline]
    def named_framebuffer_draw_buffers? : Bool
      !@addr_named_framebuffer_draw_buffers.null?
    end

    # Invokes glNamedFramebufferReadBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_framebuffer_read_buffer!(*args)
      addr = @addr_named_framebuffer_read_buffer
      proc = Procs.named_framebuffer_read_buffer(addr)
      proc.call(*args)
    end

    # Invokes glNamedFramebufferReadBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_framebuffer_read_buffer(*args)
      raise FunctionUnavailableError.new("glNamedFramebufferReadBuffer") unless named_framebuffer_read_buffer?

      named_framebuffer_read_buffer!(*args)
    end

    # Checks if the function "glNamedFramebufferReadBuffer" is loaded.
    @[AlwaysInline]
    def named_framebuffer_read_buffer? : Bool
      !@addr_named_framebuffer_read_buffer.null?
    end

    # Invokes glInvalidateNamedFramebufferData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_named_framebuffer_data!(*args)
      addr = @addr_invalidate_named_framebuffer_data
      proc = Procs.invalidate_named_framebuffer_data(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateNamedFramebufferData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_named_framebuffer_data(*args)
      raise FunctionUnavailableError.new("glInvalidateNamedFramebufferData") unless invalidate_named_framebuffer_data?

      invalidate_named_framebuffer_data!(*args)
    end

    # Checks if the function "glInvalidateNamedFramebufferData" is loaded.
    @[AlwaysInline]
    def invalidate_named_framebuffer_data? : Bool
      !@addr_invalidate_named_framebuffer_data.null?
    end

    # Invokes glInvalidateNamedFramebufferSubData.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def invalidate_named_framebuffer_sub_data!(*args)
      addr = @addr_invalidate_named_framebuffer_sub_data
      proc = Procs.invalidate_named_framebuffer_sub_data(addr)
      proc.call(*args)
    end

    # Invokes glInvalidateNamedFramebufferSubData.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def invalidate_named_framebuffer_sub_data(*args)
      raise FunctionUnavailableError.new("glInvalidateNamedFramebufferSubData") unless invalidate_named_framebuffer_sub_data?

      invalidate_named_framebuffer_sub_data!(*args)
    end

    # Checks if the function "glInvalidateNamedFramebufferSubData" is loaded.
    @[AlwaysInline]
    def invalidate_named_framebuffer_sub_data? : Bool
      !@addr_invalidate_named_framebuffer_sub_data.null?
    end

    # Invokes glClearNamedFramebufferiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_named_framebuffer_iv!(*args)
      addr = @addr_clear_named_framebuffer_iv
      proc = Procs.clear_named_framebuffer_iv(addr)
      proc.call(*args)
    end

    # Invokes glClearNamedFramebufferiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_named_framebuffer_iv(*args)
      raise FunctionUnavailableError.new("glClearNamedFramebufferiv") unless clear_named_framebuffer_iv?

      clear_named_framebuffer_iv!(*args)
    end

    # Checks if the function "glClearNamedFramebufferiv" is loaded.
    @[AlwaysInline]
    def clear_named_framebuffer_iv? : Bool
      !@addr_clear_named_framebuffer_iv.null?
    end

    # Invokes glClearNamedFramebufferuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_named_framebuffer_uiv!(*args)
      addr = @addr_clear_named_framebuffer_uiv
      proc = Procs.clear_named_framebuffer_uiv(addr)
      proc.call(*args)
    end

    # Invokes glClearNamedFramebufferuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_named_framebuffer_uiv(*args)
      raise FunctionUnavailableError.new("glClearNamedFramebufferuiv") unless clear_named_framebuffer_uiv?

      clear_named_framebuffer_uiv!(*args)
    end

    # Checks if the function "glClearNamedFramebufferuiv" is loaded.
    @[AlwaysInline]
    def clear_named_framebuffer_uiv? : Bool
      !@addr_clear_named_framebuffer_uiv.null?
    end

    # Invokes glClearNamedFramebufferfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_named_framebuffer_fv!(*args)
      addr = @addr_clear_named_framebuffer_fv
      proc = Procs.clear_named_framebuffer_fv(addr)
      proc.call(*args)
    end

    # Invokes glClearNamedFramebufferfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_named_framebuffer_fv(*args)
      raise FunctionUnavailableError.new("glClearNamedFramebufferfv") unless clear_named_framebuffer_fv?

      clear_named_framebuffer_fv!(*args)
    end

    # Checks if the function "glClearNamedFramebufferfv" is loaded.
    @[AlwaysInline]
    def clear_named_framebuffer_fv? : Bool
      !@addr_clear_named_framebuffer_fv.null?
    end

    # Invokes glClearNamedFramebufferfi.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def clear_named_framebuffer_fi!(*args)
      addr = @addr_clear_named_framebuffer_fi
      proc = Procs.clear_named_framebuffer_fi(addr)
      proc.call(*args)
    end

    # Invokes glClearNamedFramebufferfi.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def clear_named_framebuffer_fi(*args)
      raise FunctionUnavailableError.new("glClearNamedFramebufferfi") unless clear_named_framebuffer_fi?

      clear_named_framebuffer_fi!(*args)
    end

    # Checks if the function "glClearNamedFramebufferfi" is loaded.
    @[AlwaysInline]
    def clear_named_framebuffer_fi? : Bool
      !@addr_clear_named_framebuffer_fi.null?
    end

    # Invokes glBlitNamedFramebuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def blit_named_framebuffer!(*args)
      addr = @addr_blit_named_framebuffer
      proc = Procs.blit_named_framebuffer(addr)
      proc.call(*args)
    end

    # Invokes glBlitNamedFramebuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def blit_named_framebuffer(*args)
      raise FunctionUnavailableError.new("glBlitNamedFramebuffer") unless blit_named_framebuffer?

      blit_named_framebuffer!(*args)
    end

    # Checks if the function "glBlitNamedFramebuffer" is loaded.
    @[AlwaysInline]
    def blit_named_framebuffer? : Bool
      !@addr_blit_named_framebuffer.null?
    end

    # Invokes glCheckNamedFramebufferStatus.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def check_named_framebuffer_status!(*args)
      addr = @addr_check_named_framebuffer_status
      proc = Procs.check_named_framebuffer_status(addr)
      proc.call(*args)
    end

    # Invokes glCheckNamedFramebufferStatus.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def check_named_framebuffer_status(*args)
      raise FunctionUnavailableError.new("glCheckNamedFramebufferStatus") unless check_named_framebuffer_status?

      check_named_framebuffer_status!(*args)
    end

    # Checks if the function "glCheckNamedFramebufferStatus" is loaded.
    @[AlwaysInline]
    def check_named_framebuffer_status? : Bool
      !@addr_check_named_framebuffer_status.null?
    end

    # Invokes glGetNamedFramebufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_framebuffer_parameter_iv!(*args)
      addr = @addr_get_named_framebuffer_parameter_iv
      proc = Procs.get_named_framebuffer_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedFramebufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_framebuffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetNamedFramebufferParameteriv") unless get_named_framebuffer_parameter_iv?

      get_named_framebuffer_parameter_iv!(*args)
    end

    # Checks if the function "glGetNamedFramebufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_named_framebuffer_parameter_iv? : Bool
      !@addr_get_named_framebuffer_parameter_iv.null?
    end

    # Invokes glGetNamedFramebufferAttachmentParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_framebuffer_attachment_parameter_iv!(*args)
      addr = @addr_get_named_framebuffer_attachment_parameter_iv
      proc = Procs.get_named_framebuffer_attachment_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedFramebufferAttachmentParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_framebuffer_attachment_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetNamedFramebufferAttachmentParameteriv") unless get_named_framebuffer_attachment_parameter_iv?

      get_named_framebuffer_attachment_parameter_iv!(*args)
    end

    # Checks if the function "glGetNamedFramebufferAttachmentParameteriv" is loaded.
    @[AlwaysInline]
    def get_named_framebuffer_attachment_parameter_iv? : Bool
      !@addr_get_named_framebuffer_attachment_parameter_iv.null?
    end

    # Invokes glCreateRenderbuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_renderbuffers!(*args)
      addr = @addr_create_renderbuffers
      proc = Procs.create_renderbuffers(addr)
      proc.call(*args)
    end

    # Invokes glCreateRenderbuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_renderbuffers(*args)
      raise FunctionUnavailableError.new("glCreateRenderbuffers") unless create_renderbuffers?

      create_renderbuffers!(*args)
    end

    # Checks if the function "glCreateRenderbuffers" is loaded.
    @[AlwaysInline]
    def create_renderbuffers? : Bool
      !@addr_create_renderbuffers.null?
    end

    # Invokes glNamedRenderbufferStorage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_renderbuffer_storage!(*args)
      addr = @addr_named_renderbuffer_storage
      proc = Procs.named_renderbuffer_storage(addr)
      proc.call(*args)
    end

    # Invokes glNamedRenderbufferStorage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_renderbuffer_storage(*args)
      raise FunctionUnavailableError.new("glNamedRenderbufferStorage") unless named_renderbuffer_storage?

      named_renderbuffer_storage!(*args)
    end

    # Checks if the function "glNamedRenderbufferStorage" is loaded.
    @[AlwaysInline]
    def named_renderbuffer_storage? : Bool
      !@addr_named_renderbuffer_storage.null?
    end

    # Invokes glNamedRenderbufferStorageMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def named_renderbuffer_storage_multisample!(*args)
      addr = @addr_named_renderbuffer_storage_multisample
      proc = Procs.named_renderbuffer_storage_multisample(addr)
      proc.call(*args)
    end

    # Invokes glNamedRenderbufferStorageMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def named_renderbuffer_storage_multisample(*args)
      raise FunctionUnavailableError.new("glNamedRenderbufferStorageMultisample") unless named_renderbuffer_storage_multisample?

      named_renderbuffer_storage_multisample!(*args)
    end

    # Checks if the function "glNamedRenderbufferStorageMultisample" is loaded.
    @[AlwaysInline]
    def named_renderbuffer_storage_multisample? : Bool
      !@addr_named_renderbuffer_storage_multisample.null?
    end

    # Invokes glGetNamedRenderbufferParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_named_renderbuffer_parameter_iv!(*args)
      addr = @addr_get_named_renderbuffer_parameter_iv
      proc = Procs.get_named_renderbuffer_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetNamedRenderbufferParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_named_renderbuffer_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetNamedRenderbufferParameteriv") unless get_named_renderbuffer_parameter_iv?

      get_named_renderbuffer_parameter_iv!(*args)
    end

    # Checks if the function "glGetNamedRenderbufferParameteriv" is loaded.
    @[AlwaysInline]
    def get_named_renderbuffer_parameter_iv? : Bool
      !@addr_get_named_renderbuffer_parameter_iv.null?
    end

    # Invokes glCreateTextures.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_textures!(*args)
      addr = @addr_create_textures
      proc = Procs.create_textures(addr)
      proc.call(*args)
    end

    # Invokes glCreateTextures.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_textures(*args)
      raise FunctionUnavailableError.new("glCreateTextures") unless create_textures?

      create_textures!(*args)
    end

    # Checks if the function "glCreateTextures" is loaded.
    @[AlwaysInline]
    def create_textures? : Bool
      !@addr_create_textures.null?
    end

    # Invokes glTextureBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_buffer!(*args)
      addr = @addr_texture_buffer
      proc = Procs.texture_buffer(addr)
      proc.call(*args)
    end

    # Invokes glTextureBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_buffer(*args)
      raise FunctionUnavailableError.new("glTextureBuffer") unless texture_buffer?

      texture_buffer!(*args)
    end

    # Checks if the function "glTextureBuffer" is loaded.
    @[AlwaysInline]
    def texture_buffer? : Bool
      !@addr_texture_buffer.null?
    end

    # Invokes glTextureBufferRange.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_buffer_range!(*args)
      addr = @addr_texture_buffer_range
      proc = Procs.texture_buffer_range(addr)
      proc.call(*args)
    end

    # Invokes glTextureBufferRange.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_buffer_range(*args)
      raise FunctionUnavailableError.new("glTextureBufferRange") unless texture_buffer_range?

      texture_buffer_range!(*args)
    end

    # Checks if the function "glTextureBufferRange" is loaded.
    @[AlwaysInline]
    def texture_buffer_range? : Bool
      !@addr_texture_buffer_range.null?
    end

    # Invokes glTextureStorage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_storage_1d!(*args)
      addr = @addr_texture_storage_1d
      proc = Procs.texture_storage_1d(addr)
      proc.call(*args)
    end

    # Invokes glTextureStorage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_storage_1d(*args)
      raise FunctionUnavailableError.new("glTextureStorage1D") unless texture_storage_1d?

      texture_storage_1d!(*args)
    end

    # Checks if the function "glTextureStorage1D" is loaded.
    @[AlwaysInline]
    def texture_storage_1d? : Bool
      !@addr_texture_storage_1d.null?
    end

    # Invokes glTextureStorage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_storage_2d!(*args)
      addr = @addr_texture_storage_2d
      proc = Procs.texture_storage_2d(addr)
      proc.call(*args)
    end

    # Invokes glTextureStorage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_storage_2d(*args)
      raise FunctionUnavailableError.new("glTextureStorage2D") unless texture_storage_2d?

      texture_storage_2d!(*args)
    end

    # Checks if the function "glTextureStorage2D" is loaded.
    @[AlwaysInline]
    def texture_storage_2d? : Bool
      !@addr_texture_storage_2d.null?
    end

    # Invokes glTextureStorage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_storage_3d!(*args)
      addr = @addr_texture_storage_3d
      proc = Procs.texture_storage_3d(addr)
      proc.call(*args)
    end

    # Invokes glTextureStorage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_storage_3d(*args)
      raise FunctionUnavailableError.new("glTextureStorage3D") unless texture_storage_3d?

      texture_storage_3d!(*args)
    end

    # Checks if the function "glTextureStorage3D" is loaded.
    @[AlwaysInline]
    def texture_storage_3d? : Bool
      !@addr_texture_storage_3d.null?
    end

    # Invokes glTextureStorage2DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_storage_2d_multisample!(*args)
      addr = @addr_texture_storage_2d_multisample
      proc = Procs.texture_storage_2d_multisample(addr)
      proc.call(*args)
    end

    # Invokes glTextureStorage2DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_storage_2d_multisample(*args)
      raise FunctionUnavailableError.new("glTextureStorage2DMultisample") unless texture_storage_2d_multisample?

      texture_storage_2d_multisample!(*args)
    end

    # Checks if the function "glTextureStorage2DMultisample" is loaded.
    @[AlwaysInline]
    def texture_storage_2d_multisample? : Bool
      !@addr_texture_storage_2d_multisample.null?
    end

    # Invokes glTextureStorage3DMultisample.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_storage_3d_multisample!(*args)
      addr = @addr_texture_storage_3d_multisample
      proc = Procs.texture_storage_3d_multisample(addr)
      proc.call(*args)
    end

    # Invokes glTextureStorage3DMultisample.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_storage_3d_multisample(*args)
      raise FunctionUnavailableError.new("glTextureStorage3DMultisample") unless texture_storage_3d_multisample?

      texture_storage_3d_multisample!(*args)
    end

    # Checks if the function "glTextureStorage3DMultisample" is loaded.
    @[AlwaysInline]
    def texture_storage_3d_multisample? : Bool
      !@addr_texture_storage_3d_multisample.null?
    end

    # Invokes glTextureSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_sub_image_1d!(*args)
      addr = @addr_texture_sub_image_1d
      proc = Procs.texture_sub_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glTextureSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glTextureSubImage1D") unless texture_sub_image_1d?

      texture_sub_image_1d!(*args)
    end

    # Checks if the function "glTextureSubImage1D" is loaded.
    @[AlwaysInline]
    def texture_sub_image_1d? : Bool
      !@addr_texture_sub_image_1d.null?
    end

    # Invokes glTextureSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_sub_image_2d!(*args)
      addr = @addr_texture_sub_image_2d
      proc = Procs.texture_sub_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glTextureSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glTextureSubImage2D") unless texture_sub_image_2d?

      texture_sub_image_2d!(*args)
    end

    # Checks if the function "glTextureSubImage2D" is loaded.
    @[AlwaysInline]
    def texture_sub_image_2d? : Bool
      !@addr_texture_sub_image_2d.null?
    end

    # Invokes glTextureSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_sub_image_3d!(*args)
      addr = @addr_texture_sub_image_3d
      proc = Procs.texture_sub_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glTextureSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glTextureSubImage3D") unless texture_sub_image_3d?

      texture_sub_image_3d!(*args)
    end

    # Checks if the function "glTextureSubImage3D" is loaded.
    @[AlwaysInline]
    def texture_sub_image_3d? : Bool
      !@addr_texture_sub_image_3d.null?
    end

    # Invokes glCompressedTextureSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_texture_sub_image_1d!(*args)
      addr = @addr_compressed_texture_sub_image_1d
      proc = Procs.compressed_texture_sub_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTextureSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_texture_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glCompressedTextureSubImage1D") unless compressed_texture_sub_image_1d?

      compressed_texture_sub_image_1d!(*args)
    end

    # Checks if the function "glCompressedTextureSubImage1D" is loaded.
    @[AlwaysInline]
    def compressed_texture_sub_image_1d? : Bool
      !@addr_compressed_texture_sub_image_1d.null?
    end

    # Invokes glCompressedTextureSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_texture_sub_image_2d!(*args)
      addr = @addr_compressed_texture_sub_image_2d
      proc = Procs.compressed_texture_sub_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTextureSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_texture_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glCompressedTextureSubImage2D") unless compressed_texture_sub_image_2d?

      compressed_texture_sub_image_2d!(*args)
    end

    # Checks if the function "glCompressedTextureSubImage2D" is loaded.
    @[AlwaysInline]
    def compressed_texture_sub_image_2d? : Bool
      !@addr_compressed_texture_sub_image_2d.null?
    end

    # Invokes glCompressedTextureSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def compressed_texture_sub_image_3d!(*args)
      addr = @addr_compressed_texture_sub_image_3d
      proc = Procs.compressed_texture_sub_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glCompressedTextureSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def compressed_texture_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glCompressedTextureSubImage3D") unless compressed_texture_sub_image_3d?

      compressed_texture_sub_image_3d!(*args)
    end

    # Checks if the function "glCompressedTextureSubImage3D" is loaded.
    @[AlwaysInline]
    def compressed_texture_sub_image_3d? : Bool
      !@addr_compressed_texture_sub_image_3d.null?
    end

    # Invokes glCopyTextureSubImage1D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_texture_sub_image_1d!(*args)
      addr = @addr_copy_texture_sub_image_1d
      proc = Procs.copy_texture_sub_image_1d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTextureSubImage1D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_texture_sub_image_1d(*args)
      raise FunctionUnavailableError.new("glCopyTextureSubImage1D") unless copy_texture_sub_image_1d?

      copy_texture_sub_image_1d!(*args)
    end

    # Checks if the function "glCopyTextureSubImage1D" is loaded.
    @[AlwaysInline]
    def copy_texture_sub_image_1d? : Bool
      !@addr_copy_texture_sub_image_1d.null?
    end

    # Invokes glCopyTextureSubImage2D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_texture_sub_image_2d!(*args)
      addr = @addr_copy_texture_sub_image_2d
      proc = Procs.copy_texture_sub_image_2d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTextureSubImage2D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_texture_sub_image_2d(*args)
      raise FunctionUnavailableError.new("glCopyTextureSubImage2D") unless copy_texture_sub_image_2d?

      copy_texture_sub_image_2d!(*args)
    end

    # Checks if the function "glCopyTextureSubImage2D" is loaded.
    @[AlwaysInline]
    def copy_texture_sub_image_2d? : Bool
      !@addr_copy_texture_sub_image_2d.null?
    end

    # Invokes glCopyTextureSubImage3D.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def copy_texture_sub_image_3d!(*args)
      addr = @addr_copy_texture_sub_image_3d
      proc = Procs.copy_texture_sub_image_3d(addr)
      proc.call(*args)
    end

    # Invokes glCopyTextureSubImage3D.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def copy_texture_sub_image_3d(*args)
      raise FunctionUnavailableError.new("glCopyTextureSubImage3D") unless copy_texture_sub_image_3d?

      copy_texture_sub_image_3d!(*args)
    end

    # Checks if the function "glCopyTextureSubImage3D" is loaded.
    @[AlwaysInline]
    def copy_texture_sub_image_3d? : Bool
      !@addr_copy_texture_sub_image_3d.null?
    end

    # Invokes glTextureParameterf.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_parameter_f!(*args)
      addr = @addr_texture_parameter_f
      proc = Procs.texture_parameter_f(addr)
      proc.call(*args)
    end

    # Invokes glTextureParameterf.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_parameter_f(*args)
      raise FunctionUnavailableError.new("glTextureParameterf") unless texture_parameter_f?

      texture_parameter_f!(*args)
    end

    # Checks if the function "glTextureParameterf" is loaded.
    @[AlwaysInline]
    def texture_parameter_f? : Bool
      !@addr_texture_parameter_f.null?
    end

    # Invokes glTextureParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_parameter_fv!(*args)
      addr = @addr_texture_parameter_fv
      proc = Procs.texture_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glTextureParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_parameter_fv(*args)
      raise FunctionUnavailableError.new("glTextureParameterfv") unless texture_parameter_fv?

      texture_parameter_fv!(*args)
    end

    # Checks if the function "glTextureParameterfv" is loaded.
    @[AlwaysInline]
    def texture_parameter_fv? : Bool
      !@addr_texture_parameter_fv.null?
    end

    # Invokes glTextureParameteri.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_parameter_i!(*args)
      addr = @addr_texture_parameter_i
      proc = Procs.texture_parameter_i(addr)
      proc.call(*args)
    end

    # Invokes glTextureParameteri.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_parameter_i(*args)
      raise FunctionUnavailableError.new("glTextureParameteri") unless texture_parameter_i?

      texture_parameter_i!(*args)
    end

    # Checks if the function "glTextureParameteri" is loaded.
    @[AlwaysInline]
    def texture_parameter_i? : Bool
      !@addr_texture_parameter_i.null?
    end

    # Invokes glTextureParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_parameter_i_iv!(*args)
      addr = @addr_texture_parameter_i_iv
      proc = Procs.texture_parameter_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glTextureParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glTextureParameterIiv") unless texture_parameter_i_iv?

      texture_parameter_i_iv!(*args)
    end

    # Checks if the function "glTextureParameterIiv" is loaded.
    @[AlwaysInline]
    def texture_parameter_i_iv? : Bool
      !@addr_texture_parameter_i_iv.null?
    end

    # Invokes glTextureParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_parameter_i_uiv!(*args)
      addr = @addr_texture_parameter_i_uiv
      proc = Procs.texture_parameter_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glTextureParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glTextureParameterIuiv") unless texture_parameter_i_uiv?

      texture_parameter_i_uiv!(*args)
    end

    # Checks if the function "glTextureParameterIuiv" is loaded.
    @[AlwaysInline]
    def texture_parameter_i_uiv? : Bool
      !@addr_texture_parameter_i_uiv.null?
    end

    # Invokes glTextureParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_parameter_iv!(*args)
      addr = @addr_texture_parameter_iv
      proc = Procs.texture_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glTextureParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_parameter_iv(*args)
      raise FunctionUnavailableError.new("glTextureParameteriv") unless texture_parameter_iv?

      texture_parameter_iv!(*args)
    end

    # Checks if the function "glTextureParameteriv" is loaded.
    @[AlwaysInline]
    def texture_parameter_iv? : Bool
      !@addr_texture_parameter_iv.null?
    end

    # Invokes glGenerateTextureMipmap.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def generate_texture_mipmap!(*args)
      addr = @addr_generate_texture_mipmap
      proc = Procs.generate_texture_mipmap(addr)
      proc.call(*args)
    end

    # Invokes glGenerateTextureMipmap.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def generate_texture_mipmap(*args)
      raise FunctionUnavailableError.new("glGenerateTextureMipmap") unless generate_texture_mipmap?

      generate_texture_mipmap!(*args)
    end

    # Checks if the function "glGenerateTextureMipmap" is loaded.
    @[AlwaysInline]
    def generate_texture_mipmap? : Bool
      !@addr_generate_texture_mipmap.null?
    end

    # Invokes glBindTextureUnit.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def bind_texture_unit!(*args)
      addr = @addr_bind_texture_unit
      proc = Procs.bind_texture_unit(addr)
      proc.call(*args)
    end

    # Invokes glBindTextureUnit.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def bind_texture_unit(*args)
      raise FunctionUnavailableError.new("glBindTextureUnit") unless bind_texture_unit?

      bind_texture_unit!(*args)
    end

    # Checks if the function "glBindTextureUnit" is loaded.
    @[AlwaysInline]
    def bind_texture_unit? : Bool
      !@addr_bind_texture_unit.null?
    end

    # Invokes glGetTextureImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_image!(*args)
      addr = @addr_get_texture_image
      proc = Procs.get_texture_image(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_image(*args)
      raise FunctionUnavailableError.new("glGetTextureImage") unless get_texture_image?

      get_texture_image!(*args)
    end

    # Checks if the function "glGetTextureImage" is loaded.
    @[AlwaysInline]
    def get_texture_image? : Bool
      !@addr_get_texture_image.null?
    end

    # Invokes glGetCompressedTextureImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_compressed_texture_image!(*args)
      addr = @addr_get_compressed_texture_image
      proc = Procs.get_compressed_texture_image(addr)
      proc.call(*args)
    end

    # Invokes glGetCompressedTextureImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_compressed_texture_image(*args)
      raise FunctionUnavailableError.new("glGetCompressedTextureImage") unless get_compressed_texture_image?

      get_compressed_texture_image!(*args)
    end

    # Checks if the function "glGetCompressedTextureImage" is loaded.
    @[AlwaysInline]
    def get_compressed_texture_image? : Bool
      !@addr_get_compressed_texture_image.null?
    end

    # Invokes glGetTextureLevelParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_level_parameter_fv!(*args)
      addr = @addr_get_texture_level_parameter_fv
      proc = Procs.get_texture_level_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureLevelParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_level_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetTextureLevelParameterfv") unless get_texture_level_parameter_fv?

      get_texture_level_parameter_fv!(*args)
    end

    # Checks if the function "glGetTextureLevelParameterfv" is loaded.
    @[AlwaysInline]
    def get_texture_level_parameter_fv? : Bool
      !@addr_get_texture_level_parameter_fv.null?
    end

    # Invokes glGetTextureLevelParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_level_parameter_iv!(*args)
      addr = @addr_get_texture_level_parameter_iv
      proc = Procs.get_texture_level_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureLevelParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_level_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetTextureLevelParameteriv") unless get_texture_level_parameter_iv?

      get_texture_level_parameter_iv!(*args)
    end

    # Checks if the function "glGetTextureLevelParameteriv" is loaded.
    @[AlwaysInline]
    def get_texture_level_parameter_iv? : Bool
      !@addr_get_texture_level_parameter_iv.null?
    end

    # Invokes glGetTextureParameterfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_parameter_fv!(*args)
      addr = @addr_get_texture_parameter_fv
      proc = Procs.get_texture_parameter_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureParameterfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_parameter_fv(*args)
      raise FunctionUnavailableError.new("glGetTextureParameterfv") unless get_texture_parameter_fv?

      get_texture_parameter_fv!(*args)
    end

    # Checks if the function "glGetTextureParameterfv" is loaded.
    @[AlwaysInline]
    def get_texture_parameter_fv? : Bool
      !@addr_get_texture_parameter_fv.null?
    end

    # Invokes glGetTextureParameterIiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_parameter_i_iv!(*args)
      addr = @addr_get_texture_parameter_i_iv
      proc = Procs.get_texture_parameter_i_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureParameterIiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_parameter_i_iv(*args)
      raise FunctionUnavailableError.new("glGetTextureParameterIiv") unless get_texture_parameter_i_iv?

      get_texture_parameter_i_iv!(*args)
    end

    # Checks if the function "glGetTextureParameterIiv" is loaded.
    @[AlwaysInline]
    def get_texture_parameter_i_iv? : Bool
      !@addr_get_texture_parameter_i_iv.null?
    end

    # Invokes glGetTextureParameterIuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_parameter_i_uiv!(*args)
      addr = @addr_get_texture_parameter_i_uiv
      proc = Procs.get_texture_parameter_i_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureParameterIuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_parameter_i_uiv(*args)
      raise FunctionUnavailableError.new("glGetTextureParameterIuiv") unless get_texture_parameter_i_uiv?

      get_texture_parameter_i_uiv!(*args)
    end

    # Checks if the function "glGetTextureParameterIuiv" is loaded.
    @[AlwaysInline]
    def get_texture_parameter_i_uiv? : Bool
      !@addr_get_texture_parameter_i_uiv.null?
    end

    # Invokes glGetTextureParameteriv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_parameter_iv!(*args)
      addr = @addr_get_texture_parameter_iv
      proc = Procs.get_texture_parameter_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureParameteriv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_parameter_iv(*args)
      raise FunctionUnavailableError.new("glGetTextureParameteriv") unless get_texture_parameter_iv?

      get_texture_parameter_iv!(*args)
    end

    # Checks if the function "glGetTextureParameteriv" is loaded.
    @[AlwaysInline]
    def get_texture_parameter_iv? : Bool
      !@addr_get_texture_parameter_iv.null?
    end

    # Invokes glCreateVertexArrays.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_vertex_arrays!(*args)
      addr = @addr_create_vertex_arrays
      proc = Procs.create_vertex_arrays(addr)
      proc.call(*args)
    end

    # Invokes glCreateVertexArrays.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_vertex_arrays(*args)
      raise FunctionUnavailableError.new("glCreateVertexArrays") unless create_vertex_arrays?

      create_vertex_arrays!(*args)
    end

    # Checks if the function "glCreateVertexArrays" is loaded.
    @[AlwaysInline]
    def create_vertex_arrays? : Bool
      !@addr_create_vertex_arrays.null?
    end

    # Invokes glDisableVertexArrayAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def disable_vertex_array_attrib!(*args)
      addr = @addr_disable_vertex_array_attrib
      proc = Procs.disable_vertex_array_attrib(addr)
      proc.call(*args)
    end

    # Invokes glDisableVertexArrayAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def disable_vertex_array_attrib(*args)
      raise FunctionUnavailableError.new("glDisableVertexArrayAttrib") unless disable_vertex_array_attrib?

      disable_vertex_array_attrib!(*args)
    end

    # Checks if the function "glDisableVertexArrayAttrib" is loaded.
    @[AlwaysInline]
    def disable_vertex_array_attrib? : Bool
      !@addr_disable_vertex_array_attrib.null?
    end

    # Invokes glEnableVertexArrayAttrib.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def enable_vertex_array_attrib!(*args)
      addr = @addr_enable_vertex_array_attrib
      proc = Procs.enable_vertex_array_attrib(addr)
      proc.call(*args)
    end

    # Invokes glEnableVertexArrayAttrib.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def enable_vertex_array_attrib(*args)
      raise FunctionUnavailableError.new("glEnableVertexArrayAttrib") unless enable_vertex_array_attrib?

      enable_vertex_array_attrib!(*args)
    end

    # Checks if the function "glEnableVertexArrayAttrib" is loaded.
    @[AlwaysInline]
    def enable_vertex_array_attrib? : Bool
      !@addr_enable_vertex_array_attrib.null?
    end

    # Invokes glVertexArrayElementBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_element_buffer!(*args)
      addr = @addr_vertex_array_element_buffer
      proc = Procs.vertex_array_element_buffer(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayElementBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_element_buffer(*args)
      raise FunctionUnavailableError.new("glVertexArrayElementBuffer") unless vertex_array_element_buffer?

      vertex_array_element_buffer!(*args)
    end

    # Checks if the function "glVertexArrayElementBuffer" is loaded.
    @[AlwaysInline]
    def vertex_array_element_buffer? : Bool
      !@addr_vertex_array_element_buffer.null?
    end

    # Invokes glVertexArrayVertexBuffer.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_vertex_buffer!(*args)
      addr = @addr_vertex_array_vertex_buffer
      proc = Procs.vertex_array_vertex_buffer(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayVertexBuffer.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_vertex_buffer(*args)
      raise FunctionUnavailableError.new("glVertexArrayVertexBuffer") unless vertex_array_vertex_buffer?

      vertex_array_vertex_buffer!(*args)
    end

    # Checks if the function "glVertexArrayVertexBuffer" is loaded.
    @[AlwaysInline]
    def vertex_array_vertex_buffer? : Bool
      !@addr_vertex_array_vertex_buffer.null?
    end

    # Invokes glVertexArrayVertexBuffers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_vertex_buffers!(*args)
      addr = @addr_vertex_array_vertex_buffers
      proc = Procs.vertex_array_vertex_buffers(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayVertexBuffers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_vertex_buffers(*args)
      raise FunctionUnavailableError.new("glVertexArrayVertexBuffers") unless vertex_array_vertex_buffers?

      vertex_array_vertex_buffers!(*args)
    end

    # Checks if the function "glVertexArrayVertexBuffers" is loaded.
    @[AlwaysInline]
    def vertex_array_vertex_buffers? : Bool
      !@addr_vertex_array_vertex_buffers.null?
    end

    # Invokes glVertexArrayAttribBinding.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_attrib_binding!(*args)
      addr = @addr_vertex_array_attrib_binding
      proc = Procs.vertex_array_attrib_binding(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayAttribBinding.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_attrib_binding(*args)
      raise FunctionUnavailableError.new("glVertexArrayAttribBinding") unless vertex_array_attrib_binding?

      vertex_array_attrib_binding!(*args)
    end

    # Checks if the function "glVertexArrayAttribBinding" is loaded.
    @[AlwaysInline]
    def vertex_array_attrib_binding? : Bool
      !@addr_vertex_array_attrib_binding.null?
    end

    # Invokes glVertexArrayAttribFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_attrib_format!(*args)
      addr = @addr_vertex_array_attrib_format
      proc = Procs.vertex_array_attrib_format(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayAttribFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_attrib_format(*args)
      raise FunctionUnavailableError.new("glVertexArrayAttribFormat") unless vertex_array_attrib_format?

      vertex_array_attrib_format!(*args)
    end

    # Checks if the function "glVertexArrayAttribFormat" is loaded.
    @[AlwaysInline]
    def vertex_array_attrib_format? : Bool
      !@addr_vertex_array_attrib_format.null?
    end

    # Invokes glVertexArrayAttribIFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_attrib_i_format!(*args)
      addr = @addr_vertex_array_attrib_i_format
      proc = Procs.vertex_array_attrib_i_format(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayAttribIFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_attrib_i_format(*args)
      raise FunctionUnavailableError.new("glVertexArrayAttribIFormat") unless vertex_array_attrib_i_format?

      vertex_array_attrib_i_format!(*args)
    end

    # Checks if the function "glVertexArrayAttribIFormat" is loaded.
    @[AlwaysInline]
    def vertex_array_attrib_i_format? : Bool
      !@addr_vertex_array_attrib_i_format.null?
    end

    # Invokes glVertexArrayAttribLFormat.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_attrib_l_format!(*args)
      addr = @addr_vertex_array_attrib_l_format
      proc = Procs.vertex_array_attrib_l_format(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayAttribLFormat.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_attrib_l_format(*args)
      raise FunctionUnavailableError.new("glVertexArrayAttribLFormat") unless vertex_array_attrib_l_format?

      vertex_array_attrib_l_format!(*args)
    end

    # Checks if the function "glVertexArrayAttribLFormat" is loaded.
    @[AlwaysInline]
    def vertex_array_attrib_l_format? : Bool
      !@addr_vertex_array_attrib_l_format.null?
    end

    # Invokes glVertexArrayBindingDivisor.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def vertex_array_binding_divisor!(*args)
      addr = @addr_vertex_array_binding_divisor
      proc = Procs.vertex_array_binding_divisor(addr)
      proc.call(*args)
    end

    # Invokes glVertexArrayBindingDivisor.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def vertex_array_binding_divisor(*args)
      raise FunctionUnavailableError.new("glVertexArrayBindingDivisor") unless vertex_array_binding_divisor?

      vertex_array_binding_divisor!(*args)
    end

    # Checks if the function "glVertexArrayBindingDivisor" is loaded.
    @[AlwaysInline]
    def vertex_array_binding_divisor? : Bool
      !@addr_vertex_array_binding_divisor.null?
    end

    # Invokes glGetVertexArrayiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_array_iv!(*args)
      addr = @addr_get_vertex_array_iv
      proc = Procs.get_vertex_array_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexArrayiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_array_iv(*args)
      raise FunctionUnavailableError.new("glGetVertexArrayiv") unless get_vertex_array_iv?

      get_vertex_array_iv!(*args)
    end

    # Checks if the function "glGetVertexArrayiv" is loaded.
    @[AlwaysInline]
    def get_vertex_array_iv? : Bool
      !@addr_get_vertex_array_iv.null?
    end

    # Invokes glGetVertexArrayIndexediv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_array_indexed_iv!(*args)
      addr = @addr_get_vertex_array_indexed_iv
      proc = Procs.get_vertex_array_indexed_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexArrayIndexediv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_array_indexed_iv(*args)
      raise FunctionUnavailableError.new("glGetVertexArrayIndexediv") unless get_vertex_array_indexed_iv?

      get_vertex_array_indexed_iv!(*args)
    end

    # Checks if the function "glGetVertexArrayIndexediv" is loaded.
    @[AlwaysInline]
    def get_vertex_array_indexed_iv? : Bool
      !@addr_get_vertex_array_indexed_iv.null?
    end

    # Invokes glGetVertexArrayIndexed64iv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_vertex_array_indexed_64iv!(*args)
      addr = @addr_get_vertex_array_indexed_64iv
      proc = Procs.get_vertex_array_indexed_64iv(addr)
      proc.call(*args)
    end

    # Invokes glGetVertexArrayIndexed64iv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_vertex_array_indexed_64iv(*args)
      raise FunctionUnavailableError.new("glGetVertexArrayIndexed64iv") unless get_vertex_array_indexed_64iv?

      get_vertex_array_indexed_64iv!(*args)
    end

    # Checks if the function "glGetVertexArrayIndexed64iv" is loaded.
    @[AlwaysInline]
    def get_vertex_array_indexed_64iv? : Bool
      !@addr_get_vertex_array_indexed_64iv.null?
    end

    # Invokes glCreateSamplers.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_samplers!(*args)
      addr = @addr_create_samplers
      proc = Procs.create_samplers(addr)
      proc.call(*args)
    end

    # Invokes glCreateSamplers.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_samplers(*args)
      raise FunctionUnavailableError.new("glCreateSamplers") unless create_samplers?

      create_samplers!(*args)
    end

    # Checks if the function "glCreateSamplers" is loaded.
    @[AlwaysInline]
    def create_samplers? : Bool
      !@addr_create_samplers.null?
    end

    # Invokes glCreateProgramPipelines.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_program_pipelines!(*args)
      addr = @addr_create_program_pipelines
      proc = Procs.create_program_pipelines(addr)
      proc.call(*args)
    end

    # Invokes glCreateProgramPipelines.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_program_pipelines(*args)
      raise FunctionUnavailableError.new("glCreateProgramPipelines") unless create_program_pipelines?

      create_program_pipelines!(*args)
    end

    # Checks if the function "glCreateProgramPipelines" is loaded.
    @[AlwaysInline]
    def create_program_pipelines? : Bool
      !@addr_create_program_pipelines.null?
    end

    # Invokes glCreateQueries.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def create_queries!(*args)
      addr = @addr_create_queries
      proc = Procs.create_queries(addr)
      proc.call(*args)
    end

    # Invokes glCreateQueries.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def create_queries(*args)
      raise FunctionUnavailableError.new("glCreateQueries") unless create_queries?

      create_queries!(*args)
    end

    # Checks if the function "glCreateQueries" is loaded.
    @[AlwaysInline]
    def create_queries? : Bool
      !@addr_create_queries.null?
    end

    # Invokes glGetQueryBufferObjecti64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_buffer_object_i64v!(*args)
      addr = @addr_get_query_buffer_object_i64v
      proc = Procs.get_query_buffer_object_i64v(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryBufferObjecti64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_buffer_object_i64v(*args)
      raise FunctionUnavailableError.new("glGetQueryBufferObjecti64v") unless get_query_buffer_object_i64v?

      get_query_buffer_object_i64v!(*args)
    end

    # Checks if the function "glGetQueryBufferObjecti64v" is loaded.
    @[AlwaysInline]
    def get_query_buffer_object_i64v? : Bool
      !@addr_get_query_buffer_object_i64v.null?
    end

    # Invokes glGetQueryBufferObjectiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_buffer_object_iv!(*args)
      addr = @addr_get_query_buffer_object_iv
      proc = Procs.get_query_buffer_object_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryBufferObjectiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_buffer_object_iv(*args)
      raise FunctionUnavailableError.new("glGetQueryBufferObjectiv") unless get_query_buffer_object_iv?

      get_query_buffer_object_iv!(*args)
    end

    # Checks if the function "glGetQueryBufferObjectiv" is loaded.
    @[AlwaysInline]
    def get_query_buffer_object_iv? : Bool
      !@addr_get_query_buffer_object_iv.null?
    end

    # Invokes glGetQueryBufferObjectui64v.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_buffer_object_ui64v!(*args)
      addr = @addr_get_query_buffer_object_ui64v
      proc = Procs.get_query_buffer_object_ui64v(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryBufferObjectui64v.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_buffer_object_ui64v(*args)
      raise FunctionUnavailableError.new("glGetQueryBufferObjectui64v") unless get_query_buffer_object_ui64v?

      get_query_buffer_object_ui64v!(*args)
    end

    # Checks if the function "glGetQueryBufferObjectui64v" is loaded.
    @[AlwaysInline]
    def get_query_buffer_object_ui64v? : Bool
      !@addr_get_query_buffer_object_ui64v.null?
    end

    # Invokes glGetQueryBufferObjectuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_query_buffer_object_uiv!(*args)
      addr = @addr_get_query_buffer_object_uiv
      proc = Procs.get_query_buffer_object_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetQueryBufferObjectuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_query_buffer_object_uiv(*args)
      raise FunctionUnavailableError.new("glGetQueryBufferObjectuiv") unless get_query_buffer_object_uiv?

      get_query_buffer_object_uiv!(*args)
    end

    # Checks if the function "glGetQueryBufferObjectuiv" is loaded.
    @[AlwaysInline]
    def get_query_buffer_object_uiv? : Bool
      !@addr_get_query_buffer_object_uiv.null?
    end

    # Invokes glMemoryBarrierByRegion.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def memory_barrier_by_region!(*args)
      addr = @addr_memory_barrier_by_region
      proc = Procs.memory_barrier_by_region(addr)
      proc.call(*args)
    end

    # Invokes glMemoryBarrierByRegion.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def memory_barrier_by_region(*args)
      raise FunctionUnavailableError.new("glMemoryBarrierByRegion") unless memory_barrier_by_region?

      memory_barrier_by_region!(*args)
    end

    # Checks if the function "glMemoryBarrierByRegion" is loaded.
    @[AlwaysInline]
    def memory_barrier_by_region? : Bool
      !@addr_memory_barrier_by_region.null?
    end

    # Invokes glGetTextureSubImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_texture_sub_image!(*args)
      addr = @addr_get_texture_sub_image
      proc = Procs.get_texture_sub_image(addr)
      proc.call(*args)
    end

    # Invokes glGetTextureSubImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_texture_sub_image(*args)
      raise FunctionUnavailableError.new("glGetTextureSubImage") unless get_texture_sub_image?

      get_texture_sub_image!(*args)
    end

    # Checks if the function "glGetTextureSubImage" is loaded.
    @[AlwaysInline]
    def get_texture_sub_image? : Bool
      !@addr_get_texture_sub_image.null?
    end

    # Invokes glGetCompressedTextureSubImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_compressed_texture_sub_image!(*args)
      addr = @addr_get_compressed_texture_sub_image
      proc = Procs.get_compressed_texture_sub_image(addr)
      proc.call(*args)
    end

    # Invokes glGetCompressedTextureSubImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_compressed_texture_sub_image(*args)
      raise FunctionUnavailableError.new("glGetCompressedTextureSubImage") unless get_compressed_texture_sub_image?

      get_compressed_texture_sub_image!(*args)
    end

    # Checks if the function "glGetCompressedTextureSubImage" is loaded.
    @[AlwaysInline]
    def get_compressed_texture_sub_image? : Bool
      !@addr_get_compressed_texture_sub_image.null?
    end

    # Invokes glGetGraphicsResetStatus.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def get_graphics_reset_status!(*args)
      addr = @addr_get_graphics_reset_status
      proc = Procs.get_graphics_reset_status(addr)
      proc.call(*args)
    end

    # Invokes glGetGraphicsResetStatus.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def get_graphics_reset_status(*args)
      raise FunctionUnavailableError.new("glGetGraphicsResetStatus") unless get_graphics_reset_status?

      get_graphics_reset_status!(*args)
    end

    # Checks if the function "glGetGraphicsResetStatus" is loaded.
    @[AlwaysInline]
    def get_graphics_reset_status? : Bool
      !@addr_get_graphics_reset_status.null?
    end

    # Invokes glGetnCompressedTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def getn_compressed_tex_image!(*args)
      addr = @addr_getn_compressed_tex_image
      proc = Procs.getn_compressed_tex_image(addr)
      proc.call(*args)
    end

    # Invokes glGetnCompressedTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def getn_compressed_tex_image(*args)
      raise FunctionUnavailableError.new("glGetnCompressedTexImage") unless getn_compressed_tex_image?

      getn_compressed_tex_image!(*args)
    end

    # Checks if the function "glGetnCompressedTexImage" is loaded.
    @[AlwaysInline]
    def getn_compressed_tex_image? : Bool
      !@addr_getn_compressed_tex_image.null?
    end

    # Invokes glGetnTexImage.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def getn_tex_image!(*args)
      addr = @addr_getn_tex_image
      proc = Procs.getn_tex_image(addr)
      proc.call(*args)
    end

    # Invokes glGetnTexImage.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def getn_tex_image(*args)
      raise FunctionUnavailableError.new("glGetnTexImage") unless getn_tex_image?

      getn_tex_image!(*args)
    end

    # Checks if the function "glGetnTexImage" is loaded.
    @[AlwaysInline]
    def getn_tex_image? : Bool
      !@addr_getn_tex_image.null?
    end

    # Invokes glGetnUniformdv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def getn_uniform_dv!(*args)
      addr = @addr_getn_uniform_dv
      proc = Procs.getn_uniform_dv(addr)
      proc.call(*args)
    end

    # Invokes glGetnUniformdv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def getn_uniform_dv(*args)
      raise FunctionUnavailableError.new("glGetnUniformdv") unless getn_uniform_dv?

      getn_uniform_dv!(*args)
    end

    # Checks if the function "glGetnUniformdv" is loaded.
    @[AlwaysInline]
    def getn_uniform_dv? : Bool
      !@addr_getn_uniform_dv.null?
    end

    # Invokes glGetnUniformfv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def getn_uniform_fv!(*args)
      addr = @addr_getn_uniform_fv
      proc = Procs.getn_uniform_fv(addr)
      proc.call(*args)
    end

    # Invokes glGetnUniformfv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def getn_uniform_fv(*args)
      raise FunctionUnavailableError.new("glGetnUniformfv") unless getn_uniform_fv?

      getn_uniform_fv!(*args)
    end

    # Checks if the function "glGetnUniformfv" is loaded.
    @[AlwaysInline]
    def getn_uniform_fv? : Bool
      !@addr_getn_uniform_fv.null?
    end

    # Invokes glGetnUniformiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def getn_uniform_iv!(*args)
      addr = @addr_getn_uniform_iv
      proc = Procs.getn_uniform_iv(addr)
      proc.call(*args)
    end

    # Invokes glGetnUniformiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def getn_uniform_iv(*args)
      raise FunctionUnavailableError.new("glGetnUniformiv") unless getn_uniform_iv?

      getn_uniform_iv!(*args)
    end

    # Checks if the function "glGetnUniformiv" is loaded.
    @[AlwaysInline]
    def getn_uniform_iv? : Bool
      !@addr_getn_uniform_iv.null?
    end

    # Invokes glGetnUniformuiv.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def getn_uniform_uiv!(*args)
      addr = @addr_getn_uniform_uiv
      proc = Procs.getn_uniform_uiv(addr)
      proc.call(*args)
    end

    # Invokes glGetnUniformuiv.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def getn_uniform_uiv(*args)
      raise FunctionUnavailableError.new("glGetnUniformuiv") unless getn_uniform_uiv?

      getn_uniform_uiv!(*args)
    end

    # Checks if the function "glGetnUniformuiv" is loaded.
    @[AlwaysInline]
    def getn_uniform_uiv? : Bool
      !@addr_getn_uniform_uiv.null?
    end

    # Invokes glReadnPixels.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def readn_pixels!(*args)
      addr = @addr_readn_pixels
      proc = Procs.readn_pixels(addr)
      proc.call(*args)
    end

    # Invokes glReadnPixels.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def readn_pixels(*args)
      raise FunctionUnavailableError.new("glReadnPixels") unless readn_pixels?

      readn_pixels!(*args)
    end

    # Checks if the function "glReadnPixels" is loaded.
    @[AlwaysInline]
    def readn_pixels? : Bool
      !@addr_readn_pixels.null?
    end

    # Invokes glTextureBarrier.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def texture_barrier!(*args)
      addr = @addr_texture_barrier
      proc = Procs.texture_barrier(addr)
      proc.call(*args)
    end

    # Invokes glTextureBarrier.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def texture_barrier(*args)
      raise FunctionUnavailableError.new("glTextureBarrier") unless texture_barrier?

      texture_barrier!(*args)
    end

    # Checks if the function "glTextureBarrier" is loaded.
    @[AlwaysInline]
    def texture_barrier? : Bool
      !@addr_texture_barrier.null?
    end

    # Invokes glSpecializeShader.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def specialize_shader!(*args)
      addr = @addr_specialize_shader
      proc = Procs.specialize_shader(addr)
      proc.call(*args)
    end

    # Invokes glSpecializeShader.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def specialize_shader(*args)
      raise FunctionUnavailableError.new("glSpecializeShader") unless specialize_shader?

      specialize_shader!(*args)
    end

    # Checks if the function "glSpecializeShader" is loaded.
    @[AlwaysInline]
    def specialize_shader? : Bool
      !@addr_specialize_shader.null?
    end

    # Invokes glMultiDrawArraysIndirectCount.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_arrays_indirect_count!(*args)
      addr = @addr_multi_draw_arrays_indirect_count
      proc = Procs.multi_draw_arrays_indirect_count(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawArraysIndirectCount.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_arrays_indirect_count(*args)
      raise FunctionUnavailableError.new("glMultiDrawArraysIndirectCount") unless multi_draw_arrays_indirect_count?

      multi_draw_arrays_indirect_count!(*args)
    end

    # Checks if the function "glMultiDrawArraysIndirectCount" is loaded.
    @[AlwaysInline]
    def multi_draw_arrays_indirect_count? : Bool
      !@addr_multi_draw_arrays_indirect_count.null?
    end

    # Invokes glMultiDrawElementsIndirectCount.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def multi_draw_elements_indirect_count!(*args)
      addr = @addr_multi_draw_elements_indirect_count
      proc = Procs.multi_draw_elements_indirect_count(addr)
      proc.call(*args)
    end

    # Invokes glMultiDrawElementsIndirectCount.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def multi_draw_elements_indirect_count(*args)
      raise FunctionUnavailableError.new("glMultiDrawElementsIndirectCount") unless multi_draw_elements_indirect_count?

      multi_draw_elements_indirect_count!(*args)
    end

    # Checks if the function "glMultiDrawElementsIndirectCount" is loaded.
    @[AlwaysInline]
    def multi_draw_elements_indirect_count? : Bool
      !@addr_multi_draw_elements_indirect_count.null?
    end

    # Invokes glPolygonOffsetClamp.
    # This method is unsafe and will crash the program if the function isn't loaded.
    def polygon_offset_clamp!(*args)
      addr = @addr_polygon_offset_clamp
      proc = Procs.polygon_offset_clamp(addr)
      proc.call(*args)
    end

    # Invokes glPolygonOffsetClamp.
    # This method checks if the function is loaded before attempting to call it.
    # `FunctionUnavailableError` is raised if the function isn't loaded.
    def polygon_offset_clamp(*args)
      raise FunctionUnavailableError.new("glPolygonOffsetClamp") unless polygon_offset_clamp?

      polygon_offset_clamp!(*args)
    end

    # Checks if the function "glPolygonOffsetClamp" is loaded.
    @[AlwaysInline]
    def polygon_offset_clamp? : Bool
      !@addr_polygon_offset_clamp.null?
    end
  end
end
