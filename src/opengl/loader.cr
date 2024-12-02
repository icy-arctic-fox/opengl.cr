require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime and returns `Proc` instances to invoke them.
  # The OpenGL functions are lazy-loaded.
  struct Loader
    FUNCTION_COUNT = 870

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

    # Retrieves a `Proc` for the OpenGL function *glNewList*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def new_list : ::Proc
      get_proc(48, Translations.new_list, Procs.new_list)
    end

    # Checks if the OpenGL function *glNewList* is loaded.
    def new_list?
      !!@addresses[48]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndList*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_list : ::Proc
      get_proc(49, Translations.end_list, Procs.end_list)
    end

    # Checks if the OpenGL function *glEndList* is loaded.
    def end_list?
      !!@addresses[49]
    end

    # Retrieves a `Proc` for the OpenGL function *glCallList*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def call_list : ::Proc
      get_proc(50, Translations.call_list, Procs.call_list)
    end

    # Checks if the OpenGL function *glCallList* is loaded.
    def call_list?
      !!@addresses[50]
    end

    # Retrieves a `Proc` for the OpenGL function *glCallLists*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def call_lists : ::Proc
      get_proc(51, Translations.call_lists, Procs.call_lists)
    end

    # Checks if the OpenGL function *glCallLists* is loaded.
    def call_lists?
      !!@addresses[51]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteLists*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_lists : ::Proc
      get_proc(52, Translations.delete_lists, Procs.delete_lists)
    end

    # Checks if the OpenGL function *glDeleteLists* is loaded.
    def delete_lists?
      !!@addresses[52]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenLists*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_lists : ::Proc
      get_proc(53, Translations.gen_lists, Procs.gen_lists)
    end

    # Checks if the OpenGL function *glGenLists* is loaded.
    def gen_lists?
      !!@addresses[53]
    end

    # Retrieves a `Proc` for the OpenGL function *glListBase*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def list_base : ::Proc
      get_proc(54, Translations.list_base, Procs.list_base)
    end

    # Checks if the OpenGL function *glListBase* is loaded.
    def list_base?
      !!@addresses[54]
    end

    # Retrieves a `Proc` for the OpenGL function *glBegin*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin : ::Proc
      get_proc(55, Translations.begin, Procs.begin)
    end

    # Checks if the OpenGL function *glBegin* is loaded.
    def begin?
      !!@addresses[55]
    end

    # Retrieves a `Proc` for the OpenGL function *glBitmap*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bitmap : ::Proc
      get_proc(56, Translations.bitmap, Procs.bitmap)
    end

    # Checks if the OpenGL function *glBitmap* is loaded.
    def bitmap?
      !!@addresses[56]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3b*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3b : ::Proc
      get_proc(57, Translations.color_3b, Procs.color_3b)
    end

    # Checks if the OpenGL function *glColor3b* is loaded.
    def color_3b?
      !!@addresses[57]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3bv : ::Proc
      get_proc(58, Translations.color_3bv, Procs.color_3bv)
    end

    # Checks if the OpenGL function *glColor3bv* is loaded.
    def color_3bv?
      !!@addresses[58]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3d : ::Proc
      get_proc(59, Translations.color_3d, Procs.color_3d)
    end

    # Checks if the OpenGL function *glColor3d* is loaded.
    def color_3d?
      !!@addresses[59]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3dv : ::Proc
      get_proc(60, Translations.color_3dv, Procs.color_3dv)
    end

    # Checks if the OpenGL function *glColor3dv* is loaded.
    def color_3dv?
      !!@addresses[60]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3f : ::Proc
      get_proc(61, Translations.color_3f, Procs.color_3f)
    end

    # Checks if the OpenGL function *glColor3f* is loaded.
    def color_3f?
      !!@addresses[61]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3fv : ::Proc
      get_proc(62, Translations.color_3fv, Procs.color_3fv)
    end

    # Checks if the OpenGL function *glColor3fv* is loaded.
    def color_3fv?
      !!@addresses[62]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3i : ::Proc
      get_proc(63, Translations.color_3i, Procs.color_3i)
    end

    # Checks if the OpenGL function *glColor3i* is loaded.
    def color_3i?
      !!@addresses[63]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3iv : ::Proc
      get_proc(64, Translations.color_3iv, Procs.color_3iv)
    end

    # Checks if the OpenGL function *glColor3iv* is loaded.
    def color_3iv?
      !!@addresses[64]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3s : ::Proc
      get_proc(65, Translations.color_3s, Procs.color_3s)
    end

    # Checks if the OpenGL function *glColor3s* is loaded.
    def color_3s?
      !!@addresses[65]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3sv : ::Proc
      get_proc(66, Translations.color_3sv, Procs.color_3sv)
    end

    # Checks if the OpenGL function *glColor3sv* is loaded.
    def color_3sv?
      !!@addresses[66]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3ub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3ub : ::Proc
      get_proc(67, Translations.color_3ub, Procs.color_3ub)
    end

    # Checks if the OpenGL function *glColor3ub* is loaded.
    def color_3ub?
      !!@addresses[67]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3ubv : ::Proc
      get_proc(68, Translations.color_3ubv, Procs.color_3ubv)
    end

    # Checks if the OpenGL function *glColor3ubv* is loaded.
    def color_3ubv?
      !!@addresses[68]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3ui : ::Proc
      get_proc(69, Translations.color_3ui, Procs.color_3ui)
    end

    # Checks if the OpenGL function *glColor3ui* is loaded.
    def color_3ui?
      !!@addresses[69]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3uiv : ::Proc
      get_proc(70, Translations.color_3uiv, Procs.color_3uiv)
    end

    # Checks if the OpenGL function *glColor3uiv* is loaded.
    def color_3uiv?
      !!@addresses[70]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3us*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3us : ::Proc
      get_proc(71, Translations.color_3us, Procs.color_3us)
    end

    # Checks if the OpenGL function *glColor3us* is loaded.
    def color_3us?
      !!@addresses[71]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor3usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_3usv : ::Proc
      get_proc(72, Translations.color_3usv, Procs.color_3usv)
    end

    # Checks if the OpenGL function *glColor3usv* is loaded.
    def color_3usv?
      !!@addresses[72]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4b*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4b : ::Proc
      get_proc(73, Translations.color_4b, Procs.color_4b)
    end

    # Checks if the OpenGL function *glColor4b* is loaded.
    def color_4b?
      !!@addresses[73]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4bv : ::Proc
      get_proc(74, Translations.color_4bv, Procs.color_4bv)
    end

    # Checks if the OpenGL function *glColor4bv* is loaded.
    def color_4bv?
      !!@addresses[74]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4d : ::Proc
      get_proc(75, Translations.color_4d, Procs.color_4d)
    end

    # Checks if the OpenGL function *glColor4d* is loaded.
    def color_4d?
      !!@addresses[75]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4dv : ::Proc
      get_proc(76, Translations.color_4dv, Procs.color_4dv)
    end

    # Checks if the OpenGL function *glColor4dv* is loaded.
    def color_4dv?
      !!@addresses[76]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4f : ::Proc
      get_proc(77, Translations.color_4f, Procs.color_4f)
    end

    # Checks if the OpenGL function *glColor4f* is loaded.
    def color_4f?
      !!@addresses[77]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4fv : ::Proc
      get_proc(78, Translations.color_4fv, Procs.color_4fv)
    end

    # Checks if the OpenGL function *glColor4fv* is loaded.
    def color_4fv?
      !!@addresses[78]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4i : ::Proc
      get_proc(79, Translations.color_4i, Procs.color_4i)
    end

    # Checks if the OpenGL function *glColor4i* is loaded.
    def color_4i?
      !!@addresses[79]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4iv : ::Proc
      get_proc(80, Translations.color_4iv, Procs.color_4iv)
    end

    # Checks if the OpenGL function *glColor4iv* is loaded.
    def color_4iv?
      !!@addresses[80]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4s : ::Proc
      get_proc(81, Translations.color_4s, Procs.color_4s)
    end

    # Checks if the OpenGL function *glColor4s* is loaded.
    def color_4s?
      !!@addresses[81]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4sv : ::Proc
      get_proc(82, Translations.color_4sv, Procs.color_4sv)
    end

    # Checks if the OpenGL function *glColor4sv* is loaded.
    def color_4sv?
      !!@addresses[82]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4ub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4ub : ::Proc
      get_proc(83, Translations.color_4ub, Procs.color_4ub)
    end

    # Checks if the OpenGL function *glColor4ub* is loaded.
    def color_4ub?
      !!@addresses[83]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4ubv : ::Proc
      get_proc(84, Translations.color_4ubv, Procs.color_4ubv)
    end

    # Checks if the OpenGL function *glColor4ubv* is loaded.
    def color_4ubv?
      !!@addresses[84]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4ui : ::Proc
      get_proc(85, Translations.color_4ui, Procs.color_4ui)
    end

    # Checks if the OpenGL function *glColor4ui* is loaded.
    def color_4ui?
      !!@addresses[85]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4uiv : ::Proc
      get_proc(86, Translations.color_4uiv, Procs.color_4uiv)
    end

    # Checks if the OpenGL function *glColor4uiv* is loaded.
    def color_4uiv?
      !!@addresses[86]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4us*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4us : ::Proc
      get_proc(87, Translations.color_4us, Procs.color_4us)
    end

    # Checks if the OpenGL function *glColor4us* is loaded.
    def color_4us?
      !!@addresses[87]
    end

    # Retrieves a `Proc` for the OpenGL function *glColor4usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_4usv : ::Proc
      get_proc(88, Translations.color_4usv, Procs.color_4usv)
    end

    # Checks if the OpenGL function *glColor4usv* is loaded.
    def color_4usv?
      !!@addresses[88]
    end

    # Retrieves a `Proc` for the OpenGL function *glEdgeFlag*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def edge_flag : ::Proc
      get_proc(89, Translations.edge_flag, Procs.edge_flag)
    end

    # Checks if the OpenGL function *glEdgeFlag* is loaded.
    def edge_flag?
      !!@addresses[89]
    end

    # Retrieves a `Proc` for the OpenGL function *glEdgeFlagv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def edge_flag_v : ::Proc
      get_proc(90, Translations.edge_flag_v, Procs.edge_flag_v)
    end

    # Checks if the OpenGL function *glEdgeFlagv* is loaded.
    def edge_flag_v?
      !!@addresses[90]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end : ::Proc
      get_proc(91, Translations.end, Procs.end)
    end

    # Checks if the OpenGL function *glEnd* is loaded.
    def end?
      !!@addresses[91]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_d : ::Proc
      get_proc(92, Translations.index_d, Procs.index_d)
    end

    # Checks if the OpenGL function *glIndexd* is loaded.
    def index_d?
      !!@addresses[92]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_dv : ::Proc
      get_proc(93, Translations.index_dv, Procs.index_dv)
    end

    # Checks if the OpenGL function *glIndexdv* is loaded.
    def index_dv?
      !!@addresses[93]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_f : ::Proc
      get_proc(94, Translations.index_f, Procs.index_f)
    end

    # Checks if the OpenGL function *glIndexf* is loaded.
    def index_f?
      !!@addresses[94]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_fv : ::Proc
      get_proc(95, Translations.index_fv, Procs.index_fv)
    end

    # Checks if the OpenGL function *glIndexfv* is loaded.
    def index_fv?
      !!@addresses[95]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_i : ::Proc
      get_proc(96, Translations.index_i, Procs.index_i)
    end

    # Checks if the OpenGL function *glIndexi* is loaded.
    def index_i?
      !!@addresses[96]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_iv : ::Proc
      get_proc(97, Translations.index_iv, Procs.index_iv)
    end

    # Checks if the OpenGL function *glIndexiv* is loaded.
    def index_iv?
      !!@addresses[97]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexs*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_s : ::Proc
      get_proc(98, Translations.index_s, Procs.index_s)
    end

    # Checks if the OpenGL function *glIndexs* is loaded.
    def index_s?
      !!@addresses[98]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexsv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_sv : ::Proc
      get_proc(99, Translations.index_sv, Procs.index_sv)
    end

    # Checks if the OpenGL function *glIndexsv* is loaded.
    def index_sv?
      !!@addresses[99]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3b*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3b : ::Proc
      get_proc(100, Translations.normal_3b, Procs.normal_3b)
    end

    # Checks if the OpenGL function *glNormal3b* is loaded.
    def normal_3b?
      !!@addresses[100]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3bv : ::Proc
      get_proc(101, Translations.normal_3bv, Procs.normal_3bv)
    end

    # Checks if the OpenGL function *glNormal3bv* is loaded.
    def normal_3bv?
      !!@addresses[101]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3d : ::Proc
      get_proc(102, Translations.normal_3d, Procs.normal_3d)
    end

    # Checks if the OpenGL function *glNormal3d* is loaded.
    def normal_3d?
      !!@addresses[102]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3dv : ::Proc
      get_proc(103, Translations.normal_3dv, Procs.normal_3dv)
    end

    # Checks if the OpenGL function *glNormal3dv* is loaded.
    def normal_3dv?
      !!@addresses[103]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3f : ::Proc
      get_proc(104, Translations.normal_3f, Procs.normal_3f)
    end

    # Checks if the OpenGL function *glNormal3f* is loaded.
    def normal_3f?
      !!@addresses[104]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3fv : ::Proc
      get_proc(105, Translations.normal_3fv, Procs.normal_3fv)
    end

    # Checks if the OpenGL function *glNormal3fv* is loaded.
    def normal_3fv?
      !!@addresses[105]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3i : ::Proc
      get_proc(106, Translations.normal_3i, Procs.normal_3i)
    end

    # Checks if the OpenGL function *glNormal3i* is loaded.
    def normal_3i?
      !!@addresses[106]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3iv : ::Proc
      get_proc(107, Translations.normal_3iv, Procs.normal_3iv)
    end

    # Checks if the OpenGL function *glNormal3iv* is loaded.
    def normal_3iv?
      !!@addresses[107]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3s : ::Proc
      get_proc(108, Translations.normal_3s, Procs.normal_3s)
    end

    # Checks if the OpenGL function *glNormal3s* is loaded.
    def normal_3s?
      !!@addresses[108]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormal3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_3sv : ::Proc
      get_proc(109, Translations.normal_3sv, Procs.normal_3sv)
    end

    # Checks if the OpenGL function *glNormal3sv* is loaded.
    def normal_3sv?
      !!@addresses[109]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2d : ::Proc
      get_proc(110, Translations.raster_pos_2d, Procs.raster_pos_2d)
    end

    # Checks if the OpenGL function *glRasterPos2d* is loaded.
    def raster_pos_2d?
      !!@addresses[110]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2dv : ::Proc
      get_proc(111, Translations.raster_pos_2dv, Procs.raster_pos_2dv)
    end

    # Checks if the OpenGL function *glRasterPos2dv* is loaded.
    def raster_pos_2dv?
      !!@addresses[111]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2f : ::Proc
      get_proc(112, Translations.raster_pos_2f, Procs.raster_pos_2f)
    end

    # Checks if the OpenGL function *glRasterPos2f* is loaded.
    def raster_pos_2f?
      !!@addresses[112]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2fv : ::Proc
      get_proc(113, Translations.raster_pos_2fv, Procs.raster_pos_2fv)
    end

    # Checks if the OpenGL function *glRasterPos2fv* is loaded.
    def raster_pos_2fv?
      !!@addresses[113]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2i : ::Proc
      get_proc(114, Translations.raster_pos_2i, Procs.raster_pos_2i)
    end

    # Checks if the OpenGL function *glRasterPos2i* is loaded.
    def raster_pos_2i?
      !!@addresses[114]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2iv : ::Proc
      get_proc(115, Translations.raster_pos_2iv, Procs.raster_pos_2iv)
    end

    # Checks if the OpenGL function *glRasterPos2iv* is loaded.
    def raster_pos_2iv?
      !!@addresses[115]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2s : ::Proc
      get_proc(116, Translations.raster_pos_2s, Procs.raster_pos_2s)
    end

    # Checks if the OpenGL function *glRasterPos2s* is loaded.
    def raster_pos_2s?
      !!@addresses[116]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_2sv : ::Proc
      get_proc(117, Translations.raster_pos_2sv, Procs.raster_pos_2sv)
    end

    # Checks if the OpenGL function *glRasterPos2sv* is loaded.
    def raster_pos_2sv?
      !!@addresses[117]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3d : ::Proc
      get_proc(118, Translations.raster_pos_3d, Procs.raster_pos_3d)
    end

    # Checks if the OpenGL function *glRasterPos3d* is loaded.
    def raster_pos_3d?
      !!@addresses[118]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3dv : ::Proc
      get_proc(119, Translations.raster_pos_3dv, Procs.raster_pos_3dv)
    end

    # Checks if the OpenGL function *glRasterPos3dv* is loaded.
    def raster_pos_3dv?
      !!@addresses[119]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3f : ::Proc
      get_proc(120, Translations.raster_pos_3f, Procs.raster_pos_3f)
    end

    # Checks if the OpenGL function *glRasterPos3f* is loaded.
    def raster_pos_3f?
      !!@addresses[120]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3fv : ::Proc
      get_proc(121, Translations.raster_pos_3fv, Procs.raster_pos_3fv)
    end

    # Checks if the OpenGL function *glRasterPos3fv* is loaded.
    def raster_pos_3fv?
      !!@addresses[121]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3i : ::Proc
      get_proc(122, Translations.raster_pos_3i, Procs.raster_pos_3i)
    end

    # Checks if the OpenGL function *glRasterPos3i* is loaded.
    def raster_pos_3i?
      !!@addresses[122]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3iv : ::Proc
      get_proc(123, Translations.raster_pos_3iv, Procs.raster_pos_3iv)
    end

    # Checks if the OpenGL function *glRasterPos3iv* is loaded.
    def raster_pos_3iv?
      !!@addresses[123]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3s : ::Proc
      get_proc(124, Translations.raster_pos_3s, Procs.raster_pos_3s)
    end

    # Checks if the OpenGL function *glRasterPos3s* is loaded.
    def raster_pos_3s?
      !!@addresses[124]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_3sv : ::Proc
      get_proc(125, Translations.raster_pos_3sv, Procs.raster_pos_3sv)
    end

    # Checks if the OpenGL function *glRasterPos3sv* is loaded.
    def raster_pos_3sv?
      !!@addresses[125]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4d : ::Proc
      get_proc(126, Translations.raster_pos_4d, Procs.raster_pos_4d)
    end

    # Checks if the OpenGL function *glRasterPos4d* is loaded.
    def raster_pos_4d?
      !!@addresses[126]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4dv : ::Proc
      get_proc(127, Translations.raster_pos_4dv, Procs.raster_pos_4dv)
    end

    # Checks if the OpenGL function *glRasterPos4dv* is loaded.
    def raster_pos_4dv?
      !!@addresses[127]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4f : ::Proc
      get_proc(128, Translations.raster_pos_4f, Procs.raster_pos_4f)
    end

    # Checks if the OpenGL function *glRasterPos4f* is loaded.
    def raster_pos_4f?
      !!@addresses[128]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4fv : ::Proc
      get_proc(129, Translations.raster_pos_4fv, Procs.raster_pos_4fv)
    end

    # Checks if the OpenGL function *glRasterPos4fv* is loaded.
    def raster_pos_4fv?
      !!@addresses[129]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4i : ::Proc
      get_proc(130, Translations.raster_pos_4i, Procs.raster_pos_4i)
    end

    # Checks if the OpenGL function *glRasterPos4i* is loaded.
    def raster_pos_4i?
      !!@addresses[130]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4iv : ::Proc
      get_proc(131, Translations.raster_pos_4iv, Procs.raster_pos_4iv)
    end

    # Checks if the OpenGL function *glRasterPos4iv* is loaded.
    def raster_pos_4iv?
      !!@addresses[131]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4s : ::Proc
      get_proc(132, Translations.raster_pos_4s, Procs.raster_pos_4s)
    end

    # Checks if the OpenGL function *glRasterPos4s* is loaded.
    def raster_pos_4s?
      !!@addresses[132]
    end

    # Retrieves a `Proc` for the OpenGL function *glRasterPos4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def raster_pos_4sv : ::Proc
      get_proc(133, Translations.raster_pos_4sv, Procs.raster_pos_4sv)
    end

    # Checks if the OpenGL function *glRasterPos4sv* is loaded.
    def raster_pos_4sv?
      !!@addresses[133]
    end

    # Retrieves a `Proc` for the OpenGL function *glRectd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_d : ::Proc
      get_proc(134, Translations.rect_d, Procs.rect_d)
    end

    # Checks if the OpenGL function *glRectd* is loaded.
    def rect_d?
      !!@addresses[134]
    end

    # Retrieves a `Proc` for the OpenGL function *glRectdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_dv : ::Proc
      get_proc(135, Translations.rect_dv, Procs.rect_dv)
    end

    # Checks if the OpenGL function *glRectdv* is loaded.
    def rect_dv?
      !!@addresses[135]
    end

    # Retrieves a `Proc` for the OpenGL function *glRectf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_f : ::Proc
      get_proc(136, Translations.rect_f, Procs.rect_f)
    end

    # Checks if the OpenGL function *glRectf* is loaded.
    def rect_f?
      !!@addresses[136]
    end

    # Retrieves a `Proc` for the OpenGL function *glRectfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_fv : ::Proc
      get_proc(137, Translations.rect_fv, Procs.rect_fv)
    end

    # Checks if the OpenGL function *glRectfv* is loaded.
    def rect_fv?
      !!@addresses[137]
    end

    # Retrieves a `Proc` for the OpenGL function *glRecti*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_i : ::Proc
      get_proc(138, Translations.rect_i, Procs.rect_i)
    end

    # Checks if the OpenGL function *glRecti* is loaded.
    def rect_i?
      !!@addresses[138]
    end

    # Retrieves a `Proc` for the OpenGL function *glRectiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_iv : ::Proc
      get_proc(139, Translations.rect_iv, Procs.rect_iv)
    end

    # Checks if the OpenGL function *glRectiv* is loaded.
    def rect_iv?
      !!@addresses[139]
    end

    # Retrieves a `Proc` for the OpenGL function *glRects*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_s : ::Proc
      get_proc(140, Translations.rect_s, Procs.rect_s)
    end

    # Checks if the OpenGL function *glRects* is loaded.
    def rect_s?
      !!@addresses[140]
    end

    # Retrieves a `Proc` for the OpenGL function *glRectsv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rect_sv : ::Proc
      get_proc(141, Translations.rect_sv, Procs.rect_sv)
    end

    # Checks if the OpenGL function *glRectsv* is loaded.
    def rect_sv?
      !!@addresses[141]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1d : ::Proc
      get_proc(142, Translations.tex_coord_1d, Procs.tex_coord_1d)
    end

    # Checks if the OpenGL function *glTexCoord1d* is loaded.
    def tex_coord_1d?
      !!@addresses[142]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1dv : ::Proc
      get_proc(143, Translations.tex_coord_1dv, Procs.tex_coord_1dv)
    end

    # Checks if the OpenGL function *glTexCoord1dv* is loaded.
    def tex_coord_1dv?
      !!@addresses[143]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1f : ::Proc
      get_proc(144, Translations.tex_coord_1f, Procs.tex_coord_1f)
    end

    # Checks if the OpenGL function *glTexCoord1f* is loaded.
    def tex_coord_1f?
      !!@addresses[144]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1fv : ::Proc
      get_proc(145, Translations.tex_coord_1fv, Procs.tex_coord_1fv)
    end

    # Checks if the OpenGL function *glTexCoord1fv* is loaded.
    def tex_coord_1fv?
      !!@addresses[145]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1i : ::Proc
      get_proc(146, Translations.tex_coord_1i, Procs.tex_coord_1i)
    end

    # Checks if the OpenGL function *glTexCoord1i* is loaded.
    def tex_coord_1i?
      !!@addresses[146]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1iv : ::Proc
      get_proc(147, Translations.tex_coord_1iv, Procs.tex_coord_1iv)
    end

    # Checks if the OpenGL function *glTexCoord1iv* is loaded.
    def tex_coord_1iv?
      !!@addresses[147]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1s : ::Proc
      get_proc(148, Translations.tex_coord_1s, Procs.tex_coord_1s)
    end

    # Checks if the OpenGL function *glTexCoord1s* is loaded.
    def tex_coord_1s?
      !!@addresses[148]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord1sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_1sv : ::Proc
      get_proc(149, Translations.tex_coord_1sv, Procs.tex_coord_1sv)
    end

    # Checks if the OpenGL function *glTexCoord1sv* is loaded.
    def tex_coord_1sv?
      !!@addresses[149]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2d : ::Proc
      get_proc(150, Translations.tex_coord_2d, Procs.tex_coord_2d)
    end

    # Checks if the OpenGL function *glTexCoord2d* is loaded.
    def tex_coord_2d?
      !!@addresses[150]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2dv : ::Proc
      get_proc(151, Translations.tex_coord_2dv, Procs.tex_coord_2dv)
    end

    # Checks if the OpenGL function *glTexCoord2dv* is loaded.
    def tex_coord_2dv?
      !!@addresses[151]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2f : ::Proc
      get_proc(152, Translations.tex_coord_2f, Procs.tex_coord_2f)
    end

    # Checks if the OpenGL function *glTexCoord2f* is loaded.
    def tex_coord_2f?
      !!@addresses[152]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2fv : ::Proc
      get_proc(153, Translations.tex_coord_2fv, Procs.tex_coord_2fv)
    end

    # Checks if the OpenGL function *glTexCoord2fv* is loaded.
    def tex_coord_2fv?
      !!@addresses[153]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2i : ::Proc
      get_proc(154, Translations.tex_coord_2i, Procs.tex_coord_2i)
    end

    # Checks if the OpenGL function *glTexCoord2i* is loaded.
    def tex_coord_2i?
      !!@addresses[154]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2iv : ::Proc
      get_proc(155, Translations.tex_coord_2iv, Procs.tex_coord_2iv)
    end

    # Checks if the OpenGL function *glTexCoord2iv* is loaded.
    def tex_coord_2iv?
      !!@addresses[155]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2s : ::Proc
      get_proc(156, Translations.tex_coord_2s, Procs.tex_coord_2s)
    end

    # Checks if the OpenGL function *glTexCoord2s* is loaded.
    def tex_coord_2s?
      !!@addresses[156]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_2sv : ::Proc
      get_proc(157, Translations.tex_coord_2sv, Procs.tex_coord_2sv)
    end

    # Checks if the OpenGL function *glTexCoord2sv* is loaded.
    def tex_coord_2sv?
      !!@addresses[157]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3d : ::Proc
      get_proc(158, Translations.tex_coord_3d, Procs.tex_coord_3d)
    end

    # Checks if the OpenGL function *glTexCoord3d* is loaded.
    def tex_coord_3d?
      !!@addresses[158]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3dv : ::Proc
      get_proc(159, Translations.tex_coord_3dv, Procs.tex_coord_3dv)
    end

    # Checks if the OpenGL function *glTexCoord3dv* is loaded.
    def tex_coord_3dv?
      !!@addresses[159]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3f : ::Proc
      get_proc(160, Translations.tex_coord_3f, Procs.tex_coord_3f)
    end

    # Checks if the OpenGL function *glTexCoord3f* is loaded.
    def tex_coord_3f?
      !!@addresses[160]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3fv : ::Proc
      get_proc(161, Translations.tex_coord_3fv, Procs.tex_coord_3fv)
    end

    # Checks if the OpenGL function *glTexCoord3fv* is loaded.
    def tex_coord_3fv?
      !!@addresses[161]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3i : ::Proc
      get_proc(162, Translations.tex_coord_3i, Procs.tex_coord_3i)
    end

    # Checks if the OpenGL function *glTexCoord3i* is loaded.
    def tex_coord_3i?
      !!@addresses[162]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3iv : ::Proc
      get_proc(163, Translations.tex_coord_3iv, Procs.tex_coord_3iv)
    end

    # Checks if the OpenGL function *glTexCoord3iv* is loaded.
    def tex_coord_3iv?
      !!@addresses[163]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3s : ::Proc
      get_proc(164, Translations.tex_coord_3s, Procs.tex_coord_3s)
    end

    # Checks if the OpenGL function *glTexCoord3s* is loaded.
    def tex_coord_3s?
      !!@addresses[164]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_3sv : ::Proc
      get_proc(165, Translations.tex_coord_3sv, Procs.tex_coord_3sv)
    end

    # Checks if the OpenGL function *glTexCoord3sv* is loaded.
    def tex_coord_3sv?
      !!@addresses[165]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4d : ::Proc
      get_proc(166, Translations.tex_coord_4d, Procs.tex_coord_4d)
    end

    # Checks if the OpenGL function *glTexCoord4d* is loaded.
    def tex_coord_4d?
      !!@addresses[166]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4dv : ::Proc
      get_proc(167, Translations.tex_coord_4dv, Procs.tex_coord_4dv)
    end

    # Checks if the OpenGL function *glTexCoord4dv* is loaded.
    def tex_coord_4dv?
      !!@addresses[167]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4f : ::Proc
      get_proc(168, Translations.tex_coord_4f, Procs.tex_coord_4f)
    end

    # Checks if the OpenGL function *glTexCoord4f* is loaded.
    def tex_coord_4f?
      !!@addresses[168]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4fv : ::Proc
      get_proc(169, Translations.tex_coord_4fv, Procs.tex_coord_4fv)
    end

    # Checks if the OpenGL function *glTexCoord4fv* is loaded.
    def tex_coord_4fv?
      !!@addresses[169]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4i : ::Proc
      get_proc(170, Translations.tex_coord_4i, Procs.tex_coord_4i)
    end

    # Checks if the OpenGL function *glTexCoord4i* is loaded.
    def tex_coord_4i?
      !!@addresses[170]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4iv : ::Proc
      get_proc(171, Translations.tex_coord_4iv, Procs.tex_coord_4iv)
    end

    # Checks if the OpenGL function *glTexCoord4iv* is loaded.
    def tex_coord_4iv?
      !!@addresses[171]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4s : ::Proc
      get_proc(172, Translations.tex_coord_4s, Procs.tex_coord_4s)
    end

    # Checks if the OpenGL function *glTexCoord4s* is loaded.
    def tex_coord_4s?
      !!@addresses[172]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoord4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_4sv : ::Proc
      get_proc(173, Translations.tex_coord_4sv, Procs.tex_coord_4sv)
    end

    # Checks if the OpenGL function *glTexCoord4sv* is loaded.
    def tex_coord_4sv?
      !!@addresses[173]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2d : ::Proc
      get_proc(174, Translations.vertex_2d, Procs.vertex_2d)
    end

    # Checks if the OpenGL function *glVertex2d* is loaded.
    def vertex_2d?
      !!@addresses[174]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2dv : ::Proc
      get_proc(175, Translations.vertex_2dv, Procs.vertex_2dv)
    end

    # Checks if the OpenGL function *glVertex2dv* is loaded.
    def vertex_2dv?
      !!@addresses[175]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2f : ::Proc
      get_proc(176, Translations.vertex_2f, Procs.vertex_2f)
    end

    # Checks if the OpenGL function *glVertex2f* is loaded.
    def vertex_2f?
      !!@addresses[176]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2fv : ::Proc
      get_proc(177, Translations.vertex_2fv, Procs.vertex_2fv)
    end

    # Checks if the OpenGL function *glVertex2fv* is loaded.
    def vertex_2fv?
      !!@addresses[177]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2i : ::Proc
      get_proc(178, Translations.vertex_2i, Procs.vertex_2i)
    end

    # Checks if the OpenGL function *glVertex2i* is loaded.
    def vertex_2i?
      !!@addresses[178]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2iv : ::Proc
      get_proc(179, Translations.vertex_2iv, Procs.vertex_2iv)
    end

    # Checks if the OpenGL function *glVertex2iv* is loaded.
    def vertex_2iv?
      !!@addresses[179]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2s : ::Proc
      get_proc(180, Translations.vertex_2s, Procs.vertex_2s)
    end

    # Checks if the OpenGL function *glVertex2s* is loaded.
    def vertex_2s?
      !!@addresses[180]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_2sv : ::Proc
      get_proc(181, Translations.vertex_2sv, Procs.vertex_2sv)
    end

    # Checks if the OpenGL function *glVertex2sv* is loaded.
    def vertex_2sv?
      !!@addresses[181]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3d : ::Proc
      get_proc(182, Translations.vertex_3d, Procs.vertex_3d)
    end

    # Checks if the OpenGL function *glVertex3d* is loaded.
    def vertex_3d?
      !!@addresses[182]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3dv : ::Proc
      get_proc(183, Translations.vertex_3dv, Procs.vertex_3dv)
    end

    # Checks if the OpenGL function *glVertex3dv* is loaded.
    def vertex_3dv?
      !!@addresses[183]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3f : ::Proc
      get_proc(184, Translations.vertex_3f, Procs.vertex_3f)
    end

    # Checks if the OpenGL function *glVertex3f* is loaded.
    def vertex_3f?
      !!@addresses[184]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3fv : ::Proc
      get_proc(185, Translations.vertex_3fv, Procs.vertex_3fv)
    end

    # Checks if the OpenGL function *glVertex3fv* is loaded.
    def vertex_3fv?
      !!@addresses[185]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3i : ::Proc
      get_proc(186, Translations.vertex_3i, Procs.vertex_3i)
    end

    # Checks if the OpenGL function *glVertex3i* is loaded.
    def vertex_3i?
      !!@addresses[186]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3iv : ::Proc
      get_proc(187, Translations.vertex_3iv, Procs.vertex_3iv)
    end

    # Checks if the OpenGL function *glVertex3iv* is loaded.
    def vertex_3iv?
      !!@addresses[187]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3s : ::Proc
      get_proc(188, Translations.vertex_3s, Procs.vertex_3s)
    end

    # Checks if the OpenGL function *glVertex3s* is loaded.
    def vertex_3s?
      !!@addresses[188]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_3sv : ::Proc
      get_proc(189, Translations.vertex_3sv, Procs.vertex_3sv)
    end

    # Checks if the OpenGL function *glVertex3sv* is loaded.
    def vertex_3sv?
      !!@addresses[189]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4d : ::Proc
      get_proc(190, Translations.vertex_4d, Procs.vertex_4d)
    end

    # Checks if the OpenGL function *glVertex4d* is loaded.
    def vertex_4d?
      !!@addresses[190]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4dv : ::Proc
      get_proc(191, Translations.vertex_4dv, Procs.vertex_4dv)
    end

    # Checks if the OpenGL function *glVertex4dv* is loaded.
    def vertex_4dv?
      !!@addresses[191]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4f : ::Proc
      get_proc(192, Translations.vertex_4f, Procs.vertex_4f)
    end

    # Checks if the OpenGL function *glVertex4f* is loaded.
    def vertex_4f?
      !!@addresses[192]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4fv : ::Proc
      get_proc(193, Translations.vertex_4fv, Procs.vertex_4fv)
    end

    # Checks if the OpenGL function *glVertex4fv* is loaded.
    def vertex_4fv?
      !!@addresses[193]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4i : ::Proc
      get_proc(194, Translations.vertex_4i, Procs.vertex_4i)
    end

    # Checks if the OpenGL function *glVertex4i* is loaded.
    def vertex_4i?
      !!@addresses[194]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4iv : ::Proc
      get_proc(195, Translations.vertex_4iv, Procs.vertex_4iv)
    end

    # Checks if the OpenGL function *glVertex4iv* is loaded.
    def vertex_4iv?
      !!@addresses[195]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4s : ::Proc
      get_proc(196, Translations.vertex_4s, Procs.vertex_4s)
    end

    # Checks if the OpenGL function *glVertex4s* is loaded.
    def vertex_4s?
      !!@addresses[196]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertex4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_4sv : ::Proc
      get_proc(197, Translations.vertex_4sv, Procs.vertex_4sv)
    end

    # Checks if the OpenGL function *glVertex4sv* is loaded.
    def vertex_4sv?
      !!@addresses[197]
    end

    # Retrieves a `Proc` for the OpenGL function *glClipPlane*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clip_plane : ::Proc
      get_proc(198, Translations.clip_plane, Procs.clip_plane)
    end

    # Checks if the OpenGL function *glClipPlane* is loaded.
    def clip_plane?
      !!@addresses[198]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorMaterial*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_material : ::Proc
      get_proc(199, Translations.color_material, Procs.color_material)
    end

    # Checks if the OpenGL function *glColorMaterial* is loaded.
    def color_material?
      !!@addresses[199]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_f : ::Proc
      get_proc(200, Translations.fog_f, Procs.fog_f)
    end

    # Checks if the OpenGL function *glFogf* is loaded.
    def fog_f?
      !!@addresses[200]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_fv : ::Proc
      get_proc(201, Translations.fog_fv, Procs.fog_fv)
    end

    # Checks if the OpenGL function *glFogfv* is loaded.
    def fog_fv?
      !!@addresses[201]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_i : ::Proc
      get_proc(202, Translations.fog_i, Procs.fog_i)
    end

    # Checks if the OpenGL function *glFogi* is loaded.
    def fog_i?
      !!@addresses[202]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_iv : ::Proc
      get_proc(203, Translations.fog_iv, Procs.fog_iv)
    end

    # Checks if the OpenGL function *glFogiv* is loaded.
    def fog_iv?
      !!@addresses[203]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_f : ::Proc
      get_proc(204, Translations.light_f, Procs.light_f)
    end

    # Checks if the OpenGL function *glLightf* is loaded.
    def light_f?
      !!@addresses[204]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_fv : ::Proc
      get_proc(205, Translations.light_fv, Procs.light_fv)
    end

    # Checks if the OpenGL function *glLightfv* is loaded.
    def light_fv?
      !!@addresses[205]
    end

    # Retrieves a `Proc` for the OpenGL function *glLighti*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_i : ::Proc
      get_proc(206, Translations.light_i, Procs.light_i)
    end

    # Checks if the OpenGL function *glLighti* is loaded.
    def light_i?
      !!@addresses[206]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_iv : ::Proc
      get_proc(207, Translations.light_iv, Procs.light_iv)
    end

    # Checks if the OpenGL function *glLightiv* is loaded.
    def light_iv?
      !!@addresses[207]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightModelf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_model_f : ::Proc
      get_proc(208, Translations.light_model_f, Procs.light_model_f)
    end

    # Checks if the OpenGL function *glLightModelf* is loaded.
    def light_model_f?
      !!@addresses[208]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightModelfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_model_fv : ::Proc
      get_proc(209, Translations.light_model_fv, Procs.light_model_fv)
    end

    # Checks if the OpenGL function *glLightModelfv* is loaded.
    def light_model_fv?
      !!@addresses[209]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightModeli*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_model_i : ::Proc
      get_proc(210, Translations.light_model_i, Procs.light_model_i)
    end

    # Checks if the OpenGL function *glLightModeli* is loaded.
    def light_model_i?
      !!@addresses[210]
    end

    # Retrieves a `Proc` for the OpenGL function *glLightModeliv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def light_model_iv : ::Proc
      get_proc(211, Translations.light_model_iv, Procs.light_model_iv)
    end

    # Checks if the OpenGL function *glLightModeliv* is loaded.
    def light_model_iv?
      !!@addresses[211]
    end

    # Retrieves a `Proc` for the OpenGL function *glLineStipple*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def line_stipple : ::Proc
      get_proc(212, Translations.line_stipple, Procs.line_stipple)
    end

    # Checks if the OpenGL function *glLineStipple* is loaded.
    def line_stipple?
      !!@addresses[212]
    end

    # Retrieves a `Proc` for the OpenGL function *glMaterialf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def material_f : ::Proc
      get_proc(213, Translations.material_f, Procs.material_f)
    end

    # Checks if the OpenGL function *glMaterialf* is loaded.
    def material_f?
      !!@addresses[213]
    end

    # Retrieves a `Proc` for the OpenGL function *glMaterialfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def material_fv : ::Proc
      get_proc(214, Translations.material_fv, Procs.material_fv)
    end

    # Checks if the OpenGL function *glMaterialfv* is loaded.
    def material_fv?
      !!@addresses[214]
    end

    # Retrieves a `Proc` for the OpenGL function *glMateriali*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def material_i : ::Proc
      get_proc(215, Translations.material_i, Procs.material_i)
    end

    # Checks if the OpenGL function *glMateriali* is loaded.
    def material_i?
      !!@addresses[215]
    end

    # Retrieves a `Proc` for the OpenGL function *glMaterialiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def material_iv : ::Proc
      get_proc(216, Translations.material_iv, Procs.material_iv)
    end

    # Checks if the OpenGL function *glMaterialiv* is loaded.
    def material_iv?
      !!@addresses[216]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonStipple*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_stipple : ::Proc
      get_proc(217, Translations.polygon_stipple, Procs.polygon_stipple)
    end

    # Checks if the OpenGL function *glPolygonStipple* is loaded.
    def polygon_stipple?
      !!@addresses[217]
    end

    # Retrieves a `Proc` for the OpenGL function *glShadeModel*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shade_model : ::Proc
      get_proc(218, Translations.shade_model, Procs.shade_model)
    end

    # Checks if the OpenGL function *glShadeModel* is loaded.
    def shade_model?
      !!@addresses[218]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnvf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_f : ::Proc
      get_proc(219, Translations.tex_env_f, Procs.tex_env_f)
    end

    # Checks if the OpenGL function *glTexEnvf* is loaded.
    def tex_env_f?
      !!@addresses[219]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnvfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_fv : ::Proc
      get_proc(220, Translations.tex_env_fv, Procs.tex_env_fv)
    end

    # Checks if the OpenGL function *glTexEnvfv* is loaded.
    def tex_env_fv?
      !!@addresses[220]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnvi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_i : ::Proc
      get_proc(221, Translations.tex_env_i, Procs.tex_env_i)
    end

    # Checks if the OpenGL function *glTexEnvi* is loaded.
    def tex_env_i?
      !!@addresses[221]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexEnviv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_env_iv : ::Proc
      get_proc(222, Translations.tex_env_iv, Procs.tex_env_iv)
    end

    # Checks if the OpenGL function *glTexEnviv* is loaded.
    def tex_env_iv?
      !!@addresses[222]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexGend*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_gen_d : ::Proc
      get_proc(223, Translations.tex_gen_d, Procs.tex_gen_d)
    end

    # Checks if the OpenGL function *glTexGend* is loaded.
    def tex_gen_d?
      !!@addresses[223]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexGendv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_gen_dv : ::Proc
      get_proc(224, Translations.tex_gen_dv, Procs.tex_gen_dv)
    end

    # Checks if the OpenGL function *glTexGendv* is loaded.
    def tex_gen_dv?
      !!@addresses[224]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexGenf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_gen_f : ::Proc
      get_proc(225, Translations.tex_gen_f, Procs.tex_gen_f)
    end

    # Checks if the OpenGL function *glTexGenf* is loaded.
    def tex_gen_f?
      !!@addresses[225]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexGenfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_gen_fv : ::Proc
      get_proc(226, Translations.tex_gen_fv, Procs.tex_gen_fv)
    end

    # Checks if the OpenGL function *glTexGenfv* is loaded.
    def tex_gen_fv?
      !!@addresses[226]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexGeni*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_gen_i : ::Proc
      get_proc(227, Translations.tex_gen_i, Procs.tex_gen_i)
    end

    # Checks if the OpenGL function *glTexGeni* is loaded.
    def tex_gen_i?
      !!@addresses[227]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexGeniv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_gen_iv : ::Proc
      get_proc(228, Translations.tex_gen_iv, Procs.tex_gen_iv)
    end

    # Checks if the OpenGL function *glTexGeniv* is loaded.
    def tex_gen_iv?
      !!@addresses[228]
    end

    # Retrieves a `Proc` for the OpenGL function *glFeedbackBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def feedback_buffer : ::Proc
      get_proc(229, Translations.feedback_buffer, Procs.feedback_buffer)
    end

    # Checks if the OpenGL function *glFeedbackBuffer* is loaded.
    def feedback_buffer?
      !!@addresses[229]
    end

    # Retrieves a `Proc` for the OpenGL function *glSelectBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def select_buffer : ::Proc
      get_proc(230, Translations.select_buffer, Procs.select_buffer)
    end

    # Checks if the OpenGL function *glSelectBuffer* is loaded.
    def select_buffer?
      !!@addresses[230]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderMode*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def render_mode : ::Proc
      get_proc(231, Translations.render_mode, Procs.render_mode)
    end

    # Checks if the OpenGL function *glRenderMode* is loaded.
    def render_mode?
      !!@addresses[231]
    end

    # Retrieves a `Proc` for the OpenGL function *glInitNames*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def init_names : ::Proc
      get_proc(232, Translations.init_names, Procs.init_names)
    end

    # Checks if the OpenGL function *glInitNames* is loaded.
    def init_names?
      !!@addresses[232]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_name : ::Proc
      get_proc(233, Translations.load_name, Procs.load_name)
    end

    # Checks if the OpenGL function *glLoadName* is loaded.
    def load_name?
      !!@addresses[233]
    end

    # Retrieves a `Proc` for the OpenGL function *glPassThrough*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pass_through : ::Proc
      get_proc(234, Translations.pass_through, Procs.pass_through)
    end

    # Checks if the OpenGL function *glPassThrough* is loaded.
    def pass_through?
      !!@addresses[234]
    end

    # Retrieves a `Proc` for the OpenGL function *glPopName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pop_name : ::Proc
      get_proc(235, Translations.pop_name, Procs.pop_name)
    end

    # Checks if the OpenGL function *glPopName* is loaded.
    def pop_name?
      !!@addresses[235]
    end

    # Retrieves a `Proc` for the OpenGL function *glPushName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def push_name : ::Proc
      get_proc(236, Translations.push_name, Procs.push_name)
    end

    # Checks if the OpenGL function *glPushName* is loaded.
    def push_name?
      !!@addresses[236]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearAccum*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_accum : ::Proc
      get_proc(237, Translations.clear_accum, Procs.clear_accum)
    end

    # Checks if the OpenGL function *glClearAccum* is loaded.
    def clear_accum?
      !!@addresses[237]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_index : ::Proc
      get_proc(238, Translations.clear_index, Procs.clear_index)
    end

    # Checks if the OpenGL function *glClearIndex* is loaded.
    def clear_index?
      !!@addresses[238]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_mask : ::Proc
      get_proc(239, Translations.index_mask, Procs.index_mask)
    end

    # Checks if the OpenGL function *glIndexMask* is loaded.
    def index_mask?
      !!@addresses[239]
    end

    # Retrieves a `Proc` for the OpenGL function *glAccum*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def accum : ::Proc
      get_proc(240, Translations.accum, Procs.accum)
    end

    # Checks if the OpenGL function *glAccum* is loaded.
    def accum?
      !!@addresses[240]
    end

    # Retrieves a `Proc` for the OpenGL function *glPopAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pop_attrib : ::Proc
      get_proc(241, Translations.pop_attrib, Procs.pop_attrib)
    end

    # Checks if the OpenGL function *glPopAttrib* is loaded.
    def pop_attrib?
      !!@addresses[241]
    end

    # Retrieves a `Proc` for the OpenGL function *glPushAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def push_attrib : ::Proc
      get_proc(242, Translations.push_attrib, Procs.push_attrib)
    end

    # Checks if the OpenGL function *glPushAttrib* is loaded.
    def push_attrib?
      !!@addresses[242]
    end

    # Retrieves a `Proc` for the OpenGL function *glMap1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_1d : ::Proc
      get_proc(243, Translations.map_1d, Procs.map_1d)
    end

    # Checks if the OpenGL function *glMap1d* is loaded.
    def map_1d?
      !!@addresses[243]
    end

    # Retrieves a `Proc` for the OpenGL function *glMap1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_1f : ::Proc
      get_proc(244, Translations.map_1f, Procs.map_1f)
    end

    # Checks if the OpenGL function *glMap1f* is loaded.
    def map_1f?
      !!@addresses[244]
    end

    # Retrieves a `Proc` for the OpenGL function *glMap2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_2d : ::Proc
      get_proc(245, Translations.map_2d, Procs.map_2d)
    end

    # Checks if the OpenGL function *glMap2d* is loaded.
    def map_2d?
      !!@addresses[245]
    end

    # Retrieves a `Proc` for the OpenGL function *glMap2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_2f : ::Proc
      get_proc(246, Translations.map_2f, Procs.map_2f)
    end

    # Checks if the OpenGL function *glMap2f* is loaded.
    def map_2f?
      !!@addresses[246]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapGrid1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_grid_1d : ::Proc
      get_proc(247, Translations.map_grid_1d, Procs.map_grid_1d)
    end

    # Checks if the OpenGL function *glMapGrid1d* is loaded.
    def map_grid_1d?
      !!@addresses[247]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapGrid1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_grid_1f : ::Proc
      get_proc(248, Translations.map_grid_1f, Procs.map_grid_1f)
    end

    # Checks if the OpenGL function *glMapGrid1f* is loaded.
    def map_grid_1f?
      !!@addresses[248]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapGrid2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_grid_2d : ::Proc
      get_proc(249, Translations.map_grid_2d, Procs.map_grid_2d)
    end

    # Checks if the OpenGL function *glMapGrid2d* is loaded.
    def map_grid_2d?
      !!@addresses[249]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapGrid2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_grid_2f : ::Proc
      get_proc(250, Translations.map_grid_2f, Procs.map_grid_2f)
    end

    # Checks if the OpenGL function *glMapGrid2f* is loaded.
    def map_grid_2f?
      !!@addresses[250]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_1d : ::Proc
      get_proc(251, Translations.eval_coord_1d, Procs.eval_coord_1d)
    end

    # Checks if the OpenGL function *glEvalCoord1d* is loaded.
    def eval_coord_1d?
      !!@addresses[251]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_1dv : ::Proc
      get_proc(252, Translations.eval_coord_1dv, Procs.eval_coord_1dv)
    end

    # Checks if the OpenGL function *glEvalCoord1dv* is loaded.
    def eval_coord_1dv?
      !!@addresses[252]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_1f : ::Proc
      get_proc(253, Translations.eval_coord_1f, Procs.eval_coord_1f)
    end

    # Checks if the OpenGL function *glEvalCoord1f* is loaded.
    def eval_coord_1f?
      !!@addresses[253]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_1fv : ::Proc
      get_proc(254, Translations.eval_coord_1fv, Procs.eval_coord_1fv)
    end

    # Checks if the OpenGL function *glEvalCoord1fv* is loaded.
    def eval_coord_1fv?
      !!@addresses[254]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_2d : ::Proc
      get_proc(255, Translations.eval_coord_2d, Procs.eval_coord_2d)
    end

    # Checks if the OpenGL function *glEvalCoord2d* is loaded.
    def eval_coord_2d?
      !!@addresses[255]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_2dv : ::Proc
      get_proc(256, Translations.eval_coord_2dv, Procs.eval_coord_2dv)
    end

    # Checks if the OpenGL function *glEvalCoord2dv* is loaded.
    def eval_coord_2dv?
      !!@addresses[256]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_2f : ::Proc
      get_proc(257, Translations.eval_coord_2f, Procs.eval_coord_2f)
    end

    # Checks if the OpenGL function *glEvalCoord2f* is loaded.
    def eval_coord_2f?
      !!@addresses[257]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalCoord2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_coord_2fv : ::Proc
      get_proc(258, Translations.eval_coord_2fv, Procs.eval_coord_2fv)
    end

    # Checks if the OpenGL function *glEvalCoord2fv* is loaded.
    def eval_coord_2fv?
      !!@addresses[258]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalMesh1*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_mesh1 : ::Proc
      get_proc(259, Translations.eval_mesh1, Procs.eval_mesh1)
    end

    # Checks if the OpenGL function *glEvalMesh1* is loaded.
    def eval_mesh1?
      !!@addresses[259]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalPoint1*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_point1 : ::Proc
      get_proc(260, Translations.eval_point1, Procs.eval_point1)
    end

    # Checks if the OpenGL function *glEvalPoint1* is loaded.
    def eval_point1?
      !!@addresses[260]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalMesh2*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_mesh2 : ::Proc
      get_proc(261, Translations.eval_mesh2, Procs.eval_mesh2)
    end

    # Checks if the OpenGL function *glEvalMesh2* is loaded.
    def eval_mesh2?
      !!@addresses[261]
    end

    # Retrieves a `Proc` for the OpenGL function *glEvalPoint2*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def eval_point2 : ::Proc
      get_proc(262, Translations.eval_point2, Procs.eval_point2)
    end

    # Checks if the OpenGL function *glEvalPoint2* is loaded.
    def eval_point2?
      !!@addresses[262]
    end

    # Retrieves a `Proc` for the OpenGL function *glAlphaFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def alpha_func : ::Proc
      get_proc(263, Translations.alpha_func, Procs.alpha_func)
    end

    # Checks if the OpenGL function *glAlphaFunc* is loaded.
    def alpha_func?
      !!@addresses[263]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelZoom*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_zoom : ::Proc
      get_proc(264, Translations.pixel_zoom, Procs.pixel_zoom)
    end

    # Checks if the OpenGL function *glPixelZoom* is loaded.
    def pixel_zoom?
      !!@addresses[264]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelTransferf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_transfer_f : ::Proc
      get_proc(265, Translations.pixel_transfer_f, Procs.pixel_transfer_f)
    end

    # Checks if the OpenGL function *glPixelTransferf* is loaded.
    def pixel_transfer_f?
      !!@addresses[265]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelTransferi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_transfer_i : ::Proc
      get_proc(266, Translations.pixel_transfer_i, Procs.pixel_transfer_i)
    end

    # Checks if the OpenGL function *glPixelTransferi* is loaded.
    def pixel_transfer_i?
      !!@addresses[266]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelMapfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_map_fv : ::Proc
      get_proc(267, Translations.pixel_map_fv, Procs.pixel_map_fv)
    end

    # Checks if the OpenGL function *glPixelMapfv* is loaded.
    def pixel_map_fv?
      !!@addresses[267]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelMapuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_map_uiv : ::Proc
      get_proc(268, Translations.pixel_map_uiv, Procs.pixel_map_uiv)
    end

    # Checks if the OpenGL function *glPixelMapuiv* is loaded.
    def pixel_map_uiv?
      !!@addresses[268]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelMapusv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_map_usv : ::Proc
      get_proc(269, Translations.pixel_map_usv, Procs.pixel_map_usv)
    end

    # Checks if the OpenGL function *glPixelMapusv* is loaded.
    def pixel_map_usv?
      !!@addresses[269]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyPixels*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_pixels : ::Proc
      get_proc(270, Translations.copy_pixels, Procs.copy_pixels)
    end

    # Checks if the OpenGL function *glCopyPixels* is loaded.
    def copy_pixels?
      !!@addresses[270]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawPixels*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_pixels : ::Proc
      get_proc(271, Translations.draw_pixels, Procs.draw_pixels)
    end

    # Checks if the OpenGL function *glDrawPixels* is loaded.
    def draw_pixels?
      !!@addresses[271]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetClipPlane*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_clip_plane : ::Proc
      get_proc(272, Translations.get_clip_plane, Procs.get_clip_plane)
    end

    # Checks if the OpenGL function *glGetClipPlane* is loaded.
    def get_clip_plane?
      !!@addresses[272]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetLightfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_light_fv : ::Proc
      get_proc(273, Translations.get_light_fv, Procs.get_light_fv)
    end

    # Checks if the OpenGL function *glGetLightfv* is loaded.
    def get_light_fv?
      !!@addresses[273]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetLightiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_light_iv : ::Proc
      get_proc(274, Translations.get_light_iv, Procs.get_light_iv)
    end

    # Checks if the OpenGL function *glGetLightiv* is loaded.
    def get_light_iv?
      !!@addresses[274]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMapdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_map_dv : ::Proc
      get_proc(275, Translations.get_map_dv, Procs.get_map_dv)
    end

    # Checks if the OpenGL function *glGetMapdv* is loaded.
    def get_map_dv?
      !!@addresses[275]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMapfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_map_fv : ::Proc
      get_proc(276, Translations.get_map_fv, Procs.get_map_fv)
    end

    # Checks if the OpenGL function *glGetMapfv* is loaded.
    def get_map_fv?
      !!@addresses[276]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMapiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_map_iv : ::Proc
      get_proc(277, Translations.get_map_iv, Procs.get_map_iv)
    end

    # Checks if the OpenGL function *glGetMapiv* is loaded.
    def get_map_iv?
      !!@addresses[277]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMaterialfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_material_fv : ::Proc
      get_proc(278, Translations.get_material_fv, Procs.get_material_fv)
    end

    # Checks if the OpenGL function *glGetMaterialfv* is loaded.
    def get_material_fv?
      !!@addresses[278]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMaterialiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_material_iv : ::Proc
      get_proc(279, Translations.get_material_iv, Procs.get_material_iv)
    end

    # Checks if the OpenGL function *glGetMaterialiv* is loaded.
    def get_material_iv?
      !!@addresses[279]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetPixelMapfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_pixel_map_fv : ::Proc
      get_proc(280, Translations.get_pixel_map_fv, Procs.get_pixel_map_fv)
    end

    # Checks if the OpenGL function *glGetPixelMapfv* is loaded.
    def get_pixel_map_fv?
      !!@addresses[280]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetPixelMapuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_pixel_map_uiv : ::Proc
      get_proc(281, Translations.get_pixel_map_uiv, Procs.get_pixel_map_uiv)
    end

    # Checks if the OpenGL function *glGetPixelMapuiv* is loaded.
    def get_pixel_map_uiv?
      !!@addresses[281]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetPixelMapusv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_pixel_map_usv : ::Proc
      get_proc(282, Translations.get_pixel_map_usv, Procs.get_pixel_map_usv)
    end

    # Checks if the OpenGL function *glGetPixelMapusv* is loaded.
    def get_pixel_map_usv?
      !!@addresses[282]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetPolygonStipple*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_polygon_stipple : ::Proc
      get_proc(283, Translations.get_polygon_stipple, Procs.get_polygon_stipple)
    end

    # Checks if the OpenGL function *glGetPolygonStipple* is loaded.
    def get_polygon_stipple?
      !!@addresses[283]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexEnvfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_env_fv : ::Proc
      get_proc(284, Translations.get_tex_env_fv, Procs.get_tex_env_fv)
    end

    # Checks if the OpenGL function *glGetTexEnvfv* is loaded.
    def get_tex_env_fv?
      !!@addresses[284]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexEnviv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_env_iv : ::Proc
      get_proc(285, Translations.get_tex_env_iv, Procs.get_tex_env_iv)
    end

    # Checks if the OpenGL function *glGetTexEnviv* is loaded.
    def get_tex_env_iv?
      !!@addresses[285]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexGendv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_gen_dv : ::Proc
      get_proc(286, Translations.get_tex_gen_dv, Procs.get_tex_gen_dv)
    end

    # Checks if the OpenGL function *glGetTexGendv* is loaded.
    def get_tex_gen_dv?
      !!@addresses[286]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexGenfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_gen_fv : ::Proc
      get_proc(287, Translations.get_tex_gen_fv, Procs.get_tex_gen_fv)
    end

    # Checks if the OpenGL function *glGetTexGenfv* is loaded.
    def get_tex_gen_fv?
      !!@addresses[287]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexGeniv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_gen_iv : ::Proc
      get_proc(288, Translations.get_tex_gen_iv, Procs.get_tex_gen_iv)
    end

    # Checks if the OpenGL function *glGetTexGeniv* is loaded.
    def get_tex_gen_iv?
      !!@addresses[288]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsList*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_list : ::Proc
      get_proc(289, Translations.is_list, Procs.is_list)
    end

    # Checks if the OpenGL function *glIsList* is loaded.
    def is_list?
      !!@addresses[289]
    end

    # Retrieves a `Proc` for the OpenGL function *glFrustum*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def frustum : ::Proc
      get_proc(290, Translations.frustum, Procs.frustum)
    end

    # Checks if the OpenGL function *glFrustum* is loaded.
    def frustum?
      !!@addresses[290]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadIdentity*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_identity : ::Proc
      get_proc(291, Translations.load_identity, Procs.load_identity)
    end

    # Checks if the OpenGL function *glLoadIdentity* is loaded.
    def load_identity?
      !!@addresses[291]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadMatrixf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_matrix_f : ::Proc
      get_proc(292, Translations.load_matrix_f, Procs.load_matrix_f)
    end

    # Checks if the OpenGL function *glLoadMatrixf* is loaded.
    def load_matrix_f?
      !!@addresses[292]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadMatrixd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_matrix_d : ::Proc
      get_proc(293, Translations.load_matrix_d, Procs.load_matrix_d)
    end

    # Checks if the OpenGL function *glLoadMatrixd* is loaded.
    def load_matrix_d?
      !!@addresses[293]
    end

    # Retrieves a `Proc` for the OpenGL function *glMatrixMode*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def matrix_mode : ::Proc
      get_proc(294, Translations.matrix_mode, Procs.matrix_mode)
    end

    # Checks if the OpenGL function *glMatrixMode* is loaded.
    def matrix_mode?
      !!@addresses[294]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultMatrixf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def mult_matrix_f : ::Proc
      get_proc(295, Translations.mult_matrix_f, Procs.mult_matrix_f)
    end

    # Checks if the OpenGL function *glMultMatrixf* is loaded.
    def mult_matrix_f?
      !!@addresses[295]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultMatrixd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def mult_matrix_d : ::Proc
      get_proc(296, Translations.mult_matrix_d, Procs.mult_matrix_d)
    end

    # Checks if the OpenGL function *glMultMatrixd* is loaded.
    def mult_matrix_d?
      !!@addresses[296]
    end

    # Retrieves a `Proc` for the OpenGL function *glOrtho*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def ortho : ::Proc
      get_proc(297, Translations.ortho, Procs.ortho)
    end

    # Checks if the OpenGL function *glOrtho* is loaded.
    def ortho?
      !!@addresses[297]
    end

    # Retrieves a `Proc` for the OpenGL function *glPopMatrix*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pop_matrix : ::Proc
      get_proc(298, Translations.pop_matrix, Procs.pop_matrix)
    end

    # Checks if the OpenGL function *glPopMatrix* is loaded.
    def pop_matrix?
      !!@addresses[298]
    end

    # Retrieves a `Proc` for the OpenGL function *glPushMatrix*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def push_matrix : ::Proc
      get_proc(299, Translations.push_matrix, Procs.push_matrix)
    end

    # Checks if the OpenGL function *glPushMatrix* is loaded.
    def push_matrix?
      !!@addresses[299]
    end

    # Retrieves a `Proc` for the OpenGL function *glRotated*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rotate_d : ::Proc
      get_proc(300, Translations.rotate_d, Procs.rotate_d)
    end

    # Checks if the OpenGL function *glRotated* is loaded.
    def rotate_d?
      !!@addresses[300]
    end

    # Retrieves a `Proc` for the OpenGL function *glRotatef*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def rotate_f : ::Proc
      get_proc(301, Translations.rotate_f, Procs.rotate_f)
    end

    # Checks if the OpenGL function *glRotatef* is loaded.
    def rotate_f?
      !!@addresses[301]
    end

    # Retrieves a `Proc` for the OpenGL function *glScaled*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scale_d : ::Proc
      get_proc(302, Translations.scale_d, Procs.scale_d)
    end

    # Checks if the OpenGL function *glScaled* is loaded.
    def scale_d?
      !!@addresses[302]
    end

    # Retrieves a `Proc` for the OpenGL function *glScalef*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scale_f : ::Proc
      get_proc(303, Translations.scale_f, Procs.scale_f)
    end

    # Checks if the OpenGL function *glScalef* is loaded.
    def scale_f?
      !!@addresses[303]
    end

    # Retrieves a `Proc` for the OpenGL function *glTranslated*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def translate_d : ::Proc
      get_proc(304, Translations.translate_d, Procs.translate_d)
    end

    # Checks if the OpenGL function *glTranslated* is loaded.
    def translate_d?
      !!@addresses[304]
    end

    # Retrieves a `Proc` for the OpenGL function *glTranslatef*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def translate_f : ::Proc
      get_proc(305, Translations.translate_f, Procs.translate_f)
    end

    # Checks if the OpenGL function *glTranslatef* is loaded.
    def translate_f?
      !!@addresses[305]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays : ::Proc
      get_proc(306, Translations.draw_arrays, Procs.draw_arrays)
    end

    # Checks if the OpenGL function *glDrawArrays* is loaded.
    def draw_arrays?
      !!@addresses[306]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements : ::Proc
      get_proc(307, Translations.draw_elements, Procs.draw_elements)
    end

    # Checks if the OpenGL function *glDrawElements* is loaded.
    def draw_elements?
      !!@addresses[307]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_pointer_v : ::Proc
      get_proc(308, Translations.get_pointer_v, Procs.get_pointer_v)
    end

    # Checks if the OpenGL function *glGetPointerv* is loaded.
    def get_pointer_v?
      !!@addresses[308]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonOffset*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_offset : ::Proc
      get_proc(309, Translations.polygon_offset, Procs.polygon_offset)
    end

    # Checks if the OpenGL function *glPolygonOffset* is loaded.
    def polygon_offset?
      !!@addresses[309]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_image_1d : ::Proc
      get_proc(310, Translations.copy_tex_image_1d, Procs.copy_tex_image_1d)
    end

    # Checks if the OpenGL function *glCopyTexImage1D* is loaded.
    def copy_tex_image_1d?
      !!@addresses[310]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_image_2d : ::Proc
      get_proc(311, Translations.copy_tex_image_2d, Procs.copy_tex_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexImage2D* is loaded.
    def copy_tex_image_2d?
      !!@addresses[311]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_1d : ::Proc
      get_proc(312, Translations.copy_tex_sub_image_1d, Procs.copy_tex_sub_image_1d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage1D* is loaded.
    def copy_tex_sub_image_1d?
      !!@addresses[312]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_2d : ::Proc
      get_proc(313, Translations.copy_tex_sub_image_2d, Procs.copy_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage2D* is loaded.
    def copy_tex_sub_image_2d?
      !!@addresses[313]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_1d : ::Proc
      get_proc(314, Translations.tex_sub_image_1d, Procs.tex_sub_image_1d)
    end

    # Checks if the OpenGL function *glTexSubImage1D* is loaded.
    def tex_sub_image_1d?
      !!@addresses[314]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_2d : ::Proc
      get_proc(315, Translations.tex_sub_image_2d, Procs.tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glTexSubImage2D* is loaded.
    def tex_sub_image_2d?
      !!@addresses[315]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_texture : ::Proc
      get_proc(316, Translations.bind_texture, Procs.bind_texture)
    end

    # Checks if the OpenGL function *glBindTexture* is loaded.
    def bind_texture?
      !!@addresses[316]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_textures : ::Proc
      get_proc(317, Translations.delete_textures, Procs.delete_textures)
    end

    # Checks if the OpenGL function *glDeleteTextures* is loaded.
    def delete_textures?
      !!@addresses[317]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_textures : ::Proc
      get_proc(318, Translations.gen_textures, Procs.gen_textures)
    end

    # Checks if the OpenGL function *glGenTextures* is loaded.
    def gen_textures?
      !!@addresses[318]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_texture : ::Proc
      get_proc(319, Translations.is_texture, Procs.is_texture)
    end

    # Checks if the OpenGL function *glIsTexture* is loaded.
    def is_texture?
      !!@addresses[319]
    end

    # Retrieves a `Proc` for the OpenGL function *glArrayElement*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def array_element : ::Proc
      get_proc(320, Translations.array_element, Procs.array_element)
    end

    # Checks if the OpenGL function *glArrayElement* is loaded.
    def array_element?
      !!@addresses[320]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_pointer : ::Proc
      get_proc(321, Translations.color_pointer, Procs.color_pointer)
    end

    # Checks if the OpenGL function *glColorPointer* is loaded.
    def color_pointer?
      !!@addresses[321]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisableClientState*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_client_state : ::Proc
      get_proc(322, Translations.disable_client_state, Procs.disable_client_state)
    end

    # Checks if the OpenGL function *glDisableClientState* is loaded.
    def disable_client_state?
      !!@addresses[322]
    end

    # Retrieves a `Proc` for the OpenGL function *glEdgeFlagPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def edge_flag_pointer : ::Proc
      get_proc(323, Translations.edge_flag_pointer, Procs.edge_flag_pointer)
    end

    # Checks if the OpenGL function *glEdgeFlagPointer* is loaded.
    def edge_flag_pointer?
      !!@addresses[323]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnableClientState*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_client_state : ::Proc
      get_proc(324, Translations.enable_client_state, Procs.enable_client_state)
    end

    # Checks if the OpenGL function *glEnableClientState* is loaded.
    def enable_client_state?
      !!@addresses[324]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_pointer : ::Proc
      get_proc(325, Translations.index_pointer, Procs.index_pointer)
    end

    # Checks if the OpenGL function *glIndexPointer* is loaded.
    def index_pointer?
      !!@addresses[325]
    end

    # Retrieves a `Proc` for the OpenGL function *glInterleavedArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def interleaved_arrays : ::Proc
      get_proc(326, Translations.interleaved_arrays, Procs.interleaved_arrays)
    end

    # Checks if the OpenGL function *glInterleavedArrays* is loaded.
    def interleaved_arrays?
      !!@addresses[326]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormalPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_pointer : ::Proc
      get_proc(327, Translations.normal_pointer, Procs.normal_pointer)
    end

    # Checks if the OpenGL function *glNormalPointer* is loaded.
    def normal_pointer?
      !!@addresses[327]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_pointer : ::Proc
      get_proc(328, Translations.tex_coord_pointer, Procs.tex_coord_pointer)
    end

    # Checks if the OpenGL function *glTexCoordPointer* is loaded.
    def tex_coord_pointer?
      !!@addresses[328]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_pointer : ::Proc
      get_proc(329, Translations.vertex_pointer, Procs.vertex_pointer)
    end

    # Checks if the OpenGL function *glVertexPointer* is loaded.
    def vertex_pointer?
      !!@addresses[329]
    end

    # Retrieves a `Proc` for the OpenGL function *glAreTexturesResident*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def are_textures_resident : ::Proc
      get_proc(330, Translations.are_textures_resident, Procs.are_textures_resident)
    end

    # Checks if the OpenGL function *glAreTexturesResident* is loaded.
    def are_textures_resident?
      !!@addresses[330]
    end

    # Retrieves a `Proc` for the OpenGL function *glPrioritizeTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def prioritize_textures : ::Proc
      get_proc(331, Translations.prioritize_textures, Procs.prioritize_textures)
    end

    # Checks if the OpenGL function *glPrioritizeTextures* is loaded.
    def prioritize_textures?
      !!@addresses[331]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_ub : ::Proc
      get_proc(332, Translations.index_ub, Procs.index_ub)
    end

    # Checks if the OpenGL function *glIndexub* is loaded.
    def index_ub?
      !!@addresses[332]
    end

    # Retrieves a `Proc` for the OpenGL function *glIndexubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def index_ubv : ::Proc
      get_proc(333, Translations.index_ubv, Procs.index_ubv)
    end

    # Checks if the OpenGL function *glIndexubv* is loaded.
    def index_ubv?
      !!@addresses[333]
    end

    # Retrieves a `Proc` for the OpenGL function *glPopClientAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pop_client_attrib : ::Proc
      get_proc(334, Translations.pop_client_attrib, Procs.pop_client_attrib)
    end

    # Checks if the OpenGL function *glPopClientAttrib* is loaded.
    def pop_client_attrib?
      !!@addresses[334]
    end

    # Retrieves a `Proc` for the OpenGL function *glPushClientAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def push_client_attrib : ::Proc
      get_proc(335, Translations.push_client_attrib, Procs.push_client_attrib)
    end

    # Checks if the OpenGL function *glPushClientAttrib* is loaded.
    def push_client_attrib?
      !!@addresses[335]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawRangeElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_range_elements : ::Proc
      get_proc(336, Translations.draw_range_elements, Procs.draw_range_elements)
    end

    # Checks if the OpenGL function *glDrawRangeElements* is loaded.
    def draw_range_elements?
      !!@addresses[336]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_3d : ::Proc
      get_proc(337, Translations.tex_image_3d, Procs.tex_image_3d)
    end

    # Checks if the OpenGL function *glTexImage3D* is loaded.
    def tex_image_3d?
      !!@addresses[337]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_3d : ::Proc
      get_proc(338, Translations.tex_sub_image_3d, Procs.tex_sub_image_3d)
    end

    # Checks if the OpenGL function *glTexSubImage3D* is loaded.
    def tex_sub_image_3d?
      !!@addresses[338]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_3d : ::Proc
      get_proc(339, Translations.copy_tex_sub_image_3d, Procs.copy_tex_sub_image_3d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage3D* is loaded.
    def copy_tex_sub_image_3d?
      !!@addresses[339]
    end

    # Retrieves a `Proc` for the OpenGL function *glActiveTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def active_texture : ::Proc
      get_proc(340, Translations.active_texture, Procs.active_texture)
    end

    # Checks if the OpenGL function *glActiveTexture* is loaded.
    def active_texture?
      !!@addresses[340]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleCoverage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_coverage : ::Proc
      get_proc(341, Translations.sample_coverage, Procs.sample_coverage)
    end

    # Checks if the OpenGL function *glSampleCoverage* is loaded.
    def sample_coverage?
      !!@addresses[341]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_3d : ::Proc
      get_proc(342, Translations.compressed_tex_image_3d, Procs.compressed_tex_image_3d)
    end

    # Checks if the OpenGL function *glCompressedTexImage3D* is loaded.
    def compressed_tex_image_3d?
      !!@addresses[342]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_2d : ::Proc
      get_proc(343, Translations.compressed_tex_image_2d, Procs.compressed_tex_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexImage2D* is loaded.
    def compressed_tex_image_2d?
      !!@addresses[343]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_1d : ::Proc
      get_proc(344, Translations.compressed_tex_image_1d, Procs.compressed_tex_image_1d)
    end

    # Checks if the OpenGL function *glCompressedTexImage1D* is loaded.
    def compressed_tex_image_1d?
      !!@addresses[344]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_3d : ::Proc
      get_proc(345, Translations.compressed_tex_sub_image_3d, Procs.compressed_tex_sub_image_3d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage3D* is loaded.
    def compressed_tex_sub_image_3d?
      !!@addresses[345]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_2d : ::Proc
      get_proc(346, Translations.compressed_tex_sub_image_2d, Procs.compressed_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage2D* is loaded.
    def compressed_tex_sub_image_2d?
      !!@addresses[346]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_1d : ::Proc
      get_proc(347, Translations.compressed_tex_sub_image_1d, Procs.compressed_tex_sub_image_1d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage1D* is loaded.
    def compressed_tex_sub_image_1d?
      !!@addresses[347]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetCompressedTexImage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_compressed_tex_image : ::Proc
      get_proc(348, Translations.get_compressed_tex_image, Procs.get_compressed_tex_image)
    end

    # Checks if the OpenGL function *glGetCompressedTexImage* is loaded.
    def get_compressed_tex_image?
      !!@addresses[348]
    end

    # Retrieves a `Proc` for the OpenGL function *glClientActiveTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def client_active_texture : ::Proc
      get_proc(349, Translations.client_active_texture, Procs.client_active_texture)
    end

    # Checks if the OpenGL function *glClientActiveTexture* is loaded.
    def client_active_texture?
      !!@addresses[349]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1d : ::Proc
      get_proc(350, Translations.multi_tex_coord_1d, Procs.multi_tex_coord_1d)
    end

    # Checks if the OpenGL function *glMultiTexCoord1d* is loaded.
    def multi_tex_coord_1d?
      !!@addresses[350]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1dv : ::Proc
      get_proc(351, Translations.multi_tex_coord_1dv, Procs.multi_tex_coord_1dv)
    end

    # Checks if the OpenGL function *glMultiTexCoord1dv* is loaded.
    def multi_tex_coord_1dv?
      !!@addresses[351]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1f : ::Proc
      get_proc(352, Translations.multi_tex_coord_1f, Procs.multi_tex_coord_1f)
    end

    # Checks if the OpenGL function *glMultiTexCoord1f* is loaded.
    def multi_tex_coord_1f?
      !!@addresses[352]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1fv : ::Proc
      get_proc(353, Translations.multi_tex_coord_1fv, Procs.multi_tex_coord_1fv)
    end

    # Checks if the OpenGL function *glMultiTexCoord1fv* is loaded.
    def multi_tex_coord_1fv?
      !!@addresses[353]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1i : ::Proc
      get_proc(354, Translations.multi_tex_coord_1i, Procs.multi_tex_coord_1i)
    end

    # Checks if the OpenGL function *glMultiTexCoord1i* is loaded.
    def multi_tex_coord_1i?
      !!@addresses[354]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1iv : ::Proc
      get_proc(355, Translations.multi_tex_coord_1iv, Procs.multi_tex_coord_1iv)
    end

    # Checks if the OpenGL function *glMultiTexCoord1iv* is loaded.
    def multi_tex_coord_1iv?
      !!@addresses[355]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1s : ::Proc
      get_proc(356, Translations.multi_tex_coord_1s, Procs.multi_tex_coord_1s)
    end

    # Checks if the OpenGL function *glMultiTexCoord1s* is loaded.
    def multi_tex_coord_1s?
      !!@addresses[356]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord1sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_1sv : ::Proc
      get_proc(357, Translations.multi_tex_coord_1sv, Procs.multi_tex_coord_1sv)
    end

    # Checks if the OpenGL function *glMultiTexCoord1sv* is loaded.
    def multi_tex_coord_1sv?
      !!@addresses[357]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2d : ::Proc
      get_proc(358, Translations.multi_tex_coord_2d, Procs.multi_tex_coord_2d)
    end

    # Checks if the OpenGL function *glMultiTexCoord2d* is loaded.
    def multi_tex_coord_2d?
      !!@addresses[358]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2dv : ::Proc
      get_proc(359, Translations.multi_tex_coord_2dv, Procs.multi_tex_coord_2dv)
    end

    # Checks if the OpenGL function *glMultiTexCoord2dv* is loaded.
    def multi_tex_coord_2dv?
      !!@addresses[359]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2f : ::Proc
      get_proc(360, Translations.multi_tex_coord_2f, Procs.multi_tex_coord_2f)
    end

    # Checks if the OpenGL function *glMultiTexCoord2f* is loaded.
    def multi_tex_coord_2f?
      !!@addresses[360]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2fv : ::Proc
      get_proc(361, Translations.multi_tex_coord_2fv, Procs.multi_tex_coord_2fv)
    end

    # Checks if the OpenGL function *glMultiTexCoord2fv* is loaded.
    def multi_tex_coord_2fv?
      !!@addresses[361]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2i : ::Proc
      get_proc(362, Translations.multi_tex_coord_2i, Procs.multi_tex_coord_2i)
    end

    # Checks if the OpenGL function *glMultiTexCoord2i* is loaded.
    def multi_tex_coord_2i?
      !!@addresses[362]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2iv : ::Proc
      get_proc(363, Translations.multi_tex_coord_2iv, Procs.multi_tex_coord_2iv)
    end

    # Checks if the OpenGL function *glMultiTexCoord2iv* is loaded.
    def multi_tex_coord_2iv?
      !!@addresses[363]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2s : ::Proc
      get_proc(364, Translations.multi_tex_coord_2s, Procs.multi_tex_coord_2s)
    end

    # Checks if the OpenGL function *glMultiTexCoord2s* is loaded.
    def multi_tex_coord_2s?
      !!@addresses[364]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_2sv : ::Proc
      get_proc(365, Translations.multi_tex_coord_2sv, Procs.multi_tex_coord_2sv)
    end

    # Checks if the OpenGL function *glMultiTexCoord2sv* is loaded.
    def multi_tex_coord_2sv?
      !!@addresses[365]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3d : ::Proc
      get_proc(366, Translations.multi_tex_coord_3d, Procs.multi_tex_coord_3d)
    end

    # Checks if the OpenGL function *glMultiTexCoord3d* is loaded.
    def multi_tex_coord_3d?
      !!@addresses[366]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3dv : ::Proc
      get_proc(367, Translations.multi_tex_coord_3dv, Procs.multi_tex_coord_3dv)
    end

    # Checks if the OpenGL function *glMultiTexCoord3dv* is loaded.
    def multi_tex_coord_3dv?
      !!@addresses[367]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3f : ::Proc
      get_proc(368, Translations.multi_tex_coord_3f, Procs.multi_tex_coord_3f)
    end

    # Checks if the OpenGL function *glMultiTexCoord3f* is loaded.
    def multi_tex_coord_3f?
      !!@addresses[368]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3fv : ::Proc
      get_proc(369, Translations.multi_tex_coord_3fv, Procs.multi_tex_coord_3fv)
    end

    # Checks if the OpenGL function *glMultiTexCoord3fv* is loaded.
    def multi_tex_coord_3fv?
      !!@addresses[369]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3i : ::Proc
      get_proc(370, Translations.multi_tex_coord_3i, Procs.multi_tex_coord_3i)
    end

    # Checks if the OpenGL function *glMultiTexCoord3i* is loaded.
    def multi_tex_coord_3i?
      !!@addresses[370]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3iv : ::Proc
      get_proc(371, Translations.multi_tex_coord_3iv, Procs.multi_tex_coord_3iv)
    end

    # Checks if the OpenGL function *glMultiTexCoord3iv* is loaded.
    def multi_tex_coord_3iv?
      !!@addresses[371]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3s : ::Proc
      get_proc(372, Translations.multi_tex_coord_3s, Procs.multi_tex_coord_3s)
    end

    # Checks if the OpenGL function *glMultiTexCoord3s* is loaded.
    def multi_tex_coord_3s?
      !!@addresses[372]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_3sv : ::Proc
      get_proc(373, Translations.multi_tex_coord_3sv, Procs.multi_tex_coord_3sv)
    end

    # Checks if the OpenGL function *glMultiTexCoord3sv* is loaded.
    def multi_tex_coord_3sv?
      !!@addresses[373]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4d : ::Proc
      get_proc(374, Translations.multi_tex_coord_4d, Procs.multi_tex_coord_4d)
    end

    # Checks if the OpenGL function *glMultiTexCoord4d* is loaded.
    def multi_tex_coord_4d?
      !!@addresses[374]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4dv : ::Proc
      get_proc(375, Translations.multi_tex_coord_4dv, Procs.multi_tex_coord_4dv)
    end

    # Checks if the OpenGL function *glMultiTexCoord4dv* is loaded.
    def multi_tex_coord_4dv?
      !!@addresses[375]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4f : ::Proc
      get_proc(376, Translations.multi_tex_coord_4f, Procs.multi_tex_coord_4f)
    end

    # Checks if the OpenGL function *glMultiTexCoord4f* is loaded.
    def multi_tex_coord_4f?
      !!@addresses[376]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4fv : ::Proc
      get_proc(377, Translations.multi_tex_coord_4fv, Procs.multi_tex_coord_4fv)
    end

    # Checks if the OpenGL function *glMultiTexCoord4fv* is loaded.
    def multi_tex_coord_4fv?
      !!@addresses[377]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4i : ::Proc
      get_proc(378, Translations.multi_tex_coord_4i, Procs.multi_tex_coord_4i)
    end

    # Checks if the OpenGL function *glMultiTexCoord4i* is loaded.
    def multi_tex_coord_4i?
      !!@addresses[378]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4iv : ::Proc
      get_proc(379, Translations.multi_tex_coord_4iv, Procs.multi_tex_coord_4iv)
    end

    # Checks if the OpenGL function *glMultiTexCoord4iv* is loaded.
    def multi_tex_coord_4iv?
      !!@addresses[379]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4s : ::Proc
      get_proc(380, Translations.multi_tex_coord_4s, Procs.multi_tex_coord_4s)
    end

    # Checks if the OpenGL function *glMultiTexCoord4s* is loaded.
    def multi_tex_coord_4s?
      !!@addresses[380]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoord4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_4sv : ::Proc
      get_proc(381, Translations.multi_tex_coord_4sv, Procs.multi_tex_coord_4sv)
    end

    # Checks if the OpenGL function *glMultiTexCoord4sv* is loaded.
    def multi_tex_coord_4sv?
      !!@addresses[381]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadTransposeMatrixf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_transpose_matrix_f : ::Proc
      get_proc(382, Translations.load_transpose_matrix_f, Procs.load_transpose_matrix_f)
    end

    # Checks if the OpenGL function *glLoadTransposeMatrixf* is loaded.
    def load_transpose_matrix_f?
      !!@addresses[382]
    end

    # Retrieves a `Proc` for the OpenGL function *glLoadTransposeMatrixd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def load_transpose_matrix_d : ::Proc
      get_proc(383, Translations.load_transpose_matrix_d, Procs.load_transpose_matrix_d)
    end

    # Checks if the OpenGL function *glLoadTransposeMatrixd* is loaded.
    def load_transpose_matrix_d?
      !!@addresses[383]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultTransposeMatrixf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def mult_transpose_matrix_f : ::Proc
      get_proc(384, Translations.mult_transpose_matrix_f, Procs.mult_transpose_matrix_f)
    end

    # Checks if the OpenGL function *glMultTransposeMatrixf* is loaded.
    def mult_transpose_matrix_f?
      !!@addresses[384]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultTransposeMatrixd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def mult_transpose_matrix_d : ::Proc
      get_proc(385, Translations.mult_transpose_matrix_d, Procs.mult_transpose_matrix_d)
    end

    # Checks if the OpenGL function *glMultTransposeMatrixd* is loaded.
    def mult_transpose_matrix_d?
      !!@addresses[385]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func_separate : ::Proc
      get_proc(386, Translations.blend_func_separate, Procs.blend_func_separate)
    end

    # Checks if the OpenGL function *glBlendFuncSeparate* is loaded.
    def blend_func_separate?
      !!@addresses[386]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_draw_arrays : ::Proc
      get_proc(387, Translations.multi_draw_arrays, Procs.multi_draw_arrays)
    end

    # Checks if the OpenGL function *glMultiDrawArrays* is loaded.
    def multi_draw_arrays?
      !!@addresses[387]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiDrawElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_draw_elements : ::Proc
      get_proc(388, Translations.multi_draw_elements, Procs.multi_draw_elements)
    end

    # Checks if the OpenGL function *glMultiDrawElements* is loaded.
    def multi_draw_elements?
      !!@addresses[388]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_f : ::Proc
      get_proc(389, Translations.point_parameter_f, Procs.point_parameter_f)
    end

    # Checks if the OpenGL function *glPointParameterf* is loaded.
    def point_parameter_f?
      !!@addresses[389]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_fv : ::Proc
      get_proc(390, Translations.point_parameter_fv, Procs.point_parameter_fv)
    end

    # Checks if the OpenGL function *glPointParameterfv* is loaded.
    def point_parameter_fv?
      !!@addresses[390]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_i : ::Proc
      get_proc(391, Translations.point_parameter_i, Procs.point_parameter_i)
    end

    # Checks if the OpenGL function *glPointParameteri* is loaded.
    def point_parameter_i?
      !!@addresses[391]
    end

    # Retrieves a `Proc` for the OpenGL function *glPointParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def point_parameter_iv : ::Proc
      get_proc(392, Translations.point_parameter_iv, Procs.point_parameter_iv)
    end

    # Checks if the OpenGL function *glPointParameteriv* is loaded.
    def point_parameter_iv?
      !!@addresses[392]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogCoordf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_coord_f : ::Proc
      get_proc(393, Translations.fog_coord_f, Procs.fog_coord_f)
    end

    # Checks if the OpenGL function *glFogCoordf* is loaded.
    def fog_coord_f?
      !!@addresses[393]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogCoordfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_coord_fv : ::Proc
      get_proc(394, Translations.fog_coord_fv, Procs.fog_coord_fv)
    end

    # Checks if the OpenGL function *glFogCoordfv* is loaded.
    def fog_coord_fv?
      !!@addresses[394]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogCoordd*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_coord_d : ::Proc
      get_proc(395, Translations.fog_coord_d, Procs.fog_coord_d)
    end

    # Checks if the OpenGL function *glFogCoordd* is loaded.
    def fog_coord_d?
      !!@addresses[395]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogCoorddv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_coord_dv : ::Proc
      get_proc(396, Translations.fog_coord_dv, Procs.fog_coord_dv)
    end

    # Checks if the OpenGL function *glFogCoorddv* is loaded.
    def fog_coord_dv?
      !!@addresses[396]
    end

    # Retrieves a `Proc` for the OpenGL function *glFogCoordPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fog_coord_pointer : ::Proc
      get_proc(397, Translations.fog_coord_pointer, Procs.fog_coord_pointer)
    end

    # Checks if the OpenGL function *glFogCoordPointer* is loaded.
    def fog_coord_pointer?
      !!@addresses[397]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3b*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3b : ::Proc
      get_proc(398, Translations.secondary_color_3b, Procs.secondary_color_3b)
    end

    # Checks if the OpenGL function *glSecondaryColor3b* is loaded.
    def secondary_color_3b?
      !!@addresses[398]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3bv : ::Proc
      get_proc(399, Translations.secondary_color_3bv, Procs.secondary_color_3bv)
    end

    # Checks if the OpenGL function *glSecondaryColor3bv* is loaded.
    def secondary_color_3bv?
      !!@addresses[399]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3d : ::Proc
      get_proc(400, Translations.secondary_color_3d, Procs.secondary_color_3d)
    end

    # Checks if the OpenGL function *glSecondaryColor3d* is loaded.
    def secondary_color_3d?
      !!@addresses[400]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3dv : ::Proc
      get_proc(401, Translations.secondary_color_3dv, Procs.secondary_color_3dv)
    end

    # Checks if the OpenGL function *glSecondaryColor3dv* is loaded.
    def secondary_color_3dv?
      !!@addresses[401]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3f : ::Proc
      get_proc(402, Translations.secondary_color_3f, Procs.secondary_color_3f)
    end

    # Checks if the OpenGL function *glSecondaryColor3f* is loaded.
    def secondary_color_3f?
      !!@addresses[402]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3fv : ::Proc
      get_proc(403, Translations.secondary_color_3fv, Procs.secondary_color_3fv)
    end

    # Checks if the OpenGL function *glSecondaryColor3fv* is loaded.
    def secondary_color_3fv?
      !!@addresses[403]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3i : ::Proc
      get_proc(404, Translations.secondary_color_3i, Procs.secondary_color_3i)
    end

    # Checks if the OpenGL function *glSecondaryColor3i* is loaded.
    def secondary_color_3i?
      !!@addresses[404]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3iv : ::Proc
      get_proc(405, Translations.secondary_color_3iv, Procs.secondary_color_3iv)
    end

    # Checks if the OpenGL function *glSecondaryColor3iv* is loaded.
    def secondary_color_3iv?
      !!@addresses[405]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3s : ::Proc
      get_proc(406, Translations.secondary_color_3s, Procs.secondary_color_3s)
    end

    # Checks if the OpenGL function *glSecondaryColor3s* is loaded.
    def secondary_color_3s?
      !!@addresses[406]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3sv : ::Proc
      get_proc(407, Translations.secondary_color_3sv, Procs.secondary_color_3sv)
    end

    # Checks if the OpenGL function *glSecondaryColor3sv* is loaded.
    def secondary_color_3sv?
      !!@addresses[407]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3ub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3ub : ::Proc
      get_proc(408, Translations.secondary_color_3ub, Procs.secondary_color_3ub)
    end

    # Checks if the OpenGL function *glSecondaryColor3ub* is loaded.
    def secondary_color_3ub?
      !!@addresses[408]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3ubv : ::Proc
      get_proc(409, Translations.secondary_color_3ubv, Procs.secondary_color_3ubv)
    end

    # Checks if the OpenGL function *glSecondaryColor3ubv* is loaded.
    def secondary_color_3ubv?
      !!@addresses[409]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3ui : ::Proc
      get_proc(410, Translations.secondary_color_3ui, Procs.secondary_color_3ui)
    end

    # Checks if the OpenGL function *glSecondaryColor3ui* is loaded.
    def secondary_color_3ui?
      !!@addresses[410]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3uiv : ::Proc
      get_proc(411, Translations.secondary_color_3uiv, Procs.secondary_color_3uiv)
    end

    # Checks if the OpenGL function *glSecondaryColor3uiv* is loaded.
    def secondary_color_3uiv?
      !!@addresses[411]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3us*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3us : ::Proc
      get_proc(412, Translations.secondary_color_3us, Procs.secondary_color_3us)
    end

    # Checks if the OpenGL function *glSecondaryColor3us* is loaded.
    def secondary_color_3us?
      !!@addresses[412]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColor3usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_3usv : ::Proc
      get_proc(413, Translations.secondary_color_3usv, Procs.secondary_color_3usv)
    end

    # Checks if the OpenGL function *glSecondaryColor3usv* is loaded.
    def secondary_color_3usv?
      !!@addresses[413]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColorPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_pointer : ::Proc
      get_proc(414, Translations.secondary_color_pointer, Procs.secondary_color_pointer)
    end

    # Checks if the OpenGL function *glSecondaryColorPointer* is loaded.
    def secondary_color_pointer?
      !!@addresses[414]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2d : ::Proc
      get_proc(415, Translations.window_pos_2d, Procs.window_pos_2d)
    end

    # Checks if the OpenGL function *glWindowPos2d* is loaded.
    def window_pos_2d?
      !!@addresses[415]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2dv : ::Proc
      get_proc(416, Translations.window_pos_2dv, Procs.window_pos_2dv)
    end

    # Checks if the OpenGL function *glWindowPos2dv* is loaded.
    def window_pos_2dv?
      !!@addresses[416]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2f : ::Proc
      get_proc(417, Translations.window_pos_2f, Procs.window_pos_2f)
    end

    # Checks if the OpenGL function *glWindowPos2f* is loaded.
    def window_pos_2f?
      !!@addresses[417]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2fv : ::Proc
      get_proc(418, Translations.window_pos_2fv, Procs.window_pos_2fv)
    end

    # Checks if the OpenGL function *glWindowPos2fv* is loaded.
    def window_pos_2fv?
      !!@addresses[418]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2i : ::Proc
      get_proc(419, Translations.window_pos_2i, Procs.window_pos_2i)
    end

    # Checks if the OpenGL function *glWindowPos2i* is loaded.
    def window_pos_2i?
      !!@addresses[419]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2iv : ::Proc
      get_proc(420, Translations.window_pos_2iv, Procs.window_pos_2iv)
    end

    # Checks if the OpenGL function *glWindowPos2iv* is loaded.
    def window_pos_2iv?
      !!@addresses[420]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2s : ::Proc
      get_proc(421, Translations.window_pos_2s, Procs.window_pos_2s)
    end

    # Checks if the OpenGL function *glWindowPos2s* is loaded.
    def window_pos_2s?
      !!@addresses[421]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_2sv : ::Proc
      get_proc(422, Translations.window_pos_2sv, Procs.window_pos_2sv)
    end

    # Checks if the OpenGL function *glWindowPos2sv* is loaded.
    def window_pos_2sv?
      !!@addresses[422]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3d : ::Proc
      get_proc(423, Translations.window_pos_3d, Procs.window_pos_3d)
    end

    # Checks if the OpenGL function *glWindowPos3d* is loaded.
    def window_pos_3d?
      !!@addresses[423]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3dv : ::Proc
      get_proc(424, Translations.window_pos_3dv, Procs.window_pos_3dv)
    end

    # Checks if the OpenGL function *glWindowPos3dv* is loaded.
    def window_pos_3dv?
      !!@addresses[424]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3f : ::Proc
      get_proc(425, Translations.window_pos_3f, Procs.window_pos_3f)
    end

    # Checks if the OpenGL function *glWindowPos3f* is loaded.
    def window_pos_3f?
      !!@addresses[425]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3fv : ::Proc
      get_proc(426, Translations.window_pos_3fv, Procs.window_pos_3fv)
    end

    # Checks if the OpenGL function *glWindowPos3fv* is loaded.
    def window_pos_3fv?
      !!@addresses[426]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3i : ::Proc
      get_proc(427, Translations.window_pos_3i, Procs.window_pos_3i)
    end

    # Checks if the OpenGL function *glWindowPos3i* is loaded.
    def window_pos_3i?
      !!@addresses[427]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3iv : ::Proc
      get_proc(428, Translations.window_pos_3iv, Procs.window_pos_3iv)
    end

    # Checks if the OpenGL function *glWindowPos3iv* is loaded.
    def window_pos_3iv?
      !!@addresses[428]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3s : ::Proc
      get_proc(429, Translations.window_pos_3s, Procs.window_pos_3s)
    end

    # Checks if the OpenGL function *glWindowPos3s* is loaded.
    def window_pos_3s?
      !!@addresses[429]
    end

    # Retrieves a `Proc` for the OpenGL function *glWindowPos3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def window_pos_3sv : ::Proc
      get_proc(430, Translations.window_pos_3sv, Procs.window_pos_3sv)
    end

    # Checks if the OpenGL function *glWindowPos3sv* is loaded.
    def window_pos_3sv?
      !!@addresses[430]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_color : ::Proc
      get_proc(431, Translations.blend_color, Procs.blend_color)
    end

    # Checks if the OpenGL function *glBlendColor* is loaded.
    def blend_color?
      !!@addresses[431]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation : ::Proc
      get_proc(432, Translations.blend_equation, Procs.blend_equation)
    end

    # Checks if the OpenGL function *glBlendEquation* is loaded.
    def blend_equation?
      !!@addresses[432]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenQueries*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_queries : ::Proc
      get_proc(433, Translations.gen_queries, Procs.gen_queries)
    end

    # Checks if the OpenGL function *glGenQueries* is loaded.
    def gen_queries?
      !!@addresses[433]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteQueries*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_queries : ::Proc
      get_proc(434, Translations.delete_queries, Procs.delete_queries)
    end

    # Checks if the OpenGL function *glDeleteQueries* is loaded.
    def delete_queries?
      !!@addresses[434]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsQuery*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_query : ::Proc
      get_proc(435, Translations.is_query, Procs.is_query)
    end

    # Checks if the OpenGL function *glIsQuery* is loaded.
    def is_query?
      !!@addresses[435]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginQuery*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_query : ::Proc
      get_proc(436, Translations.begin_query, Procs.begin_query)
    end

    # Checks if the OpenGL function *glBeginQuery* is loaded.
    def begin_query?
      !!@addresses[436]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndQuery*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_query : ::Proc
      get_proc(437, Translations.end_query, Procs.end_query)
    end

    # Checks if the OpenGL function *glEndQuery* is loaded.
    def end_query?
      !!@addresses[437]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_iv : ::Proc
      get_proc(438, Translations.get_query_iv, Procs.get_query_iv)
    end

    # Checks if the OpenGL function *glGetQueryiv* is loaded.
    def get_query_iv?
      !!@addresses[438]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjectiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_iv : ::Proc
      get_proc(439, Translations.get_query_object_iv, Procs.get_query_object_iv)
    end

    # Checks if the OpenGL function *glGetQueryObjectiv* is loaded.
    def get_query_object_iv?
      !!@addresses[439]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjectuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_uiv : ::Proc
      get_proc(440, Translations.get_query_object_uiv, Procs.get_query_object_uiv)
    end

    # Checks if the OpenGL function *glGetQueryObjectuiv* is loaded.
    def get_query_object_uiv?
      !!@addresses[440]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer : ::Proc
      get_proc(441, Translations.bind_buffer, Procs.bind_buffer)
    end

    # Checks if the OpenGL function *glBindBuffer* is loaded.
    def bind_buffer?
      !!@addresses[441]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_buffers : ::Proc
      get_proc(442, Translations.delete_buffers, Procs.delete_buffers)
    end

    # Checks if the OpenGL function *glDeleteBuffers* is loaded.
    def delete_buffers?
      !!@addresses[442]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_buffers : ::Proc
      get_proc(443, Translations.gen_buffers, Procs.gen_buffers)
    end

    # Checks if the OpenGL function *glGenBuffers* is loaded.
    def gen_buffers?
      !!@addresses[443]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_buffer : ::Proc
      get_proc(444, Translations.is_buffer, Procs.is_buffer)
    end

    # Checks if the OpenGL function *glIsBuffer* is loaded.
    def is_buffer?
      !!@addresses[444]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_data : ::Proc
      get_proc(445, Translations.buffer_data, Procs.buffer_data)
    end

    # Checks if the OpenGL function *glBufferData* is loaded.
    def buffer_data?
      !!@addresses[445]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_sub_data : ::Proc
      get_proc(446, Translations.buffer_sub_data, Procs.buffer_sub_data)
    end

    # Checks if the OpenGL function *glBufferSubData* is loaded.
    def buffer_sub_data?
      !!@addresses[446]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_sub_data : ::Proc
      get_proc(447, Translations.get_buffer_sub_data, Procs.get_buffer_sub_data)
    end

    # Checks if the OpenGL function *glGetBufferSubData* is loaded.
    def get_buffer_sub_data?
      !!@addresses[447]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_buffer : ::Proc
      get_proc(448, Translations.map_buffer, Procs.map_buffer)
    end

    # Checks if the OpenGL function *glMapBuffer* is loaded.
    def map_buffer?
      !!@addresses[448]
    end

    # Retrieves a `Proc` for the OpenGL function *glUnmapBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def unmap_buffer : ::Proc
      get_proc(449, Translations.unmap_buffer, Procs.unmap_buffer)
    end

    # Checks if the OpenGL function *glUnmapBuffer* is loaded.
    def unmap_buffer?
      !!@addresses[449]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_iv : ::Proc
      get_proc(450, Translations.get_buffer_parameter_iv, Procs.get_buffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetBufferParameteriv* is loaded.
    def get_buffer_parameter_iv?
      !!@addresses[450]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_pointer_v : ::Proc
      get_proc(451, Translations.get_buffer_pointer_v, Procs.get_buffer_pointer_v)
    end

    # Checks if the OpenGL function *glGetBufferPointerv* is loaded.
    def get_buffer_pointer_v?
      !!@addresses[451]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquationSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation_separate : ::Proc
      get_proc(452, Translations.blend_equation_separate, Procs.blend_equation_separate)
    end

    # Checks if the OpenGL function *glBlendEquationSeparate* is loaded.
    def blend_equation_separate?
      !!@addresses[452]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_buffers : ::Proc
      get_proc(453, Translations.draw_buffers, Procs.draw_buffers)
    end

    # Checks if the OpenGL function *glDrawBuffers* is loaded.
    def draw_buffers?
      !!@addresses[453]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOpSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op_separate : ::Proc
      get_proc(454, Translations.stencil_op_separate, Procs.stencil_op_separate)
    end

    # Checks if the OpenGL function *glStencilOpSeparate* is loaded.
    def stencil_op_separate?
      !!@addresses[454]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func_separate : ::Proc
      get_proc(455, Translations.stencil_func_separate, Procs.stencil_func_separate)
    end

    # Checks if the OpenGL function *glStencilFuncSeparate* is loaded.
    def stencil_func_separate?
      !!@addresses[455]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMaskSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask_separate : ::Proc
      get_proc(456, Translations.stencil_mask_separate, Procs.stencil_mask_separate)
    end

    # Checks if the OpenGL function *glStencilMaskSeparate* is loaded.
    def stencil_mask_separate?
      !!@addresses[456]
    end

    # Retrieves a `Proc` for the OpenGL function *glAttachShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def attach_shader : ::Proc
      get_proc(457, Translations.attach_shader, Procs.attach_shader)
    end

    # Checks if the OpenGL function *glAttachShader* is loaded.
    def attach_shader?
      !!@addresses[457]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_attrib_location : ::Proc
      get_proc(458, Translations.bind_attrib_location, Procs.bind_attrib_location)
    end

    # Checks if the OpenGL function *glBindAttribLocation* is loaded.
    def bind_attrib_location?
      !!@addresses[458]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompileShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compile_shader : ::Proc
      get_proc(459, Translations.compile_shader, Procs.compile_shader)
    end

    # Checks if the OpenGL function *glCompileShader* is loaded.
    def compile_shader?
      !!@addresses[459]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_program : ::Proc
      get_proc(460, Translations.create_program, Procs.create_program)
    end

    # Checks if the OpenGL function *glCreateProgram* is loaded.
    def create_program?
      !!@addresses[460]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_shader : ::Proc
      get_proc(461, Translations.create_shader, Procs.create_shader)
    end

    # Checks if the OpenGL function *glCreateShader* is loaded.
    def create_shader?
      !!@addresses[461]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_program : ::Proc
      get_proc(462, Translations.delete_program, Procs.delete_program)
    end

    # Checks if the OpenGL function *glDeleteProgram* is loaded.
    def delete_program?
      !!@addresses[462]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_shader : ::Proc
      get_proc(463, Translations.delete_shader, Procs.delete_shader)
    end

    # Checks if the OpenGL function *glDeleteShader* is loaded.
    def delete_shader?
      !!@addresses[463]
    end

    # Retrieves a `Proc` for the OpenGL function *glDetachShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def detach_shader : ::Proc
      get_proc(464, Translations.detach_shader, Procs.detach_shader)
    end

    # Checks if the OpenGL function *glDetachShader* is loaded.
    def detach_shader?
      !!@addresses[464]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_vertex_attrib_array : ::Proc
      get_proc(465, Translations.disable_vertex_attrib_array, Procs.disable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glDisableVertexAttribArray* is loaded.
    def disable_vertex_attrib_array?
      !!@addresses[465]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_vertex_attrib_array : ::Proc
      get_proc(466, Translations.enable_vertex_attrib_array, Procs.enable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glEnableVertexAttribArray* is loaded.
    def enable_vertex_attrib_array?
      !!@addresses[466]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_attrib : ::Proc
      get_proc(467, Translations.get_active_attrib, Procs.get_active_attrib)
    end

    # Checks if the OpenGL function *glGetActiveAttrib* is loaded.
    def get_active_attrib?
      !!@addresses[467]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniform*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform : ::Proc
      get_proc(468, Translations.get_active_uniform, Procs.get_active_uniform)
    end

    # Checks if the OpenGL function *glGetActiveUniform* is loaded.
    def get_active_uniform?
      !!@addresses[468]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttachedShaders*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attached_shaders : ::Proc
      get_proc(469, Translations.get_attached_shaders, Procs.get_attached_shaders)
    end

    # Checks if the OpenGL function *glGetAttachedShaders* is loaded.
    def get_attached_shaders?
      !!@addresses[469]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attrib_location : ::Proc
      get_proc(470, Translations.get_attrib_location, Procs.get_attrib_location)
    end

    # Checks if the OpenGL function *glGetAttribLocation* is loaded.
    def get_attrib_location?
      !!@addresses[470]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_iv : ::Proc
      get_proc(471, Translations.get_program_iv, Procs.get_program_iv)
    end

    # Checks if the OpenGL function *glGetProgramiv* is loaded.
    def get_program_iv?
      !!@addresses[471]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_info_log : ::Proc
      get_proc(472, Translations.get_program_info_log, Procs.get_program_info_log)
    end

    # Checks if the OpenGL function *glGetProgramInfoLog* is loaded.
    def get_program_info_log?
      !!@addresses[472]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_iv : ::Proc
      get_proc(473, Translations.get_shader_iv, Procs.get_shader_iv)
    end

    # Checks if the OpenGL function *glGetShaderiv* is loaded.
    def get_shader_iv?
      !!@addresses[473]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_info_log : ::Proc
      get_proc(474, Translations.get_shader_info_log, Procs.get_shader_info_log)
    end

    # Checks if the OpenGL function *glGetShaderInfoLog* is loaded.
    def get_shader_info_log?
      !!@addresses[474]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderSource*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_source : ::Proc
      get_proc(475, Translations.get_shader_source, Procs.get_shader_source)
    end

    # Checks if the OpenGL function *glGetShaderSource* is loaded.
    def get_shader_source?
      !!@addresses[475]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_location : ::Proc
      get_proc(476, Translations.get_uniform_location, Procs.get_uniform_location)
    end

    # Checks if the OpenGL function *glGetUniformLocation* is loaded.
    def get_uniform_location?
      !!@addresses[476]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_fv : ::Proc
      get_proc(477, Translations.get_uniform_fv, Procs.get_uniform_fv)
    end

    # Checks if the OpenGL function *glGetUniformfv* is loaded.
    def get_uniform_fv?
      !!@addresses[477]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_iv : ::Proc
      get_proc(478, Translations.get_uniform_iv, Procs.get_uniform_iv)
    end

    # Checks if the OpenGL function *glGetUniformiv* is loaded.
    def get_uniform_iv?
      !!@addresses[478]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_dv : ::Proc
      get_proc(479, Translations.get_vertex_attrib_dv, Procs.get_vertex_attrib_dv)
    end

    # Checks if the OpenGL function *glGetVertexAttribdv* is loaded.
    def get_vertex_attrib_dv?
      !!@addresses[479]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_fv : ::Proc
      get_proc(480, Translations.get_vertex_attrib_fv, Procs.get_vertex_attrib_fv)
    end

    # Checks if the OpenGL function *glGetVertexAttribfv* is loaded.
    def get_vertex_attrib_fv?
      !!@addresses[480]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_iv : ::Proc
      get_proc(481, Translations.get_vertex_attrib_iv, Procs.get_vertex_attrib_iv)
    end

    # Checks if the OpenGL function *glGetVertexAttribiv* is loaded.
    def get_vertex_attrib_iv?
      !!@addresses[481]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_pointer_v : ::Proc
      get_proc(482, Translations.get_vertex_attrib_pointer_v, Procs.get_vertex_attrib_pointer_v)
    end

    # Checks if the OpenGL function *glGetVertexAttribPointerv* is loaded.
    def get_vertex_attrib_pointer_v?
      !!@addresses[482]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_program : ::Proc
      get_proc(483, Translations.is_program, Procs.is_program)
    end

    # Checks if the OpenGL function *glIsProgram* is loaded.
    def is_program?
      !!@addresses[483]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_shader : ::Proc
      get_proc(484, Translations.is_shader, Procs.is_shader)
    end

    # Checks if the OpenGL function *glIsShader* is loaded.
    def is_shader?
      !!@addresses[484]
    end

    # Retrieves a `Proc` for the OpenGL function *glLinkProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def link_program : ::Proc
      get_proc(485, Translations.link_program, Procs.link_program)
    end

    # Checks if the OpenGL function *glLinkProgram* is loaded.
    def link_program?
      !!@addresses[485]
    end

    # Retrieves a `Proc` for the OpenGL function *glShaderSource*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shader_source : ::Proc
      get_proc(486, Translations.shader_source, Procs.shader_source)
    end

    # Checks if the OpenGL function *glShaderSource* is loaded.
    def shader_source?
      !!@addresses[486]
    end

    # Retrieves a `Proc` for the OpenGL function *glUseProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def use_program : ::Proc
      get_proc(487, Translations.use_program, Procs.use_program)
    end

    # Checks if the OpenGL function *glUseProgram* is loaded.
    def use_program?
      !!@addresses[487]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1f : ::Proc
      get_proc(488, Translations.uniform_1f, Procs.uniform_1f)
    end

    # Checks if the OpenGL function *glUniform1f* is loaded.
    def uniform_1f?
      !!@addresses[488]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2f : ::Proc
      get_proc(489, Translations.uniform_2f, Procs.uniform_2f)
    end

    # Checks if the OpenGL function *glUniform2f* is loaded.
    def uniform_2f?
      !!@addresses[489]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3f : ::Proc
      get_proc(490, Translations.uniform_3f, Procs.uniform_3f)
    end

    # Checks if the OpenGL function *glUniform3f* is loaded.
    def uniform_3f?
      !!@addresses[490]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4f : ::Proc
      get_proc(491, Translations.uniform_4f, Procs.uniform_4f)
    end

    # Checks if the OpenGL function *glUniform4f* is loaded.
    def uniform_4f?
      !!@addresses[491]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1i : ::Proc
      get_proc(492, Translations.uniform_1i, Procs.uniform_1i)
    end

    # Checks if the OpenGL function *glUniform1i* is loaded.
    def uniform_1i?
      !!@addresses[492]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2i : ::Proc
      get_proc(493, Translations.uniform_2i, Procs.uniform_2i)
    end

    # Checks if the OpenGL function *glUniform2i* is loaded.
    def uniform_2i?
      !!@addresses[493]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3i : ::Proc
      get_proc(494, Translations.uniform_3i, Procs.uniform_3i)
    end

    # Checks if the OpenGL function *glUniform3i* is loaded.
    def uniform_3i?
      !!@addresses[494]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4i : ::Proc
      get_proc(495, Translations.uniform_4i, Procs.uniform_4i)
    end

    # Checks if the OpenGL function *glUniform4i* is loaded.
    def uniform_4i?
      !!@addresses[495]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1fv : ::Proc
      get_proc(496, Translations.uniform_1fv, Procs.uniform_1fv)
    end

    # Checks if the OpenGL function *glUniform1fv* is loaded.
    def uniform_1fv?
      !!@addresses[496]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2fv : ::Proc
      get_proc(497, Translations.uniform_2fv, Procs.uniform_2fv)
    end

    # Checks if the OpenGL function *glUniform2fv* is loaded.
    def uniform_2fv?
      !!@addresses[497]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3fv : ::Proc
      get_proc(498, Translations.uniform_3fv, Procs.uniform_3fv)
    end

    # Checks if the OpenGL function *glUniform3fv* is loaded.
    def uniform_3fv?
      !!@addresses[498]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4fv : ::Proc
      get_proc(499, Translations.uniform_4fv, Procs.uniform_4fv)
    end

    # Checks if the OpenGL function *glUniform4fv* is loaded.
    def uniform_4fv?
      !!@addresses[499]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1iv : ::Proc
      get_proc(500, Translations.uniform_1iv, Procs.uniform_1iv)
    end

    # Checks if the OpenGL function *glUniform1iv* is loaded.
    def uniform_1iv?
      !!@addresses[500]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2iv : ::Proc
      get_proc(501, Translations.uniform_2iv, Procs.uniform_2iv)
    end

    # Checks if the OpenGL function *glUniform2iv* is loaded.
    def uniform_2iv?
      !!@addresses[501]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3iv : ::Proc
      get_proc(502, Translations.uniform_3iv, Procs.uniform_3iv)
    end

    # Checks if the OpenGL function *glUniform3iv* is loaded.
    def uniform_3iv?
      !!@addresses[502]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4iv : ::Proc
      get_proc(503, Translations.uniform_4iv, Procs.uniform_4iv)
    end

    # Checks if the OpenGL function *glUniform4iv* is loaded.
    def uniform_4iv?
      !!@addresses[503]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2_fv : ::Proc
      get_proc(504, Translations.uniform_matrix2_fv, Procs.uniform_matrix2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2fv* is loaded.
    def uniform_matrix2_fv?
      !!@addresses[504]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3_fv : ::Proc
      get_proc(505, Translations.uniform_matrix3_fv, Procs.uniform_matrix3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3fv* is loaded.
    def uniform_matrix3_fv?
      !!@addresses[505]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4_fv : ::Proc
      get_proc(506, Translations.uniform_matrix4_fv, Procs.uniform_matrix4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4fv* is loaded.
    def uniform_matrix4_fv?
      !!@addresses[506]
    end

    # Retrieves a `Proc` for the OpenGL function *glValidateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def validate_program : ::Proc
      get_proc(507, Translations.validate_program, Procs.validate_program)
    end

    # Checks if the OpenGL function *glValidateProgram* is loaded.
    def validate_program?
      !!@addresses[507]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1d : ::Proc
      get_proc(508, Translations.vertex_attrib_1d, Procs.vertex_attrib_1d)
    end

    # Checks if the OpenGL function *glVertexAttrib1d* is loaded.
    def vertex_attrib_1d?
      !!@addresses[508]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1dv : ::Proc
      get_proc(509, Translations.vertex_attrib_1dv, Procs.vertex_attrib_1dv)
    end

    # Checks if the OpenGL function *glVertexAttrib1dv* is loaded.
    def vertex_attrib_1dv?
      !!@addresses[509]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1f : ::Proc
      get_proc(510, Translations.vertex_attrib_1f, Procs.vertex_attrib_1f)
    end

    # Checks if the OpenGL function *glVertexAttrib1f* is loaded.
    def vertex_attrib_1f?
      !!@addresses[510]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1fv : ::Proc
      get_proc(511, Translations.vertex_attrib_1fv, Procs.vertex_attrib_1fv)
    end

    # Checks if the OpenGL function *glVertexAttrib1fv* is loaded.
    def vertex_attrib_1fv?
      !!@addresses[511]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1s : ::Proc
      get_proc(512, Translations.vertex_attrib_1s, Procs.vertex_attrib_1s)
    end

    # Checks if the OpenGL function *glVertexAttrib1s* is loaded.
    def vertex_attrib_1s?
      !!@addresses[512]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1sv : ::Proc
      get_proc(513, Translations.vertex_attrib_1sv, Procs.vertex_attrib_1sv)
    end

    # Checks if the OpenGL function *glVertexAttrib1sv* is loaded.
    def vertex_attrib_1sv?
      !!@addresses[513]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2d : ::Proc
      get_proc(514, Translations.vertex_attrib_2d, Procs.vertex_attrib_2d)
    end

    # Checks if the OpenGL function *glVertexAttrib2d* is loaded.
    def vertex_attrib_2d?
      !!@addresses[514]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2dv : ::Proc
      get_proc(515, Translations.vertex_attrib_2dv, Procs.vertex_attrib_2dv)
    end

    # Checks if the OpenGL function *glVertexAttrib2dv* is loaded.
    def vertex_attrib_2dv?
      !!@addresses[515]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2f : ::Proc
      get_proc(516, Translations.vertex_attrib_2f, Procs.vertex_attrib_2f)
    end

    # Checks if the OpenGL function *glVertexAttrib2f* is loaded.
    def vertex_attrib_2f?
      !!@addresses[516]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2fv : ::Proc
      get_proc(517, Translations.vertex_attrib_2fv, Procs.vertex_attrib_2fv)
    end

    # Checks if the OpenGL function *glVertexAttrib2fv* is loaded.
    def vertex_attrib_2fv?
      !!@addresses[517]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2s : ::Proc
      get_proc(518, Translations.vertex_attrib_2s, Procs.vertex_attrib_2s)
    end

    # Checks if the OpenGL function *glVertexAttrib2s* is loaded.
    def vertex_attrib_2s?
      !!@addresses[518]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2sv : ::Proc
      get_proc(519, Translations.vertex_attrib_2sv, Procs.vertex_attrib_2sv)
    end

    # Checks if the OpenGL function *glVertexAttrib2sv* is loaded.
    def vertex_attrib_2sv?
      !!@addresses[519]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3d : ::Proc
      get_proc(520, Translations.vertex_attrib_3d, Procs.vertex_attrib_3d)
    end

    # Checks if the OpenGL function *glVertexAttrib3d* is loaded.
    def vertex_attrib_3d?
      !!@addresses[520]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3dv : ::Proc
      get_proc(521, Translations.vertex_attrib_3dv, Procs.vertex_attrib_3dv)
    end

    # Checks if the OpenGL function *glVertexAttrib3dv* is loaded.
    def vertex_attrib_3dv?
      !!@addresses[521]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3f : ::Proc
      get_proc(522, Translations.vertex_attrib_3f, Procs.vertex_attrib_3f)
    end

    # Checks if the OpenGL function *glVertexAttrib3f* is loaded.
    def vertex_attrib_3f?
      !!@addresses[522]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3fv : ::Proc
      get_proc(523, Translations.vertex_attrib_3fv, Procs.vertex_attrib_3fv)
    end

    # Checks if the OpenGL function *glVertexAttrib3fv* is loaded.
    def vertex_attrib_3fv?
      !!@addresses[523]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3s : ::Proc
      get_proc(524, Translations.vertex_attrib_3s, Procs.vertex_attrib_3s)
    end

    # Checks if the OpenGL function *glVertexAttrib3s* is loaded.
    def vertex_attrib_3s?
      !!@addresses[524]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3sv : ::Proc
      get_proc(525, Translations.vertex_attrib_3sv, Procs.vertex_attrib_3sv)
    end

    # Checks if the OpenGL function *glVertexAttrib3sv* is loaded.
    def vertex_attrib_3sv?
      !!@addresses[525]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nbv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nbv : ::Proc
      get_proc(526, Translations.vertex_attrib_4nbv, Procs.vertex_attrib_4nbv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nbv* is loaded.
    def vertex_attrib_4nbv?
      !!@addresses[526]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Niv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4niv : ::Proc
      get_proc(527, Translations.vertex_attrib_4niv, Procs.vertex_attrib_4niv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Niv* is loaded.
    def vertex_attrib_4niv?
      !!@addresses[527]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nsv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nsv : ::Proc
      get_proc(528, Translations.vertex_attrib_4nsv, Procs.vertex_attrib_4nsv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nsv* is loaded.
    def vertex_attrib_4nsv?
      !!@addresses[528]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nub*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nub : ::Proc
      get_proc(529, Translations.vertex_attrib_4nub, Procs.vertex_attrib_4nub)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nub* is loaded.
    def vertex_attrib_4nub?
      !!@addresses[529]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nubv : ::Proc
      get_proc(530, Translations.vertex_attrib_4nubv, Procs.vertex_attrib_4nubv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nubv* is loaded.
    def vertex_attrib_4nubv?
      !!@addresses[530]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nuiv : ::Proc
      get_proc(531, Translations.vertex_attrib_4nuiv, Procs.vertex_attrib_4nuiv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nuiv* is loaded.
    def vertex_attrib_4nuiv?
      !!@addresses[531]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4Nusv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4nusv : ::Proc
      get_proc(532, Translations.vertex_attrib_4nusv, Procs.vertex_attrib_4nusv)
    end

    # Checks if the OpenGL function *glVertexAttrib4Nusv* is loaded.
    def vertex_attrib_4nusv?
      !!@addresses[532]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4bv : ::Proc
      get_proc(533, Translations.vertex_attrib_4bv, Procs.vertex_attrib_4bv)
    end

    # Checks if the OpenGL function *glVertexAttrib4bv* is loaded.
    def vertex_attrib_4bv?
      !!@addresses[533]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4d : ::Proc
      get_proc(534, Translations.vertex_attrib_4d, Procs.vertex_attrib_4d)
    end

    # Checks if the OpenGL function *glVertexAttrib4d* is loaded.
    def vertex_attrib_4d?
      !!@addresses[534]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4dv : ::Proc
      get_proc(535, Translations.vertex_attrib_4dv, Procs.vertex_attrib_4dv)
    end

    # Checks if the OpenGL function *glVertexAttrib4dv* is loaded.
    def vertex_attrib_4dv?
      !!@addresses[535]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4f : ::Proc
      get_proc(536, Translations.vertex_attrib_4f, Procs.vertex_attrib_4f)
    end

    # Checks if the OpenGL function *glVertexAttrib4f* is loaded.
    def vertex_attrib_4f?
      !!@addresses[536]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4fv : ::Proc
      get_proc(537, Translations.vertex_attrib_4fv, Procs.vertex_attrib_4fv)
    end

    # Checks if the OpenGL function *glVertexAttrib4fv* is loaded.
    def vertex_attrib_4fv?
      !!@addresses[537]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4iv : ::Proc
      get_proc(538, Translations.vertex_attrib_4iv, Procs.vertex_attrib_4iv)
    end

    # Checks if the OpenGL function *glVertexAttrib4iv* is loaded.
    def vertex_attrib_4iv?
      !!@addresses[538]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4s*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4s : ::Proc
      get_proc(539, Translations.vertex_attrib_4s, Procs.vertex_attrib_4s)
    end

    # Checks if the OpenGL function *glVertexAttrib4s* is loaded.
    def vertex_attrib_4s?
      !!@addresses[539]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4sv : ::Proc
      get_proc(540, Translations.vertex_attrib_4sv, Procs.vertex_attrib_4sv)
    end

    # Checks if the OpenGL function *glVertexAttrib4sv* is loaded.
    def vertex_attrib_4sv?
      !!@addresses[540]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4ubv : ::Proc
      get_proc(541, Translations.vertex_attrib_4ubv, Procs.vertex_attrib_4ubv)
    end

    # Checks if the OpenGL function *glVertexAttrib4ubv* is loaded.
    def vertex_attrib_4ubv?
      !!@addresses[541]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4uiv : ::Proc
      get_proc(542, Translations.vertex_attrib_4uiv, Procs.vertex_attrib_4uiv)
    end

    # Checks if the OpenGL function *glVertexAttrib4uiv* is loaded.
    def vertex_attrib_4uiv?
      !!@addresses[542]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4usv : ::Proc
      get_proc(543, Translations.vertex_attrib_4usv, Procs.vertex_attrib_4usv)
    end

    # Checks if the OpenGL function *glVertexAttrib4usv* is loaded.
    def vertex_attrib_4usv?
      !!@addresses[543]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_pointer : ::Proc
      get_proc(544, Translations.vertex_attrib_pointer, Procs.vertex_attrib_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribPointer* is loaded.
    def vertex_attrib_pointer?
      !!@addresses[544]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2x3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2x3_fv : ::Proc
      get_proc(545, Translations.uniform_matrix2x3_fv, Procs.uniform_matrix2x3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2x3fv* is loaded.
    def uniform_matrix2x3_fv?
      !!@addresses[545]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3x2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3x2_fv : ::Proc
      get_proc(546, Translations.uniform_matrix3x2_fv, Procs.uniform_matrix3x2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3x2fv* is loaded.
    def uniform_matrix3x2_fv?
      !!@addresses[546]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2x4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2x4_fv : ::Proc
      get_proc(547, Translations.uniform_matrix2x4_fv, Procs.uniform_matrix2x4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2x4fv* is loaded.
    def uniform_matrix2x4_fv?
      !!@addresses[547]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4x2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4x2_fv : ::Proc
      get_proc(548, Translations.uniform_matrix4x2_fv, Procs.uniform_matrix4x2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4x2fv* is loaded.
    def uniform_matrix4x2_fv?
      !!@addresses[548]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3x4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3x4_fv : ::Proc
      get_proc(549, Translations.uniform_matrix3x4_fv, Procs.uniform_matrix3x4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3x4fv* is loaded.
    def uniform_matrix3x4_fv?
      !!@addresses[549]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4x3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4x3_fv : ::Proc
      get_proc(550, Translations.uniform_matrix4x3_fv, Procs.uniform_matrix4x3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4x3fv* is loaded.
    def uniform_matrix4x3_fv?
      !!@addresses[550]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorMaski*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_mask_i : ::Proc
      get_proc(551, Translations.color_mask_i, Procs.color_mask_i)
    end

    # Checks if the OpenGL function *glColorMaski* is loaded.
    def color_mask_i?
      !!@addresses[551]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBooleani_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_boolean_i_v : ::Proc
      get_proc(552, Translations.get_boolean_i_v, Procs.get_boolean_i_v)
    end

    # Checks if the OpenGL function *glGetBooleani_v* is loaded.
    def get_boolean_i_v?
      !!@addresses[552]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetIntegeri_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_i_v : ::Proc
      get_proc(553, Translations.get_integer_i_v, Procs.get_integer_i_v)
    end

    # Checks if the OpenGL function *glGetIntegeri_v* is loaded.
    def get_integer_i_v?
      !!@addresses[553]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnablei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_i : ::Proc
      get_proc(554, Translations.enable_i, Procs.enable_i)
    end

    # Checks if the OpenGL function *glEnablei* is loaded.
    def enable_i?
      !!@addresses[554]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisablei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_i : ::Proc
      get_proc(555, Translations.disable_i, Procs.disable_i)
    end

    # Checks if the OpenGL function *glDisablei* is loaded.
    def disable_i?
      !!@addresses[555]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsEnabledi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_enabled_i : ::Proc
      get_proc(556, Translations.is_enabled_i, Procs.is_enabled_i)
    end

    # Checks if the OpenGL function *glIsEnabledi* is loaded.
    def is_enabled_i?
      !!@addresses[556]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_transform_feedback : ::Proc
      get_proc(557, Translations.begin_transform_feedback, Procs.begin_transform_feedback)
    end

    # Checks if the OpenGL function *glBeginTransformFeedback* is loaded.
    def begin_transform_feedback?
      !!@addresses[557]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_transform_feedback : ::Proc
      get_proc(558, Translations.end_transform_feedback, Procs.end_transform_feedback)
    end

    # Checks if the OpenGL function *glEndTransformFeedback* is loaded.
    def end_transform_feedback?
      !!@addresses[558]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBufferRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer_range : ::Proc
      get_proc(559, Translations.bind_buffer_range, Procs.bind_buffer_range)
    end

    # Checks if the OpenGL function *glBindBufferRange* is loaded.
    def bind_buffer_range?
      !!@addresses[559]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBufferBase*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer_base : ::Proc
      get_proc(560, Translations.bind_buffer_base, Procs.bind_buffer_base)
    end

    # Checks if the OpenGL function *glBindBufferBase* is loaded.
    def bind_buffer_base?
      !!@addresses[560]
    end

    # Retrieves a `Proc` for the OpenGL function *glTransformFeedbackVaryings*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def transform_feedback_varyings : ::Proc
      get_proc(561, Translations.transform_feedback_varyings, Procs.transform_feedback_varyings)
    end

    # Checks if the OpenGL function *glTransformFeedbackVaryings* is loaded.
    def transform_feedback_varyings?
      !!@addresses[561]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTransformFeedbackVarying*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_transform_feedback_varying : ::Proc
      get_proc(562, Translations.get_transform_feedback_varying, Procs.get_transform_feedback_varying)
    end

    # Checks if the OpenGL function *glGetTransformFeedbackVarying* is loaded.
    def get_transform_feedback_varying?
      !!@addresses[562]
    end

    # Retrieves a `Proc` for the OpenGL function *glClampColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clamp_color : ::Proc
      get_proc(563, Translations.clamp_color, Procs.clamp_color)
    end

    # Checks if the OpenGL function *glClampColor* is loaded.
    def clamp_color?
      !!@addresses[563]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginConditionalRender*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_conditional_render : ::Proc
      get_proc(564, Translations.begin_conditional_render, Procs.begin_conditional_render)
    end

    # Checks if the OpenGL function *glBeginConditionalRender* is loaded.
    def begin_conditional_render?
      !!@addresses[564]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndConditionalRender*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_conditional_render : ::Proc
      get_proc(565, Translations.end_conditional_render, Procs.end_conditional_render)
    end

    # Checks if the OpenGL function *glEndConditionalRender* is loaded.
    def end_conditional_render?
      !!@addresses[565]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribIPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_pointer : ::Proc
      get_proc(566, Translations.vertex_attrib_i_pointer, Procs.vertex_attrib_i_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribIPointer* is loaded.
    def vertex_attrib_i_pointer?
      !!@addresses[566]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_i_iv : ::Proc
      get_proc(567, Translations.get_vertex_attrib_i_iv, Procs.get_vertex_attrib_i_iv)
    end

    # Checks if the OpenGL function *glGetVertexAttribIiv* is loaded.
    def get_vertex_attrib_i_iv?
      !!@addresses[567]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_i_uiv : ::Proc
      get_proc(568, Translations.get_vertex_attrib_i_uiv, Procs.get_vertex_attrib_i_uiv)
    end

    # Checks if the OpenGL function *glGetVertexAttribIuiv* is loaded.
    def get_vertex_attrib_i_uiv?
      !!@addresses[568]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1i : ::Proc
      get_proc(569, Translations.vertex_attrib_i_1i, Procs.vertex_attrib_i_1i)
    end

    # Checks if the OpenGL function *glVertexAttribI1i* is loaded.
    def vertex_attrib_i_1i?
      !!@addresses[569]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2i : ::Proc
      get_proc(570, Translations.vertex_attrib_i_2i, Procs.vertex_attrib_i_2i)
    end

    # Checks if the OpenGL function *glVertexAttribI2i* is loaded.
    def vertex_attrib_i_2i?
      !!@addresses[570]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3i : ::Proc
      get_proc(571, Translations.vertex_attrib_i_3i, Procs.vertex_attrib_i_3i)
    end

    # Checks if the OpenGL function *glVertexAttribI3i* is loaded.
    def vertex_attrib_i_3i?
      !!@addresses[571]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4i : ::Proc
      get_proc(572, Translations.vertex_attrib_i_4i, Procs.vertex_attrib_i_4i)
    end

    # Checks if the OpenGL function *glVertexAttribI4i* is loaded.
    def vertex_attrib_i_4i?
      !!@addresses[572]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1ui : ::Proc
      get_proc(573, Translations.vertex_attrib_i_1ui, Procs.vertex_attrib_i_1ui)
    end

    # Checks if the OpenGL function *glVertexAttribI1ui* is loaded.
    def vertex_attrib_i_1ui?
      !!@addresses[573]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2ui : ::Proc
      get_proc(574, Translations.vertex_attrib_i_2ui, Procs.vertex_attrib_i_2ui)
    end

    # Checks if the OpenGL function *glVertexAttribI2ui* is loaded.
    def vertex_attrib_i_2ui?
      !!@addresses[574]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3ui : ::Proc
      get_proc(575, Translations.vertex_attrib_i_3ui, Procs.vertex_attrib_i_3ui)
    end

    # Checks if the OpenGL function *glVertexAttribI3ui* is loaded.
    def vertex_attrib_i_3ui?
      !!@addresses[575]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4ui : ::Proc
      get_proc(576, Translations.vertex_attrib_i_4ui, Procs.vertex_attrib_i_4ui)
    end

    # Checks if the OpenGL function *glVertexAttribI4ui* is loaded.
    def vertex_attrib_i_4ui?
      !!@addresses[576]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1iv : ::Proc
      get_proc(577, Translations.vertex_attrib_i_1iv, Procs.vertex_attrib_i_1iv)
    end

    # Checks if the OpenGL function *glVertexAttribI1iv* is loaded.
    def vertex_attrib_i_1iv?
      !!@addresses[577]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2iv : ::Proc
      get_proc(578, Translations.vertex_attrib_i_2iv, Procs.vertex_attrib_i_2iv)
    end

    # Checks if the OpenGL function *glVertexAttribI2iv* is loaded.
    def vertex_attrib_i_2iv?
      !!@addresses[578]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3iv : ::Proc
      get_proc(579, Translations.vertex_attrib_i_3iv, Procs.vertex_attrib_i_3iv)
    end

    # Checks if the OpenGL function *glVertexAttribI3iv* is loaded.
    def vertex_attrib_i_3iv?
      !!@addresses[579]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4iv : ::Proc
      get_proc(580, Translations.vertex_attrib_i_4iv, Procs.vertex_attrib_i_4iv)
    end

    # Checks if the OpenGL function *glVertexAttribI4iv* is loaded.
    def vertex_attrib_i_4iv?
      !!@addresses[580]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_1uiv : ::Proc
      get_proc(581, Translations.vertex_attrib_i_1uiv, Procs.vertex_attrib_i_1uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI1uiv* is loaded.
    def vertex_attrib_i_1uiv?
      !!@addresses[581]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_2uiv : ::Proc
      get_proc(582, Translations.vertex_attrib_i_2uiv, Procs.vertex_attrib_i_2uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI2uiv* is loaded.
    def vertex_attrib_i_2uiv?
      !!@addresses[582]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_3uiv : ::Proc
      get_proc(583, Translations.vertex_attrib_i_3uiv, Procs.vertex_attrib_i_3uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI3uiv* is loaded.
    def vertex_attrib_i_3uiv?
      !!@addresses[583]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4uiv : ::Proc
      get_proc(584, Translations.vertex_attrib_i_4uiv, Procs.vertex_attrib_i_4uiv)
    end

    # Checks if the OpenGL function *glVertexAttribI4uiv* is loaded.
    def vertex_attrib_i_4uiv?
      !!@addresses[584]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4bv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4bv : ::Proc
      get_proc(585, Translations.vertex_attrib_i_4bv, Procs.vertex_attrib_i_4bv)
    end

    # Checks if the OpenGL function *glVertexAttribI4bv* is loaded.
    def vertex_attrib_i_4bv?
      !!@addresses[585]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4sv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4sv : ::Proc
      get_proc(586, Translations.vertex_attrib_i_4sv, Procs.vertex_attrib_i_4sv)
    end

    # Checks if the OpenGL function *glVertexAttribI4sv* is loaded.
    def vertex_attrib_i_4sv?
      !!@addresses[586]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4ubv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4ubv : ::Proc
      get_proc(587, Translations.vertex_attrib_i_4ubv, Procs.vertex_attrib_i_4ubv)
    end

    # Checks if the OpenGL function *glVertexAttribI4ubv* is loaded.
    def vertex_attrib_i_4ubv?
      !!@addresses[587]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribI4usv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_i_4usv : ::Proc
      get_proc(588, Translations.vertex_attrib_i_4usv, Procs.vertex_attrib_i_4usv)
    end

    # Checks if the OpenGL function *glVertexAttribI4usv* is loaded.
    def vertex_attrib_i_4usv?
      !!@addresses[588]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_uiv : ::Proc
      get_proc(589, Translations.get_uniform_uiv, Procs.get_uniform_uiv)
    end

    # Checks if the OpenGL function *glGetUniformuiv* is loaded.
    def get_uniform_uiv?
      !!@addresses[589]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFragDataLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_frag_data_location : ::Proc
      get_proc(590, Translations.bind_frag_data_location, Procs.bind_frag_data_location)
    end

    # Checks if the OpenGL function *glBindFragDataLocation* is loaded.
    def bind_frag_data_location?
      !!@addresses[590]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFragDataLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_frag_data_location : ::Proc
      get_proc(591, Translations.get_frag_data_location, Procs.get_frag_data_location)
    end

    # Checks if the OpenGL function *glGetFragDataLocation* is loaded.
    def get_frag_data_location?
      !!@addresses[591]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1ui : ::Proc
      get_proc(592, Translations.uniform_1ui, Procs.uniform_1ui)
    end

    # Checks if the OpenGL function *glUniform1ui* is loaded.
    def uniform_1ui?
      !!@addresses[592]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2ui : ::Proc
      get_proc(593, Translations.uniform_2ui, Procs.uniform_2ui)
    end

    # Checks if the OpenGL function *glUniform2ui* is loaded.
    def uniform_2ui?
      !!@addresses[593]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3ui : ::Proc
      get_proc(594, Translations.uniform_3ui, Procs.uniform_3ui)
    end

    # Checks if the OpenGL function *glUniform3ui* is loaded.
    def uniform_3ui?
      !!@addresses[594]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4ui : ::Proc
      get_proc(595, Translations.uniform_4ui, Procs.uniform_4ui)
    end

    # Checks if the OpenGL function *glUniform4ui* is loaded.
    def uniform_4ui?
      !!@addresses[595]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1uiv : ::Proc
      get_proc(596, Translations.uniform_1uiv, Procs.uniform_1uiv)
    end

    # Checks if the OpenGL function *glUniform1uiv* is loaded.
    def uniform_1uiv?
      !!@addresses[596]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2uiv : ::Proc
      get_proc(597, Translations.uniform_2uiv, Procs.uniform_2uiv)
    end

    # Checks if the OpenGL function *glUniform2uiv* is loaded.
    def uniform_2uiv?
      !!@addresses[597]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3uiv : ::Proc
      get_proc(598, Translations.uniform_3uiv, Procs.uniform_3uiv)
    end

    # Checks if the OpenGL function *glUniform3uiv* is loaded.
    def uniform_3uiv?
      !!@addresses[598]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4uiv : ::Proc
      get_proc(599, Translations.uniform_4uiv, Procs.uniform_4uiv)
    end

    # Checks if the OpenGL function *glUniform4uiv* is loaded.
    def uniform_4uiv?
      !!@addresses[599]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i_iv : ::Proc
      get_proc(600, Translations.tex_parameter_i_iv, Procs.tex_parameter_i_iv)
    end

    # Checks if the OpenGL function *glTexParameterIiv* is loaded.
    def tex_parameter_i_iv?
      !!@addresses[600]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i_uiv : ::Proc
      get_proc(601, Translations.tex_parameter_i_uiv, Procs.tex_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glTexParameterIuiv* is loaded.
    def tex_parameter_i_uiv?
      !!@addresses[601]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_i_iv : ::Proc
      get_proc(602, Translations.get_tex_parameter_i_iv, Procs.get_tex_parameter_i_iv)
    end

    # Checks if the OpenGL function *glGetTexParameterIiv* is loaded.
    def get_tex_parameter_i_iv?
      !!@addresses[602]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_i_uiv : ::Proc
      get_proc(603, Translations.get_tex_parameter_i_uiv, Procs.get_tex_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glGetTexParameterIuiv* is loaded.
    def get_tex_parameter_i_uiv?
      !!@addresses[603]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_iv : ::Proc
      get_proc(604, Translations.clear_buffer_iv, Procs.clear_buffer_iv)
    end

    # Checks if the OpenGL function *glClearBufferiv* is loaded.
    def clear_buffer_iv?
      !!@addresses[604]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_uiv : ::Proc
      get_proc(605, Translations.clear_buffer_uiv, Procs.clear_buffer_uiv)
    end

    # Checks if the OpenGL function *glClearBufferuiv* is loaded.
    def clear_buffer_uiv?
      !!@addresses[605]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_fv : ::Proc
      get_proc(606, Translations.clear_buffer_fv, Procs.clear_buffer_fv)
    end

    # Checks if the OpenGL function *glClearBufferfv* is loaded.
    def clear_buffer_fv?
      !!@addresses[606]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearBufferfi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_buffer_fi : ::Proc
      get_proc(607, Translations.clear_buffer_fi, Procs.clear_buffer_fi)
    end

    # Checks if the OpenGL function *glClearBufferfi* is loaded.
    def clear_buffer_fi?
      !!@addresses[607]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetStringi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_string_i : ::Proc
      get_proc(608, Translations.get_string_i, Procs.get_string_i)
    end

    # Checks if the OpenGL function *glGetStringi* is loaded.
    def get_string_i?
      !!@addresses[608]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_renderbuffer : ::Proc
      get_proc(609, Translations.is_renderbuffer, Procs.is_renderbuffer)
    end

    # Checks if the OpenGL function *glIsRenderbuffer* is loaded.
    def is_renderbuffer?
      !!@addresses[609]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_renderbuffer : ::Proc
      get_proc(610, Translations.bind_renderbuffer, Procs.bind_renderbuffer)
    end

    # Checks if the OpenGL function *glBindRenderbuffer* is loaded.
    def bind_renderbuffer?
      !!@addresses[610]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_renderbuffers : ::Proc
      get_proc(611, Translations.delete_renderbuffers, Procs.delete_renderbuffers)
    end

    # Checks if the OpenGL function *glDeleteRenderbuffers* is loaded.
    def delete_renderbuffers?
      !!@addresses[611]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_renderbuffers : ::Proc
      get_proc(612, Translations.gen_renderbuffers, Procs.gen_renderbuffers)
    end

    # Checks if the OpenGL function *glGenRenderbuffers* is loaded.
    def gen_renderbuffers?
      !!@addresses[612]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderbufferStorage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def renderbuffer_storage : ::Proc
      get_proc(613, Translations.renderbuffer_storage, Procs.renderbuffer_storage)
    end

    # Checks if the OpenGL function *glRenderbufferStorage* is loaded.
    def renderbuffer_storage?
      !!@addresses[613]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetRenderbufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_renderbuffer_parameter_iv : ::Proc
      get_proc(614, Translations.get_renderbuffer_parameter_iv, Procs.get_renderbuffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetRenderbufferParameteriv* is loaded.
    def get_renderbuffer_parameter_iv?
      !!@addresses[614]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_framebuffer : ::Proc
      get_proc(615, Translations.is_framebuffer, Procs.is_framebuffer)
    end

    # Checks if the OpenGL function *glIsFramebuffer* is loaded.
    def is_framebuffer?
      !!@addresses[615]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_framebuffer : ::Proc
      get_proc(616, Translations.bind_framebuffer, Procs.bind_framebuffer)
    end

    # Checks if the OpenGL function *glBindFramebuffer* is loaded.
    def bind_framebuffer?
      !!@addresses[616]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_framebuffers : ::Proc
      get_proc(617, Translations.delete_framebuffers, Procs.delete_framebuffers)
    end

    # Checks if the OpenGL function *glDeleteFramebuffers* is loaded.
    def delete_framebuffers?
      !!@addresses[617]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_framebuffers : ::Proc
      get_proc(618, Translations.gen_framebuffers, Procs.gen_framebuffers)
    end

    # Checks if the OpenGL function *glGenFramebuffers* is loaded.
    def gen_framebuffers?
      !!@addresses[618]
    end

    # Retrieves a `Proc` for the OpenGL function *glCheckFramebufferStatus*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def check_framebuffer_status : ::Proc
      get_proc(619, Translations.check_framebuffer_status, Procs.check_framebuffer_status)
    end

    # Checks if the OpenGL function *glCheckFramebufferStatus* is loaded.
    def check_framebuffer_status?
      !!@addresses[619]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_1d : ::Proc
      get_proc(620, Translations.framebuffer_texture_1d, Procs.framebuffer_texture_1d)
    end

    # Checks if the OpenGL function *glFramebufferTexture1D* is loaded.
    def framebuffer_texture_1d?
      !!@addresses[620]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_2d : ::Proc
      get_proc(621, Translations.framebuffer_texture_2d, Procs.framebuffer_texture_2d)
    end

    # Checks if the OpenGL function *glFramebufferTexture2D* is loaded.
    def framebuffer_texture_2d?
      !!@addresses[621]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_3d : ::Proc
      get_proc(622, Translations.framebuffer_texture_3d, Procs.framebuffer_texture_3d)
    end

    # Checks if the OpenGL function *glFramebufferTexture3D* is loaded.
    def framebuffer_texture_3d?
      !!@addresses[622]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_renderbuffer : ::Proc
      get_proc(623, Translations.framebuffer_renderbuffer, Procs.framebuffer_renderbuffer)
    end

    # Checks if the OpenGL function *glFramebufferRenderbuffer* is loaded.
    def framebuffer_renderbuffer?
      !!@addresses[623]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFramebufferAttachmentParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_framebuffer_attachment_parameter_iv : ::Proc
      get_proc(624, Translations.get_framebuffer_attachment_parameter_iv, Procs.get_framebuffer_attachment_parameter_iv)
    end

    # Checks if the OpenGL function *glGetFramebufferAttachmentParameteriv* is loaded.
    def get_framebuffer_attachment_parameter_iv?
      !!@addresses[624]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenerateMipmap*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def generate_mipmap : ::Proc
      get_proc(625, Translations.generate_mipmap, Procs.generate_mipmap)
    end

    # Checks if the OpenGL function *glGenerateMipmap* is loaded.
    def generate_mipmap?
      !!@addresses[625]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlitFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blit_framebuffer : ::Proc
      get_proc(626, Translations.blit_framebuffer, Procs.blit_framebuffer)
    end

    # Checks if the OpenGL function *glBlitFramebuffer* is loaded.
    def blit_framebuffer?
      !!@addresses[626]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderbufferStorageMultisample*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def renderbuffer_storage_multisample : ::Proc
      get_proc(627, Translations.renderbuffer_storage_multisample, Procs.renderbuffer_storage_multisample)
    end

    # Checks if the OpenGL function *glRenderbufferStorageMultisample* is loaded.
    def renderbuffer_storage_multisample?
      !!@addresses[627]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTextureLayer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_layer : ::Proc
      get_proc(628, Translations.framebuffer_texture_layer, Procs.framebuffer_texture_layer)
    end

    # Checks if the OpenGL function *glFramebufferTextureLayer* is loaded.
    def framebuffer_texture_layer?
      !!@addresses[628]
    end

    # Retrieves a `Proc` for the OpenGL function *glMapBufferRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def map_buffer_range : ::Proc
      get_proc(629, Translations.map_buffer_range, Procs.map_buffer_range)
    end

    # Checks if the OpenGL function *glMapBufferRange* is loaded.
    def map_buffer_range?
      !!@addresses[629]
    end

    # Retrieves a `Proc` for the OpenGL function *glFlushMappedBufferRange*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def flush_mapped_buffer_range : ::Proc
      get_proc(630, Translations.flush_mapped_buffer_range, Procs.flush_mapped_buffer_range)
    end

    # Checks if the OpenGL function *glFlushMappedBufferRange* is loaded.
    def flush_mapped_buffer_range?
      !!@addresses[630]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindVertexArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_vertex_array : ::Proc
      get_proc(631, Translations.bind_vertex_array, Procs.bind_vertex_array)
    end

    # Checks if the OpenGL function *glBindVertexArray* is loaded.
    def bind_vertex_array?
      !!@addresses[631]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteVertexArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_vertex_arrays : ::Proc
      get_proc(632, Translations.delete_vertex_arrays, Procs.delete_vertex_arrays)
    end

    # Checks if the OpenGL function *glDeleteVertexArrays* is loaded.
    def delete_vertex_arrays?
      !!@addresses[632]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenVertexArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_vertex_arrays : ::Proc
      get_proc(633, Translations.gen_vertex_arrays, Procs.gen_vertex_arrays)
    end

    # Checks if the OpenGL function *glGenVertexArrays* is loaded.
    def gen_vertex_arrays?
      !!@addresses[633]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsVertexArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_vertex_array : ::Proc
      get_proc(634, Translations.is_vertex_array, Procs.is_vertex_array)
    end

    # Checks if the OpenGL function *glIsVertexArray* is loaded.
    def is_vertex_array?
      !!@addresses[634]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArraysInstanced*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays_instanced : ::Proc
      get_proc(635, Translations.draw_arrays_instanced, Procs.draw_arrays_instanced)
    end

    # Checks if the OpenGL function *glDrawArraysInstanced* is loaded.
    def draw_arrays_instanced?
      !!@addresses[635]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsInstanced*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_instanced : ::Proc
      get_proc(636, Translations.draw_elements_instanced, Procs.draw_elements_instanced)
    end

    # Checks if the OpenGL function *glDrawElementsInstanced* is loaded.
    def draw_elements_instanced?
      !!@addresses[636]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_buffer : ::Proc
      get_proc(637, Translations.tex_buffer, Procs.tex_buffer)
    end

    # Checks if the OpenGL function *glTexBuffer* is loaded.
    def tex_buffer?
      !!@addresses[637]
    end

    # Retrieves a `Proc` for the OpenGL function *glPrimitiveRestartIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def primitive_restart_index : ::Proc
      get_proc(638, Translations.primitive_restart_index, Procs.primitive_restart_index)
    end

    # Checks if the OpenGL function *glPrimitiveRestartIndex* is loaded.
    def primitive_restart_index?
      !!@addresses[638]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_buffer_sub_data : ::Proc
      get_proc(639, Translations.copy_buffer_sub_data, Procs.copy_buffer_sub_data)
    end

    # Checks if the OpenGL function *glCopyBufferSubData* is loaded.
    def copy_buffer_sub_data?
      !!@addresses[639]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformIndices*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_indices : ::Proc
      get_proc(640, Translations.get_uniform_indices, Procs.get_uniform_indices)
    end

    # Checks if the OpenGL function *glGetUniformIndices* is loaded.
    def get_uniform_indices?
      !!@addresses[640]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformsiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniforms_iv : ::Proc
      get_proc(641, Translations.get_active_uniforms_iv, Procs.get_active_uniforms_iv)
    end

    # Checks if the OpenGL function *glGetActiveUniformsiv* is loaded.
    def get_active_uniforms_iv?
      !!@addresses[641]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform_name : ::Proc
      get_proc(642, Translations.get_active_uniform_name, Procs.get_active_uniform_name)
    end

    # Checks if the OpenGL function *glGetActiveUniformName* is loaded.
    def get_active_uniform_name?
      !!@addresses[642]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformBlockIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_block_index : ::Proc
      get_proc(643, Translations.get_uniform_block_index, Procs.get_uniform_block_index)
    end

    # Checks if the OpenGL function *glGetUniformBlockIndex* is loaded.
    def get_uniform_block_index?
      !!@addresses[643]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformBlockiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform_block_iv : ::Proc
      get_proc(644, Translations.get_active_uniform_block_iv, Procs.get_active_uniform_block_iv)
    end

    # Checks if the OpenGL function *glGetActiveUniformBlockiv* is loaded.
    def get_active_uniform_block_iv?
      !!@addresses[644]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniformBlockName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform_block_name : ::Proc
      get_proc(645, Translations.get_active_uniform_block_name, Procs.get_active_uniform_block_name)
    end

    # Checks if the OpenGL function *glGetActiveUniformBlockName* is loaded.
    def get_active_uniform_block_name?
      !!@addresses[645]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformBlockBinding*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_block_binding : ::Proc
      get_proc(646, Translations.uniform_block_binding, Procs.uniform_block_binding)
    end

    # Checks if the OpenGL function *glUniformBlockBinding* is loaded.
    def uniform_block_binding?
      !!@addresses[646]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_base_vertex : ::Proc
      get_proc(647, Translations.draw_elements_base_vertex, Procs.draw_elements_base_vertex)
    end

    # Checks if the OpenGL function *glDrawElementsBaseVertex* is loaded.
    def draw_elements_base_vertex?
      !!@addresses[647]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawRangeElementsBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_range_elements_base_vertex : ::Proc
      get_proc(648, Translations.draw_range_elements_base_vertex, Procs.draw_range_elements_base_vertex)
    end

    # Checks if the OpenGL function *glDrawRangeElementsBaseVertex* is loaded.
    def draw_range_elements_base_vertex?
      !!@addresses[648]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsInstancedBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_instanced_base_vertex : ::Proc
      get_proc(649, Translations.draw_elements_instanced_base_vertex, Procs.draw_elements_instanced_base_vertex)
    end

    # Checks if the OpenGL function *glDrawElementsInstancedBaseVertex* is loaded.
    def draw_elements_instanced_base_vertex?
      !!@addresses[649]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiDrawElementsBaseVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_draw_elements_base_vertex : ::Proc
      get_proc(650, Translations.multi_draw_elements_base_vertex, Procs.multi_draw_elements_base_vertex)
    end

    # Checks if the OpenGL function *glMultiDrawElementsBaseVertex* is loaded.
    def multi_draw_elements_base_vertex?
      !!@addresses[650]
    end

    # Retrieves a `Proc` for the OpenGL function *glProvokingVertex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def provoking_vertex : ::Proc
      get_proc(651, Translations.provoking_vertex, Procs.provoking_vertex)
    end

    # Checks if the OpenGL function *glProvokingVertex* is loaded.
    def provoking_vertex?
      !!@addresses[651]
    end

    # Retrieves a `Proc` for the OpenGL function *glFenceSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def fence_sync : ::Proc
      get_proc(652, Translations.fence_sync, Procs.fence_sync)
    end

    # Checks if the OpenGL function *glFenceSync* is loaded.
    def fence_sync?
      !!@addresses[652]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_sync : ::Proc
      get_proc(653, Translations.is_sync, Procs.is_sync)
    end

    # Checks if the OpenGL function *glIsSync* is loaded.
    def is_sync?
      !!@addresses[653]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_sync : ::Proc
      get_proc(654, Translations.delete_sync, Procs.delete_sync)
    end

    # Checks if the OpenGL function *glDeleteSync* is loaded.
    def delete_sync?
      !!@addresses[654]
    end

    # Retrieves a `Proc` for the OpenGL function *glClientWaitSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def client_wait_sync : ::Proc
      get_proc(655, Translations.client_wait_sync, Procs.client_wait_sync)
    end

    # Checks if the OpenGL function *glClientWaitSync* is loaded.
    def client_wait_sync?
      !!@addresses[655]
    end

    # Retrieves a `Proc` for the OpenGL function *glWaitSync*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def wait_sync : ::Proc
      get_proc(656, Translations.wait_sync, Procs.wait_sync)
    end

    # Checks if the OpenGL function *glWaitSync* is loaded.
    def wait_sync?
      !!@addresses[656]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetInteger64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_64v : ::Proc
      get_proc(657, Translations.get_integer_64v, Procs.get_integer_64v)
    end

    # Checks if the OpenGL function *glGetInteger64v* is loaded.
    def get_integer_64v?
      !!@addresses[657]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSynciv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sync_iv : ::Proc
      get_proc(658, Translations.get_sync_iv, Procs.get_sync_iv)
    end

    # Checks if the OpenGL function *glGetSynciv* is loaded.
    def get_sync_iv?
      !!@addresses[658]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetInteger64i_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_64i_v : ::Proc
      get_proc(659, Translations.get_integer_64i_v, Procs.get_integer_64i_v)
    end

    # Checks if the OpenGL function *glGetInteger64i_v* is loaded.
    def get_integer_64i_v?
      !!@addresses[659]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteri64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_i64v : ::Proc
      get_proc(660, Translations.get_buffer_parameter_i64v, Procs.get_buffer_parameter_i64v)
    end

    # Checks if the OpenGL function *glGetBufferParameteri64v* is loaded.
    def get_buffer_parameter_i64v?
      !!@addresses[660]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture : ::Proc
      get_proc(661, Translations.framebuffer_texture, Procs.framebuffer_texture)
    end

    # Checks if the OpenGL function *glFramebufferTexture* is loaded.
    def framebuffer_texture?
      !!@addresses[661]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage2DMultisample*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_2d_multisample : ::Proc
      get_proc(662, Translations.tex_image_2d_multisample, Procs.tex_image_2d_multisample)
    end

    # Checks if the OpenGL function *glTexImage2DMultisample* is loaded.
    def tex_image_2d_multisample?
      !!@addresses[662]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexImage3DMultisample*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_3d_multisample : ::Proc
      get_proc(663, Translations.tex_image_3d_multisample, Procs.tex_image_3d_multisample)
    end

    # Checks if the OpenGL function *glTexImage3DMultisample* is loaded.
    def tex_image_3d_multisample?
      !!@addresses[663]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetMultisamplefv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_multisample_fv : ::Proc
      get_proc(664, Translations.get_multisample_fv, Procs.get_multisample_fv)
    end

    # Checks if the OpenGL function *glGetMultisamplefv* is loaded.
    def get_multisample_fv?
      !!@addresses[664]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleMaski*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_mask_i : ::Proc
      get_proc(665, Translations.sample_mask_i, Procs.sample_mask_i)
    end

    # Checks if the OpenGL function *glSampleMaski* is loaded.
    def sample_mask_i?
      !!@addresses[665]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFragDataLocationIndexed*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_frag_data_location_indexed : ::Proc
      get_proc(666, Translations.bind_frag_data_location_indexed, Procs.bind_frag_data_location_indexed)
    end

    # Checks if the OpenGL function *glBindFragDataLocationIndexed* is loaded.
    def bind_frag_data_location_indexed?
      !!@addresses[666]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFragDataIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_frag_data_index : ::Proc
      get_proc(667, Translations.get_frag_data_index, Procs.get_frag_data_index)
    end

    # Checks if the OpenGL function *glGetFragDataIndex* is loaded.
    def get_frag_data_index?
      !!@addresses[667]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenSamplers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_samplers : ::Proc
      get_proc(668, Translations.gen_samplers, Procs.gen_samplers)
    end

    # Checks if the OpenGL function *glGenSamplers* is loaded.
    def gen_samplers?
      !!@addresses[668]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteSamplers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_samplers : ::Proc
      get_proc(669, Translations.delete_samplers, Procs.delete_samplers)
    end

    # Checks if the OpenGL function *glDeleteSamplers* is loaded.
    def delete_samplers?
      !!@addresses[669]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsSampler*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_sampler : ::Proc
      get_proc(670, Translations.is_sampler, Procs.is_sampler)
    end

    # Checks if the OpenGL function *glIsSampler* is loaded.
    def is_sampler?
      !!@addresses[670]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindSampler*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_sampler : ::Proc
      get_proc(671, Translations.bind_sampler, Procs.bind_sampler)
    end

    # Checks if the OpenGL function *glBindSampler* is loaded.
    def bind_sampler?
      !!@addresses[671]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_i : ::Proc
      get_proc(672, Translations.sampler_parameter_i, Procs.sampler_parameter_i)
    end

    # Checks if the OpenGL function *glSamplerParameteri* is loaded.
    def sampler_parameter_i?
      !!@addresses[672]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_iv : ::Proc
      get_proc(673, Translations.sampler_parameter_iv, Procs.sampler_parameter_iv)
    end

    # Checks if the OpenGL function *glSamplerParameteriv* is loaded.
    def sampler_parameter_iv?
      !!@addresses[673]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_f : ::Proc
      get_proc(674, Translations.sampler_parameter_f, Procs.sampler_parameter_f)
    end

    # Checks if the OpenGL function *glSamplerParameterf* is loaded.
    def sampler_parameter_f?
      !!@addresses[674]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_fv : ::Proc
      get_proc(675, Translations.sampler_parameter_fv, Procs.sampler_parameter_fv)
    end

    # Checks if the OpenGL function *glSamplerParameterfv* is loaded.
    def sampler_parameter_fv?
      !!@addresses[675]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_i_iv : ::Proc
      get_proc(676, Translations.sampler_parameter_i_iv, Procs.sampler_parameter_i_iv)
    end

    # Checks if the OpenGL function *glSamplerParameterIiv* is loaded.
    def sampler_parameter_i_iv?
      !!@addresses[676]
    end

    # Retrieves a `Proc` for the OpenGL function *glSamplerParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sampler_parameter_i_uiv : ::Proc
      get_proc(677, Translations.sampler_parameter_i_uiv, Procs.sampler_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glSamplerParameterIuiv* is loaded.
    def sampler_parameter_i_uiv?
      !!@addresses[677]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_iv : ::Proc
      get_proc(678, Translations.get_sampler_parameter_iv, Procs.get_sampler_parameter_iv)
    end

    # Checks if the OpenGL function *glGetSamplerParameteriv* is loaded.
    def get_sampler_parameter_iv?
      !!@addresses[678]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameterIiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_i_iv : ::Proc
      get_proc(679, Translations.get_sampler_parameter_i_iv, Procs.get_sampler_parameter_i_iv)
    end

    # Checks if the OpenGL function *glGetSamplerParameterIiv* is loaded.
    def get_sampler_parameter_i_iv?
      !!@addresses[679]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_fv : ::Proc
      get_proc(680, Translations.get_sampler_parameter_fv, Procs.get_sampler_parameter_fv)
    end

    # Checks if the OpenGL function *glGetSamplerParameterfv* is loaded.
    def get_sampler_parameter_fv?
      !!@addresses[680]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSamplerParameterIuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_sampler_parameter_i_uiv : ::Proc
      get_proc(681, Translations.get_sampler_parameter_i_uiv, Procs.get_sampler_parameter_i_uiv)
    end

    # Checks if the OpenGL function *glGetSamplerParameterIuiv* is loaded.
    def get_sampler_parameter_i_uiv?
      !!@addresses[681]
    end

    # Retrieves a `Proc` for the OpenGL function *glQueryCounter*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def query_counter : ::Proc
      get_proc(682, Translations.query_counter, Procs.query_counter)
    end

    # Checks if the OpenGL function *glQueryCounter* is loaded.
    def query_counter?
      !!@addresses[682]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjecti64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_i64v : ::Proc
      get_proc(683, Translations.get_query_object_i64v, Procs.get_query_object_i64v)
    end

    # Checks if the OpenGL function *glGetQueryObjecti64v* is loaded.
    def get_query_object_i64v?
      !!@addresses[683]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryObjectui64v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_object_ui64v : ::Proc
      get_proc(684, Translations.get_query_object_ui64v, Procs.get_query_object_ui64v)
    end

    # Checks if the OpenGL function *glGetQueryObjectui64v* is loaded.
    def get_query_object_ui64v?
      !!@addresses[684]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribDivisor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_divisor : ::Proc
      get_proc(685, Translations.vertex_attrib_divisor, Procs.vertex_attrib_divisor)
    end

    # Checks if the OpenGL function *glVertexAttribDivisor* is loaded.
    def vertex_attrib_divisor?
      !!@addresses[685]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_1ui : ::Proc
      get_proc(686, Translations.vertex_attrib_p_1ui, Procs.vertex_attrib_p_1ui)
    end

    # Checks if the OpenGL function *glVertexAttribP1ui* is loaded.
    def vertex_attrib_p_1ui?
      !!@addresses[686]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_1uiv : ::Proc
      get_proc(687, Translations.vertex_attrib_p_1uiv, Procs.vertex_attrib_p_1uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP1uiv* is loaded.
    def vertex_attrib_p_1uiv?
      !!@addresses[687]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_2ui : ::Proc
      get_proc(688, Translations.vertex_attrib_p_2ui, Procs.vertex_attrib_p_2ui)
    end

    # Checks if the OpenGL function *glVertexAttribP2ui* is loaded.
    def vertex_attrib_p_2ui?
      !!@addresses[688]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_2uiv : ::Proc
      get_proc(689, Translations.vertex_attrib_p_2uiv, Procs.vertex_attrib_p_2uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP2uiv* is loaded.
    def vertex_attrib_p_2uiv?
      !!@addresses[689]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_3ui : ::Proc
      get_proc(690, Translations.vertex_attrib_p_3ui, Procs.vertex_attrib_p_3ui)
    end

    # Checks if the OpenGL function *glVertexAttribP3ui* is loaded.
    def vertex_attrib_p_3ui?
      !!@addresses[690]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_3uiv : ::Proc
      get_proc(691, Translations.vertex_attrib_p_3uiv, Procs.vertex_attrib_p_3uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP3uiv* is loaded.
    def vertex_attrib_p_3uiv?
      !!@addresses[691]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_4ui : ::Proc
      get_proc(692, Translations.vertex_attrib_p_4ui, Procs.vertex_attrib_p_4ui)
    end

    # Checks if the OpenGL function *glVertexAttribP4ui* is loaded.
    def vertex_attrib_p_4ui?
      !!@addresses[692]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribP4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_p_4uiv : ::Proc
      get_proc(693, Translations.vertex_attrib_p_4uiv, Procs.vertex_attrib_p_4uiv)
    end

    # Checks if the OpenGL function *glVertexAttribP4uiv* is loaded.
    def vertex_attrib_p_4uiv?
      !!@addresses[693]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexP2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_p_2ui : ::Proc
      get_proc(694, Translations.vertex_p_2ui, Procs.vertex_p_2ui)
    end

    # Checks if the OpenGL function *glVertexP2ui* is loaded.
    def vertex_p_2ui?
      !!@addresses[694]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexP2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_p_2uiv : ::Proc
      get_proc(695, Translations.vertex_p_2uiv, Procs.vertex_p_2uiv)
    end

    # Checks if the OpenGL function *glVertexP2uiv* is loaded.
    def vertex_p_2uiv?
      !!@addresses[695]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_p_3ui : ::Proc
      get_proc(696, Translations.vertex_p_3ui, Procs.vertex_p_3ui)
    end

    # Checks if the OpenGL function *glVertexP3ui* is loaded.
    def vertex_p_3ui?
      !!@addresses[696]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_p_3uiv : ::Proc
      get_proc(697, Translations.vertex_p_3uiv, Procs.vertex_p_3uiv)
    end

    # Checks if the OpenGL function *glVertexP3uiv* is loaded.
    def vertex_p_3uiv?
      !!@addresses[697]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexP4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_p_4ui : ::Proc
      get_proc(698, Translations.vertex_p_4ui, Procs.vertex_p_4ui)
    end

    # Checks if the OpenGL function *glVertexP4ui* is loaded.
    def vertex_p_4ui?
      !!@addresses[698]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexP4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_p_4uiv : ::Proc
      get_proc(699, Translations.vertex_p_4uiv, Procs.vertex_p_4uiv)
    end

    # Checks if the OpenGL function *glVertexP4uiv* is loaded.
    def vertex_p_4uiv?
      !!@addresses[699]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_1ui : ::Proc
      get_proc(700, Translations.tex_coord_p_1ui, Procs.tex_coord_p_1ui)
    end

    # Checks if the OpenGL function *glTexCoordP1ui* is loaded.
    def tex_coord_p_1ui?
      !!@addresses[700]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_1uiv : ::Proc
      get_proc(701, Translations.tex_coord_p_1uiv, Procs.tex_coord_p_1uiv)
    end

    # Checks if the OpenGL function *glTexCoordP1uiv* is loaded.
    def tex_coord_p_1uiv?
      !!@addresses[701]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_2ui : ::Proc
      get_proc(702, Translations.tex_coord_p_2ui, Procs.tex_coord_p_2ui)
    end

    # Checks if the OpenGL function *glTexCoordP2ui* is loaded.
    def tex_coord_p_2ui?
      !!@addresses[702]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_2uiv : ::Proc
      get_proc(703, Translations.tex_coord_p_2uiv, Procs.tex_coord_p_2uiv)
    end

    # Checks if the OpenGL function *glTexCoordP2uiv* is loaded.
    def tex_coord_p_2uiv?
      !!@addresses[703]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_3ui : ::Proc
      get_proc(704, Translations.tex_coord_p_3ui, Procs.tex_coord_p_3ui)
    end

    # Checks if the OpenGL function *glTexCoordP3ui* is loaded.
    def tex_coord_p_3ui?
      !!@addresses[704]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_3uiv : ::Proc
      get_proc(705, Translations.tex_coord_p_3uiv, Procs.tex_coord_p_3uiv)
    end

    # Checks if the OpenGL function *glTexCoordP3uiv* is loaded.
    def tex_coord_p_3uiv?
      !!@addresses[705]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_4ui : ::Proc
      get_proc(706, Translations.tex_coord_p_4ui, Procs.tex_coord_p_4ui)
    end

    # Checks if the OpenGL function *glTexCoordP4ui* is loaded.
    def tex_coord_p_4ui?
      !!@addresses[706]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexCoordP4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_coord_p_4uiv : ::Proc
      get_proc(707, Translations.tex_coord_p_4uiv, Procs.tex_coord_p_4uiv)
    end

    # Checks if the OpenGL function *glTexCoordP4uiv* is loaded.
    def tex_coord_p_4uiv?
      !!@addresses[707]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_1ui : ::Proc
      get_proc(708, Translations.multi_tex_coord_p_1ui, Procs.multi_tex_coord_p_1ui)
    end

    # Checks if the OpenGL function *glMultiTexCoordP1ui* is loaded.
    def multi_tex_coord_p_1ui?
      !!@addresses[708]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_1uiv : ::Proc
      get_proc(709, Translations.multi_tex_coord_p_1uiv, Procs.multi_tex_coord_p_1uiv)
    end

    # Checks if the OpenGL function *glMultiTexCoordP1uiv* is loaded.
    def multi_tex_coord_p_1uiv?
      !!@addresses[709]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_2ui : ::Proc
      get_proc(710, Translations.multi_tex_coord_p_2ui, Procs.multi_tex_coord_p_2ui)
    end

    # Checks if the OpenGL function *glMultiTexCoordP2ui* is loaded.
    def multi_tex_coord_p_2ui?
      !!@addresses[710]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_2uiv : ::Proc
      get_proc(711, Translations.multi_tex_coord_p_2uiv, Procs.multi_tex_coord_p_2uiv)
    end

    # Checks if the OpenGL function *glMultiTexCoordP2uiv* is loaded.
    def multi_tex_coord_p_2uiv?
      !!@addresses[711]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_3ui : ::Proc
      get_proc(712, Translations.multi_tex_coord_p_3ui, Procs.multi_tex_coord_p_3ui)
    end

    # Checks if the OpenGL function *glMultiTexCoordP3ui* is loaded.
    def multi_tex_coord_p_3ui?
      !!@addresses[712]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_3uiv : ::Proc
      get_proc(713, Translations.multi_tex_coord_p_3uiv, Procs.multi_tex_coord_p_3uiv)
    end

    # Checks if the OpenGL function *glMultiTexCoordP3uiv* is loaded.
    def multi_tex_coord_p_3uiv?
      !!@addresses[713]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_4ui : ::Proc
      get_proc(714, Translations.multi_tex_coord_p_4ui, Procs.multi_tex_coord_p_4ui)
    end

    # Checks if the OpenGL function *glMultiTexCoordP4ui* is loaded.
    def multi_tex_coord_p_4ui?
      !!@addresses[714]
    end

    # Retrieves a `Proc` for the OpenGL function *glMultiTexCoordP4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def multi_tex_coord_p_4uiv : ::Proc
      get_proc(715, Translations.multi_tex_coord_p_4uiv, Procs.multi_tex_coord_p_4uiv)
    end

    # Checks if the OpenGL function *glMultiTexCoordP4uiv* is loaded.
    def multi_tex_coord_p_4uiv?
      !!@addresses[715]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormalP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_p_3ui : ::Proc
      get_proc(716, Translations.normal_p_3ui, Procs.normal_p_3ui)
    end

    # Checks if the OpenGL function *glNormalP3ui* is loaded.
    def normal_p_3ui?
      !!@addresses[716]
    end

    # Retrieves a `Proc` for the OpenGL function *glNormalP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def normal_p_3uiv : ::Proc
      get_proc(717, Translations.normal_p_3uiv, Procs.normal_p_3uiv)
    end

    # Checks if the OpenGL function *glNormalP3uiv* is loaded.
    def normal_p_3uiv?
      !!@addresses[717]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_p_3ui : ::Proc
      get_proc(718, Translations.color_p_3ui, Procs.color_p_3ui)
    end

    # Checks if the OpenGL function *glColorP3ui* is loaded.
    def color_p_3ui?
      !!@addresses[718]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_p_3uiv : ::Proc
      get_proc(719, Translations.color_p_3uiv, Procs.color_p_3uiv)
    end

    # Checks if the OpenGL function *glColorP3uiv* is loaded.
    def color_p_3uiv?
      !!@addresses[719]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorP4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_p_4ui : ::Proc
      get_proc(720, Translations.color_p_4ui, Procs.color_p_4ui)
    end

    # Checks if the OpenGL function *glColorP4ui* is loaded.
    def color_p_4ui?
      !!@addresses[720]
    end

    # Retrieves a `Proc` for the OpenGL function *glColorP4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_p_4uiv : ::Proc
      get_proc(721, Translations.color_p_4uiv, Procs.color_p_4uiv)
    end

    # Checks if the OpenGL function *glColorP4uiv* is loaded.
    def color_p_4uiv?
      !!@addresses[721]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColorP3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_p_3ui : ::Proc
      get_proc(722, Translations.secondary_color_p_3ui, Procs.secondary_color_p_3ui)
    end

    # Checks if the OpenGL function *glSecondaryColorP3ui* is loaded.
    def secondary_color_p_3ui?
      !!@addresses[722]
    end

    # Retrieves a `Proc` for the OpenGL function *glSecondaryColorP3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def secondary_color_p_3uiv : ::Proc
      get_proc(723, Translations.secondary_color_p_3uiv, Procs.secondary_color_p_3uiv)
    end

    # Checks if the OpenGL function *glSecondaryColorP3uiv* is loaded.
    def secondary_color_p_3uiv?
      !!@addresses[723]
    end

    # Retrieves a `Proc` for the OpenGL function *glMinSampleShading*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def min_sample_shading : ::Proc
      get_proc(724, Translations.min_sample_shading, Procs.min_sample_shading)
    end

    # Checks if the OpenGL function *glMinSampleShading* is loaded.
    def min_sample_shading?
      !!@addresses[724]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquationi*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation_i : ::Proc
      get_proc(725, Translations.blend_equation_i, Procs.blend_equation_i)
    end

    # Checks if the OpenGL function *glBlendEquationi* is loaded.
    def blend_equation_i?
      !!@addresses[725]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquationSeparatei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation_separate_i : ::Proc
      get_proc(726, Translations.blend_equation_separate_i, Procs.blend_equation_separate_i)
    end

    # Checks if the OpenGL function *glBlendEquationSeparatei* is loaded.
    def blend_equation_separate_i?
      !!@addresses[726]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFunci*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func_i : ::Proc
      get_proc(727, Translations.blend_func_i, Procs.blend_func_i)
    end

    # Checks if the OpenGL function *glBlendFunci* is loaded.
    def blend_func_i?
      !!@addresses[727]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFuncSeparatei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func_separate_i : ::Proc
      get_proc(728, Translations.blend_func_separate_i, Procs.blend_func_separate_i)
    end

    # Checks if the OpenGL function *glBlendFuncSeparatei* is loaded.
    def blend_func_separate_i?
      !!@addresses[728]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArraysIndirect*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays_indirect : ::Proc
      get_proc(729, Translations.draw_arrays_indirect, Procs.draw_arrays_indirect)
    end

    # Checks if the OpenGL function *glDrawArraysIndirect* is loaded.
    def draw_arrays_indirect?
      !!@addresses[729]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsIndirect*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_indirect : ::Proc
      get_proc(730, Translations.draw_elements_indirect, Procs.draw_elements_indirect)
    end

    # Checks if the OpenGL function *glDrawElementsIndirect* is loaded.
    def draw_elements_indirect?
      !!@addresses[730]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1d : ::Proc
      get_proc(731, Translations.uniform_1d, Procs.uniform_1d)
    end

    # Checks if the OpenGL function *glUniform1d* is loaded.
    def uniform_1d?
      !!@addresses[731]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2d : ::Proc
      get_proc(732, Translations.uniform_2d, Procs.uniform_2d)
    end

    # Checks if the OpenGL function *glUniform2d* is loaded.
    def uniform_2d?
      !!@addresses[732]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3d : ::Proc
      get_proc(733, Translations.uniform_3d, Procs.uniform_3d)
    end

    # Checks if the OpenGL function *glUniform3d* is loaded.
    def uniform_3d?
      !!@addresses[733]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4d : ::Proc
      get_proc(734, Translations.uniform_4d, Procs.uniform_4d)
    end

    # Checks if the OpenGL function *glUniform4d* is loaded.
    def uniform_4d?
      !!@addresses[734]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1dv : ::Proc
      get_proc(735, Translations.uniform_1dv, Procs.uniform_1dv)
    end

    # Checks if the OpenGL function *glUniform1dv* is loaded.
    def uniform_1dv?
      !!@addresses[735]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2dv : ::Proc
      get_proc(736, Translations.uniform_2dv, Procs.uniform_2dv)
    end

    # Checks if the OpenGL function *glUniform2dv* is loaded.
    def uniform_2dv?
      !!@addresses[736]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3dv : ::Proc
      get_proc(737, Translations.uniform_3dv, Procs.uniform_3dv)
    end

    # Checks if the OpenGL function *glUniform3dv* is loaded.
    def uniform_3dv?
      !!@addresses[737]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4dv : ::Proc
      get_proc(738, Translations.uniform_4dv, Procs.uniform_4dv)
    end

    # Checks if the OpenGL function *glUniform4dv* is loaded.
    def uniform_4dv?
      !!@addresses[738]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2_dv : ::Proc
      get_proc(739, Translations.uniform_matrix2_dv, Procs.uniform_matrix2_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix2dv* is loaded.
    def uniform_matrix2_dv?
      !!@addresses[739]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3_dv : ::Proc
      get_proc(740, Translations.uniform_matrix3_dv, Procs.uniform_matrix3_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix3dv* is loaded.
    def uniform_matrix3_dv?
      !!@addresses[740]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4_dv : ::Proc
      get_proc(741, Translations.uniform_matrix4_dv, Procs.uniform_matrix4_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix4dv* is loaded.
    def uniform_matrix4_dv?
      !!@addresses[741]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2x3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2x3_dv : ::Proc
      get_proc(742, Translations.uniform_matrix2x3_dv, Procs.uniform_matrix2x3_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix2x3dv* is loaded.
    def uniform_matrix2x3_dv?
      !!@addresses[742]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2x4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2x4_dv : ::Proc
      get_proc(743, Translations.uniform_matrix2x4_dv, Procs.uniform_matrix2x4_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix2x4dv* is loaded.
    def uniform_matrix2x4_dv?
      !!@addresses[743]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3x2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3x2_dv : ::Proc
      get_proc(744, Translations.uniform_matrix3x2_dv, Procs.uniform_matrix3x2_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix3x2dv* is loaded.
    def uniform_matrix3x2_dv?
      !!@addresses[744]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3x4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3x4_dv : ::Proc
      get_proc(745, Translations.uniform_matrix3x4_dv, Procs.uniform_matrix3x4_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix3x4dv* is loaded.
    def uniform_matrix3x4_dv?
      !!@addresses[745]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4x2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4x2_dv : ::Proc
      get_proc(746, Translations.uniform_matrix4x2_dv, Procs.uniform_matrix4x2_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix4x2dv* is loaded.
    def uniform_matrix4x2_dv?
      !!@addresses[746]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4x3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4x3_dv : ::Proc
      get_proc(747, Translations.uniform_matrix4x3_dv, Procs.uniform_matrix4x3_dv)
    end

    # Checks if the OpenGL function *glUniformMatrix4x3dv* is loaded.
    def uniform_matrix4x3_dv?
      !!@addresses[747]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_dv : ::Proc
      get_proc(748, Translations.get_uniform_dv, Procs.get_uniform_dv)
    end

    # Checks if the OpenGL function *glGetUniformdv* is loaded.
    def get_uniform_dv?
      !!@addresses[748]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSubroutineUniformLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_subroutine_uniform_location : ::Proc
      get_proc(749, Translations.get_subroutine_uniform_location, Procs.get_subroutine_uniform_location)
    end

    # Checks if the OpenGL function *glGetSubroutineUniformLocation* is loaded.
    def get_subroutine_uniform_location?
      !!@addresses[749]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetSubroutineIndex*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_subroutine_index : ::Proc
      get_proc(750, Translations.get_subroutine_index, Procs.get_subroutine_index)
    end

    # Checks if the OpenGL function *glGetSubroutineIndex* is loaded.
    def get_subroutine_index?
      !!@addresses[750]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveSubroutineUniformiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_subroutine_uniform_iv : ::Proc
      get_proc(751, Translations.get_active_subroutine_uniform_iv, Procs.get_active_subroutine_uniform_iv)
    end

    # Checks if the OpenGL function *glGetActiveSubroutineUniformiv* is loaded.
    def get_active_subroutine_uniform_iv?
      !!@addresses[751]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveSubroutineUniformName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_subroutine_uniform_name : ::Proc
      get_proc(752, Translations.get_active_subroutine_uniform_name, Procs.get_active_subroutine_uniform_name)
    end

    # Checks if the OpenGL function *glGetActiveSubroutineUniformName* is loaded.
    def get_active_subroutine_uniform_name?
      !!@addresses[752]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveSubroutineName*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_subroutine_name : ::Proc
      get_proc(753, Translations.get_active_subroutine_name, Procs.get_active_subroutine_name)
    end

    # Checks if the OpenGL function *glGetActiveSubroutineName* is loaded.
    def get_active_subroutine_name?
      !!@addresses[753]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformSubroutinesuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_subroutines_uiv : ::Proc
      get_proc(754, Translations.uniform_subroutines_uiv, Procs.uniform_subroutines_uiv)
    end

    # Checks if the OpenGL function *glUniformSubroutinesuiv* is loaded.
    def uniform_subroutines_uiv?
      !!@addresses[754]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformSubroutineuiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_subroutine_uiv : ::Proc
      get_proc(755, Translations.get_uniform_subroutine_uiv, Procs.get_uniform_subroutine_uiv)
    end

    # Checks if the OpenGL function *glGetUniformSubroutineuiv* is loaded.
    def get_uniform_subroutine_uiv?
      !!@addresses[755]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramStageiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_stage_iv : ::Proc
      get_proc(756, Translations.get_program_stage_iv, Procs.get_program_stage_iv)
    end

    # Checks if the OpenGL function *glGetProgramStageiv* is loaded.
    def get_program_stage_iv?
      !!@addresses[756]
    end

    # Retrieves a `Proc` for the OpenGL function *glPatchParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def patch_parameter_i : ::Proc
      get_proc(757, Translations.patch_parameter_i, Procs.patch_parameter_i)
    end

    # Checks if the OpenGL function *glPatchParameteri* is loaded.
    def patch_parameter_i?
      !!@addresses[757]
    end

    # Retrieves a `Proc` for the OpenGL function *glPatchParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def patch_parameter_fv : ::Proc
      get_proc(758, Translations.patch_parameter_fv, Procs.patch_parameter_fv)
    end

    # Checks if the OpenGL function *glPatchParameterfv* is loaded.
    def patch_parameter_fv?
      !!@addresses[758]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_transform_feedback : ::Proc
      get_proc(759, Translations.bind_transform_feedback, Procs.bind_transform_feedback)
    end

    # Checks if the OpenGL function *glBindTransformFeedback* is loaded.
    def bind_transform_feedback?
      !!@addresses[759]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteTransformFeedbacks*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_transform_feedbacks : ::Proc
      get_proc(760, Translations.delete_transform_feedbacks, Procs.delete_transform_feedbacks)
    end

    # Checks if the OpenGL function *glDeleteTransformFeedbacks* is loaded.
    def delete_transform_feedbacks?
      !!@addresses[760]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenTransformFeedbacks*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_transform_feedbacks : ::Proc
      get_proc(761, Translations.gen_transform_feedbacks, Procs.gen_transform_feedbacks)
    end

    # Checks if the OpenGL function *glGenTransformFeedbacks* is loaded.
    def gen_transform_feedbacks?
      !!@addresses[761]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_transform_feedback : ::Proc
      get_proc(762, Translations.is_transform_feedback, Procs.is_transform_feedback)
    end

    # Checks if the OpenGL function *glIsTransformFeedback* is loaded.
    def is_transform_feedback?
      !!@addresses[762]
    end

    # Retrieves a `Proc` for the OpenGL function *glPauseTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pause_transform_feedback : ::Proc
      get_proc(763, Translations.pause_transform_feedback, Procs.pause_transform_feedback)
    end

    # Checks if the OpenGL function *glPauseTransformFeedback* is loaded.
    def pause_transform_feedback?
      !!@addresses[763]
    end

    # Retrieves a `Proc` for the OpenGL function *glResumeTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def resume_transform_feedback : ::Proc
      get_proc(764, Translations.resume_transform_feedback, Procs.resume_transform_feedback)
    end

    # Checks if the OpenGL function *glResumeTransformFeedback* is loaded.
    def resume_transform_feedback?
      !!@addresses[764]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawTransformFeedback*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_transform_feedback : ::Proc
      get_proc(765, Translations.draw_transform_feedback, Procs.draw_transform_feedback)
    end

    # Checks if the OpenGL function *glDrawTransformFeedback* is loaded.
    def draw_transform_feedback?
      !!@addresses[765]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawTransformFeedbackStream*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_transform_feedback_stream : ::Proc
      get_proc(766, Translations.draw_transform_feedback_stream, Procs.draw_transform_feedback_stream)
    end

    # Checks if the OpenGL function *glDrawTransformFeedbackStream* is loaded.
    def draw_transform_feedback_stream?
      !!@addresses[766]
    end

    # Retrieves a `Proc` for the OpenGL function *glBeginQueryIndexed*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def begin_query_indexed : ::Proc
      get_proc(767, Translations.begin_query_indexed, Procs.begin_query_indexed)
    end

    # Checks if the OpenGL function *glBeginQueryIndexed* is loaded.
    def begin_query_indexed?
      !!@addresses[767]
    end

    # Retrieves a `Proc` for the OpenGL function *glEndQueryIndexed*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def end_query_indexed : ::Proc
      get_proc(768, Translations.end_query_indexed, Procs.end_query_indexed)
    end

    # Checks if the OpenGL function *glEndQueryIndexed* is loaded.
    def end_query_indexed?
      !!@addresses[768]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetQueryIndexediv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_query_indexed_iv : ::Proc
      get_proc(769, Translations.get_query_indexed_iv, Procs.get_query_indexed_iv)
    end

    # Checks if the OpenGL function *glGetQueryIndexediv* is loaded.
    def get_query_indexed_iv?
      !!@addresses[769]
    end

    # Retrieves a `Proc` for the OpenGL function *glReleaseShaderCompiler*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def release_shader_compiler : ::Proc
      get_proc(770, Translations.release_shader_compiler, Procs.release_shader_compiler)
    end

    # Checks if the OpenGL function *glReleaseShaderCompiler* is loaded.
    def release_shader_compiler?
      !!@addresses[770]
    end

    # Retrieves a `Proc` for the OpenGL function *glShaderBinary*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shader_binary : ::Proc
      get_proc(771, Translations.shader_binary, Procs.shader_binary)
    end

    # Checks if the OpenGL function *glShaderBinary* is loaded.
    def shader_binary?
      !!@addresses[771]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderPrecisionFormat*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_precision_format : ::Proc
      get_proc(772, Translations.get_shader_precision_format, Procs.get_shader_precision_format)
    end

    # Checks if the OpenGL function *glGetShaderPrecisionFormat* is loaded.
    def get_shader_precision_format?
      !!@addresses[772]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRangef*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_range_f : ::Proc
      get_proc(773, Translations.depth_range_f, Procs.depth_range_f)
    end

    # Checks if the OpenGL function *glDepthRangef* is loaded.
    def depth_range_f?
      !!@addresses[773]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearDepthf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_depth_f : ::Proc
      get_proc(774, Translations.clear_depth_f, Procs.clear_depth_f)
    end

    # Checks if the OpenGL function *glClearDepthf* is loaded.
    def clear_depth_f?
      !!@addresses[774]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramBinary*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_binary : ::Proc
      get_proc(775, Translations.get_program_binary, Procs.get_program_binary)
    end

    # Checks if the OpenGL function *glGetProgramBinary* is loaded.
    def get_program_binary?
      !!@addresses[775]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramBinary*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_binary : ::Proc
      get_proc(776, Translations.program_binary, Procs.program_binary)
    end

    # Checks if the OpenGL function *glProgramBinary* is loaded.
    def program_binary?
      !!@addresses[776]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_parameter_i : ::Proc
      get_proc(777, Translations.program_parameter_i, Procs.program_parameter_i)
    end

    # Checks if the OpenGL function *glProgramParameteri* is loaded.
    def program_parameter_i?
      !!@addresses[777]
    end

    # Retrieves a `Proc` for the OpenGL function *glUseProgramStages*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def use_program_stages : ::Proc
      get_proc(778, Translations.use_program_stages, Procs.use_program_stages)
    end

    # Checks if the OpenGL function *glUseProgramStages* is loaded.
    def use_program_stages?
      !!@addresses[778]
    end

    # Retrieves a `Proc` for the OpenGL function *glActiveShaderProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def active_shader_program : ::Proc
      get_proc(779, Translations.active_shader_program, Procs.active_shader_program)
    end

    # Checks if the OpenGL function *glActiveShaderProgram* is loaded.
    def active_shader_program?
      !!@addresses[779]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateShaderProgramv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_shader_program_v : ::Proc
      get_proc(780, Translations.create_shader_program_v, Procs.create_shader_program_v)
    end

    # Checks if the OpenGL function *glCreateShaderProgramv* is loaded.
    def create_shader_program_v?
      !!@addresses[780]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindProgramPipeline*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_program_pipeline : ::Proc
      get_proc(781, Translations.bind_program_pipeline, Procs.bind_program_pipeline)
    end

    # Checks if the OpenGL function *glBindProgramPipeline* is loaded.
    def bind_program_pipeline?
      !!@addresses[781]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteProgramPipelines*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_program_pipelines : ::Proc
      get_proc(782, Translations.delete_program_pipelines, Procs.delete_program_pipelines)
    end

    # Checks if the OpenGL function *glDeleteProgramPipelines* is loaded.
    def delete_program_pipelines?
      !!@addresses[782]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenProgramPipelines*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_program_pipelines : ::Proc
      get_proc(783, Translations.gen_program_pipelines, Procs.gen_program_pipelines)
    end

    # Checks if the OpenGL function *glGenProgramPipelines* is loaded.
    def gen_program_pipelines?
      !!@addresses[783]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsProgramPipeline*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_program_pipeline : ::Proc
      get_proc(784, Translations.is_program_pipeline, Procs.is_program_pipeline)
    end

    # Checks if the OpenGL function *glIsProgramPipeline* is loaded.
    def is_program_pipeline?
      !!@addresses[784]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramPipelineiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_pipeline_iv : ::Proc
      get_proc(785, Translations.get_program_pipeline_iv, Procs.get_program_pipeline_iv)
    end

    # Checks if the OpenGL function *glGetProgramPipelineiv* is loaded.
    def get_program_pipeline_iv?
      !!@addresses[785]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1i : ::Proc
      get_proc(786, Translations.program_uniform_1i, Procs.program_uniform_1i)
    end

    # Checks if the OpenGL function *glProgramUniform1i* is loaded.
    def program_uniform_1i?
      !!@addresses[786]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1iv : ::Proc
      get_proc(787, Translations.program_uniform_1iv, Procs.program_uniform_1iv)
    end

    # Checks if the OpenGL function *glProgramUniform1iv* is loaded.
    def program_uniform_1iv?
      !!@addresses[787]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1f : ::Proc
      get_proc(788, Translations.program_uniform_1f, Procs.program_uniform_1f)
    end

    # Checks if the OpenGL function *glProgramUniform1f* is loaded.
    def program_uniform_1f?
      !!@addresses[788]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1fv : ::Proc
      get_proc(789, Translations.program_uniform_1fv, Procs.program_uniform_1fv)
    end

    # Checks if the OpenGL function *glProgramUniform1fv* is loaded.
    def program_uniform_1fv?
      !!@addresses[789]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1d : ::Proc
      get_proc(790, Translations.program_uniform_1d, Procs.program_uniform_1d)
    end

    # Checks if the OpenGL function *glProgramUniform1d* is loaded.
    def program_uniform_1d?
      !!@addresses[790]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1dv : ::Proc
      get_proc(791, Translations.program_uniform_1dv, Procs.program_uniform_1dv)
    end

    # Checks if the OpenGL function *glProgramUniform1dv* is loaded.
    def program_uniform_1dv?
      !!@addresses[791]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1ui : ::Proc
      get_proc(792, Translations.program_uniform_1ui, Procs.program_uniform_1ui)
    end

    # Checks if the OpenGL function *glProgramUniform1ui* is loaded.
    def program_uniform_1ui?
      !!@addresses[792]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform1uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_1uiv : ::Proc
      get_proc(793, Translations.program_uniform_1uiv, Procs.program_uniform_1uiv)
    end

    # Checks if the OpenGL function *glProgramUniform1uiv* is loaded.
    def program_uniform_1uiv?
      !!@addresses[793]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2i : ::Proc
      get_proc(794, Translations.program_uniform_2i, Procs.program_uniform_2i)
    end

    # Checks if the OpenGL function *glProgramUniform2i* is loaded.
    def program_uniform_2i?
      !!@addresses[794]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2iv : ::Proc
      get_proc(795, Translations.program_uniform_2iv, Procs.program_uniform_2iv)
    end

    # Checks if the OpenGL function *glProgramUniform2iv* is loaded.
    def program_uniform_2iv?
      !!@addresses[795]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2f : ::Proc
      get_proc(796, Translations.program_uniform_2f, Procs.program_uniform_2f)
    end

    # Checks if the OpenGL function *glProgramUniform2f* is loaded.
    def program_uniform_2f?
      !!@addresses[796]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2fv : ::Proc
      get_proc(797, Translations.program_uniform_2fv, Procs.program_uniform_2fv)
    end

    # Checks if the OpenGL function *glProgramUniform2fv* is loaded.
    def program_uniform_2fv?
      !!@addresses[797]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2d : ::Proc
      get_proc(798, Translations.program_uniform_2d, Procs.program_uniform_2d)
    end

    # Checks if the OpenGL function *glProgramUniform2d* is loaded.
    def program_uniform_2d?
      !!@addresses[798]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2dv : ::Proc
      get_proc(799, Translations.program_uniform_2dv, Procs.program_uniform_2dv)
    end

    # Checks if the OpenGL function *glProgramUniform2dv* is loaded.
    def program_uniform_2dv?
      !!@addresses[799]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2ui : ::Proc
      get_proc(800, Translations.program_uniform_2ui, Procs.program_uniform_2ui)
    end

    # Checks if the OpenGL function *glProgramUniform2ui* is loaded.
    def program_uniform_2ui?
      !!@addresses[800]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform2uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_2uiv : ::Proc
      get_proc(801, Translations.program_uniform_2uiv, Procs.program_uniform_2uiv)
    end

    # Checks if the OpenGL function *glProgramUniform2uiv* is loaded.
    def program_uniform_2uiv?
      !!@addresses[801]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3i : ::Proc
      get_proc(802, Translations.program_uniform_3i, Procs.program_uniform_3i)
    end

    # Checks if the OpenGL function *glProgramUniform3i* is loaded.
    def program_uniform_3i?
      !!@addresses[802]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3iv : ::Proc
      get_proc(803, Translations.program_uniform_3iv, Procs.program_uniform_3iv)
    end

    # Checks if the OpenGL function *glProgramUniform3iv* is loaded.
    def program_uniform_3iv?
      !!@addresses[803]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3f : ::Proc
      get_proc(804, Translations.program_uniform_3f, Procs.program_uniform_3f)
    end

    # Checks if the OpenGL function *glProgramUniform3f* is loaded.
    def program_uniform_3f?
      !!@addresses[804]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3fv : ::Proc
      get_proc(805, Translations.program_uniform_3fv, Procs.program_uniform_3fv)
    end

    # Checks if the OpenGL function *glProgramUniform3fv* is loaded.
    def program_uniform_3fv?
      !!@addresses[805]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3d : ::Proc
      get_proc(806, Translations.program_uniform_3d, Procs.program_uniform_3d)
    end

    # Checks if the OpenGL function *glProgramUniform3d* is loaded.
    def program_uniform_3d?
      !!@addresses[806]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3dv : ::Proc
      get_proc(807, Translations.program_uniform_3dv, Procs.program_uniform_3dv)
    end

    # Checks if the OpenGL function *glProgramUniform3dv* is loaded.
    def program_uniform_3dv?
      !!@addresses[807]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3ui : ::Proc
      get_proc(808, Translations.program_uniform_3ui, Procs.program_uniform_3ui)
    end

    # Checks if the OpenGL function *glProgramUniform3ui* is loaded.
    def program_uniform_3ui?
      !!@addresses[808]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform3uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_3uiv : ::Proc
      get_proc(809, Translations.program_uniform_3uiv, Procs.program_uniform_3uiv)
    end

    # Checks if the OpenGL function *glProgramUniform3uiv* is loaded.
    def program_uniform_3uiv?
      !!@addresses[809]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4i : ::Proc
      get_proc(810, Translations.program_uniform_4i, Procs.program_uniform_4i)
    end

    # Checks if the OpenGL function *glProgramUniform4i* is loaded.
    def program_uniform_4i?
      !!@addresses[810]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4iv : ::Proc
      get_proc(811, Translations.program_uniform_4iv, Procs.program_uniform_4iv)
    end

    # Checks if the OpenGL function *glProgramUniform4iv* is loaded.
    def program_uniform_4iv?
      !!@addresses[811]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4f : ::Proc
      get_proc(812, Translations.program_uniform_4f, Procs.program_uniform_4f)
    end

    # Checks if the OpenGL function *glProgramUniform4f* is loaded.
    def program_uniform_4f?
      !!@addresses[812]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4fv : ::Proc
      get_proc(813, Translations.program_uniform_4fv, Procs.program_uniform_4fv)
    end

    # Checks if the OpenGL function *glProgramUniform4fv* is loaded.
    def program_uniform_4fv?
      !!@addresses[813]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4d : ::Proc
      get_proc(814, Translations.program_uniform_4d, Procs.program_uniform_4d)
    end

    # Checks if the OpenGL function *glProgramUniform4d* is loaded.
    def program_uniform_4d?
      !!@addresses[814]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4dv : ::Proc
      get_proc(815, Translations.program_uniform_4dv, Procs.program_uniform_4dv)
    end

    # Checks if the OpenGL function *glProgramUniform4dv* is loaded.
    def program_uniform_4dv?
      !!@addresses[815]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4ui*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4ui : ::Proc
      get_proc(816, Translations.program_uniform_4ui, Procs.program_uniform_4ui)
    end

    # Checks if the OpenGL function *glProgramUniform4ui* is loaded.
    def program_uniform_4ui?
      !!@addresses[816]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniform4uiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_4uiv : ::Proc
      get_proc(817, Translations.program_uniform_4uiv, Procs.program_uniform_4uiv)
    end

    # Checks if the OpenGL function *glProgramUniform4uiv* is loaded.
    def program_uniform_4uiv?
      !!@addresses[817]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix2_fv : ::Proc
      get_proc(818, Translations.program_uniform_matrix2_fv, Procs.program_uniform_matrix2_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix2fv* is loaded.
    def program_uniform_matrix2_fv?
      !!@addresses[818]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix3_fv : ::Proc
      get_proc(819, Translations.program_uniform_matrix3_fv, Procs.program_uniform_matrix3_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix3fv* is loaded.
    def program_uniform_matrix3_fv?
      !!@addresses[819]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix4_fv : ::Proc
      get_proc(820, Translations.program_uniform_matrix4_fv, Procs.program_uniform_matrix4_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix4fv* is loaded.
    def program_uniform_matrix4_fv?
      !!@addresses[820]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix2_dv : ::Proc
      get_proc(821, Translations.program_uniform_matrix2_dv, Procs.program_uniform_matrix2_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix2dv* is loaded.
    def program_uniform_matrix2_dv?
      !!@addresses[821]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix3_dv : ::Proc
      get_proc(822, Translations.program_uniform_matrix3_dv, Procs.program_uniform_matrix3_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix3dv* is loaded.
    def program_uniform_matrix3_dv?
      !!@addresses[822]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix4_dv : ::Proc
      get_proc(823, Translations.program_uniform_matrix4_dv, Procs.program_uniform_matrix4_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix4dv* is loaded.
    def program_uniform_matrix4_dv?
      !!@addresses[823]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix2x3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix2x3_fv : ::Proc
      get_proc(824, Translations.program_uniform_matrix2x3_fv, Procs.program_uniform_matrix2x3_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix2x3fv* is loaded.
    def program_uniform_matrix2x3_fv?
      !!@addresses[824]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix3x2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix3x2_fv : ::Proc
      get_proc(825, Translations.program_uniform_matrix3x2_fv, Procs.program_uniform_matrix3x2_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix3x2fv* is loaded.
    def program_uniform_matrix3x2_fv?
      !!@addresses[825]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix2x4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix2x4_fv : ::Proc
      get_proc(826, Translations.program_uniform_matrix2x4_fv, Procs.program_uniform_matrix2x4_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix2x4fv* is loaded.
    def program_uniform_matrix2x4_fv?
      !!@addresses[826]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix4x2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix4x2_fv : ::Proc
      get_proc(827, Translations.program_uniform_matrix4x2_fv, Procs.program_uniform_matrix4x2_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix4x2fv* is loaded.
    def program_uniform_matrix4x2_fv?
      !!@addresses[827]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix3x4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix3x4_fv : ::Proc
      get_proc(828, Translations.program_uniform_matrix3x4_fv, Procs.program_uniform_matrix3x4_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix3x4fv* is loaded.
    def program_uniform_matrix3x4_fv?
      !!@addresses[828]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix4x3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix4x3_fv : ::Proc
      get_proc(829, Translations.program_uniform_matrix4x3_fv, Procs.program_uniform_matrix4x3_fv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix4x3fv* is loaded.
    def program_uniform_matrix4x3_fv?
      !!@addresses[829]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix2x3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix2x3_dv : ::Proc
      get_proc(830, Translations.program_uniform_matrix2x3_dv, Procs.program_uniform_matrix2x3_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix2x3dv* is loaded.
    def program_uniform_matrix2x3_dv?
      !!@addresses[830]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix3x2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix3x2_dv : ::Proc
      get_proc(831, Translations.program_uniform_matrix3x2_dv, Procs.program_uniform_matrix3x2_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix3x2dv* is loaded.
    def program_uniform_matrix3x2_dv?
      !!@addresses[831]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix2x4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix2x4_dv : ::Proc
      get_proc(832, Translations.program_uniform_matrix2x4_dv, Procs.program_uniform_matrix2x4_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix2x4dv* is loaded.
    def program_uniform_matrix2x4_dv?
      !!@addresses[832]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix4x2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix4x2_dv : ::Proc
      get_proc(833, Translations.program_uniform_matrix4x2_dv, Procs.program_uniform_matrix4x2_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix4x2dv* is loaded.
    def program_uniform_matrix4x2_dv?
      !!@addresses[833]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix3x4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix3x4_dv : ::Proc
      get_proc(834, Translations.program_uniform_matrix3x4_dv, Procs.program_uniform_matrix3x4_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix3x4dv* is loaded.
    def program_uniform_matrix3x4_dv?
      !!@addresses[834]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramUniformMatrix4x3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_uniform_matrix4x3_dv : ::Proc
      get_proc(835, Translations.program_uniform_matrix4x3_dv, Procs.program_uniform_matrix4x3_dv)
    end

    # Checks if the OpenGL function *glProgramUniformMatrix4x3dv* is loaded.
    def program_uniform_matrix4x3_dv?
      !!@addresses[835]
    end

    # Retrieves a `Proc` for the OpenGL function *glValidateProgramPipeline*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def validate_program_pipeline : ::Proc
      get_proc(836, Translations.validate_program_pipeline, Procs.validate_program_pipeline)
    end

    # Checks if the OpenGL function *glValidateProgramPipeline* is loaded.
    def validate_program_pipeline?
      !!@addresses[836]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramPipelineInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_pipeline_info_log : ::Proc
      get_proc(837, Translations.get_program_pipeline_info_log, Procs.get_program_pipeline_info_log)
    end

    # Checks if the OpenGL function *glGetProgramPipelineInfoLog* is loaded.
    def get_program_pipeline_info_log?
      !!@addresses[837]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL1d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_1d : ::Proc
      get_proc(838, Translations.vertex_attrib_l_1d, Procs.vertex_attrib_l_1d)
    end

    # Checks if the OpenGL function *glVertexAttribL1d* is loaded.
    def vertex_attrib_l_1d?
      !!@addresses[838]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL2d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_2d : ::Proc
      get_proc(839, Translations.vertex_attrib_l_2d, Procs.vertex_attrib_l_2d)
    end

    # Checks if the OpenGL function *glVertexAttribL2d* is loaded.
    def vertex_attrib_l_2d?
      !!@addresses[839]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL3d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_3d : ::Proc
      get_proc(840, Translations.vertex_attrib_l_3d, Procs.vertex_attrib_l_3d)
    end

    # Checks if the OpenGL function *glVertexAttribL3d* is loaded.
    def vertex_attrib_l_3d?
      !!@addresses[840]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL4d*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_4d : ::Proc
      get_proc(841, Translations.vertex_attrib_l_4d, Procs.vertex_attrib_l_4d)
    end

    # Checks if the OpenGL function *glVertexAttribL4d* is loaded.
    def vertex_attrib_l_4d?
      !!@addresses[841]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL1dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_1dv : ::Proc
      get_proc(842, Translations.vertex_attrib_l_1dv, Procs.vertex_attrib_l_1dv)
    end

    # Checks if the OpenGL function *glVertexAttribL1dv* is loaded.
    def vertex_attrib_l_1dv?
      !!@addresses[842]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL2dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_2dv : ::Proc
      get_proc(843, Translations.vertex_attrib_l_2dv, Procs.vertex_attrib_l_2dv)
    end

    # Checks if the OpenGL function *glVertexAttribL2dv* is loaded.
    def vertex_attrib_l_2dv?
      !!@addresses[843]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL3dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_3dv : ::Proc
      get_proc(844, Translations.vertex_attrib_l_3dv, Procs.vertex_attrib_l_3dv)
    end

    # Checks if the OpenGL function *glVertexAttribL3dv* is loaded.
    def vertex_attrib_l_3dv?
      !!@addresses[844]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribL4dv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_4dv : ::Proc
      get_proc(845, Translations.vertex_attrib_l_4dv, Procs.vertex_attrib_l_4dv)
    end

    # Checks if the OpenGL function *glVertexAttribL4dv* is loaded.
    def vertex_attrib_l_4dv?
      !!@addresses[845]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribLPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_l_pointer : ::Proc
      get_proc(846, Translations.vertex_attrib_l_pointer, Procs.vertex_attrib_l_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribLPointer* is loaded.
    def vertex_attrib_l_pointer?
      !!@addresses[846]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribLdv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_l_dv : ::Proc
      get_proc(847, Translations.get_vertex_attrib_l_dv, Procs.get_vertex_attrib_l_dv)
    end

    # Checks if the OpenGL function *glGetVertexAttribLdv* is loaded.
    def get_vertex_attrib_l_dv?
      !!@addresses[847]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewportArrayv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport_array_v : ::Proc
      get_proc(848, Translations.viewport_array_v, Procs.viewport_array_v)
    end

    # Checks if the OpenGL function *glViewportArrayv* is loaded.
    def viewport_array_v?
      !!@addresses[848]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewportIndexedf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport_indexed_f : ::Proc
      get_proc(849, Translations.viewport_indexed_f, Procs.viewport_indexed_f)
    end

    # Checks if the OpenGL function *glViewportIndexedf* is loaded.
    def viewport_indexed_f?
      !!@addresses[849]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewportIndexedfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport_indexed_fv : ::Proc
      get_proc(850, Translations.viewport_indexed_fv, Procs.viewport_indexed_fv)
    end

    # Checks if the OpenGL function *glViewportIndexedfv* is loaded.
    def viewport_indexed_fv?
      !!@addresses[850]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissorArrayv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor_array_v : ::Proc
      get_proc(851, Translations.scissor_array_v, Procs.scissor_array_v)
    end

    # Checks if the OpenGL function *glScissorArrayv* is loaded.
    def scissor_array_v?
      !!@addresses[851]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissorIndexed*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor_indexed : ::Proc
      get_proc(852, Translations.scissor_indexed, Procs.scissor_indexed)
    end

    # Checks if the OpenGL function *glScissorIndexed* is loaded.
    def scissor_indexed?
      !!@addresses[852]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissorIndexedv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor_indexedv : ::Proc
      get_proc(853, Translations.scissor_indexedv, Procs.scissor_indexedv)
    end

    # Checks if the OpenGL function *glScissorIndexedv* is loaded.
    def scissor_indexedv?
      !!@addresses[853]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRangeArrayv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_range_array_v : ::Proc
      get_proc(854, Translations.depth_range_array_v, Procs.depth_range_array_v)
    end

    # Checks if the OpenGL function *glDepthRangeArrayv* is loaded.
    def depth_range_array_v?
      !!@addresses[854]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRangeIndexed*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_range_indexed : ::Proc
      get_proc(855, Translations.depth_range_indexed, Procs.depth_range_indexed)
    end

    # Checks if the OpenGL function *glDepthRangeIndexed* is loaded.
    def depth_range_indexed?
      !!@addresses[855]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFloati_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_float_i_v : ::Proc
      get_proc(856, Translations.get_float_i_v, Procs.get_float_i_v)
    end

    # Checks if the OpenGL function *glGetFloati_v* is loaded.
    def get_float_i_v?
      !!@addresses[856]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetDoublei_v*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_double_i_v : ::Proc
      get_proc(857, Translations.get_double_i_v, Procs.get_double_i_v)
    end

    # Checks if the OpenGL function *glGetDoublei_v* is loaded.
    def get_double_i_v?
      !!@addresses[857]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArraysInstancedBaseInstance*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays_instanced_base_instance : ::Proc
      get_proc(858, Translations.draw_arrays_instanced_base_instance, Procs.draw_arrays_instanced_base_instance)
    end

    # Checks if the OpenGL function *glDrawArraysInstancedBaseInstance* is loaded.
    def draw_arrays_instanced_base_instance?
      !!@addresses[858]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsInstancedBaseInstance*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_instanced_base_instance : ::Proc
      get_proc(859, Translations.draw_elements_instanced_base_instance, Procs.draw_elements_instanced_base_instance)
    end

    # Checks if the OpenGL function *glDrawElementsInstancedBaseInstance* is loaded.
    def draw_elements_instanced_base_instance?
      !!@addresses[859]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElementsInstancedBaseVertexBaseInstance*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements_instanced_base_vertex_base_instance : ::Proc
      get_proc(860, Translations.draw_elements_instanced_base_vertex_base_instance, Procs.draw_elements_instanced_base_vertex_base_instance)
    end

    # Checks if the OpenGL function *glDrawElementsInstancedBaseVertexBaseInstance* is loaded.
    def draw_elements_instanced_base_vertex_base_instance?
      !!@addresses[860]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetInternalformativ*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_internalformat_iv : ::Proc
      get_proc(861, Translations.get_internalformat_iv, Procs.get_internalformat_iv)
    end

    # Checks if the OpenGL function *glGetInternalformativ* is loaded.
    def get_internalformat_iv?
      !!@addresses[861]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveAtomicCounterBufferiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_atomic_counter_buffer_iv : ::Proc
      get_proc(862, Translations.get_active_atomic_counter_buffer_iv, Procs.get_active_atomic_counter_buffer_iv)
    end

    # Checks if the OpenGL function *glGetActiveAtomicCounterBufferiv* is loaded.
    def get_active_atomic_counter_buffer_iv?
      !!@addresses[862]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindImageTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_image_texture : ::Proc
      get_proc(863, Translations.bind_image_texture, Procs.bind_image_texture)
    end

    # Checks if the OpenGL function *glBindImageTexture* is loaded.
    def bind_image_texture?
      !!@addresses[863]
    end

    # Retrieves a `Proc` for the OpenGL function *glMemoryBarrier*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def memory_barrier : ::Proc
      get_proc(864, Translations.memory_barrier, Procs.memory_barrier)
    end

    # Checks if the OpenGL function *glMemoryBarrier* is loaded.
    def memory_barrier?
      !!@addresses[864]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexStorage1D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_storage_1d : ::Proc
      get_proc(865, Translations.tex_storage_1d, Procs.tex_storage_1d)
    end

    # Checks if the OpenGL function *glTexStorage1D* is loaded.
    def tex_storage_1d?
      !!@addresses[865]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexStorage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_storage_2d : ::Proc
      get_proc(866, Translations.tex_storage_2d, Procs.tex_storage_2d)
    end

    # Checks if the OpenGL function *glTexStorage2D* is loaded.
    def tex_storage_2d?
      !!@addresses[866]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexStorage3D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_storage_3d : ::Proc
      get_proc(867, Translations.tex_storage_3d, Procs.tex_storage_3d)
    end

    # Checks if the OpenGL function *glTexStorage3D* is loaded.
    def tex_storage_3d?
      !!@addresses[867]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawTransformFeedbackInstanced*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_transform_feedback_instanced : ::Proc
      get_proc(868, Translations.draw_transform_feedback_instanced, Procs.draw_transform_feedback_instanced)
    end

    # Checks if the OpenGL function *glDrawTransformFeedbackInstanced* is loaded.
    def draw_transform_feedback_instanced?
      !!@addresses[868]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawTransformFeedbackStreamInstanced*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_transform_feedback_stream_instanced : ::Proc
      get_proc(869, Translations.draw_transform_feedback_stream_instanced, Procs.draw_transform_feedback_stream_instanced)
    end

    # Checks if the OpenGL function *glDrawTransformFeedbackStreamInstanced* is loaded.
    def draw_transform_feedback_stream_instanced?
      !!@addresses[869]
    end
  end
end
