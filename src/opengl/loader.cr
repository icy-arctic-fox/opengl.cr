require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime and returns `Proc` instances to invoke them.
  # The OpenGL functions are lazy-loaded.
  struct Loader
    FUNCTION_COUNT = 344

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

    # Retrieves a `Proc` for the OpenGL function *glCullFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def cull_face : ::Proc
      get_proc(0, Translations.cull_face, Procs.cull_face)
    end

    # Checks if the OpenGL function *glCullFace* is loaded.
    def cull_face?
      !!@addresses[0]
    end

    # Retrieves a `Proc` for the OpenGL function *glFrontFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def front_face : ::Proc
      get_proc(1, Translations.front_face, Procs.front_face)
    end

    # Checks if the OpenGL function *glFrontFace* is loaded.
    def front_face?
      !!@addresses[1]
    end

    # Retrieves a `Proc` for the OpenGL function *glHint*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def hint : ::Proc
      get_proc(2, Translations.hint, Procs.hint)
    end

    # Checks if the OpenGL function *glHint* is loaded.
    def hint?
      !!@addresses[2]
    end

    # Retrieves a `Proc` for the OpenGL function *glLineWidth*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def line_width : ::Proc
      get_proc(3, Translations.line_width, Procs.line_width)
    end

    # Checks if the OpenGL function *glLineWidth* is loaded.
    def line_width?
      !!@addresses[3]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointSize*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_size : ::Proc
      get_proc(4, Translations.point_size, Procs.point_size)
    end

    # Checks if the OpenGL function *glPointSize* is loaded.
    def point_size?
      !!@addresses[4]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonMode*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_mode : ::Proc
      get_proc(5, Translations.polygon_mode, Procs.polygon_mode)
    end

    # Checks if the OpenGL function *glPolygonMode* is loaded.
    def polygon_mode?
      !!@addresses[5]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor : ::Proc
      get_proc(6, Translations.scissor, Procs.scissor)
    end

    # Checks if the OpenGL function *glScissor* is loaded.
    def scissor?
      !!@addresses[6]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_f : ::Proc
      get_proc(7, Translations.tex_parameter_f, Procs.tex_parameter_f)
    end

    # Checks if the OpenGL function *glTexParameterf* is loaded.
    def tex_parameter_f?
      !!@addresses[7]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_fv : ::Proc
      get_proc(8, Translations.tex_parameter_fv, Procs.tex_parameter_fv)
    end

    # Checks if the OpenGL function *glTexParameterfv* is loaded.
    def tex_parameter_fv?
      !!@addresses[8]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i : ::Proc
      get_proc(9, Translations.tex_parameter_i, Procs.tex_parameter_i)
    end

    # Checks if the OpenGL function *glTexParameteri* is loaded.
    def tex_parameter_i?
      !!@addresses[9]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_iv : ::Proc
      get_proc(10, Translations.tex_parameter_iv, Procs.tex_parameter_iv)
    end

    # Checks if the OpenGL function *glTexParameteriv* is loaded.
    def tex_parameter_iv?
      !!@addresses[10]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_1d : ::Proc
      get_proc(11, Translations.tex_image_1d, Procs.tex_image_1d)
    end

    # Checks if the OpenGL function *glTexImage1D* is loaded.
    def tex_image_1d?
      !!@addresses[11]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_2d : ::Proc
      get_proc(12, Translations.tex_image_2d, Procs.tex_image_2d)
    end

    # Checks if the OpenGL function *glTexImage2D* is loaded.
    def tex_image_2d?
      !!@addresses[12]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_buffer : ::Proc
      get_proc(13, Translations.draw_buffer, Procs.draw_buffer)
    end

    # Checks if the OpenGL function *glDrawBuffer* is loaded.
    def draw_buffer?
      !!@addresses[13]
    end

    # Retrieves a `Proc` for the OpenGL function *glClear*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear : ::Proc
      get_proc(14, Translations.clear, Procs.clear)
    end

    # Checks if the OpenGL function *glClear* is loaded.
    def clear?
      !!@addresses[14]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_color : ::Proc
      get_proc(15, Translations.clear_color, Procs.clear_color)
    end

    # Checks if the OpenGL function *glClearColor* is loaded.
    def clear_color?
      !!@addresses[15]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearStencil*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_stencil : ::Proc
      get_proc(16, Translations.clear_stencil, Procs.clear_stencil)
    end

    # Checks if the OpenGL function *glClearStencil* is loaded.
    def clear_stencil?
      !!@addresses[16]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearDepth*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_depth : ::Proc
      get_proc(17, Translations.clear_depth, Procs.clear_depth)
    end

    # Checks if the OpenGL function *glClearDepth* is loaded.
    def clear_depth?
      !!@addresses[17]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask : ::Proc
      get_proc(18, Translations.stencil_mask, Procs.stencil_mask)
    end

    # Checks if the OpenGL function *glStencilMask* is loaded.
    def stencil_mask?
      !!@addresses[18]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_mask : ::Proc
      get_proc(19, Translations.color_mask, Procs.color_mask)
    end

    # Checks if the OpenGL function *glColorMask* is loaded.
    def color_mask?
      !!@addresses[19]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_mask : ::Proc
      get_proc(20, Translations.depth_mask, Procs.depth_mask)
    end

    # Checks if the OpenGL function *glDepthMask* is loaded.
    def depth_mask?
      !!@addresses[20]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable : ::Proc
      get_proc(21, Translations.disable, Procs.disable)
    end

    # Checks if the OpenGL function *glDisable* is loaded.
    def disable?
      !!@addresses[21]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable : ::Proc
      get_proc(22, Translations.enable, Procs.enable)
    end

    # Checks if the OpenGL function *glEnable* is loaded.
    def enable?
      !!@addresses[22]
    end

    # Retrieves a `Proc` for the OpenGL function *glFinish*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def finish : ::Proc
      get_proc(23, Translations.finish, Procs.finish)
    end

    # Checks if the OpenGL function *glFinish* is loaded.
    def finish?
      !!@addresses[23]
    end

    # Retrieves a `Proc` for the OpenGL function *glFlush*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def flush : ::Proc
      get_proc(24, Translations.flush, Procs.flush)
    end

    # Checks if the OpenGL function *glFlush* is loaded.
    def flush?
      !!@addresses[24]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func : ::Proc
      get_proc(25, Translations.blend_func, Procs.blend_func)
    end

    # Checks if the OpenGL function *glBlendFunc* is loaded.
    def blend_func?
      !!@addresses[25]
    end

    # Retrieves a `Proc` for the OpenGL function *glLogicOp*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def logic_op : ::Proc
      get_proc(26, Translations.logic_op, Procs.logic_op)
    end

    # Checks if the OpenGL function *glLogicOp* is loaded.
    def logic_op?
      !!@addresses[26]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func : ::Proc
      get_proc(27, Translations.stencil_func, Procs.stencil_func)
    end

    # Checks if the OpenGL function *glStencilFunc* is loaded.
    def stencil_func?
      !!@addresses[27]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOp*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op : ::Proc
      get_proc(28, Translations.stencil_op, Procs.stencil_op)
    end

    # Checks if the OpenGL function *glStencilOp* is loaded.
    def stencil_op?
      !!@addresses[28]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_func : ::Proc
      get_proc(29, Translations.depth_func, Procs.depth_func)
    end

    # Checks if the OpenGL function *glDepthFunc* is loaded.
    def depth_func?
      !!@addresses[29]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelStoref*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_store_f : ::Proc
      get_proc(30, Translations.pixel_store_f, Procs.pixel_store_f)
    end

    # Checks if the OpenGL function *glPixelStoref* is loaded.
    def pixel_store_f?
      !!@addresses[30]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelStorei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_store_i : ::Proc
      get_proc(31, Translations.pixel_store_i, Procs.pixel_store_i)
    end

    # Checks if the OpenGL function *glPixelStorei* is loaded.
    def pixel_store_i?
      !!@addresses[31]
    end

    # Retrieves a `Proc` for the OpenGL function *glReadBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def read_buffer : ::Proc
      get_proc(32, Translations.read_buffer, Procs.read_buffer)
    end

    # Checks if the OpenGL function *glReadBuffer* is loaded.
    def read_buffer?
      !!@addresses[32]
    end

    # Retrieves a `Proc` for the OpenGL function *glReadPixels*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def read_pixels : ::Proc
      get_proc(33, Translations.read_pixels, Procs.read_pixels)
    end

    # Checks if the OpenGL function *glReadPixels* is loaded.
    def read_pixels?
      !!@addresses[33]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBooleanv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_boolean_v : ::Proc
      get_proc(34, Translations.get_boolean_v, Procs.get_boolean_v)
    end

    # Checks if the OpenGL function *glGetBooleanv* is loaded.
    def get_boolean_v?
      !!@addresses[34]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetDoublev*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_double_v : ::Proc
      get_proc(35, Translations.get_double_v, Procs.get_double_v)
    end

    # Checks if the OpenGL function *glGetDoublev* is loaded.
    def get_double_v?
      !!@addresses[35]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetError*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_error : ::Proc
      get_proc(36, Translations.get_error, Procs.get_error)
    end

    # Checks if the OpenGL function *glGetError* is loaded.
    def get_error?
      !!@addresses[36]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFloatv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_float_v : ::Proc
      get_proc(37, Translations.get_float_v, Procs.get_float_v)
    end

    # Checks if the OpenGL function *glGetFloatv* is loaded.
    def get_float_v?
      !!@addresses[37]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetIntegerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_v : ::Proc
      get_proc(38, Translations.get_integer_v, Procs.get_integer_v)
    end

    # Checks if the OpenGL function *glGetIntegerv* is loaded.
    def get_integer_v?
      !!@addresses[38]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetString*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_string : ::Proc
      get_proc(39, Translations.get_string, Procs.get_string)
    end

    # Checks if the OpenGL function *glGetString* is loaded.
    def get_string?
      !!@addresses[39]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexImage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_image : ::Proc
      get_proc(40, Translations.get_tex_image, Procs.get_tex_image)
    end

    # Checks if the OpenGL function *glGetTexImage* is loaded.
    def get_tex_image?
      !!@addresses[40]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_fv : ::Proc
      get_proc(41, Translations.get_tex_parameter_fv, Procs.get_tex_parameter_fv)
    end

    # Checks if the OpenGL function *glGetTexParameterfv* is loaded.
    def get_tex_parameter_fv?
      !!@addresses[41]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_iv : ::Proc
      get_proc(42, Translations.get_tex_parameter_iv, Procs.get_tex_parameter_iv)
    end

    # Checks if the OpenGL function *glGetTexParameteriv* is loaded.
    def get_tex_parameter_iv?
      !!@addresses[42]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexLevelParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_level_parameter_fv : ::Proc
      get_proc(43, Translations.get_tex_level_parameter_fv, Procs.get_tex_level_parameter_fv)
    end

    # Checks if the OpenGL function *glGetTexLevelParameterfv* is loaded.
    def get_tex_level_parameter_fv?
      !!@addresses[43]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexLevelParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_level_parameter_iv : ::Proc
      get_proc(44, Translations.get_tex_level_parameter_iv, Procs.get_tex_level_parameter_iv)
    end

    # Checks if the OpenGL function *glGetTexLevelParameteriv* is loaded.
    def get_tex_level_parameter_iv?
      !!@addresses[44]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsEnabled*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_enabled : ::Proc
      get_proc(45, Translations.is_enabled, Procs.is_enabled)
    end

    # Checks if the OpenGL function *glIsEnabled* is loaded.
    def is_enabled?
      !!@addresses[45]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_range : ::Proc
      get_proc(46, Translations.depth_range, Procs.depth_range)
    end

    # Checks if the OpenGL function *glDepthRange* is loaded.
    def depth_range?
      !!@addresses[46]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewport*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport : ::Proc
      get_proc(47, Translations.viewport, Procs.viewport)
    end

    # Checks if the OpenGL function *glViewport* is loaded.
    def viewport?
      !!@addresses[47]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays : ::Proc
      get_proc(48, Translations.draw_arrays, Procs.draw_arrays)
    end

    # Checks if the OpenGL function *glDrawArrays* is loaded.
    def draw_arrays?
      !!@addresses[48]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements : ::Proc
      get_proc(49, Translations.draw_elements, Procs.draw_elements)
    end

    # Checks if the OpenGL function *glDrawElements* is loaded.
    def draw_elements?
      !!@addresses[49]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonOffset*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_offset : ::Proc
      get_proc(50, Translations.polygon_offset, Procs.polygon_offset)
    end

    # Checks if the OpenGL function *glPolygonOffset* is loaded.
    def polygon_offset?
      !!@addresses[50]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_image_1d : ::Proc
      get_proc(51, Translations.copy_tex_image_1d, Procs.copy_tex_image_1d)
    end

    # Checks if the OpenGL function *glCopyTexImage1D* is loaded.
    def copy_tex_image_1d?
      !!@addresses[51]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_image_2d : ::Proc
      get_proc(52, Translations.copy_tex_image_2d, Procs.copy_tex_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexImage2D* is loaded.
    def copy_tex_image_2d?
      !!@addresses[52]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_1d : ::Proc
      get_proc(53, Translations.copy_tex_sub_image_1d, Procs.copy_tex_sub_image_1d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage1D* is loaded.
    def copy_tex_sub_image_1d?
      !!@addresses[53]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_2d : ::Proc
      get_proc(54, Translations.copy_tex_sub_image_2d, Procs.copy_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage2D* is loaded.
    def copy_tex_sub_image_2d?
      !!@addresses[54]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_1d : ::Proc
      get_proc(55, Translations.tex_sub_image_1d, Procs.tex_sub_image_1d)
    end

    # Checks if the OpenGL function *glTexSubImage1D* is loaded.
    def tex_sub_image_1d?
      !!@addresses[55]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_2d : ::Proc
      get_proc(56, Translations.tex_sub_image_2d, Procs.tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glTexSubImage2D* is loaded.
    def tex_sub_image_2d?
      !!@addresses[56]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_texture : ::Proc
      get_proc(57, Translations.bind_texture, Procs.bind_texture)
    end

    # Checks if the OpenGL function *glBindTexture* is loaded.
    def bind_texture?
      !!@addresses[57]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_textures : ::Proc
      get_proc(58, Translations.delete_textures, Procs.delete_textures)
    end

    # Checks if the OpenGL function *glDeleteTextures* is loaded.
    def delete_textures?
      !!@addresses[58]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_textures : ::Proc
      get_proc(59, Translations.gen_textures, Procs.gen_textures)
    end

    # Checks if the OpenGL function *glGenTextures* is loaded.
    def gen_textures?
      !!@addresses[59]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_texture : ::Proc
      get_proc(60, Translations.is_texture, Procs.is_texture)
    end

    # Checks if the OpenGL function *glIsTexture* is loaded.
    def is_texture?
      !!@addresses[60]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawRangeElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_range_elements : ::Proc
      get_proc(61, Translations.draw_range_elements, Procs.draw_range_elements)
    end

    # Checks if the OpenGL function *glDrawRangeElements* is loaded.
    def draw_range_elements?
      !!@addresses[61]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_3d : ::Proc
      get_proc(62, Translations.tex_image_3d, Procs.tex_image_3d)
    end

    # Checks if the OpenGL function *glTexImage3D* is loaded.
    def tex_image_3d?
      !!@addresses[62]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_3d : ::Proc
      get_proc(63, Translations.tex_sub_image_3d, Procs.tex_sub_image_3d)
    end

    # Checks if the OpenGL function *glTexSubImage3D* is loaded.
    def tex_sub_image_3d?
      !!@addresses[63]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_3d : ::Proc
      get_proc(64, Translations.copy_tex_sub_image_3d, Procs.copy_tex_sub_image_3d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage3D* is loaded.
    def copy_tex_sub_image_3d?
      !!@addresses[64]
    end

    # Retrieves a `Proc` for the OpenGL function *glActiveTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def active_texture : ::Proc
      get_proc(65, Translations.active_texture, Procs.active_texture)
    end

    # Checks if the OpenGL function *glActiveTexture* is loaded.
    def active_texture?
      !!@addresses[65]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleCoverage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_coverage : ::Proc
      get_proc(66, Translations.sample_coverage, Procs.sample_coverage)
    end

    # Checks if the OpenGL function *glSampleCoverage* is loaded.
    def sample_coverage?
      !!@addresses[66]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_3d : ::Proc
      get_proc(67, Translations.compressed_tex_image_3d, Procs.compressed_tex_image_3d)
    end

    # Checks if the OpenGL function *glCompressedTexImage3D* is loaded.
    def compressed_tex_image_3d?
      !!@addresses[67]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_2d : ::Proc
      get_proc(68, Translations.compressed_tex_image_2d, Procs.compressed_tex_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexImage2D* is loaded.
    def compressed_tex_image_2d?
      !!@addresses[68]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_1d : ::Proc
      get_proc(69, Translations.compressed_tex_image_1d, Procs.compressed_tex_image_1d)
    end

    # Checks if the OpenGL function *glCompressedTexImage1D* is loaded.
    def compressed_tex_image_1d?
      !!@addresses[69]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_3d : ::Proc
      get_proc(70, Translations.compressed_tex_sub_image_3d, Procs.compressed_tex_sub_image_3d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage3D* is loaded.
    def compressed_tex_sub_image_3d?
      !!@addresses[70]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_2d : ::Proc
      get_proc(71, Translations.compressed_tex_sub_image_2d, Procs.compressed_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage2D* is loaded.
    def compressed_tex_sub_image_2d?
      !!@addresses[71]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_1d : ::Proc
      get_proc(72, Translations.compressed_tex_sub_image_1d, Procs.compressed_tex_sub_image_1d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage1D* is loaded.
    def compressed_tex_sub_image_1d?
      !!@addresses[72]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetCompressedTexImage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_compressed_tex_image : ::Proc
      get_proc(73, Translations.get_compressed_tex_image, Procs.get_compressed_tex_image)
    end

    # Checks if the OpenGL function *glGetCompressedTexImage* is loaded.
    def get_compressed_tex_image?
      !!@addresses[73]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func_separate : ::Proc
      get_proc(74, Translations.blend_func_separate, Procs.blend_func_separate)
    end

    # Checks if the OpenGL function *glBlendFuncSeparate* is loaded.
    def blend_func_separate?
      !!@addresses[74]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_draw_arrays : ::Proc
      get_proc(75, Translations.multi_draw_arrays, Procs.multi_draw_arrays)
    end

    # Checks if the OpenGL function *glMultiDrawArrays* is loaded.
    def multi_draw_arrays?
      !!@addresses[75]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiDrawElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_draw_elements : ::Proc
      get_proc(76, Translations.multi_draw_elements, Procs.multi_draw_elements)
    end

    # Checks if the OpenGL function *glMultiDrawElements* is loaded.
    def multi_draw_elements?
      !!@addresses[76]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_f : ::Proc
      get_proc(77, Translations.point_parameter_f, Procs.point_parameter_f)
    end

    # Checks if the OpenGL function *glPointParameterf* is loaded.
    def point_parameter_f?
      !!@addresses[77]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_fv : ::Proc
      get_proc(78, Translations.point_parameter_fv, Procs.point_parameter_fv)
    end

    # Checks if the OpenGL function *glPointParameterfv* is loaded.
    def point_parameter_fv?
      !!@addresses[78]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_i : ::Proc
      get_proc(79, Translations.point_parameter_i, Procs.point_parameter_i)
    end

    # Checks if the OpenGL function *glPointParameteri* is loaded.
    def point_parameter_i?
      !!@addresses[79]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_iv : ::Proc
      get_proc(80, Translations.point_parameter_iv, Procs.point_parameter_iv)
    end

    # Checks if the OpenGL function *glPointParameteriv* is loaded.
    def point_parameter_iv?
      !!@addresses[80]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_color : ::Proc
      get_proc(81, Translations.blend_color, Procs.blend_color)
    end

    # Checks if the OpenGL function *glBlendColor* is loaded.
    def blend_color?
      !!@addresses[81]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation : ::Proc
      get_proc(82, Translations.blend_equation, Procs.blend_equation)
    end

    # Checks if the OpenGL function *glBlendEquation* is loaded.
    def blend_equation?
      !!@addresses[82]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenQueries*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_queries : ::Proc
      get_proc(83, Translations.gen_queries, Procs.gen_queries)
    end

    # Checks if the OpenGL function *glGenQueries* is loaded.
    def gen_queries?
      !!@addresses[83]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteQueries*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_queries : ::Proc
      get_proc(84, Translations.delete_queries, Procs.delete_queries)
    end

    # Checks if the OpenGL function *glDeleteQueries* is loaded.
    def delete_queries?
      !!@addresses[84]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsQuery*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_query : ::Proc
      get_proc(85, Translations.is_query, Procs.is_query)
    end

    # Checks if the OpenGL function *glIsQuery* is loaded.
    def is_query?
      !!@addresses[85]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginQuery*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_query : ::Proc
      get_proc(86, Translations.begin_query, Procs.begin_query)
    end

    # Checks if the OpenGL function *glBeginQuery* is loaded.
    def begin_query?
      !!@addresses[86]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndQuery*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_query : ::Proc
      get_proc(87, Translations.end_query, Procs.end_query)
    end

    # Checks if the OpenGL function *glEndQuery* is loaded.
    def end_query?
      !!@addresses[87]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_iv : ::Proc
      get_proc(88, Translations.get_query_iv, Procs.get_query_iv)
    end

    # Checks if the OpenGL function *glGetQueryiv* is loaded.
    def get_query_iv?
      !!@addresses[88]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjectiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_iv : ::Proc
      get_proc(89, Translations.get_query_object_iv, Procs.get_query_object_iv)
    end

    # Checks if the OpenGL function *glGetQueryObjectiv* is loaded.
    def get_query_object_iv?
      !!@addresses[89]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjectuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_uiv : ::Proc
      get_proc(90, Translations.get_query_object_uiv, Procs.get_query_object_uiv)
    end

    # Checks if the OpenGL function *glGetQueryObjectuiv* is loaded.
    def get_query_object_uiv?
      !!@addresses[90]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer : ::Proc
      get_proc(91, Translations.bind_buffer, Procs.bind_buffer)
    end

    # Checks if the OpenGL function *glBindBuffer* is loaded.
    def bind_buffer?
      !!@addresses[91]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_buffers : ::Proc
      get_proc(92, Translations.delete_buffers, Procs.delete_buffers)
    end

    # Checks if the OpenGL function *glDeleteBuffers* is loaded.
    def delete_buffers?
      !!@addresses[92]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_buffers : ::Proc
      get_proc(93, Translations.gen_buffers, Procs.gen_buffers)
    end

    # Checks if the OpenGL function *glGenBuffers* is loaded.
    def gen_buffers?
      !!@addresses[93]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_buffer : ::Proc
      get_proc(94, Translations.is_buffer, Procs.is_buffer)
    end

    # Checks if the OpenGL function *glIsBuffer* is loaded.
    def is_buffer?
      !!@addresses[94]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_data : ::Proc
      get_proc(95, Translations.buffer_data, Procs.buffer_data)
    end

    # Checks if the OpenGL function *glBufferData* is loaded.
    def buffer_data?
      !!@addresses[95]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_sub_data : ::Proc
      get_proc(96, Translations.buffer_sub_data, Procs.buffer_sub_data)
    end

    # Checks if the OpenGL function *glBufferSubData* is loaded.
    def buffer_sub_data?
      !!@addresses[96]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_sub_data : ::Proc
      get_proc(97, Translations.get_buffer_sub_data, Procs.get_buffer_sub_data)
    end

    # Checks if the OpenGL function *glGetBufferSubData* is loaded.
    def get_buffer_sub_data?
      !!@addresses[97]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_buffer : ::Proc
      get_proc(98, Translations.map_buffer, Procs.map_buffer)
    end

    # Checks if the OpenGL function *glMapBuffer* is loaded.
    def map_buffer?
      !!@addresses[98]
    end

    # Retrieves a `Proc` for the OpenGL function *glUnmapBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def unmap_buffer : ::Proc
      get_proc(99, Translations.unmap_buffer, Procs.unmap_buffer)
    end

    # Checks if the OpenGL function *glUnmapBuffer* is loaded.
    def unmap_buffer?
      !!@addresses[99]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_iv : ::Proc
      get_proc(100, Translations.get_buffer_parameter_iv, Procs.get_buffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetBufferParameteriv* is loaded.
    def get_buffer_parameter_iv?
      !!@addresses[100]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_pointer_v : ::Proc
      get_proc(101, Translations.get_buffer_pointer_v, Procs.get_buffer_pointer_v)
    end

    # Checks if the OpenGL function *glGetBufferPointerv* is loaded.
    def get_buffer_pointer_v?
      !!@addresses[101]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquationSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation_separate : ::Proc
      get_proc(102, Translations.blend_equation_separate, Procs.blend_equation_separate)
    end

    # Checks if the OpenGL function *glBlendEquationSeparate* is loaded.
    def blend_equation_separate?
      !!@addresses[102]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_buffers : ::Proc
      get_proc(103, Translations.draw_buffers, Procs.draw_buffers)
    end

    # Checks if the OpenGL function *glDrawBuffers* is loaded.
    def draw_buffers?
      !!@addresses[103]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOpSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op_separate : ::Proc
      get_proc(104, Translations.stencil_op_separate, Procs.stencil_op_separate)
    end

    # Checks if the OpenGL function *glStencilOpSeparate* is loaded.
    def stencil_op_separate?
      !!@addresses[104]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func_separate : ::Proc
      get_proc(105, Translations.stencil_func_separate, Procs.stencil_func_separate)
    end

    # Checks if the OpenGL function *glStencilFuncSeparate* is loaded.
    def stencil_func_separate?
      !!@addresses[105]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMaskSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask_separate : ::Proc
      get_proc(106, Translations.stencil_mask_separate, Procs.stencil_mask_separate)
    end

    # Checks if the OpenGL function *glStencilMaskSeparate* is loaded.
    def stencil_mask_separate?
      !!@addresses[106]
    end

    # Retrieves a `Proc` for the OpenGL function *glAttachShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def attach_shader : ::Proc
      get_proc(107, Translations.attach_shader, Procs.attach_shader)
    end

    # Checks if the OpenGL function *glAttachShader* is loaded.
    def attach_shader?
      !!@addresses[107]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_attrib_location : ::Proc
      get_proc(108, Translations.bind_attrib_location, Procs.bind_attrib_location)
    end

    # Checks if the OpenGL function *glBindAttribLocation* is loaded.
    def bind_attrib_location?
      !!@addresses[108]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompileShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compile_shader : ::Proc
      get_proc(109, Translations.compile_shader, Procs.compile_shader)
    end

    # Checks if the OpenGL function *glCompileShader* is loaded.
    def compile_shader?
      !!@addresses[109]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_program : ::Proc
      get_proc(110, Translations.create_program, Procs.create_program)
    end

    # Checks if the OpenGL function *glCreateProgram* is loaded.
    def create_program?
      !!@addresses[110]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_shader : ::Proc
      get_proc(111, Translations.create_shader, Procs.create_shader)
    end

    # Checks if the OpenGL function *glCreateShader* is loaded.
    def create_shader?
      !!@addresses[111]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_program : ::Proc
      get_proc(112, Translations.delete_program, Procs.delete_program)
    end

    # Checks if the OpenGL function *glDeleteProgram* is loaded.
    def delete_program?
      !!@addresses[112]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_shader : ::Proc
      get_proc(113, Translations.delete_shader, Procs.delete_shader)
    end

    # Checks if the OpenGL function *glDeleteShader* is loaded.
    def delete_shader?
      !!@addresses[113]
    end

    # Retrieves a `Proc` for the OpenGL function *glDetachShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def detach_shader : ::Proc
      get_proc(114, Translations.detach_shader, Procs.detach_shader)
    end

    # Checks if the OpenGL function *glDetachShader* is loaded.
    def detach_shader?
      !!@addresses[114]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_vertex_attrib_array : ::Proc
      get_proc(115, Translations.disable_vertex_attrib_array, Procs.disable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glDisableVertexAttribArray* is loaded.
    def disable_vertex_attrib_array?
      !!@addresses[115]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_vertex_attrib_array : ::Proc
      get_proc(116, Translations.enable_vertex_attrib_array, Procs.enable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glEnableVertexAttribArray* is loaded.
    def enable_vertex_attrib_array?
      !!@addresses[116]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_attrib : ::Proc
      get_proc(117, Translations.get_active_attrib, Procs.get_active_attrib)
    end

    # Checks if the OpenGL function *glGetActiveAttrib* is loaded.
    def get_active_attrib?
      !!@addresses[117]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniform*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform : ::Proc
      get_proc(118, Translations.get_active_uniform, Procs.get_active_uniform)
    end

    # Checks if the OpenGL function *glGetActiveUniform* is loaded.
    def get_active_uniform?
      !!@addresses[118]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttachedShaders*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attached_shaders : ::Proc
      get_proc(119, Translations.get_attached_shaders, Procs.get_attached_shaders)
    end

    # Checks if the OpenGL function *glGetAttachedShaders* is loaded.
    def get_attached_shaders?
      !!@addresses[119]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attrib_location : ::Proc
      get_proc(120, Translations.get_attrib_location, Procs.get_attrib_location)
    end

    # Checks if the OpenGL function *glGetAttribLocation* is loaded.
    def get_attrib_location?
      !!@addresses[120]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_iv : ::Proc
      get_proc(121, Translations.get_program_iv, Procs.get_program_iv)
    end

    # Checks if the OpenGL function *glGetProgramiv* is loaded.
    def get_program_iv?
      !!@addresses[121]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_info_log : ::Proc
      get_proc(122, Translations.get_program_info_log, Procs.get_program_info_log)
    end

    # Checks if the OpenGL function *glGetProgramInfoLog* is loaded.
    def get_program_info_log?
      !!@addresses[122]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_iv : ::Proc
      get_proc(123, Translations.get_shader_iv, Procs.get_shader_iv)
    end

    # Checks if the OpenGL function *glGetShaderiv* is loaded.
    def get_shader_iv?
      !!@addresses[123]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_info_log : ::Proc
      get_proc(124, Translations.get_shader_info_log, Procs.get_shader_info_log)
    end

    # Checks if the OpenGL function *glGetShaderInfoLog* is loaded.
    def get_shader_info_log?
      !!@addresses[124]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderSource*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_source : ::Proc
      get_proc(125, Translations.get_shader_source, Procs.get_shader_source)
    end

    # Checks if the OpenGL function *glGetShaderSource* is loaded.
    def get_shader_source?
      !!@addresses[125]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_location : ::Proc
      get_proc(126, Translations.get_uniform_location, Procs.get_uniform_location)
    end

    # Checks if the OpenGL function *glGetUniformLocation* is loaded.
    def get_uniform_location?
      !!@addresses[126]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_fv : ::Proc
      get_proc(127, Translations.get_uniform_fv, Procs.get_uniform_fv)
    end

    # Checks if the OpenGL function *glGetUniformfv* is loaded.
    def get_uniform_fv?
      !!@addresses[127]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_iv : ::Proc
      get_proc(128, Translations.get_uniform_iv, Procs.get_uniform_iv)
    end

    # Checks if the OpenGL function *glGetUniformiv* is loaded.
    def get_uniform_iv?
      !!@addresses[128]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_dv : ::Proc
      get_proc(129, Translations.get_vertex_attrib_dv, Procs.get_vertex_attrib_dv)
    end

    # Checks if the OpenGL function *glGetVertexAttribdv* is loaded.
    def get_vertex_attrib_dv?
      !!@addresses[129]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_fv : ::Proc
      get_proc(130, Translations.get_vertex_attrib_fv, Procs.get_vertex_attrib_fv)
    end

    # Checks if the OpenGL function *glGetVertexAttribfv* is loaded.
    def get_vertex_attrib_fv?
      !!@addresses[130]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_iv : ::Proc
      get_proc(131, Translations.get_vertex_attrib_iv, Procs.get_vertex_attrib_iv)
    end

    # Checks if the OpenGL function *glGetVertexAttribiv* is loaded.
    def get_vertex_attrib_iv?
      !!@addresses[131]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_pointer_v : ::Proc
      get_proc(132, Translations.get_vertex_attrib_pointer_v, Procs.get_vertex_attrib_pointer_v)
    end

    # Checks if the OpenGL function *glGetVertexAttribPointerv* is loaded.
    def get_vertex_attrib_pointer_v?
      !!@addresses[132]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_program : ::Proc
      get_proc(133, Translations.is_program, Procs.is_program)
    end

    # Checks if the OpenGL function *glIsProgram* is loaded.
    def is_program?
      !!@addresses[133]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_shader : ::Proc
      get_proc(134, Translations.is_shader, Procs.is_shader)
    end

    # Checks if the OpenGL function *glIsShader* is loaded.
    def is_shader?
      !!@addresses[134]
    end

    # Retrieves a `Proc` for the OpenGL function *glLinkProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def link_program : ::Proc
      get_proc(135, Translations.link_program, Procs.link_program)
    end

    # Checks if the OpenGL function *glLinkProgram* is loaded.
    def link_program?
      !!@addresses[135]
    end

    # Retrieves a `Proc` for the OpenGL function *glShaderSource*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shader_source : ::Proc
      get_proc(136, Translations.shader_source, Procs.shader_source)
    end

    # Checks if the OpenGL function *glShaderSource* is loaded.
    def shader_source?
      !!@addresses[136]
    end

    # Retrieves a `Proc` for the OpenGL function *glUseProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def use_program : ::Proc
      get_proc(137, Translations.use_program, Procs.use_program)
    end

    # Checks if the OpenGL function *glUseProgram* is loaded.
    def use_program?
      !!@addresses[137]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1f : ::Proc
      get_proc(138, Translations.uniform_1f, Procs.uniform_1f)
    end

    # Checks if the OpenGL function *glUniform1f* is loaded.
    def uniform_1f?
      !!@addresses[138]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2f : ::Proc
      get_proc(139, Translations.uniform_2f, Procs.uniform_2f)
    end

    # Checks if the OpenGL function *glUniform2f* is loaded.
    def uniform_2f?
      !!@addresses[139]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3f : ::Proc
      get_proc(140, Translations.uniform_3f, Procs.uniform_3f)
    end

    # Checks if the OpenGL function *glUniform3f* is loaded.
    def uniform_3f?
      !!@addresses[140]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4f : ::Proc
      get_proc(141, Translations.uniform_4f, Procs.uniform_4f)
    end

    # Checks if the OpenGL function *glUniform4f* is loaded.
    def uniform_4f?
      !!@addresses[141]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1i : ::Proc
      get_proc(142, Translations.uniform_1i, Procs.uniform_1i)
    end

    # Checks if the OpenGL function *glUniform1i* is loaded.
    def uniform_1i?
      !!@addresses[142]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2i : ::Proc
      get_proc(143, Translations.uniform_2i, Procs.uniform_2i)
    end

    # Checks if the OpenGL function *glUniform2i* is loaded.
    def uniform_2i?
      !!@addresses[143]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3i : ::Proc
      get_proc(144, Translations.uniform_3i, Procs.uniform_3i)
    end

    # Checks if the OpenGL function *glUniform3i* is loaded.
    def uniform_3i?
      !!@addresses[144]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4i : ::Proc
      get_proc(145, Translations.uniform_4i, Procs.uniform_4i)
    end

    # Checks if the OpenGL function *glUniform4i* is loaded.
    def uniform_4i?
      !!@addresses[145]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1fv : ::Proc
      get_proc(146, Translations.uniform_1fv, Procs.uniform_1fv)
    end

    # Checks if the OpenGL function *glUniform1fv* is loaded.
    def uniform_1fv?
      !!@addresses[146]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2fv : ::Proc
      get_proc(147, Translations.uniform_2fv, Procs.uniform_2fv)
    end

    # Checks if the OpenGL function *glUniform2fv* is loaded.
    def uniform_2fv?
      !!@addresses[147]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3fv : ::Proc
      get_proc(148, Translations.uniform_3fv, Procs.uniform_3fv)
    end

    # Checks if the OpenGL function *glUniform3fv* is loaded.
    def uniform_3fv?
      !!@addresses[148]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4fv : ::Proc
      get_proc(149, Translations.uniform_4fv, Procs.uniform_4fv)
    end

    # Checks if the OpenGL function *glUniform4fv* is loaded.
    def uniform_4fv?
      !!@addresses[149]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1iv : ::Proc
      get_proc(150, Translations.uniform_1iv, Procs.uniform_1iv)
    end

    # Checks if the OpenGL function *glUniform1iv* is loaded.
    def uniform_1iv?
      !!@addresses[150]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2iv : ::Proc
      get_proc(151, Translations.uniform_2iv, Procs.uniform_2iv)
    end

    # Checks if the OpenGL function *glUniform2iv* is loaded.
    def uniform_2iv?
      !!@addresses[151]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3iv : ::Proc
      get_proc(152, Translations.uniform_3iv, Procs.uniform_3iv)
    end

    # Checks if the OpenGL function *glUniform3iv* is loaded.
    def uniform_3iv?
      !!@addresses[152]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4iv : ::Proc
      get_proc(153, Translations.uniform_4iv, Procs.uniform_4iv)
    end

    # Checks if the OpenGL function *glUniform4iv* is loaded.
    def uniform_4iv?
      !!@addresses[153]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2_fv : ::Proc
      get_proc(154, Translations.uniform_matrix2_fv, Procs.uniform_matrix2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2fv* is loaded.
    def uniform_matrix2_fv?
      !!@addresses[154]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3_fv : ::Proc
      get_proc(155, Translations.uniform_matrix3_fv, Procs.uniform_matrix3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3fv* is loaded.
    def uniform_matrix3_fv?
      !!@addresses[155]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4_fv : ::Proc
      get_proc(156, Translations.uniform_matrix4_fv, Procs.uniform_matrix4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4fv* is loaded.
    def uniform_matrix4_fv?
      !!@addresses[156]
    end

    # Retrieves a `Proc` for the OpenGL function *glValidateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def validate_program : ::Proc
      get_proc(157, Translations.validate_program, Procs.validate_program)
    end

    # Checks if the OpenGL function *glValidateProgram* is loaded.
    def validate_program?
      !!@addresses[157]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1d : ::Proc
      get_proc(158, Translations.vertex_attrib_1d, Procs.vertex_attrib_1d)
    end

    # Checks if the OpenGL function *glVertexAttrib1d* is loaded.
    def vertex_attrib_1d?
      !!@addresses[158]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1dv : ::Proc
      get_proc(159, Translations.vertex_attrib_1dv, Procs.vertex_attrib_1dv)
    end

    # Checks if the OpenGL function *glVertexAttrib1dv* is loaded.
    def vertex_attrib_1dv?
      !!@addresses[159]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1f : ::Proc
      get_proc(160, Translations.vertex_attrib_1f, Procs.vertex_attrib_1f)
    end

    # Checks if the OpenGL function *glVertexAttrib1f* is loaded.
    def vertex_attrib_1f?
      !!@addresses[160]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1fv : ::Proc
      get_proc(161, Translations.vertex_attrib_1fv, Procs.vertex_attrib_1fv)
    end

    # Checks if the OpenGL function *glVertexAttrib1fv* is loaded.
    def vertex_attrib_1fv?
      !!@addresses[161]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1s : ::Proc
      get_proc(162, Translations.vertex_attrib_1s, Procs.vertex_attrib_1s)
    end

    # Checks if the OpenGL function *glVertexAttrib1s* is loaded.
    def vertex_attrib_1s?
      !!@addresses[162]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1sv : ::Proc
      get_proc(163, Translations.vertex_attrib_1sv, Procs.vertex_attrib_1sv)
    end

    # Checks if the OpenGL function *glVertexAttrib1sv* is loaded.
    def vertex_attrib_1sv?
      !!@addresses[163]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2d : ::Proc
      get_proc(164, Translations.vertex_attrib_2d, Procs.vertex_attrib_2d)
    end

    # Checks if the OpenGL function *glVertexAttrib2d* is loaded.
    def vertex_attrib_2d?
      !!@addresses[164]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2dv : ::Proc
      get_proc(165, Translations.vertex_attrib_2dv, Procs.vertex_attrib_2dv)
    end

    # Checks if the OpenGL function *glVertexAttrib2dv* is loaded.
    def vertex_attrib_2dv?
      !!@addresses[165]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2f : ::Proc
      get_proc(166, Translations.vertex_attrib_2f, Procs.vertex_attrib_2f)
    end

    # Checks if the OpenGL function *glVertexAttrib2f* is loaded.
    def vertex_attrib_2f?
      !!@addresses[166]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2fv : ::Proc
      get_proc(167, Translations.vertex_attrib_2fv, Procs.vertex_attrib_2fv)
    end

    # Checks if the OpenGL function *glVertexAttrib2fv* is loaded.
    def vertex_attrib_2fv?
      !!@addresses[167]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2s : ::Proc
      get_proc(168, Translations.vertex_attrib_2s, Procs.vertex_attrib_2s)
    end

    # Checks if the OpenGL function *glVertexAttrib2s* is loaded.
    def vertex_attrib_2s?
      !!@addresses[168]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2sv : ::Proc
      get_proc(169, Translations.vertex_attrib_2sv, Procs.vertex_attrib_2sv)
    end

    # Checks if the OpenGL function *glVertexAttrib2sv* is loaded.
    def vertex_attrib_2sv?
      !!@addresses[169]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3d : ::Proc
      get_proc(170, Translations.vertex_attrib_3d, Procs.vertex_attrib_3d)
    end

    # Checks if the OpenGL function *glVertexAttrib3d* is loaded.
    def vertex_attrib_3d?
      !!@addresses[170]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3dv : ::Proc
      get_proc(171, Translations.vertex_attrib_3dv, Procs.vertex_attrib_3dv)
    end

    # Checks if the OpenGL function *glVertexAttrib3dv* is loaded.
    def vertex_attrib_3dv?
      !!@addresses[171]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3f : ::Proc
      get_proc(172, Translations.vertex_attrib_3f, Procs.vertex_attrib_3f)
    end

    # Checks if the OpenGL function *glVertexAttrib3f* is loaded.
    def vertex_attrib_3f?
      !!@addresses[172]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3fv : ::Proc
      get_proc(173, Translations.vertex_attrib_3fv, Procs.vertex_attrib_3fv)
    end

    # Checks if the OpenGL function *glVertexAttrib3fv* is loaded.
    def vertex_attrib_3fv?
      !!@addresses[173]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3s : ::Proc
      get_proc(174, Translations.vertex_attrib_3s, Procs.vertex_attrib_3s)
    end

    # Checks if the OpenGL function *glVertexAttrib3s* is loaded.
    def vertex_attrib_3s?
      !!@addresses[174]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3sv : ::Proc
      get_proc(175, Translations.vertex_attrib_3sv, Procs.vertex_attrib_3sv)
    end

    # Checks if the OpenGL function *glVertexAttrib3sv* is loaded.
    def vertex_attrib_3sv?
      !!@addresses[175]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nbv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nbv : ::Proc
      get_proc(176, Translations.vertex_attrib_4nbv, Procs.vertex_attrib_4nbv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nbv* is loaded.
    def vertex_attrib_4nbv?
      !!@addresses[176]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Niv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4niv : ::Proc
      get_proc(177, Translations.vertex_attrib_4niv, Procs.vertex_attrib_4niv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Niv* is loaded.
    def vertex_attrib_4niv?
      !!@addresses[177]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nsv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nsv : ::Proc
      get_proc(178, Translations.vertex_attrib_4nsv, Procs.vertex_attrib_4nsv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nsv* is loaded.
    def vertex_attrib_4nsv?
      !!@addresses[178]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nub : ::Proc
      get_proc(179, Translations.vertex_attrib_4nub, Procs.vertex_attrib_4nub)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nub* is loaded.
    def vertex_attrib_4nub?
      !!@addresses[179]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nubv : ::Proc
      get_proc(180, Translations.vertex_attrib_4nubv, Procs.vertex_attrib_4nubv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nubv* is loaded.
    def vertex_attrib_4nubv?
      !!@addresses[180]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nuiv : ::Proc
      get_proc(181, Translations.vertex_attrib_4nuiv, Procs.vertex_attrib_4nuiv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nuiv* is loaded.
    def vertex_attrib_4nuiv?
      !!@addresses[181]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nusv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nusv : ::Proc
      get_proc(182, Translations.vertex_attrib_4nusv, Procs.vertex_attrib_4nusv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nusv* is loaded.
    def vertex_attrib_4nusv?
      !!@addresses[182]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4bv : ::Proc
      get_proc(183, Translations.vertex_attrib_4bv, Procs.vertex_attrib_4bv)
    end

    # Checks if the OpenGL function *glVertexAttrib4bv* is loaded.
    def vertex_attrib_4bv?
      !!@addresses[183]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4d : ::Proc
      get_proc(184, Translations.vertex_attrib_4d, Procs.vertex_attrib_4d)
    end

    # Checks if the OpenGL function *glVertexAttrib4d* is loaded.
    def vertex_attrib_4d?
      !!@addresses[184]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4dv : ::Proc
      get_proc(185, Translations.vertex_attrib_4dv, Procs.vertex_attrib_4dv)
    end

    # Checks if the OpenGL function *glVertexAttrib4dv* is loaded.
    def vertex_attrib_4dv?
      !!@addresses[185]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4f : ::Proc
      get_proc(186, Translations.vertex_attrib_4f, Procs.vertex_attrib_4f)
    end

    # Checks if the OpenGL function *glVertexAttrib4f* is loaded.
    def vertex_attrib_4f?
      !!@addresses[186]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4fv : ::Proc
      get_proc(187, Translations.vertex_attrib_4fv, Procs.vertex_attrib_4fv)
    end

    # Checks if the OpenGL function *glVertexAttrib4fv* is loaded.
    def vertex_attrib_4fv?
      !!@addresses[187]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4iv : ::Proc
      get_proc(188, Translations.vertex_attrib_4iv, Procs.vertex_attrib_4iv)
    end

    # Checks if the OpenGL function *glVertexAttrib4iv* is loaded.
    def vertex_attrib_4iv?
      !!@addresses[188]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4s : ::Proc
      get_proc(189, Translations.vertex_attrib_4s, Procs.vertex_attrib_4s)
    end

    # Checks if the OpenGL function *glVertexAttrib4s* is loaded.
    def vertex_attrib_4s?
      !!@addresses[189]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4sv : ::Proc
      get_proc(190, Translations.vertex_attrib_4sv, Procs.vertex_attrib_4sv)
    end

    # Checks if the OpenGL function *glVertexAttrib4sv* is loaded.
    def vertex_attrib_4sv?
      !!@addresses[190]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4ubv : ::Proc
      get_proc(191, Translations.vertex_attrib_4ubv, Procs.vertex_attrib_4ubv)
    end

    # Checks if the OpenGL function *glVertexAttrib4ubv* is loaded.
    def vertex_attrib_4ubv?
      !!@addresses[191]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4uiv : ::Proc
      get_proc(192, Translations.vertex_attrib_4uiv, Procs.vertex_attrib_4uiv)
    end

    # Checks if the OpenGL function *glVertexAttrib4uiv* is loaded.
    def vertex_attrib_4uiv?
      !!@addresses[192]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4usv : ::Proc
      get_proc(193, Translations.vertex_attrib_4usv, Procs.vertex_attrib_4usv)
    end

    # Checks if the OpenGL function *glVertexAttrib4usv* is loaded.
    def vertex_attrib_4usv?
      !!@addresses[193]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_pointer : ::Proc
      get_proc(194, Translations.vertex_attrib_pointer, Procs.vertex_attrib_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribPointer* is loaded.
    def vertex_attrib_pointer?
      !!@addresses[194]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2x3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2x3_fv : ::Proc
      get_proc(195, Translations.uniform_matrix2x3_fv, Procs.uniform_matrix2x3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2x3fv* is loaded.
    def uniform_matrix2x3_fv?
      !!@addresses[195]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3x2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3x2_fv : ::Proc
      get_proc(196, Translations.uniform_matrix3x2_fv, Procs.uniform_matrix3x2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3x2fv* is loaded.
    def uniform_matrix3x2_fv?
      !!@addresses[196]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2x4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2x4_fv : ::Proc
      get_proc(197, Translations.uniform_matrix2x4_fv, Procs.uniform_matrix2x4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2x4fv* is loaded.
    def uniform_matrix2x4_fv?
      !!@addresses[197]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4x2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4x2_fv : ::Proc
      get_proc(198, Translations.uniform_matrix4x2_fv, Procs.uniform_matrix4x2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4x2fv* is loaded.
    def uniform_matrix4x2_fv?
      !!@addresses[198]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3x4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3x4_fv : ::Proc
      get_proc(199, Translations.uniform_matrix3x4_fv, Procs.uniform_matrix3x4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3x4fv* is loaded.
    def uniform_matrix3x4_fv?
      !!@addresses[199]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4x3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4x3_fv : ::Proc
      get_proc(200, Translations.uniform_matrix4x3_fv, Procs.uniform_matrix4x3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4x3fv* is loaded.
    def uniform_matrix4x3_fv?
      !!@addresses[200]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorMaski*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_mask_i : ::Proc
      get_proc(201, Translations.color_mask_i, Procs.color_mask_i)
    end

    # Checks if the OpenGL function *glColorMaski* is loaded.
    def color_mask_i?
      !!@addresses[201]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBooleani_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_boolean_i_v : ::Proc
      get_proc(202, Translations.get_boolean_i_v, Procs.get_boolean_i_v)
    end

    # Checks if the OpenGL function *glGetBooleani_v* is loaded.
    def get_boolean_i_v?
      !!@addresses[202]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetIntegeri_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_i_v : ::Proc
      get_proc(203, Translations.get_integer_i_v, Procs.get_integer_i_v)
    end

    # Checks if the OpenGL function *glGetIntegeri_v* is loaded.
    def get_integer_i_v?
      !!@addresses[203]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnablei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_i : ::Proc
      get_proc(204, Translations.enable_i, Procs.enable_i)
    end

    # Checks if the OpenGL function *glEnablei* is loaded.
    def enable_i?
      !!@addresses[204]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisablei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_i : ::Proc
      get_proc(205, Translations.disable_i, Procs.disable_i)
    end

    # Checks if the OpenGL function *glDisablei* is loaded.
    def disable_i?
      !!@addresses[205]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsEnabledi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_enabled_i : ::Proc
      get_proc(206, Translations.is_enabled_i, Procs.is_enabled_i)
    end

    # Checks if the OpenGL function *glIsEnabledi* is loaded.
    def is_enabled_i?
      !!@addresses[206]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_transform_feedback : ::Proc
      get_proc(207, Translations.begin_transform_feedback, Procs.begin_transform_feedback)
    end

    # Checks if the OpenGL function *glBeginTransformFeedback* is loaded.
    def begin_transform_feedback?
      !!@addresses[207]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_transform_feedback : ::Proc
      get_proc(208, Translations.end_transform_feedback, Procs.end_transform_feedback)
    end

    # Checks if the OpenGL function *glEndTransformFeedback* is loaded.
    def end_transform_feedback?
      !!@addresses[208]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBufferRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer_range : ::Proc
      get_proc(209, Translations.bind_buffer_range, Procs.bind_buffer_range)
    end

    # Checks if the OpenGL function *glBindBufferRange* is loaded.
    def bind_buffer_range?
      !!@addresses[209]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBufferBase*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer_base : ::Proc
      get_proc(210, Translations.bind_buffer_base, Procs.bind_buffer_base)
    end

    # Checks if the OpenGL function *glBindBufferBase* is loaded.
    def bind_buffer_base?
      !!@addresses[210]
    end

    # Retrieves a `Proc` for the OpenGL function *glTransformFeedbackVaryings*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def transform_feedback_varyings : ::Proc
      get_proc(211, Translations.transform_feedback_varyings, Procs.transform_feedback_varyings)
    end

    # Checks if the OpenGL function *glTransformFeedbackVaryings* is loaded.
    def transform_feedback_varyings?
      !!@addresses[211]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTransformFeedbackVarying*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_transform_feedback_varying : ::Proc
      get_proc(212, Translations.get_transform_feedback_varying, Procs.get_transform_feedback_varying)
    end

    # Checks if the OpenGL function *glGetTransformFeedbackVarying* is loaded.
    def get_transform_feedback_varying?
      !!@addresses[212]
    end

    # Retrieves a `Proc` for the OpenGL function *glClampColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clamp_color : ::Proc
      get_proc(213, Translations.clamp_color, Procs.clamp_color)
    end

    # Checks if the OpenGL function *glClampColor* is loaded.
    def clamp_color?
      !!@addresses[213]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginConditionalRender*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_conditional_render : ::Proc
      get_proc(214, Translations.begin_conditional_render, Procs.begin_conditional_render)
    end

    # Checks if the OpenGL function *glBeginConditionalRender* is loaded.
    def begin_conditional_render?
      !!@addresses[214]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndConditionalRender*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_conditional_render : ::Proc
      get_proc(215, Translations.end_conditional_render, Procs.end_conditional_render)
    end

    # Checks if the OpenGL function *glEndConditionalRender* is loaded.
    def end_conditional_render?
      !!@addresses[215]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribIPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_pointer : ::Proc
      get_proc(216, Translations.vertex_attrib_i_pointer, Procs.vertex_attrib_i_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribIPointer* is loaded.
    def vertex_attrib_i_pointer?
      !!@addresses[216]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_i_iv : ::Proc
      get_proc(217, Translations.get_vertex_attrib_i_iv, Procs.get_vertex_attrib_i_iv)
    end

    # Checks if the OpenGL function *glGetVertexAttribIiv* is loaded.
    def get_vertex_attrib_i_iv?
      !!@addresses[217]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_i_uiv : ::Proc
      get_proc(218, Translations.get_vertex_attrib_i_uiv, Procs.get_vertex_attrib_i_uiv)
    end

    # Checks if the OpenGL function *glGetVertexAttribIuiv* is loaded.
    def get_vertex_attrib_i_uiv?
      !!@addresses[218]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1i : ::Proc
      get_proc(219, Translations.vertex_attrib_i_1i, Procs.vertex_attrib_i_1i)
    end

    # Checks if the OpenGL function *glVertexAttribI1i* is loaded.
    def vertex_attrib_i_1i?
      !!@addresses[219]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2i : ::Proc
      get_proc(220, Translations.vertex_attrib_i_2i, Procs.vertex_attrib_i_2i)
    end

    # Checks if the OpenGL function *glVertexAttribI2i* is loaded.
    def vertex_attrib_i_2i?
      !!@addresses[220]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3i : ::Proc
      get_proc(221, Translations.vertex_attrib_i_3i, Procs.vertex_attrib_i_3i)
    end

    # Checks if the OpenGL function *glVertexAttribI3i* is loaded.
    def vertex_attrib_i_3i?
      !!@addresses[221]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4i : ::Proc
      get_proc(222, Translations.vertex_attrib_i_4i, Procs.vertex_attrib_i_4i)
    end

    # Checks if the OpenGL function *glVertexAttribI4i* is loaded.
    def vertex_attrib_i_4i?
      !!@addresses[222]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1ui : ::Proc
      get_proc(223, Translations.vertex_attrib_i_1ui, Procs.vertex_attrib_i_1ui)
    end

    # Checks if the OpenGL function *glVertexAttribI1ui* is loaded.
    def vertex_attrib_i_1ui?
      !!@addresses[223]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2ui : ::Proc
      get_proc(224, Translations.vertex_attrib_i_2ui, Procs.vertex_attrib_i_2ui)
    end

    # Checks if the OpenGL function *glVertexAttribI2ui* is loaded.
    def vertex_attrib_i_2ui?
      !!@addresses[224]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3ui : ::Proc
      get_proc(225, Translations.vertex_attrib_i_3ui, Procs.vertex_attrib_i_3ui)
    end

    # Checks if the OpenGL function *glVertexAttribI3ui* is loaded.
    def vertex_attrib_i_3ui?
      !!@addresses[225]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4ui : ::Proc
      get_proc(226, Translations.vertex_attrib_i_4ui, Procs.vertex_attrib_i_4ui)
    end

    # Checks if the OpenGL function *glVertexAttribI4ui* is loaded.
    def vertex_attrib_i_4ui?
      !!@addresses[226]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1iv : ::Proc
      get_proc(227, Translations.vertex_attrib_i_1iv, Procs.vertex_attrib_i_1iv)
    end

    # Checks if the OpenGL function *glVertexAttribI1iv* is loaded.
    def vertex_attrib_i_1iv?
      !!@addresses[227]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2iv : ::Proc
      get_proc(228, Translations.vertex_attrib_i_2iv, Procs.vertex_attrib_i_2iv)
    end

    # Checks if the OpenGL function *glVertexAttribI2iv* is loaded.
    def vertex_attrib_i_2iv?
      !!@addresses[228]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3iv : ::Proc
      get_proc(229, Translations.vertex_attrib_i_3iv, Procs.vertex_attrib_i_3iv)
    end

    # Checks if the OpenGL function *glVertexAttribI3iv* is loaded.
    def vertex_attrib_i_3iv?
      !!@addresses[229]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4iv : ::Proc
      get_proc(230, Translations.vertex_attrib_i_4iv, Procs.vertex_attrib_i_4iv)
    end

    # Checks if the OpenGL function *glVertexAttribI4iv* is loaded.
    def vertex_attrib_i_4iv?
      !!@addresses[230]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1uiv : ::Proc
      get_proc(231, Translations.vertex_attrib_i_1uiv, Procs.vertex_attrib_i_1uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI1uiv* is loaded.
    def vertex_attrib_i_1uiv?
      !!@addresses[231]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2uiv : ::Proc
      get_proc(232, Translations.vertex_attrib_i_2uiv, Procs.vertex_attrib_i_2uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI2uiv* is loaded.
    def vertex_attrib_i_2uiv?
      !!@addresses[232]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3uiv : ::Proc
      get_proc(233, Translations.vertex_attrib_i_3uiv, Procs.vertex_attrib_i_3uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI3uiv* is loaded.
    def vertex_attrib_i_3uiv?
      !!@addresses[233]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4uiv : ::Proc
      get_proc(234, Translations.vertex_attrib_i_4uiv, Procs.vertex_attrib_i_4uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI4uiv* is loaded.
    def vertex_attrib_i_4uiv?
      !!@addresses[234]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4bv : ::Proc
      get_proc(235, Translations.vertex_attrib_i_4bv, Procs.vertex_attrib_i_4bv)
    end

    # Checks if the OpenGL function *glVertexAttribI4bv* is loaded.
    def vertex_attrib_i_4bv?
      !!@addresses[235]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4sv : ::Proc
      get_proc(236, Translations.vertex_attrib_i_4sv, Procs.vertex_attrib_i_4sv)
    end

    # Checks if the OpenGL function *glVertexAttribI4sv* is loaded.
    def vertex_attrib_i_4sv?
      !!@addresses[236]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4ubv : ::Proc
      get_proc(237, Translations.vertex_attrib_i_4ubv, Procs.vertex_attrib_i_4ubv)
    end

    # Checks if the OpenGL function *glVertexAttribI4ubv* is loaded.
    def vertex_attrib_i_4ubv?
      !!@addresses[237]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4usv : ::Proc
      get_proc(238, Translations.vertex_attrib_i_4usv, Procs.vertex_attrib_i_4usv)
    end

    # Checks if the OpenGL function *glVertexAttribI4usv* is loaded.
    def vertex_attrib_i_4usv?
      !!@addresses[238]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_uiv : ::Proc
      get_proc(239, Translations.get_uniform_uiv, Procs.get_uniform_uiv)
    end

    # Checks if the OpenGL function *glGetUniformuiv* is loaded.
    def get_uniform_uiv?
      !!@addresses[239]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFragDataLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_frag_data_location : ::Proc
      get_proc(240, Translations.bind_frag_data_location, Procs.bind_frag_data_location)
    end

    # Checks if the OpenGL function *glBindFragDataLocation* is loaded.
    def bind_frag_data_location?
      !!@addresses[240]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFragDataLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_frag_data_location : ::Proc
      get_proc(241, Translations.get_frag_data_location, Procs.get_frag_data_location)
    end

    # Checks if the OpenGL function *glGetFragDataLocation* is loaded.
    def get_frag_data_location?
      !!@addresses[241]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1ui : ::Proc
      get_proc(242, Translations.uniform_1ui, Procs.uniform_1ui)
    end

    # Checks if the OpenGL function *glUniform1ui* is loaded.
    def uniform_1ui?
      !!@addresses[242]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2ui : ::Proc
      get_proc(243, Translations.uniform_2ui, Procs.uniform_2ui)
    end

    # Checks if the OpenGL function *glUniform2ui* is loaded.
    def uniform_2ui?
      !!@addresses[243]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3ui : ::Proc
      get_proc(244, Translations.uniform_3ui, Procs.uniform_3ui)
    end

    # Checks if the OpenGL function *glUniform3ui* is loaded.
    def uniform_3ui?
      !!@addresses[244]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4ui : ::Proc
      get_proc(245, Translations.uniform_4ui, Procs.uniform_4ui)
    end

    # Checks if the OpenGL function *glUniform4ui* is loaded.
    def uniform_4ui?
      !!@addresses[245]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1uiv : ::Proc
      get_proc(246, Translations.uniform_1uiv, Procs.uniform_1uiv)
    end

    # Checks if the OpenGL function *glUniform1uiv* is loaded.
    def uniform_1uiv?
      !!@addresses[246]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2uiv : ::Proc
      get_proc(247, Translations.uniform_2uiv, Procs.uniform_2uiv)
    end

    # Checks if the OpenGL function *glUniform2uiv* is loaded.
    def uniform_2uiv?
      !!@addresses[247]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3uiv : ::Proc
      get_proc(248, Translations.uniform_3uiv, Procs.uniform_3uiv)
    end

    # Checks if the OpenGL function *glUniform3uiv* is loaded.
    def uniform_3uiv?
      !!@addresses[248]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4uiv : ::Proc
      get_proc(249, Translations.uniform_4uiv, Procs.uniform_4uiv)
    end

    # Checks if the OpenGL function *glUniform4uiv* is loaded.
    def uniform_4uiv?
      !!@addresses[249]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i_iv : ::Proc
      get_proc(250, Translations.tex_parameter_i_iv, Procs.tex_parameter_i_iv)
    end

    # Checks if the OpenGL function *glTexParameterIiv* is loaded.
    def tex_parameter_i_iv?
      !!@addresses[250]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i_uiv : ::Proc
      get_proc(251, Translations.tex_parameter_i_uiv, Procs.tex_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glTexParameterIuiv* is loaded.
    def tex_parameter_i_uiv?
      !!@addresses[251]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_i_iv : ::Proc
      get_proc(252, Translations.get_tex_parameter_i_iv, Procs.get_tex_parameter_i_iv)
    end

    # Checks if the OpenGL function *glGetTexParameterIiv* is loaded.
    def get_tex_parameter_i_iv?
      !!@addresses[252]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_i_uiv : ::Proc
      get_proc(253, Translations.get_tex_parameter_i_uiv, Procs.get_tex_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glGetTexParameterIuiv* is loaded.
    def get_tex_parameter_i_uiv?
      !!@addresses[253]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_iv : ::Proc
      get_proc(254, Translations.clear_buffer_iv, Procs.clear_buffer_iv)
    end

    # Checks if the OpenGL function *glClearBufferiv* is loaded.
    def clear_buffer_iv?
      !!@addresses[254]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_uiv : ::Proc
      get_proc(255, Translations.clear_buffer_uiv, Procs.clear_buffer_uiv)
    end

    # Checks if the OpenGL function *glClearBufferuiv* is loaded.
    def clear_buffer_uiv?
      !!@addresses[255]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_fv : ::Proc
      get_proc(256, Translations.clear_buffer_fv, Procs.clear_buffer_fv)
    end

    # Checks if the OpenGL function *glClearBufferfv* is loaded.
    def clear_buffer_fv?
      !!@addresses[256]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferfi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_fi : ::Proc
      get_proc(257, Translations.clear_buffer_fi, Procs.clear_buffer_fi)
    end

    # Checks if the OpenGL function *glClearBufferfi* is loaded.
    def clear_buffer_fi?
      !!@addresses[257]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetStringi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_string_i : ::Proc
      get_proc(258, Translations.get_string_i, Procs.get_string_i)
    end

    # Checks if the OpenGL function *glGetStringi* is loaded.
    def get_string_i?
      !!@addresses[258]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_renderbuffer : ::Proc
      get_proc(259, Translations.is_renderbuffer, Procs.is_renderbuffer)
    end

    # Checks if the OpenGL function *glIsRenderbuffer* is loaded.
    def is_renderbuffer?
      !!@addresses[259]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_renderbuffer : ::Proc
      get_proc(260, Translations.bind_renderbuffer, Procs.bind_renderbuffer)
    end

    # Checks if the OpenGL function *glBindRenderbuffer* is loaded.
    def bind_renderbuffer?
      !!@addresses[260]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_renderbuffers : ::Proc
      get_proc(261, Translations.delete_renderbuffers, Procs.delete_renderbuffers)
    end

    # Checks if the OpenGL function *glDeleteRenderbuffers* is loaded.
    def delete_renderbuffers?
      !!@addresses[261]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_renderbuffers : ::Proc
      get_proc(262, Translations.gen_renderbuffers, Procs.gen_renderbuffers)
    end

    # Checks if the OpenGL function *glGenRenderbuffers* is loaded.
    def gen_renderbuffers?
      !!@addresses[262]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderbufferStorage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def renderbuffer_storage : ::Proc
      get_proc(263, Translations.renderbuffer_storage, Procs.renderbuffer_storage)
    end

    # Checks if the OpenGL function *glRenderbufferStorage* is loaded.
    def renderbuffer_storage?
      !!@addresses[263]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetRenderbufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_renderbuffer_parameter_iv : ::Proc
      get_proc(264, Translations.get_renderbuffer_parameter_iv, Procs.get_renderbuffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetRenderbufferParameteriv* is loaded.
    def get_renderbuffer_parameter_iv?
      !!@addresses[264]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_framebuffer : ::Proc
      get_proc(265, Translations.is_framebuffer, Procs.is_framebuffer)
    end

    # Checks if the OpenGL function *glIsFramebuffer* is loaded.
    def is_framebuffer?
      !!@addresses[265]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_framebuffer : ::Proc
      get_proc(266, Translations.bind_framebuffer, Procs.bind_framebuffer)
    end

    # Checks if the OpenGL function *glBindFramebuffer* is loaded.
    def bind_framebuffer?
      !!@addresses[266]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_framebuffers : ::Proc
      get_proc(267, Translations.delete_framebuffers, Procs.delete_framebuffers)
    end

    # Checks if the OpenGL function *glDeleteFramebuffers* is loaded.
    def delete_framebuffers?
      !!@addresses[267]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_framebuffers : ::Proc
      get_proc(268, Translations.gen_framebuffers, Procs.gen_framebuffers)
    end

    # Checks if the OpenGL function *glGenFramebuffers* is loaded.
    def gen_framebuffers?
      !!@addresses[268]
    end

    # Retrieves a `Proc` for the OpenGL function *glCheckFramebufferStatus*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def check_framebuffer_status : ::Proc
      get_proc(269, Translations.check_framebuffer_status, Procs.check_framebuffer_status)
    end

    # Checks if the OpenGL function *glCheckFramebufferStatus* is loaded.
    def check_framebuffer_status?
      !!@addresses[269]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_1d : ::Proc
      get_proc(270, Translations.framebuffer_texture_1d, Procs.framebuffer_texture_1d)
    end

    # Checks if the OpenGL function *glFramebufferTexture1D* is loaded.
    def framebuffer_texture_1d?
      !!@addresses[270]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_2d : ::Proc
      get_proc(271, Translations.framebuffer_texture_2d, Procs.framebuffer_texture_2d)
    end

    # Checks if the OpenGL function *glFramebufferTexture2D* is loaded.
    def framebuffer_texture_2d?
      !!@addresses[271]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_3d : ::Proc
      get_proc(272, Translations.framebuffer_texture_3d, Procs.framebuffer_texture_3d)
    end

    # Checks if the OpenGL function *glFramebufferTexture3D* is loaded.
    def framebuffer_texture_3d?
      !!@addresses[272]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_renderbuffer : ::Proc
      get_proc(273, Translations.framebuffer_renderbuffer, Procs.framebuffer_renderbuffer)
    end

    # Checks if the OpenGL function *glFramebufferRenderbuffer* is loaded.
    def framebuffer_renderbuffer?
      !!@addresses[273]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFramebufferAttachmentParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_framebuffer_attachment_parameter_iv : ::Proc
      get_proc(274, Translations.get_framebuffer_attachment_parameter_iv, Procs.get_framebuffer_attachment_parameter_iv)
    end

    # Checks if the OpenGL function *glGetFramebufferAttachmentParameteriv* is loaded.
    def get_framebuffer_attachment_parameter_iv?
      !!@addresses[274]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenerateMipmap*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def generate_mipmap : ::Proc
      get_proc(275, Translations.generate_mipmap, Procs.generate_mipmap)
    end

    # Checks if the OpenGL function *glGenerateMipmap* is loaded.
    def generate_mipmap?
      !!@addresses[275]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlitFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blit_framebuffer : ::Proc
      get_proc(276, Translations.blit_framebuffer, Procs.blit_framebuffer)
    end

    # Checks if the OpenGL function *glBlitFramebuffer* is loaded.
    def blit_framebuffer?
      !!@addresses[276]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderbufferStorageMultisample*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def renderbuffer_storage_multisample : ::Proc
      get_proc(277, Translations.renderbuffer_storage_multisample, Procs.renderbuffer_storage_multisample)
    end

    # Checks if the OpenGL function *glRenderbufferStorageMultisample* is loaded.
    def renderbuffer_storage_multisample?
      !!@addresses[277]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTextureLayer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_layer : ::Proc
      get_proc(278, Translations.framebuffer_texture_layer, Procs.framebuffer_texture_layer)
    end

    # Checks if the OpenGL function *glFramebufferTextureLayer* is loaded.
    def framebuffer_texture_layer?
      !!@addresses[278]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapBufferRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_buffer_range : ::Proc
      get_proc(279, Translations.map_buffer_range, Procs.map_buffer_range)
    end

    # Checks if the OpenGL function *glMapBufferRange* is loaded.
    def map_buffer_range?
      !!@addresses[279]
    end

    # Retrieves a `Proc` for the OpenGL function *glFlushMappedBufferRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def flush_mapped_buffer_range : ::Proc
      get_proc(280, Translations.flush_mapped_buffer_range, Procs.flush_mapped_buffer_range)
    end

    # Checks if the OpenGL function *glFlushMappedBufferRange* is loaded.
    def flush_mapped_buffer_range?
      !!@addresses[280]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindVertexArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_vertex_array : ::Proc
      get_proc(281, Translations.bind_vertex_array, Procs.bind_vertex_array)
    end

    # Checks if the OpenGL function *glBindVertexArray* is loaded.
    def bind_vertex_array?
      !!@addresses[281]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteVertexArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_vertex_arrays : ::Proc
      get_proc(282, Translations.delete_vertex_arrays, Procs.delete_vertex_arrays)
    end

    # Checks if the OpenGL function *glDeleteVertexArrays* is loaded.
    def delete_vertex_arrays?
      !!@addresses[282]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenVertexArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_vertex_arrays : ::Proc
      get_proc(283, Translations.gen_vertex_arrays, Procs.gen_vertex_arrays)
    end

    # Checks if the OpenGL function *glGenVertexArrays* is loaded.
    def gen_vertex_arrays?
      !!@addresses[283]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsVertexArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_vertex_array : ::Proc
      get_proc(284, Translations.is_vertex_array, Procs.is_vertex_array)
    end

    # Checks if the OpenGL function *glIsVertexArray* is loaded.
    def is_vertex_array?
      !!@addresses[284]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArraysInstanced*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays_instanced : ::Proc
      get_proc(285, Translations.draw_arrays_instanced, Procs.draw_arrays_instanced)
    end

    # Checks if the OpenGL function *glDrawArraysInstanced* is loaded.
    def draw_arrays_instanced?
      !!@addresses[285]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsInstanced*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_instanced : ::Proc
      get_proc(286, Translations.draw_elements_instanced, Procs.draw_elements_instanced)
    end

    # Checks if the OpenGL function *glDrawElementsInstanced* is loaded.
    def draw_elements_instanced?
      !!@addresses[286]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_buffer : ::Proc
      get_proc(287, Translations.tex_buffer, Procs.tex_buffer)
    end

    # Checks if the OpenGL function *glTexBuffer* is loaded.
    def tex_buffer?
      !!@addresses[287]
    end

    # Retrieves a `Proc` for the OpenGL function *glPrimitiveRestartIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def primitive_restart_index : ::Proc
      get_proc(288, Translations.primitive_restart_index, Procs.primitive_restart_index)
    end

    # Checks if the OpenGL function *glPrimitiveRestartIndex* is loaded.
    def primitive_restart_index?
      !!@addresses[288]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_buffer_sub_data : ::Proc
      get_proc(289, Translations.copy_buffer_sub_data, Procs.copy_buffer_sub_data)
    end

    # Checks if the OpenGL function *glCopyBufferSubData* is loaded.
    def copy_buffer_sub_data?
      !!@addresses[289]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformIndices*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_indices : ::Proc
      get_proc(290, Translations.get_uniform_indices, Procs.get_uniform_indices)
    end

    # Checks if the OpenGL function *glGetUniformIndices* is loaded.
    def get_uniform_indices?
      !!@addresses[290]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformsiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniforms_iv : ::Proc
      get_proc(291, Translations.get_active_uniforms_iv, Procs.get_active_uniforms_iv)
    end

    # Checks if the OpenGL function *glGetActiveUniformsiv* is loaded.
    def get_active_uniforms_iv?
      !!@addresses[291]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform_name : ::Proc
      get_proc(292, Translations.get_active_uniform_name, Procs.get_active_uniform_name)
    end

    # Checks if the OpenGL function *glGetActiveUniformName* is loaded.
    def get_active_uniform_name?
      !!@addresses[292]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformBlockIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_block_index : ::Proc
      get_proc(293, Translations.get_uniform_block_index, Procs.get_uniform_block_index)
    end

    # Checks if the OpenGL function *glGetUniformBlockIndex* is loaded.
    def get_uniform_block_index?
      !!@addresses[293]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformBlockiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform_block_iv : ::Proc
      get_proc(294, Translations.get_active_uniform_block_iv, Procs.get_active_uniform_block_iv)
    end

    # Checks if the OpenGL function *glGetActiveUniformBlockiv* is loaded.
    def get_active_uniform_block_iv?
      !!@addresses[294]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformBlockName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform_block_name : ::Proc
      get_proc(295, Translations.get_active_uniform_block_name, Procs.get_active_uniform_block_name)
    end

    # Checks if the OpenGL function *glGetActiveUniformBlockName* is loaded.
    def get_active_uniform_block_name?
      !!@addresses[295]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformBlockBinding*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_block_binding : ::Proc
      get_proc(296, Translations.uniform_block_binding, Procs.uniform_block_binding)
    end

    # Checks if the OpenGL function *glUniformBlockBinding* is loaded.
    def uniform_block_binding?
      !!@addresses[296]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_base_vertex : ::Proc
      get_proc(297, Translations.draw_elements_base_vertex, Procs.draw_elements_base_vertex)
    end

    # Checks if the OpenGL function *glDrawElementsBaseVertex* is loaded.
    def draw_elements_base_vertex?
      !!@addresses[297]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawRangeElementsBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_range_elements_base_vertex : ::Proc
      get_proc(298, Translations.draw_range_elements_base_vertex, Procs.draw_range_elements_base_vertex)
    end

    # Checks if the OpenGL function *glDrawRangeElementsBaseVertex* is loaded.
    def draw_range_elements_base_vertex?
      !!@addresses[298]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsInstancedBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_instanced_base_vertex : ::Proc
      get_proc(299, Translations.draw_elements_instanced_base_vertex, Procs.draw_elements_instanced_base_vertex)
    end

    # Checks if the OpenGL function *glDrawElementsInstancedBaseVertex* is loaded.
    def draw_elements_instanced_base_vertex?
      !!@addresses[299]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiDrawElementsBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_draw_elements_base_vertex : ::Proc
      get_proc(300, Translations.multi_draw_elements_base_vertex, Procs.multi_draw_elements_base_vertex)
    end

    # Checks if the OpenGL function *glMultiDrawElementsBaseVertex* is loaded.
    def multi_draw_elements_base_vertex?
      !!@addresses[300]
    end

    # Retrieves a `Proc` for the OpenGL function *glProvokingVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def provoking_vertex : ::Proc
      get_proc(301, Translations.provoking_vertex, Procs.provoking_vertex)
    end

    # Checks if the OpenGL function *glProvokingVertex* is loaded.
    def provoking_vertex?
      !!@addresses[301]
    end

    # Retrieves a `Proc` for the OpenGL function *glFenceSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fence_sync : ::Proc
      get_proc(302, Translations.fence_sync, Procs.fence_sync)
    end

    # Checks if the OpenGL function *glFenceSync* is loaded.
    def fence_sync?
      !!@addresses[302]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_sync : ::Proc
      get_proc(303, Translations.is_sync, Procs.is_sync)
    end

    # Checks if the OpenGL function *glIsSync* is loaded.
    def is_sync?
      !!@addresses[303]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_sync : ::Proc
      get_proc(304, Translations.delete_sync, Procs.delete_sync)
    end

    # Checks if the OpenGL function *glDeleteSync* is loaded.
    def delete_sync?
      !!@addresses[304]
    end

    # Retrieves a `Proc` for the OpenGL function *glClientWaitSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def client_wait_sync : ::Proc
      get_proc(305, Translations.client_wait_sync, Procs.client_wait_sync)
    end

    # Checks if the OpenGL function *glClientWaitSync* is loaded.
    def client_wait_sync?
      !!@addresses[305]
    end

    # Retrieves a `Proc` for the OpenGL function *glWaitSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def wait_sync : ::Proc
      get_proc(306, Translations.wait_sync, Procs.wait_sync)
    end

    # Checks if the OpenGL function *glWaitSync* is loaded.
    def wait_sync?
      !!@addresses[306]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetInteger64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_64v : ::Proc
      get_proc(307, Translations.get_integer_64v, Procs.get_integer_64v)
    end

    # Checks if the OpenGL function *glGetInteger64v* is loaded.
    def get_integer_64v?
      !!@addresses[307]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSynciv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sync_iv : ::Proc
      get_proc(308, Translations.get_sync_iv, Procs.get_sync_iv)
    end

    # Checks if the OpenGL function *glGetSynciv* is loaded.
    def get_sync_iv?
      !!@addresses[308]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetInteger64i_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_64i_v : ::Proc
      get_proc(309, Translations.get_integer_64i_v, Procs.get_integer_64i_v)
    end

    # Checks if the OpenGL function *glGetInteger64i_v* is loaded.
    def get_integer_64i_v?
      !!@addresses[309]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteri64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_i64v : ::Proc
      get_proc(310, Translations.get_buffer_parameter_i64v, Procs.get_buffer_parameter_i64v)
    end

    # Checks if the OpenGL function *glGetBufferParameteri64v* is loaded.
    def get_buffer_parameter_i64v?
      !!@addresses[310]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture : ::Proc
      get_proc(311, Translations.framebuffer_texture, Procs.framebuffer_texture)
    end

    # Checks if the OpenGL function *glFramebufferTexture* is loaded.
    def framebuffer_texture?
      !!@addresses[311]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage2DMultisample*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_2d_multisample : ::Proc
      get_proc(312, Translations.tex_image_2d_multisample, Procs.tex_image_2d_multisample)
    end

    # Checks if the OpenGL function *glTexImage2DMultisample* is loaded.
    def tex_image_2d_multisample?
      !!@addresses[312]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage3DMultisample*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_3d_multisample : ::Proc
      get_proc(313, Translations.tex_image_3d_multisample, Procs.tex_image_3d_multisample)
    end

    # Checks if the OpenGL function *glTexImage3DMultisample* is loaded.
    def tex_image_3d_multisample?
      !!@addresses[313]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMultisamplefv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_multisample_fv : ::Proc
      get_proc(314, Translations.get_multisample_fv, Procs.get_multisample_fv)
    end

    # Checks if the OpenGL function *glGetMultisamplefv* is loaded.
    def get_multisample_fv?
      !!@addresses[314]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleMaski*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_mask_i : ::Proc
      get_proc(315, Translations.sample_mask_i, Procs.sample_mask_i)
    end

    # Checks if the OpenGL function *glSampleMaski* is loaded.
    def sample_mask_i?
      !!@addresses[315]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFragDataLocationIndexed*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_frag_data_location_indexed : ::Proc
      get_proc(316, Translations.bind_frag_data_location_indexed, Procs.bind_frag_data_location_indexed)
    end

    # Checks if the OpenGL function *glBindFragDataLocationIndexed* is loaded.
    def bind_frag_data_location_indexed?
      !!@addresses[316]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFragDataIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_frag_data_index : ::Proc
      get_proc(317, Translations.get_frag_data_index, Procs.get_frag_data_index)
    end

    # Checks if the OpenGL function *glGetFragDataIndex* is loaded.
    def get_frag_data_index?
      !!@addresses[317]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenSamplers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_samplers : ::Proc
      get_proc(318, Translations.gen_samplers, Procs.gen_samplers)
    end

    # Checks if the OpenGL function *glGenSamplers* is loaded.
    def gen_samplers?
      !!@addresses[318]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteSamplers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_samplers : ::Proc
      get_proc(319, Translations.delete_samplers, Procs.delete_samplers)
    end

    # Checks if the OpenGL function *glDeleteSamplers* is loaded.
    def delete_samplers?
      !!@addresses[319]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsSampler*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_sampler : ::Proc
      get_proc(320, Translations.is_sampler, Procs.is_sampler)
    end

    # Checks if the OpenGL function *glIsSampler* is loaded.
    def is_sampler?
      !!@addresses[320]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindSampler*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_sampler : ::Proc
      get_proc(321, Translations.bind_sampler, Procs.bind_sampler)
    end

    # Checks if the OpenGL function *glBindSampler* is loaded.
    def bind_sampler?
      !!@addresses[321]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_i : ::Proc
      get_proc(322, Translations.sampler_parameter_i, Procs.sampler_parameter_i)
    end

    # Checks if the OpenGL function *glSamplerParameteri* is loaded.
    def sampler_parameter_i?
      !!@addresses[322]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_iv : ::Proc
      get_proc(323, Translations.sampler_parameter_iv, Procs.sampler_parameter_iv)
    end

    # Checks if the OpenGL function *glSamplerParameteriv* is loaded.
    def sampler_parameter_iv?
      !!@addresses[323]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_f : ::Proc
      get_proc(324, Translations.sampler_parameter_f, Procs.sampler_parameter_f)
    end

    # Checks if the OpenGL function *glSamplerParameterf* is loaded.
    def sampler_parameter_f?
      !!@addresses[324]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_fv : ::Proc
      get_proc(325, Translations.sampler_parameter_fv, Procs.sampler_parameter_fv)
    end

    # Checks if the OpenGL function *glSamplerParameterfv* is loaded.
    def sampler_parameter_fv?
      !!@addresses[325]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_i_iv : ::Proc
      get_proc(326, Translations.sampler_parameter_i_iv, Procs.sampler_parameter_i_iv)
    end

    # Checks if the OpenGL function *glSamplerParameterIiv* is loaded.
    def sampler_parameter_i_iv?
      !!@addresses[326]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_i_uiv : ::Proc
      get_proc(327, Translations.sampler_parameter_i_uiv, Procs.sampler_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glSamplerParameterIuiv* is loaded.
    def sampler_parameter_i_uiv?
      !!@addresses[327]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_iv : ::Proc
      get_proc(328, Translations.get_sampler_parameter_iv, Procs.get_sampler_parameter_iv)
    end

    # Checks if the OpenGL function *glGetSamplerParameteriv* is loaded.
    def get_sampler_parameter_iv?
      !!@addresses[328]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_i_iv : ::Proc
      get_proc(329, Translations.get_sampler_parameter_i_iv, Procs.get_sampler_parameter_i_iv)
    end

    # Checks if the OpenGL function *glGetSamplerParameterIiv* is loaded.
    def get_sampler_parameter_i_iv?
      !!@addresses[329]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_fv : ::Proc
      get_proc(330, Translations.get_sampler_parameter_fv, Procs.get_sampler_parameter_fv)
    end

    # Checks if the OpenGL function *glGetSamplerParameterfv* is loaded.
    def get_sampler_parameter_fv?
      !!@addresses[330]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_i_uiv : ::Proc
      get_proc(331, Translations.get_sampler_parameter_i_uiv, Procs.get_sampler_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glGetSamplerParameterIuiv* is loaded.
    def get_sampler_parameter_i_uiv?
      !!@addresses[331]
    end

    # Retrieves a `Proc` for the OpenGL function *glQueryCounter*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def query_counter : ::Proc
      get_proc(332, Translations.query_counter, Procs.query_counter)
    end

    # Checks if the OpenGL function *glQueryCounter* is loaded.
    def query_counter?
      !!@addresses[332]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjecti64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_i64v : ::Proc
      get_proc(333, Translations.get_query_object_i64v, Procs.get_query_object_i64v)
    end

    # Checks if the OpenGL function *glGetQueryObjecti64v* is loaded.
    def get_query_object_i64v?
      !!@addresses[333]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjectui64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_ui64v : ::Proc
      get_proc(334, Translations.get_query_object_ui64v, Procs.get_query_object_ui64v)
    end

    # Checks if the OpenGL function *glGetQueryObjectui64v* is loaded.
    def get_query_object_ui64v?
      !!@addresses[334]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribDivisor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_divisor : ::Proc
      get_proc(335, Translations.vertex_attrib_divisor, Procs.vertex_attrib_divisor)
    end

    # Checks if the OpenGL function *glVertexAttribDivisor* is loaded.
    def vertex_attrib_divisor?
      !!@addresses[335]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_1ui : ::Proc
      get_proc(336, Translations.vertex_attrib_p_1ui, Procs.vertex_attrib_p_1ui)
    end

    # Checks if the OpenGL function *glVertexAttribP1ui* is loaded.
    def vertex_attrib_p_1ui?
      !!@addresses[336]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_1uiv : ::Proc
      get_proc(337, Translations.vertex_attrib_p_1uiv, Procs.vertex_attrib_p_1uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP1uiv* is loaded.
    def vertex_attrib_p_1uiv?
      !!@addresses[337]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_2ui : ::Proc
      get_proc(338, Translations.vertex_attrib_p_2ui, Procs.vertex_attrib_p_2ui)
    end

    # Checks if the OpenGL function *glVertexAttribP2ui* is loaded.
    def vertex_attrib_p_2ui?
      !!@addresses[338]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_2uiv : ::Proc
      get_proc(339, Translations.vertex_attrib_p_2uiv, Procs.vertex_attrib_p_2uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP2uiv* is loaded.
    def vertex_attrib_p_2uiv?
      !!@addresses[339]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_3ui : ::Proc
      get_proc(340, Translations.vertex_attrib_p_3ui, Procs.vertex_attrib_p_3ui)
    end

    # Checks if the OpenGL function *glVertexAttribP3ui* is loaded.
    def vertex_attrib_p_3ui?
      !!@addresses[340]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_3uiv : ::Proc
      get_proc(341, Translations.vertex_attrib_p_3uiv, Procs.vertex_attrib_p_3uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP3uiv* is loaded.
    def vertex_attrib_p_3uiv?
      !!@addresses[341]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_4ui : ::Proc
      get_proc(342, Translations.vertex_attrib_p_4ui, Procs.vertex_attrib_p_4ui)
    end

    # Checks if the OpenGL function *glVertexAttribP4ui* is loaded.
    def vertex_attrib_p_4ui?
      !!@addresses[342]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_4uiv : ::Proc
      get_proc(343, Translations.vertex_attrib_p_4uiv, Procs.vertex_attrib_p_4uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP4uiv* is loaded.
    def vertex_attrib_p_4uiv?
      !!@addresses[343]
    end
  end
end
