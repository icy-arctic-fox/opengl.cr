require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime and returns `Proc` instances to invoke them.
  # The OpenGL functions are lazy-loaded.
  struct Loader
    FUNCTION_COUNT = 452

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
  end
end
