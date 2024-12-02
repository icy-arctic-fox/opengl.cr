require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime and returns `Proc` instances to invoke them.
  # The OpenGL functions are lazy-loaded.
  struct Loader
    FUNCTION_COUNT = 106

    # Creates the loader.
    # The *get_proc_address* block is used to retrieve addresses of OpenGL functions.
    # It is given a string that is the name of the OpenGL function to lookup.
    # The block must return a pointer to the function corresponding to the name.
    # If a function is unavailable, the block should return a null pointer.
    def initialize(&@get_proc_address : ::String -> ::Void*)
      @addresses = ::Pointer(::Void*).malloc(FUNCTION_COUNT)
    end

    @[AlwaysInline]
    private def get_proc(index, name, proc_type) : ::Proc
      address = @addresses[index]
      unless address
        address = @get_proc_address.call(name)
        raise FunctionUnavailableError.new(name) unless address
        @addresses[index] = address
      end
      proc_type.new(address, ::Pointer(::Void).null)
    end

    # Retrieves a `Proc` for the OpenGL function *glActiveTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def active_texture : ::Proc
      get_proc(0, Translations.active_texture, Procs.active_texture)
    end

    # Checks if the OpenGL function *glActiveTexture* is loaded.
    def active_texture?
      !!@addresses[0]
    end

    # Retrieves a `Proc` for the OpenGL function *glAlphaFuncx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def alpha_funcx : ::Proc
      get_proc(1, Translations.alpha_funcx, Procs.alpha_funcx)
    end

    # Checks if the OpenGL function *glAlphaFuncx* is loaded.
    def alpha_funcx?
      !!@addresses[1]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer : ::Proc
      get_proc(2, Translations.bind_buffer, Procs.bind_buffer)
    end

    # Checks if the OpenGL function *glBindBuffer* is loaded.
    def bind_buffer?
      !!@addresses[2]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_texture : ::Proc
      get_proc(3, Translations.bind_texture, Procs.bind_texture)
    end

    # Checks if the OpenGL function *glBindTexture* is loaded.
    def bind_texture?
      !!@addresses[3]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func : ::Proc
      get_proc(4, Translations.blend_func, Procs.blend_func)
    end

    # Checks if the OpenGL function *glBlendFunc* is loaded.
    def blend_func?
      !!@addresses[4]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_data : ::Proc
      get_proc(5, Translations.buffer_data, Procs.buffer_data)
    end

    # Checks if the OpenGL function *glBufferData* is loaded.
    def buffer_data?
      !!@addresses[5]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_sub_data : ::Proc
      get_proc(6, Translations.buffer_sub_data, Procs.buffer_sub_data)
    end

    # Checks if the OpenGL function *glBufferSubData* is loaded.
    def buffer_sub_data?
      !!@addresses[6]
    end

    # Retrieves a `Proc` for the OpenGL function *glClear*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear : ::Proc
      get_proc(7, Translations.clear, Procs.clear)
    end

    # Checks if the OpenGL function *glClear* is loaded.
    def clear?
      !!@addresses[7]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearColorx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_colorx : ::Proc
      get_proc(8, Translations.clear_colorx, Procs.clear_colorx)
    end

    # Checks if the OpenGL function *glClearColorx* is loaded.
    def clear_colorx?
      !!@addresses[8]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearDepthx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_depth_x : ::Proc
      get_proc(9, Translations.clear_depth_x, Procs.clear_depth_x)
    end

    # Checks if the OpenGL function *glClearDepthx* is loaded.
    def clear_depth_x?
      !!@addresses[9]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearStencil*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_stencil : ::Proc
      get_proc(10, Translations.clear_stencil, Procs.clear_stencil)
    end

    # Checks if the OpenGL function *glClearStencil* is loaded.
    def clear_stencil?
      !!@addresses[10]
    end

    # Retrieves a `Proc` for the OpenGL function *glClientActiveTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def client_active_texture : ::Proc
      get_proc(11, Translations.client_active_texture, Procs.client_active_texture)
    end

    # Checks if the OpenGL function *glClientActiveTexture* is loaded.
    def client_active_texture?
      !!@addresses[11]
    end

    # Retrieves a `Proc` for the OpenGL function *glClipPlanex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clip_planex : ::Proc
      get_proc(12, Translations.clip_planex, Procs.clip_planex)
    end

    # Checks if the OpenGL function *glClipPlanex* is loaded.
    def clip_planex?
      !!@addresses[12]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4ub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4ub : ::Proc
      get_proc(13, Translations.color_4ub, Procs.color_4ub)
    end

    # Checks if the OpenGL function *glColor4ub* is loaded.
    def color_4ub?
      !!@addresses[13]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4x*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4x : ::Proc
      get_proc(14, Translations.color_4x, Procs.color_4x)
    end

    # Checks if the OpenGL function *glColor4x* is loaded.
    def color_4x?
      !!@addresses[14]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_mask : ::Proc
      get_proc(15, Translations.color_mask, Procs.color_mask)
    end

    # Checks if the OpenGL function *glColorMask* is loaded.
    def color_mask?
      !!@addresses[15]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_pointer : ::Proc
      get_proc(16, Translations.color_pointer, Procs.color_pointer)
    end

    # Checks if the OpenGL function *glColorPointer* is loaded.
    def color_pointer?
      !!@addresses[16]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_2d : ::Proc
      get_proc(17, Translations.compressed_tex_image_2d, Procs.compressed_tex_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexImage2D* is loaded.
    def compressed_tex_image_2d?
      !!@addresses[17]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_2d : ::Proc
      get_proc(18, Translations.compressed_tex_sub_image_2d, Procs.compressed_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage2D* is loaded.
    def compressed_tex_sub_image_2d?
      !!@addresses[18]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_image_2d : ::Proc
      get_proc(19, Translations.copy_tex_image_2d, Procs.copy_tex_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexImage2D* is loaded.
    def copy_tex_image_2d?
      !!@addresses[19]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_2d : ::Proc
      get_proc(20, Translations.copy_tex_sub_image_2d, Procs.copy_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage2D* is loaded.
    def copy_tex_sub_image_2d?
      !!@addresses[20]
    end

    # Retrieves a `Proc` for the OpenGL function *glCullFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def cull_face : ::Proc
      get_proc(21, Translations.cull_face, Procs.cull_face)
    end

    # Checks if the OpenGL function *glCullFace* is loaded.
    def cull_face?
      !!@addresses[21]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_buffers : ::Proc
      get_proc(22, Translations.delete_buffers, Procs.delete_buffers)
    end

    # Checks if the OpenGL function *glDeleteBuffers* is loaded.
    def delete_buffers?
      !!@addresses[22]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_textures : ::Proc
      get_proc(23, Translations.delete_textures, Procs.delete_textures)
    end

    # Checks if the OpenGL function *glDeleteTextures* is loaded.
    def delete_textures?
      !!@addresses[23]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_func : ::Proc
      get_proc(24, Translations.depth_func, Procs.depth_func)
    end

    # Checks if the OpenGL function *glDepthFunc* is loaded.
    def depth_func?
      !!@addresses[24]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_mask : ::Proc
      get_proc(25, Translations.depth_mask, Procs.depth_mask)
    end

    # Checks if the OpenGL function *glDepthMask* is loaded.
    def depth_mask?
      !!@addresses[25]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRangex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_rangex : ::Proc
      get_proc(26, Translations.depth_rangex, Procs.depth_rangex)
    end

    # Checks if the OpenGL function *glDepthRangex* is loaded.
    def depth_rangex?
      !!@addresses[26]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable : ::Proc
      get_proc(27, Translations.disable, Procs.disable)
    end

    # Checks if the OpenGL function *glDisable* is loaded.
    def disable?
      !!@addresses[27]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisableClientState*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_client_state : ::Proc
      get_proc(28, Translations.disable_client_state, Procs.disable_client_state)
    end

    # Checks if the OpenGL function *glDisableClientState* is loaded.
    def disable_client_state?
      !!@addresses[28]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays : ::Proc
      get_proc(29, Translations.draw_arrays, Procs.draw_arrays)
    end

    # Checks if the OpenGL function *glDrawArrays* is loaded.
    def draw_arrays?
      !!@addresses[29]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements : ::Proc
      get_proc(30, Translations.draw_elements, Procs.draw_elements)
    end

    # Checks if the OpenGL function *glDrawElements* is loaded.
    def draw_elements?
      !!@addresses[30]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable : ::Proc
      get_proc(31, Translations.enable, Procs.enable)
    end

    # Checks if the OpenGL function *glEnable* is loaded.
    def enable?
      !!@addresses[31]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnableClientState*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_client_state : ::Proc
      get_proc(32, Translations.enable_client_state, Procs.enable_client_state)
    end

    # Checks if the OpenGL function *glEnableClientState* is loaded.
    def enable_client_state?
      !!@addresses[32]
    end

    # Retrieves a `Proc` for the OpenGL function *glFinish*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def finish : ::Proc
      get_proc(33, Translations.finish, Procs.finish)
    end

    # Checks if the OpenGL function *glFinish* is loaded.
    def finish?
      !!@addresses[33]
    end

    # Retrieves a `Proc` for the OpenGL function *glFlush*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def flush : ::Proc
      get_proc(34, Translations.flush, Procs.flush)
    end

    # Checks if the OpenGL function *glFlush* is loaded.
    def flush?
      !!@addresses[34]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_x : ::Proc
      get_proc(35, Translations.fog_x, Procs.fog_x)
    end

    # Checks if the OpenGL function *glFogx* is loaded.
    def fog_x?
      !!@addresses[35]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_xv : ::Proc
      get_proc(36, Translations.fog_xv, Procs.fog_xv)
    end

    # Checks if the OpenGL function *glFogxv* is loaded.
    def fog_xv?
      !!@addresses[36]
    end

    # Retrieves a `Proc` for the OpenGL function *glFrontFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def front_face : ::Proc
      get_proc(37, Translations.front_face, Procs.front_face)
    end

    # Checks if the OpenGL function *glFrontFace* is loaded.
    def front_face?
      !!@addresses[37]
    end

    # Retrieves a `Proc` for the OpenGL function *glFrustumx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def frustumx : ::Proc
      get_proc(38, Translations.frustumx, Procs.frustumx)
    end

    # Checks if the OpenGL function *glFrustumx* is loaded.
    def frustumx?
      !!@addresses[38]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBooleanv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_boolean_v : ::Proc
      get_proc(39, Translations.get_boolean_v, Procs.get_boolean_v)
    end

    # Checks if the OpenGL function *glGetBooleanv* is loaded.
    def get_boolean_v?
      !!@addresses[39]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_iv : ::Proc
      get_proc(40, Translations.get_buffer_parameter_iv, Procs.get_buffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetBufferParameteriv* is loaded.
    def get_buffer_parameter_iv?
      !!@addresses[40]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetClipPlanex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_clip_plane_x : ::Proc
      get_proc(41, Translations.get_clip_plane_x, Procs.get_clip_plane_x)
    end

    # Checks if the OpenGL function *glGetClipPlanex* is loaded.
    def get_clip_plane_x?
      !!@addresses[41]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_buffers : ::Proc
      get_proc(42, Translations.gen_buffers, Procs.gen_buffers)
    end

    # Checks if the OpenGL function *glGenBuffers* is loaded.
    def gen_buffers?
      !!@addresses[42]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_textures : ::Proc
      get_proc(43, Translations.gen_textures, Procs.gen_textures)
    end

    # Checks if the OpenGL function *glGenTextures* is loaded.
    def gen_textures?
      !!@addresses[43]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetError*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_error : ::Proc
      get_proc(44, Translations.get_error, Procs.get_error)
    end

    # Checks if the OpenGL function *glGetError* is loaded.
    def get_error?
      !!@addresses[44]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFixedv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_fixedv : ::Proc
      get_proc(45, Translations.get_fixedv, Procs.get_fixedv)
    end

    # Checks if the OpenGL function *glGetFixedv* is loaded.
    def get_fixedv?
      !!@addresses[45]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetIntegerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_v : ::Proc
      get_proc(46, Translations.get_integer_v, Procs.get_integer_v)
    end

    # Checks if the OpenGL function *glGetIntegerv* is loaded.
    def get_integer_v?
      !!@addresses[46]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetLightxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_light_xv : ::Proc
      get_proc(47, Translations.get_light_xv, Procs.get_light_xv)
    end

    # Checks if the OpenGL function *glGetLightxv* is loaded.
    def get_light_xv?
      !!@addresses[47]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMaterialxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_material_xv : ::Proc
      get_proc(48, Translations.get_material_xv, Procs.get_material_xv)
    end

    # Checks if the OpenGL function *glGetMaterialxv* is loaded.
    def get_material_xv?
      !!@addresses[48]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_pointer_v : ::Proc
      get_proc(49, Translations.get_pointer_v, Procs.get_pointer_v)
    end

    # Checks if the OpenGL function *glGetPointerv* is loaded.
    def get_pointer_v?
      !!@addresses[49]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetString*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_string : ::Proc
      get_proc(50, Translations.get_string, Procs.get_string)
    end

    # Checks if the OpenGL function *glGetString* is loaded.
    def get_string?
      !!@addresses[50]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexEnviv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_env_iv : ::Proc
      get_proc(51, Translations.get_tex_env_iv, Procs.get_tex_env_iv)
    end

    # Checks if the OpenGL function *glGetTexEnviv* is loaded.
    def get_tex_env_iv?
      !!@addresses[51]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexEnvxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_env_xv : ::Proc
      get_proc(52, Translations.get_tex_env_xv, Procs.get_tex_env_xv)
    end

    # Checks if the OpenGL function *glGetTexEnvxv* is loaded.
    def get_tex_env_xv?
      !!@addresses[52]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_iv : ::Proc
      get_proc(53, Translations.get_tex_parameter_iv, Procs.get_tex_parameter_iv)
    end

    # Checks if the OpenGL function *glGetTexParameteriv* is loaded.
    def get_tex_parameter_iv?
      !!@addresses[53]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_xv : ::Proc
      get_proc(54, Translations.get_tex_parameter_xv, Procs.get_tex_parameter_xv)
    end

    # Checks if the OpenGL function *glGetTexParameterxv* is loaded.
    def get_tex_parameter_xv?
      !!@addresses[54]
    end

    # Retrieves a `Proc` for the OpenGL function *glHint*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def hint : ::Proc
      get_proc(55, Translations.hint, Procs.hint)
    end

    # Checks if the OpenGL function *glHint* is loaded.
    def hint?
      !!@addresses[55]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_buffer : ::Proc
      get_proc(56, Translations.is_buffer, Procs.is_buffer)
    end

    # Checks if the OpenGL function *glIsBuffer* is loaded.
    def is_buffer?
      !!@addresses[56]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsEnabled*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_enabled : ::Proc
      get_proc(57, Translations.is_enabled, Procs.is_enabled)
    end

    # Checks if the OpenGL function *glIsEnabled* is loaded.
    def is_enabled?
      !!@addresses[57]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_texture : ::Proc
      get_proc(58, Translations.is_texture, Procs.is_texture)
    end

    # Checks if the OpenGL function *glIsTexture* is loaded.
    def is_texture?
      !!@addresses[58]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightModelx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_model_x : ::Proc
      get_proc(59, Translations.light_model_x, Procs.light_model_x)
    end

    # Checks if the OpenGL function *glLightModelx* is loaded.
    def light_model_x?
      !!@addresses[59]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightModelxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_model_xv : ::Proc
      get_proc(60, Translations.light_model_xv, Procs.light_model_xv)
    end

    # Checks if the OpenGL function *glLightModelxv* is loaded.
    def light_model_xv?
      !!@addresses[60]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_x : ::Proc
      get_proc(61, Translations.light_x, Procs.light_x)
    end

    # Checks if the OpenGL function *glLightx* is loaded.
    def light_x?
      !!@addresses[61]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_xv : ::Proc
      get_proc(62, Translations.light_xv, Procs.light_xv)
    end

    # Checks if the OpenGL function *glLightxv* is loaded.
    def light_xv?
      !!@addresses[62]
    end

    # Retrieves a `Proc` for the OpenGL function *glLineWidthx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def line_widthx : ::Proc
      get_proc(63, Translations.line_widthx, Procs.line_widthx)
    end

    # Checks if the OpenGL function *glLineWidthx* is loaded.
    def line_widthx?
      !!@addresses[63]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadIdentity*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_identity : ::Proc
      get_proc(64, Translations.load_identity, Procs.load_identity)
    end

    # Checks if the OpenGL function *glLoadIdentity* is loaded.
    def load_identity?
      !!@addresses[64]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadMatrixx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_matrix_x : ::Proc
      get_proc(65, Translations.load_matrix_x, Procs.load_matrix_x)
    end

    # Checks if the OpenGL function *glLoadMatrixx* is loaded.
    def load_matrix_x?
      !!@addresses[65]
    end

    # Retrieves a `Proc` for the OpenGL function *glLogicOp*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def logic_op : ::Proc
      get_proc(66, Translations.logic_op, Procs.logic_op)
    end

    # Checks if the OpenGL function *glLogicOp* is loaded.
    def logic_op?
      !!@addresses[66]
    end

    # Retrieves a `Proc` for the OpenGL function *glMaterialx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def material_x : ::Proc
      get_proc(67, Translations.material_x, Procs.material_x)
    end

    # Checks if the OpenGL function *glMaterialx* is loaded.
    def material_x?
      !!@addresses[67]
    end

    # Retrieves a `Proc` for the OpenGL function *glMaterialxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def material_xv : ::Proc
      get_proc(68, Translations.material_xv, Procs.material_xv)
    end

    # Checks if the OpenGL function *glMaterialxv* is loaded.
    def material_xv?
      !!@addresses[68]
    end

    # Retrieves a `Proc` for the OpenGL function *glMatrixMode*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def matrix_mode : ::Proc
      get_proc(69, Translations.matrix_mode, Procs.matrix_mode)
    end

    # Checks if the OpenGL function *glMatrixMode* is loaded.
    def matrix_mode?
      !!@addresses[69]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultMatrixx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def mult_matrix_x : ::Proc
      get_proc(70, Translations.mult_matrix_x, Procs.mult_matrix_x)
    end

    # Checks if the OpenGL function *glMultMatrixx* is loaded.
    def mult_matrix_x?
      !!@addresses[70]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4x*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4x : ::Proc
      get_proc(71, Translations.multi_tex_coord_4x, Procs.multi_tex_coord_4x)
    end

    # Checks if the OpenGL function *glMultiTexCoord4x* is loaded.
    def multi_tex_coord_4x?
      !!@addresses[71]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3x*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3x : ::Proc
      get_proc(72, Translations.normal_3x, Procs.normal_3x)
    end

    # Checks if the OpenGL function *glNormal3x* is loaded.
    def normal_3x?
      !!@addresses[72]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormalPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_pointer : ::Proc
      get_proc(73, Translations.normal_pointer, Procs.normal_pointer)
    end

    # Checks if the OpenGL function *glNormalPointer* is loaded.
    def normal_pointer?
      !!@addresses[73]
    end

    # Retrieves a `Proc` for the OpenGL function *glOrthox*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def orthox : ::Proc
      get_proc(74, Translations.orthox, Procs.orthox)
    end

    # Checks if the OpenGL function *glOrthox* is loaded.
    def orthox?
      !!@addresses[74]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelStorei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_store_i : ::Proc
      get_proc(75, Translations.pixel_store_i, Procs.pixel_store_i)
    end

    # Checks if the OpenGL function *glPixelStorei* is loaded.
    def pixel_store_i?
      !!@addresses[75]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameterx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_x : ::Proc
      get_proc(76, Translations.point_parameter_x, Procs.point_parameter_x)
    end

    # Checks if the OpenGL function *glPointParameterx* is loaded.
    def point_parameter_x?
      !!@addresses[76]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameterxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_xv : ::Proc
      get_proc(77, Translations.point_parameter_xv, Procs.point_parameter_xv)
    end

    # Checks if the OpenGL function *glPointParameterxv* is loaded.
    def point_parameter_xv?
      !!@addresses[77]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointSizex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_sizex : ::Proc
      get_proc(78, Translations.point_sizex, Procs.point_sizex)
    end

    # Checks if the OpenGL function *glPointSizex* is loaded.
    def point_sizex?
      !!@addresses[78]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonOffsetx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_offsetx : ::Proc
      get_proc(79, Translations.polygon_offsetx, Procs.polygon_offsetx)
    end

    # Checks if the OpenGL function *glPolygonOffsetx* is loaded.
    def polygon_offsetx?
      !!@addresses[79]
    end

    # Retrieves a `Proc` for the OpenGL function *glPopMatrix*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pop_matrix : ::Proc
      get_proc(80, Translations.pop_matrix, Procs.pop_matrix)
    end

    # Checks if the OpenGL function *glPopMatrix* is loaded.
    def pop_matrix?
      !!@addresses[80]
    end

    # Retrieves a `Proc` for the OpenGL function *glPushMatrix*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def push_matrix : ::Proc
      get_proc(81, Translations.push_matrix, Procs.push_matrix)
    end

    # Checks if the OpenGL function *glPushMatrix* is loaded.
    def push_matrix?
      !!@addresses[81]
    end

    # Retrieves a `Proc` for the OpenGL function *glReadPixels*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def read_pixels : ::Proc
      get_proc(82, Translations.read_pixels, Procs.read_pixels)
    end

    # Checks if the OpenGL function *glReadPixels* is loaded.
    def read_pixels?
      !!@addresses[82]
    end

    # Retrieves a `Proc` for the OpenGL function *glRotatex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rotate_x : ::Proc
      get_proc(83, Translations.rotate_x, Procs.rotate_x)
    end

    # Checks if the OpenGL function *glRotatex* is loaded.
    def rotate_x?
      !!@addresses[83]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleCoverage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_coverage : ::Proc
      get_proc(84, Translations.sample_coverage, Procs.sample_coverage)
    end

    # Checks if the OpenGL function *glSampleCoverage* is loaded.
    def sample_coverage?
      !!@addresses[84]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleCoveragex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_coveragex : ::Proc
      get_proc(85, Translations.sample_coveragex, Procs.sample_coveragex)
    end

    # Checks if the OpenGL function *glSampleCoveragex* is loaded.
    def sample_coveragex?
      !!@addresses[85]
    end

    # Retrieves a `Proc` for the OpenGL function *glScalex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scale_x : ::Proc
      get_proc(86, Translations.scale_x, Procs.scale_x)
    end

    # Checks if the OpenGL function *glScalex* is loaded.
    def scale_x?
      !!@addresses[86]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor : ::Proc
      get_proc(87, Translations.scissor, Procs.scissor)
    end

    # Checks if the OpenGL function *glScissor* is loaded.
    def scissor?
      !!@addresses[87]
    end

    # Retrieves a `Proc` for the OpenGL function *glShadeModel*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shade_model : ::Proc
      get_proc(88, Translations.shade_model, Procs.shade_model)
    end

    # Checks if the OpenGL function *glShadeModel* is loaded.
    def shade_model?
      !!@addresses[88]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func : ::Proc
      get_proc(89, Translations.stencil_func, Procs.stencil_func)
    end

    # Checks if the OpenGL function *glStencilFunc* is loaded.
    def stencil_func?
      !!@addresses[89]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask : ::Proc
      get_proc(90, Translations.stencil_mask, Procs.stencil_mask)
    end

    # Checks if the OpenGL function *glStencilMask* is loaded.
    def stencil_mask?
      !!@addresses[90]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOp*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op : ::Proc
      get_proc(91, Translations.stencil_op, Procs.stencil_op)
    end

    # Checks if the OpenGL function *glStencilOp* is loaded.
    def stencil_op?
      !!@addresses[91]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_pointer : ::Proc
      get_proc(92, Translations.tex_coord_pointer, Procs.tex_coord_pointer)
    end

    # Checks if the OpenGL function *glTexCoordPointer* is loaded.
    def tex_coord_pointer?
      !!@addresses[92]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnvi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_i : ::Proc
      get_proc(93, Translations.tex_env_i, Procs.tex_env_i)
    end

    # Checks if the OpenGL function *glTexEnvi* is loaded.
    def tex_env_i?
      !!@addresses[93]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnvx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_x : ::Proc
      get_proc(94, Translations.tex_env_x, Procs.tex_env_x)
    end

    # Checks if the OpenGL function *glTexEnvx* is loaded.
    def tex_env_x?
      !!@addresses[94]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnviv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_iv : ::Proc
      get_proc(95, Translations.tex_env_iv, Procs.tex_env_iv)
    end

    # Checks if the OpenGL function *glTexEnviv* is loaded.
    def tex_env_iv?
      !!@addresses[95]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnvxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_xv : ::Proc
      get_proc(96, Translations.tex_env_xv, Procs.tex_env_xv)
    end

    # Checks if the OpenGL function *glTexEnvxv* is loaded.
    def tex_env_xv?
      !!@addresses[96]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_2d : ::Proc
      get_proc(97, Translations.tex_image_2d, Procs.tex_image_2d)
    end

    # Checks if the OpenGL function *glTexImage2D* is loaded.
    def tex_image_2d?
      !!@addresses[97]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i : ::Proc
      get_proc(98, Translations.tex_parameter_i, Procs.tex_parameter_i)
    end

    # Checks if the OpenGL function *glTexParameteri* is loaded.
    def tex_parameter_i?
      !!@addresses[98]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterx*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_x : ::Proc
      get_proc(99, Translations.tex_parameter_x, Procs.tex_parameter_x)
    end

    # Checks if the OpenGL function *glTexParameterx* is loaded.
    def tex_parameter_x?
      !!@addresses[99]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_iv : ::Proc
      get_proc(100, Translations.tex_parameter_iv, Procs.tex_parameter_iv)
    end

    # Checks if the OpenGL function *glTexParameteriv* is loaded.
    def tex_parameter_iv?
      !!@addresses[100]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterxv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_xv : ::Proc
      get_proc(101, Translations.tex_parameter_xv, Procs.tex_parameter_xv)
    end

    # Checks if the OpenGL function *glTexParameterxv* is loaded.
    def tex_parameter_xv?
      !!@addresses[101]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_2d : ::Proc
      get_proc(102, Translations.tex_sub_image_2d, Procs.tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glTexSubImage2D* is loaded.
    def tex_sub_image_2d?
      !!@addresses[102]
    end

    # Retrieves a `Proc` for the OpenGL function *glTranslatex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def translate_x : ::Proc
      get_proc(103, Translations.translate_x, Procs.translate_x)
    end

    # Checks if the OpenGL function *glTranslatex* is loaded.
    def translate_x?
      !!@addresses[103]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_pointer : ::Proc
      get_proc(104, Translations.vertex_pointer, Procs.vertex_pointer)
    end

    # Checks if the OpenGL function *glVertexPointer* is loaded.
    def vertex_pointer?
      !!@addresses[104]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewport*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport : ::Proc
      get_proc(105, Translations.viewport, Procs.viewport)
    end

    # Checks if the OpenGL function *glViewport* is loaded.
    def viewport?
      !!@addresses[105]
    end
  end
end
