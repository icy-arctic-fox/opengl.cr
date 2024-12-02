require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime and returns `Proc` instances to invoke them.
  # The OpenGL functions are lazy-loaded.
  struct Loader
    FUNCTION_COUNT = 111

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

    # Retrieves a `Proc` for the OpenGL function *glBindBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer : ::Proc
      get_proc(1, Translations.bind_buffer, Procs.bind_buffer)
    end

    # Checks if the OpenGL function *glBindBuffer* is loaded.
    def bind_buffer?
      !!@addresses[1]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_framebuffer : ::Proc
      get_proc(2, Translations.bind_framebuffer, Procs.bind_framebuffer)
    end

    # Checks if the OpenGL function *glBindFramebuffer* is loaded.
    def bind_framebuffer?
      !!@addresses[2]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_renderbuffer : ::Proc
      get_proc(3, Translations.bind_renderbuffer, Procs.bind_renderbuffer)
    end

    # Checks if the OpenGL function *glBindRenderbuffer* is loaded.
    def bind_renderbuffer?
      !!@addresses[3]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_texture : ::Proc
      get_proc(4, Translations.bind_texture, Procs.bind_texture)
    end

    # Checks if the OpenGL function *glBindTexture* is loaded.
    def bind_texture?
      !!@addresses[4]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_color : ::Proc
      get_proc(5, Translations.blend_color, Procs.blend_color)
    end

    # Checks if the OpenGL function *glBlendColor* is loaded.
    def blend_color?
      !!@addresses[5]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation : ::Proc
      get_proc(6, Translations.blend_equation, Procs.blend_equation)
    end

    # Checks if the OpenGL function *glBlendEquation* is loaded.
    def blend_equation?
      !!@addresses[6]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquationSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation_separate : ::Proc
      get_proc(7, Translations.blend_equation_separate, Procs.blend_equation_separate)
    end

    # Checks if the OpenGL function *glBlendEquationSeparate* is loaded.
    def blend_equation_separate?
      !!@addresses[7]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func : ::Proc
      get_proc(8, Translations.blend_func, Procs.blend_func)
    end

    # Checks if the OpenGL function *glBlendFunc* is loaded.
    def blend_func?
      !!@addresses[8]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func_separate : ::Proc
      get_proc(9, Translations.blend_func_separate, Procs.blend_func_separate)
    end

    # Checks if the OpenGL function *glBlendFuncSeparate* is loaded.
    def blend_func_separate?
      !!@addresses[9]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_data : ::Proc
      get_proc(10, Translations.buffer_data, Procs.buffer_data)
    end

    # Checks if the OpenGL function *glBufferData* is loaded.
    def buffer_data?
      !!@addresses[10]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_sub_data : ::Proc
      get_proc(11, Translations.buffer_sub_data, Procs.buffer_sub_data)
    end

    # Checks if the OpenGL function *glBufferSubData* is loaded.
    def buffer_sub_data?
      !!@addresses[11]
    end

    # Retrieves a `Proc` for the OpenGL function *glCheckFramebufferStatus*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def check_framebuffer_status : ::Proc
      get_proc(12, Translations.check_framebuffer_status, Procs.check_framebuffer_status)
    end

    # Checks if the OpenGL function *glCheckFramebufferStatus* is loaded.
    def check_framebuffer_status?
      !!@addresses[12]
    end

    # Retrieves a `Proc` for the OpenGL function *glClear*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear : ::Proc
      get_proc(13, Translations.clear, Procs.clear)
    end

    # Checks if the OpenGL function *glClear* is loaded.
    def clear?
      !!@addresses[13]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_color : ::Proc
      get_proc(14, Translations.clear_color, Procs.clear_color)
    end

    # Checks if the OpenGL function *glClearColor* is loaded.
    def clear_color?
      !!@addresses[14]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearDepthf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_depth_f : ::Proc
      get_proc(15, Translations.clear_depth_f, Procs.clear_depth_f)
    end

    # Checks if the OpenGL function *glClearDepthf* is loaded.
    def clear_depth_f?
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

    # Retrieves a `Proc` for the OpenGL function *glColorMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def color_mask : ::Proc
      get_proc(17, Translations.color_mask, Procs.color_mask)
    end

    # Checks if the OpenGL function *glColorMask* is loaded.
    def color_mask?
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

    # Retrieves a `Proc` for the OpenGL function *glCreateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_program : ::Proc
      get_proc(19, Translations.create_program, Procs.create_program)
    end

    # Checks if the OpenGL function *glCreateProgram* is loaded.
    def create_program?
      !!@addresses[19]
    end

    # Retrieves a `Proc` for the OpenGL function *glCullFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def cull_face : ::Proc
      get_proc(20, Translations.cull_face, Procs.cull_face)
    end

    # Checks if the OpenGL function *glCullFace* is loaded.
    def cull_face?
      !!@addresses[20]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_func : ::Proc
      get_proc(21, Translations.depth_func, Procs.depth_func)
    end

    # Checks if the OpenGL function *glDepthFunc* is loaded.
    def depth_func?
      !!@addresses[21]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_mask : ::Proc
      get_proc(22, Translations.depth_mask, Procs.depth_mask)
    end

    # Checks if the OpenGL function *glDepthMask* is loaded.
    def depth_mask?
      !!@addresses[22]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRangef*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_range_f : ::Proc
      get_proc(23, Translations.depth_range_f, Procs.depth_range_f)
    end

    # Checks if the OpenGL function *glDepthRangef* is loaded.
    def depth_range_f?
      !!@addresses[23]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable : ::Proc
      get_proc(24, Translations.disable, Procs.disable)
    end

    # Checks if the OpenGL function *glDisable* is loaded.
    def disable?
      !!@addresses[24]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_vertex_attrib_array : ::Proc
      get_proc(25, Translations.disable_vertex_attrib_array, Procs.disable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glDisableVertexAttribArray* is loaded.
    def disable_vertex_attrib_array?
      !!@addresses[25]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays : ::Proc
      get_proc(26, Translations.draw_arrays, Procs.draw_arrays)
    end

    # Checks if the OpenGL function *glDrawArrays* is loaded.
    def draw_arrays?
      !!@addresses[26]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawRangeElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_range_elements : ::Proc
      get_proc(27, Translations.draw_range_elements, Procs.draw_range_elements)
    end

    # Checks if the OpenGL function *glDrawRangeElements* is loaded.
    def draw_range_elements?
      !!@addresses[27]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable : ::Proc
      get_proc(28, Translations.enable, Procs.enable)
    end

    # Checks if the OpenGL function *glEnable* is loaded.
    def enable?
      !!@addresses[28]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_vertex_attrib_array : ::Proc
      get_proc(29, Translations.enable_vertex_attrib_array, Procs.enable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glEnableVertexAttribArray* is loaded.
    def enable_vertex_attrib_array?
      !!@addresses[29]
    end

    # Retrieves a `Proc` for the OpenGL function *glFinish*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def finish : ::Proc
      get_proc(30, Translations.finish, Procs.finish)
    end

    # Checks if the OpenGL function *glFinish* is loaded.
    def finish?
      !!@addresses[30]
    end

    # Retrieves a `Proc` for the OpenGL function *glFlush*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def flush : ::Proc
      get_proc(31, Translations.flush, Procs.flush)
    end

    # Checks if the OpenGL function *glFlush* is loaded.
    def flush?
      !!@addresses[31]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_renderbuffer : ::Proc
      get_proc(32, Translations.framebuffer_renderbuffer, Procs.framebuffer_renderbuffer)
    end

    # Checks if the OpenGL function *glFramebufferRenderbuffer* is loaded.
    def framebuffer_renderbuffer?
      !!@addresses[32]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_2d : ::Proc
      get_proc(33, Translations.framebuffer_texture_2d, Procs.framebuffer_texture_2d)
    end

    # Checks if the OpenGL function *glFramebufferTexture2D* is loaded.
    def framebuffer_texture_2d?
      !!@addresses[33]
    end

    # Retrieves a `Proc` for the OpenGL function *glFrontFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def front_face : ::Proc
      get_proc(34, Translations.front_face, Procs.front_face)
    end

    # Checks if the OpenGL function *glFrontFace* is loaded.
    def front_face?
      !!@addresses[34]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_buffers : ::Proc
      get_proc(35, Translations.gen_buffers, Procs.gen_buffers)
    end

    # Checks if the OpenGL function *glGenBuffers* is loaded.
    def gen_buffers?
      !!@addresses[35]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenerateMipmap*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def generate_mipmap : ::Proc
      get_proc(36, Translations.generate_mipmap, Procs.generate_mipmap)
    end

    # Checks if the OpenGL function *glGenerateMipmap* is loaded.
    def generate_mipmap?
      !!@addresses[36]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_framebuffers : ::Proc
      get_proc(37, Translations.gen_framebuffers, Procs.gen_framebuffers)
    end

    # Checks if the OpenGL function *glGenFramebuffers* is loaded.
    def gen_framebuffers?
      !!@addresses[37]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_renderbuffers : ::Proc
      get_proc(38, Translations.gen_renderbuffers, Procs.gen_renderbuffers)
    end

    # Checks if the OpenGL function *glGenRenderbuffers* is loaded.
    def gen_renderbuffers?
      !!@addresses[38]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_textures : ::Proc
      get_proc(39, Translations.gen_textures, Procs.gen_textures)
    end

    # Checks if the OpenGL function *glGenTextures* is loaded.
    def gen_textures?
      !!@addresses[39]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attrib_location : ::Proc
      get_proc(40, Translations.get_attrib_location, Procs.get_attrib_location)
    end

    # Checks if the OpenGL function *glGetAttribLocation* is loaded.
    def get_attrib_location?
      !!@addresses[40]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBooleanv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_boolean_v : ::Proc
      get_proc(41, Translations.get_boolean_v, Procs.get_boolean_v)
    end

    # Checks if the OpenGL function *glGetBooleanv* is loaded.
    def get_boolean_v?
      !!@addresses[41]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_iv : ::Proc
      get_proc(42, Translations.get_buffer_parameter_iv, Procs.get_buffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetBufferParameteriv* is loaded.
    def get_buffer_parameter_iv?
      !!@addresses[42]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetError*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_error : ::Proc
      get_proc(43, Translations.get_error, Procs.get_error)
    end

    # Checks if the OpenGL function *glGetError* is loaded.
    def get_error?
      !!@addresses[43]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFloatv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_float_v : ::Proc
      get_proc(44, Translations.get_float_v, Procs.get_float_v)
    end

    # Checks if the OpenGL function *glGetFloatv* is loaded.
    def get_float_v?
      !!@addresses[44]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFramebufferAttachmentParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_framebuffer_attachment_parameter_iv : ::Proc
      get_proc(45, Translations.get_framebuffer_attachment_parameter_iv, Procs.get_framebuffer_attachment_parameter_iv)
    end

    # Checks if the OpenGL function *glGetFramebufferAttachmentParameteriv* is loaded.
    def get_framebuffer_attachment_parameter_iv?
      !!@addresses[45]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetGraphicsResetStatus*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_graphics_reset_status : ::Proc
      get_proc(46, Translations.get_graphics_reset_status, Procs.get_graphics_reset_status)
    end

    # Checks if the OpenGL function *glGetGraphicsResetStatus* is loaded.
    def get_graphics_reset_status?
      !!@addresses[46]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetIntegerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_v : ::Proc
      get_proc(47, Translations.get_integer_v, Procs.get_integer_v)
    end

    # Checks if the OpenGL function *glGetIntegerv* is loaded.
    def get_integer_v?
      !!@addresses[47]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_iv : ::Proc
      get_proc(48, Translations.get_program_iv, Procs.get_program_iv)
    end

    # Checks if the OpenGL function *glGetProgramiv* is loaded.
    def get_program_iv?
      !!@addresses[48]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetRenderbufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_renderbuffer_parameter_iv : ::Proc
      get_proc(49, Translations.get_renderbuffer_parameter_iv, Procs.get_renderbuffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetRenderbufferParameteriv* is loaded.
    def get_renderbuffer_parameter_iv?
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

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_fv : ::Proc
      get_proc(51, Translations.get_tex_parameter_fv, Procs.get_tex_parameter_fv)
    end

    # Checks if the OpenGL function *glGetTexParameterfv* is loaded.
    def get_tex_parameter_fv?
      !!@addresses[51]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_iv : ::Proc
      get_proc(52, Translations.get_tex_parameter_iv, Procs.get_tex_parameter_iv)
    end

    # Checks if the OpenGL function *glGetTexParameteriv* is loaded.
    def get_tex_parameter_iv?
      !!@addresses[52]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetnUniformfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def getn_uniform_fv : ::Proc
      get_proc(53, Translations.getn_uniform_fv, Procs.getn_uniform_fv)
    end

    # Checks if the OpenGL function *glGetnUniformfv* is loaded.
    def getn_uniform_fv?
      !!@addresses[53]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetnUniformiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def getn_uniform_iv : ::Proc
      get_proc(54, Translations.getn_uniform_iv, Procs.getn_uniform_iv)
    end

    # Checks if the OpenGL function *glGetnUniformiv* is loaded.
    def getn_uniform_iv?
      !!@addresses[54]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_location : ::Proc
      get_proc(55, Translations.get_uniform_location, Procs.get_uniform_location)
    end

    # Checks if the OpenGL function *glGetUniformLocation* is loaded.
    def get_uniform_location?
      !!@addresses[55]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_fv : ::Proc
      get_proc(56, Translations.get_vertex_attrib_fv, Procs.get_vertex_attrib_fv)
    end

    # Checks if the OpenGL function *glGetVertexAttribfv* is loaded.
    def get_vertex_attrib_fv?
      !!@addresses[56]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_iv : ::Proc
      get_proc(57, Translations.get_vertex_attrib_iv, Procs.get_vertex_attrib_iv)
    end

    # Checks if the OpenGL function *glGetVertexAttribiv* is loaded.
    def get_vertex_attrib_iv?
      !!@addresses[57]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_pointer_v : ::Proc
      get_proc(58, Translations.get_vertex_attrib_pointer_v, Procs.get_vertex_attrib_pointer_v)
    end

    # Checks if the OpenGL function *glGetVertexAttribPointerv* is loaded.
    def get_vertex_attrib_pointer_v?
      !!@addresses[58]
    end

    # Retrieves a `Proc` for the OpenGL function *glHint*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def hint : ::Proc
      get_proc(59, Translations.hint, Procs.hint)
    end

    # Checks if the OpenGL function *glHint* is loaded.
    def hint?
      !!@addresses[59]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsEnabled*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_enabled : ::Proc
      get_proc(60, Translations.is_enabled, Procs.is_enabled)
    end

    # Checks if the OpenGL function *glIsEnabled* is loaded.
    def is_enabled?
      !!@addresses[60]
    end

    # Retrieves a `Proc` for the OpenGL function *glLineWidth*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def line_width : ::Proc
      get_proc(61, Translations.line_width, Procs.line_width)
    end

    # Checks if the OpenGL function *glLineWidth* is loaded.
    def line_width?
      !!@addresses[61]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelStorei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_store_i : ::Proc
      get_proc(62, Translations.pixel_store_i, Procs.pixel_store_i)
    end

    # Checks if the OpenGL function *glPixelStorei* is loaded.
    def pixel_store_i?
      !!@addresses[62]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonOffset*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_offset : ::Proc
      get_proc(63, Translations.polygon_offset, Procs.polygon_offset)
    end

    # Checks if the OpenGL function *glPolygonOffset* is loaded.
    def polygon_offset?
      !!@addresses[63]
    end

    # Retrieves a `Proc` for the OpenGL function *glProgramBinary*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def program_binary : ::Proc
      get_proc(64, Translations.program_binary, Procs.program_binary)
    end

    # Checks if the OpenGL function *glProgramBinary* is loaded.
    def program_binary?
      !!@addresses[64]
    end

    # Retrieves a `Proc` for the OpenGL function *glReadnPixels*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def readn_pixels : ::Proc
      get_proc(65, Translations.readn_pixels, Procs.readn_pixels)
    end

    # Checks if the OpenGL function *glReadnPixels* is loaded.
    def readn_pixels?
      !!@addresses[65]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderbufferStorage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def renderbuffer_storage : ::Proc
      get_proc(66, Translations.renderbuffer_storage, Procs.renderbuffer_storage)
    end

    # Checks if the OpenGL function *glRenderbufferStorage* is loaded.
    def renderbuffer_storage?
      !!@addresses[66]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleCoverage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_coverage : ::Proc
      get_proc(67, Translations.sample_coverage, Procs.sample_coverage)
    end

    # Checks if the OpenGL function *glSampleCoverage* is loaded.
    def sample_coverage?
      !!@addresses[67]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor : ::Proc
      get_proc(68, Translations.scissor, Procs.scissor)
    end

    # Checks if the OpenGL function *glScissor* is loaded.
    def scissor?
      !!@addresses[68]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func : ::Proc
      get_proc(69, Translations.stencil_func, Procs.stencil_func)
    end

    # Checks if the OpenGL function *glStencilFunc* is loaded.
    def stencil_func?
      !!@addresses[69]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func_separate : ::Proc
      get_proc(70, Translations.stencil_func_separate, Procs.stencil_func_separate)
    end

    # Checks if the OpenGL function *glStencilFuncSeparate* is loaded.
    def stencil_func_separate?
      !!@addresses[70]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask : ::Proc
      get_proc(71, Translations.stencil_mask, Procs.stencil_mask)
    end

    # Checks if the OpenGL function *glStencilMask* is loaded.
    def stencil_mask?
      !!@addresses[71]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMaskSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask_separate : ::Proc
      get_proc(72, Translations.stencil_mask_separate, Procs.stencil_mask_separate)
    end

    # Checks if the OpenGL function *glStencilMaskSeparate* is loaded.
    def stencil_mask_separate?
      !!@addresses[72]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOp*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op : ::Proc
      get_proc(73, Translations.stencil_op, Procs.stencil_op)
    end

    # Checks if the OpenGL function *glStencilOp* is loaded.
    def stencil_op?
      !!@addresses[73]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOpSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op_separate : ::Proc
      get_proc(74, Translations.stencil_op_separate, Procs.stencil_op_separate)
    end

    # Checks if the OpenGL function *glStencilOpSeparate* is loaded.
    def stencil_op_separate?
      !!@addresses[74]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexStorage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_storage_2d : ::Proc
      get_proc(75, Translations.tex_storage_2d, Procs.tex_storage_2d)
    end

    # Checks if the OpenGL function *glTexStorage2D* is loaded.
    def tex_storage_2d?
      !!@addresses[75]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_f : ::Proc
      get_proc(76, Translations.tex_parameter_f, Procs.tex_parameter_f)
    end

    # Checks if the OpenGL function *glTexParameterf* is loaded.
    def tex_parameter_f?
      !!@addresses[76]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_fv : ::Proc
      get_proc(77, Translations.tex_parameter_fv, Procs.tex_parameter_fv)
    end

    # Checks if the OpenGL function *glTexParameterfv* is loaded.
    def tex_parameter_fv?
      !!@addresses[77]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i : ::Proc
      get_proc(78, Translations.tex_parameter_i, Procs.tex_parameter_i)
    end

    # Checks if the OpenGL function *glTexParameteri* is loaded.
    def tex_parameter_i?
      !!@addresses[78]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_iv : ::Proc
      get_proc(79, Translations.tex_parameter_iv, Procs.tex_parameter_iv)
    end

    # Checks if the OpenGL function *glTexParameteriv* is loaded.
    def tex_parameter_iv?
      !!@addresses[79]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_2d : ::Proc
      get_proc(80, Translations.tex_sub_image_2d, Procs.tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glTexSubImage2D* is loaded.
    def tex_sub_image_2d?
      !!@addresses[80]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1f : ::Proc
      get_proc(81, Translations.uniform_1f, Procs.uniform_1f)
    end

    # Checks if the OpenGL function *glUniform1f* is loaded.
    def uniform_1f?
      !!@addresses[81]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1fv : ::Proc
      get_proc(82, Translations.uniform_1fv, Procs.uniform_1fv)
    end

    # Checks if the OpenGL function *glUniform1fv* is loaded.
    def uniform_1fv?
      !!@addresses[82]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1i : ::Proc
      get_proc(83, Translations.uniform_1i, Procs.uniform_1i)
    end

    # Checks if the OpenGL function *glUniform1i* is loaded.
    def uniform_1i?
      !!@addresses[83]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1iv : ::Proc
      get_proc(84, Translations.uniform_1iv, Procs.uniform_1iv)
    end

    # Checks if the OpenGL function *glUniform1iv* is loaded.
    def uniform_1iv?
      !!@addresses[84]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2f : ::Proc
      get_proc(85, Translations.uniform_2f, Procs.uniform_2f)
    end

    # Checks if the OpenGL function *glUniform2f* is loaded.
    def uniform_2f?
      !!@addresses[85]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2fv : ::Proc
      get_proc(86, Translations.uniform_2fv, Procs.uniform_2fv)
    end

    # Checks if the OpenGL function *glUniform2fv* is loaded.
    def uniform_2fv?
      !!@addresses[86]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2i : ::Proc
      get_proc(87, Translations.uniform_2i, Procs.uniform_2i)
    end

    # Checks if the OpenGL function *glUniform2i* is loaded.
    def uniform_2i?
      !!@addresses[87]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2iv : ::Proc
      get_proc(88, Translations.uniform_2iv, Procs.uniform_2iv)
    end

    # Checks if the OpenGL function *glUniform2iv* is loaded.
    def uniform_2iv?
      !!@addresses[88]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3f : ::Proc
      get_proc(89, Translations.uniform_3f, Procs.uniform_3f)
    end

    # Checks if the OpenGL function *glUniform3f* is loaded.
    def uniform_3f?
      !!@addresses[89]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3fv : ::Proc
      get_proc(90, Translations.uniform_3fv, Procs.uniform_3fv)
    end

    # Checks if the OpenGL function *glUniform3fv* is loaded.
    def uniform_3fv?
      !!@addresses[90]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3i : ::Proc
      get_proc(91, Translations.uniform_3i, Procs.uniform_3i)
    end

    # Checks if the OpenGL function *glUniform3i* is loaded.
    def uniform_3i?
      !!@addresses[91]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3iv : ::Proc
      get_proc(92, Translations.uniform_3iv, Procs.uniform_3iv)
    end

    # Checks if the OpenGL function *glUniform3iv* is loaded.
    def uniform_3iv?
      !!@addresses[92]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4f : ::Proc
      get_proc(93, Translations.uniform_4f, Procs.uniform_4f)
    end

    # Checks if the OpenGL function *glUniform4f* is loaded.
    def uniform_4f?
      !!@addresses[93]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4fv : ::Proc
      get_proc(94, Translations.uniform_4fv, Procs.uniform_4fv)
    end

    # Checks if the OpenGL function *glUniform4fv* is loaded.
    def uniform_4fv?
      !!@addresses[94]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4i : ::Proc
      get_proc(95, Translations.uniform_4i, Procs.uniform_4i)
    end

    # Checks if the OpenGL function *glUniform4i* is loaded.
    def uniform_4i?
      !!@addresses[95]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4iv : ::Proc
      get_proc(96, Translations.uniform_4iv, Procs.uniform_4iv)
    end

    # Checks if the OpenGL function *glUniform4iv* is loaded.
    def uniform_4iv?
      !!@addresses[96]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2_fv : ::Proc
      get_proc(97, Translations.uniform_matrix2_fv, Procs.uniform_matrix2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2fv* is loaded.
    def uniform_matrix2_fv?
      !!@addresses[97]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3_fv : ::Proc
      get_proc(98, Translations.uniform_matrix3_fv, Procs.uniform_matrix3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3fv* is loaded.
    def uniform_matrix3_fv?
      !!@addresses[98]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4_fv : ::Proc
      get_proc(99, Translations.uniform_matrix4_fv, Procs.uniform_matrix4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4fv* is loaded.
    def uniform_matrix4_fv?
      !!@addresses[99]
    end

    # Retrieves a `Proc` for the OpenGL function *glUseProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def use_program : ::Proc
      get_proc(100, Translations.use_program, Procs.use_program)
    end

    # Checks if the OpenGL function *glUseProgram* is loaded.
    def use_program?
      !!@addresses[100]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1f : ::Proc
      get_proc(101, Translations.vertex_attrib_1f, Procs.vertex_attrib_1f)
    end

    # Checks if the OpenGL function *glVertexAttrib1f* is loaded.
    def vertex_attrib_1f?
      !!@addresses[101]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1fv : ::Proc
      get_proc(102, Translations.vertex_attrib_1fv, Procs.vertex_attrib_1fv)
    end

    # Checks if the OpenGL function *glVertexAttrib1fv* is loaded.
    def vertex_attrib_1fv?
      !!@addresses[102]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2f : ::Proc
      get_proc(103, Translations.vertex_attrib_2f, Procs.vertex_attrib_2f)
    end

    # Checks if the OpenGL function *glVertexAttrib2f* is loaded.
    def vertex_attrib_2f?
      !!@addresses[103]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2fv : ::Proc
      get_proc(104, Translations.vertex_attrib_2fv, Procs.vertex_attrib_2fv)
    end

    # Checks if the OpenGL function *glVertexAttrib2fv* is loaded.
    def vertex_attrib_2fv?
      !!@addresses[104]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3f : ::Proc
      get_proc(105, Translations.vertex_attrib_3f, Procs.vertex_attrib_3f)
    end

    # Checks if the OpenGL function *glVertexAttrib3f* is loaded.
    def vertex_attrib_3f?
      !!@addresses[105]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3fv : ::Proc
      get_proc(106, Translations.vertex_attrib_3fv, Procs.vertex_attrib_3fv)
    end

    # Checks if the OpenGL function *glVertexAttrib3fv* is loaded.
    def vertex_attrib_3fv?
      !!@addresses[106]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4f : ::Proc
      get_proc(107, Translations.vertex_attrib_4f, Procs.vertex_attrib_4f)
    end

    # Checks if the OpenGL function *glVertexAttrib4f* is loaded.
    def vertex_attrib_4f?
      !!@addresses[107]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4fv : ::Proc
      get_proc(108, Translations.vertex_attrib_4fv, Procs.vertex_attrib_4fv)
    end

    # Checks if the OpenGL function *glVertexAttrib4fv* is loaded.
    def vertex_attrib_4fv?
      !!@addresses[108]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_pointer : ::Proc
      get_proc(109, Translations.vertex_attrib_pointer, Procs.vertex_attrib_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribPointer* is loaded.
    def vertex_attrib_pointer?
      !!@addresses[109]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewport*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport : ::Proc
      get_proc(110, Translations.viewport, Procs.viewport)
    end

    # Checks if the OpenGL function *glViewport* is loaded.
    def viewport?
      !!@addresses[110]
    end
  end
end
