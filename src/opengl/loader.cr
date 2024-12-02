require "./procs"
require "./translations"

module OpenGL
  # Raised when an OpenGL isn't loaded or unavailable to call.
  class FunctionUnavailableError < Exception; end

  # Loads OpenGL functions dynamically at runtime and returns `Proc` instances to invoke them.
  # The OpenGL functions are lazy-loaded.
  struct Loader
    FUNCTION_COUNT = 142

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

    # Retrieves a `Proc` for the OpenGL function *glAttachShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def attach_shader : ::Proc
      get_proc(1, Translations.attach_shader, Procs.attach_shader)
    end

    # Checks if the OpenGL function *glAttachShader* is loaded.
    def attach_shader?
      !!@addresses[1]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_attrib_location : ::Proc
      get_proc(2, Translations.bind_attrib_location, Procs.bind_attrib_location)
    end

    # Checks if the OpenGL function *glBindAttribLocation* is loaded.
    def bind_attrib_location?
      !!@addresses[2]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_buffer : ::Proc
      get_proc(3, Translations.bind_buffer, Procs.bind_buffer)
    end

    # Checks if the OpenGL function *glBindBuffer* is loaded.
    def bind_buffer?
      !!@addresses[3]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_framebuffer : ::Proc
      get_proc(4, Translations.bind_framebuffer, Procs.bind_framebuffer)
    end

    # Checks if the OpenGL function *glBindFramebuffer* is loaded.
    def bind_framebuffer?
      !!@addresses[4]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_renderbuffer : ::Proc
      get_proc(5, Translations.bind_renderbuffer, Procs.bind_renderbuffer)
    end

    # Checks if the OpenGL function *glBindRenderbuffer* is loaded.
    def bind_renderbuffer?
      !!@addresses[5]
    end

    # Retrieves a `Proc` for the OpenGL function *glBindTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def bind_texture : ::Proc
      get_proc(6, Translations.bind_texture, Procs.bind_texture)
    end

    # Checks if the OpenGL function *glBindTexture* is loaded.
    def bind_texture?
      !!@addresses[6]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_color : ::Proc
      get_proc(7, Translations.blend_color, Procs.blend_color)
    end

    # Checks if the OpenGL function *glBlendColor* is loaded.
    def blend_color?
      !!@addresses[7]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation : ::Proc
      get_proc(8, Translations.blend_equation, Procs.blend_equation)
    end

    # Checks if the OpenGL function *glBlendEquation* is loaded.
    def blend_equation?
      !!@addresses[8]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendEquationSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_equation_separate : ::Proc
      get_proc(9, Translations.blend_equation_separate, Procs.blend_equation_separate)
    end

    # Checks if the OpenGL function *glBlendEquationSeparate* is loaded.
    def blend_equation_separate?
      !!@addresses[9]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func : ::Proc
      get_proc(10, Translations.blend_func, Procs.blend_func)
    end

    # Checks if the OpenGL function *glBlendFunc* is loaded.
    def blend_func?
      !!@addresses[10]
    end

    # Retrieves a `Proc` for the OpenGL function *glBlendFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def blend_func_separate : ::Proc
      get_proc(11, Translations.blend_func_separate, Procs.blend_func_separate)
    end

    # Checks if the OpenGL function *glBlendFuncSeparate* is loaded.
    def blend_func_separate?
      !!@addresses[11]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_data : ::Proc
      get_proc(12, Translations.buffer_data, Procs.buffer_data)
    end

    # Checks if the OpenGL function *glBufferData* is loaded.
    def buffer_data?
      !!@addresses[12]
    end

    # Retrieves a `Proc` for the OpenGL function *glBufferSubData*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def buffer_sub_data : ::Proc
      get_proc(13, Translations.buffer_sub_data, Procs.buffer_sub_data)
    end

    # Checks if the OpenGL function *glBufferSubData* is loaded.
    def buffer_sub_data?
      !!@addresses[13]
    end

    # Retrieves a `Proc` for the OpenGL function *glCheckFramebufferStatus*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def check_framebuffer_status : ::Proc
      get_proc(14, Translations.check_framebuffer_status, Procs.check_framebuffer_status)
    end

    # Checks if the OpenGL function *glCheckFramebufferStatus* is loaded.
    def check_framebuffer_status?
      !!@addresses[14]
    end

    # Retrieves a `Proc` for the OpenGL function *glClear*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear : ::Proc
      get_proc(15, Translations.clear, Procs.clear)
    end

    # Checks if the OpenGL function *glClear* is loaded.
    def clear?
      !!@addresses[15]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearColor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_color : ::Proc
      get_proc(16, Translations.clear_color, Procs.clear_color)
    end

    # Checks if the OpenGL function *glClearColor* is loaded.
    def clear_color?
      !!@addresses[16]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearDepthf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_depth_f : ::Proc
      get_proc(17, Translations.clear_depth_f, Procs.clear_depth_f)
    end

    # Checks if the OpenGL function *glClearDepthf* is loaded.
    def clear_depth_f?
      !!@addresses[17]
    end

    # Retrieves a `Proc` for the OpenGL function *glClearStencil*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def clear_stencil : ::Proc
      get_proc(18, Translations.clear_stencil, Procs.clear_stencil)
    end

    # Checks if the OpenGL function *glClearStencil* is loaded.
    def clear_stencil?
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

    # Retrieves a `Proc` for the OpenGL function *glCompileShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compile_shader : ::Proc
      get_proc(20, Translations.compile_shader, Procs.compile_shader)
    end

    # Checks if the OpenGL function *glCompileShader* is loaded.
    def compile_shader?
      !!@addresses[20]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_image_2d : ::Proc
      get_proc(21, Translations.compressed_tex_image_2d, Procs.compressed_tex_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexImage2D* is loaded.
    def compressed_tex_image_2d?
      !!@addresses[21]
    end

    # Retrieves a `Proc` for the OpenGL function *glCompressedTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def compressed_tex_sub_image_2d : ::Proc
      get_proc(22, Translations.compressed_tex_sub_image_2d, Procs.compressed_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCompressedTexSubImage2D* is loaded.
    def compressed_tex_sub_image_2d?
      !!@addresses[22]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_image_2d : ::Proc
      get_proc(23, Translations.copy_tex_image_2d, Procs.copy_tex_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexImage2D* is loaded.
    def copy_tex_image_2d?
      !!@addresses[23]
    end

    # Retrieves a `Proc` for the OpenGL function *glCopyTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def copy_tex_sub_image_2d : ::Proc
      get_proc(24, Translations.copy_tex_sub_image_2d, Procs.copy_tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glCopyTexSubImage2D* is loaded.
    def copy_tex_sub_image_2d?
      !!@addresses[24]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_program : ::Proc
      get_proc(25, Translations.create_program, Procs.create_program)
    end

    # Checks if the OpenGL function *glCreateProgram* is loaded.
    def create_program?
      !!@addresses[25]
    end

    # Retrieves a `Proc` for the OpenGL function *glCreateShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def create_shader : ::Proc
      get_proc(26, Translations.create_shader, Procs.create_shader)
    end

    # Checks if the OpenGL function *glCreateShader* is loaded.
    def create_shader?
      !!@addresses[26]
    end

    # Retrieves a `Proc` for the OpenGL function *glCullFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def cull_face : ::Proc
      get_proc(27, Translations.cull_face, Procs.cull_face)
    end

    # Checks if the OpenGL function *glCullFace* is loaded.
    def cull_face?
      !!@addresses[27]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_buffers : ::Proc
      get_proc(28, Translations.delete_buffers, Procs.delete_buffers)
    end

    # Checks if the OpenGL function *glDeleteBuffers* is loaded.
    def delete_buffers?
      !!@addresses[28]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_framebuffers : ::Proc
      get_proc(29, Translations.delete_framebuffers, Procs.delete_framebuffers)
    end

    # Checks if the OpenGL function *glDeleteFramebuffers* is loaded.
    def delete_framebuffers?
      !!@addresses[29]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_program : ::Proc
      get_proc(30, Translations.delete_program, Procs.delete_program)
    end

    # Checks if the OpenGL function *glDeleteProgram* is loaded.
    def delete_program?
      !!@addresses[30]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_renderbuffers : ::Proc
      get_proc(31, Translations.delete_renderbuffers, Procs.delete_renderbuffers)
    end

    # Checks if the OpenGL function *glDeleteRenderbuffers* is loaded.
    def delete_renderbuffers?
      !!@addresses[31]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_shader : ::Proc
      get_proc(32, Translations.delete_shader, Procs.delete_shader)
    end

    # Checks if the OpenGL function *glDeleteShader* is loaded.
    def delete_shader?
      !!@addresses[32]
    end

    # Retrieves a `Proc` for the OpenGL function *glDeleteTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def delete_textures : ::Proc
      get_proc(33, Translations.delete_textures, Procs.delete_textures)
    end

    # Checks if the OpenGL function *glDeleteTextures* is loaded.
    def delete_textures?
      !!@addresses[33]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_func : ::Proc
      get_proc(34, Translations.depth_func, Procs.depth_func)
    end

    # Checks if the OpenGL function *glDepthFunc* is loaded.
    def depth_func?
      !!@addresses[34]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_mask : ::Proc
      get_proc(35, Translations.depth_mask, Procs.depth_mask)
    end

    # Checks if the OpenGL function *glDepthMask* is loaded.
    def depth_mask?
      !!@addresses[35]
    end

    # Retrieves a `Proc` for the OpenGL function *glDepthRangef*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def depth_range_f : ::Proc
      get_proc(36, Translations.depth_range_f, Procs.depth_range_f)
    end

    # Checks if the OpenGL function *glDepthRangef* is loaded.
    def depth_range_f?
      !!@addresses[36]
    end

    # Retrieves a `Proc` for the OpenGL function *glDetachShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def detach_shader : ::Proc
      get_proc(37, Translations.detach_shader, Procs.detach_shader)
    end

    # Checks if the OpenGL function *glDetachShader* is loaded.
    def detach_shader?
      !!@addresses[37]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable : ::Proc
      get_proc(38, Translations.disable, Procs.disable)
    end

    # Checks if the OpenGL function *glDisable* is loaded.
    def disable?
      !!@addresses[38]
    end

    # Retrieves a `Proc` for the OpenGL function *glDisableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def disable_vertex_attrib_array : ::Proc
      get_proc(39, Translations.disable_vertex_attrib_array, Procs.disable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glDisableVertexAttribArray* is loaded.
    def disable_vertex_attrib_array?
      !!@addresses[39]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawArrays*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_arrays : ::Proc
      get_proc(40, Translations.draw_arrays, Procs.draw_arrays)
    end

    # Checks if the OpenGL function *glDrawArrays* is loaded.
    def draw_arrays?
      !!@addresses[40]
    end

    # Retrieves a `Proc` for the OpenGL function *glDrawElements*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def draw_elements : ::Proc
      get_proc(41, Translations.draw_elements, Procs.draw_elements)
    end

    # Checks if the OpenGL function *glDrawElements* is loaded.
    def draw_elements?
      !!@addresses[41]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnable*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable : ::Proc
      get_proc(42, Translations.enable, Procs.enable)
    end

    # Checks if the OpenGL function *glEnable* is loaded.
    def enable?
      !!@addresses[42]
    end

    # Retrieves a `Proc` for the OpenGL function *glEnableVertexAttribArray*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def enable_vertex_attrib_array : ::Proc
      get_proc(43, Translations.enable_vertex_attrib_array, Procs.enable_vertex_attrib_array)
    end

    # Checks if the OpenGL function *glEnableVertexAttribArray* is loaded.
    def enable_vertex_attrib_array?
      !!@addresses[43]
    end

    # Retrieves a `Proc` for the OpenGL function *glFinish*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def finish : ::Proc
      get_proc(44, Translations.finish, Procs.finish)
    end

    # Checks if the OpenGL function *glFinish* is loaded.
    def finish?
      !!@addresses[44]
    end

    # Retrieves a `Proc` for the OpenGL function *glFlush*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def flush : ::Proc
      get_proc(45, Translations.flush, Procs.flush)
    end

    # Checks if the OpenGL function *glFlush* is loaded.
    def flush?
      !!@addresses[45]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_renderbuffer : ::Proc
      get_proc(46, Translations.framebuffer_renderbuffer, Procs.framebuffer_renderbuffer)
    end

    # Checks if the OpenGL function *glFramebufferRenderbuffer* is loaded.
    def framebuffer_renderbuffer?
      !!@addresses[46]
    end

    # Retrieves a `Proc` for the OpenGL function *glFramebufferTexture2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def framebuffer_texture_2d : ::Proc
      get_proc(47, Translations.framebuffer_texture_2d, Procs.framebuffer_texture_2d)
    end

    # Checks if the OpenGL function *glFramebufferTexture2D* is loaded.
    def framebuffer_texture_2d?
      !!@addresses[47]
    end

    # Retrieves a `Proc` for the OpenGL function *glFrontFace*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def front_face : ::Proc
      get_proc(48, Translations.front_face, Procs.front_face)
    end

    # Checks if the OpenGL function *glFrontFace* is loaded.
    def front_face?
      !!@addresses[48]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenBuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_buffers : ::Proc
      get_proc(49, Translations.gen_buffers, Procs.gen_buffers)
    end

    # Checks if the OpenGL function *glGenBuffers* is loaded.
    def gen_buffers?
      !!@addresses[49]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenerateMipmap*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def generate_mipmap : ::Proc
      get_proc(50, Translations.generate_mipmap, Procs.generate_mipmap)
    end

    # Checks if the OpenGL function *glGenerateMipmap* is loaded.
    def generate_mipmap?
      !!@addresses[50]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenFramebuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_framebuffers : ::Proc
      get_proc(51, Translations.gen_framebuffers, Procs.gen_framebuffers)
    end

    # Checks if the OpenGL function *glGenFramebuffers* is loaded.
    def gen_framebuffers?
      !!@addresses[51]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenRenderbuffers*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_renderbuffers : ::Proc
      get_proc(52, Translations.gen_renderbuffers, Procs.gen_renderbuffers)
    end

    # Checks if the OpenGL function *glGenRenderbuffers* is loaded.
    def gen_renderbuffers?
      !!@addresses[52]
    end

    # Retrieves a `Proc` for the OpenGL function *glGenTextures*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def gen_textures : ::Proc
      get_proc(53, Translations.gen_textures, Procs.gen_textures)
    end

    # Checks if the OpenGL function *glGenTextures* is loaded.
    def gen_textures?
      !!@addresses[53]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveAttrib*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_attrib : ::Proc
      get_proc(54, Translations.get_active_attrib, Procs.get_active_attrib)
    end

    # Checks if the OpenGL function *glGetActiveAttrib* is loaded.
    def get_active_attrib?
      !!@addresses[54]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetActiveUniform*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_active_uniform : ::Proc
      get_proc(55, Translations.get_active_uniform, Procs.get_active_uniform)
    end

    # Checks if the OpenGL function *glGetActiveUniform* is loaded.
    def get_active_uniform?
      !!@addresses[55]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttachedShaders*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attached_shaders : ::Proc
      get_proc(56, Translations.get_attached_shaders, Procs.get_attached_shaders)
    end

    # Checks if the OpenGL function *glGetAttachedShaders* is loaded.
    def get_attached_shaders?
      !!@addresses[56]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetAttribLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_attrib_location : ::Proc
      get_proc(57, Translations.get_attrib_location, Procs.get_attrib_location)
    end

    # Checks if the OpenGL function *glGetAttribLocation* is loaded.
    def get_attrib_location?
      !!@addresses[57]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBooleanv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_boolean_v : ::Proc
      get_proc(58, Translations.get_boolean_v, Procs.get_boolean_v)
    end

    # Checks if the OpenGL function *glGetBooleanv* is loaded.
    def get_boolean_v?
      !!@addresses[58]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetBufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_buffer_parameter_iv : ::Proc
      get_proc(59, Translations.get_buffer_parameter_iv, Procs.get_buffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetBufferParameteriv* is loaded.
    def get_buffer_parameter_iv?
      !!@addresses[59]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetError*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_error : ::Proc
      get_proc(60, Translations.get_error, Procs.get_error)
    end

    # Checks if the OpenGL function *glGetError* is loaded.
    def get_error?
      !!@addresses[60]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFloatv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_float_v : ::Proc
      get_proc(61, Translations.get_float_v, Procs.get_float_v)
    end

    # Checks if the OpenGL function *glGetFloatv* is loaded.
    def get_float_v?
      !!@addresses[61]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetFramebufferAttachmentParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_framebuffer_attachment_parameter_iv : ::Proc
      get_proc(62, Translations.get_framebuffer_attachment_parameter_iv, Procs.get_framebuffer_attachment_parameter_iv)
    end

    # Checks if the OpenGL function *glGetFramebufferAttachmentParameteriv* is loaded.
    def get_framebuffer_attachment_parameter_iv?
      !!@addresses[62]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetIntegerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_integer_v : ::Proc
      get_proc(63, Translations.get_integer_v, Procs.get_integer_v)
    end

    # Checks if the OpenGL function *glGetIntegerv* is loaded.
    def get_integer_v?
      !!@addresses[63]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_iv : ::Proc
      get_proc(64, Translations.get_program_iv, Procs.get_program_iv)
    end

    # Checks if the OpenGL function *glGetProgramiv* is loaded.
    def get_program_iv?
      !!@addresses[64]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetProgramInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_program_info_log : ::Proc
      get_proc(65, Translations.get_program_info_log, Procs.get_program_info_log)
    end

    # Checks if the OpenGL function *glGetProgramInfoLog* is loaded.
    def get_program_info_log?
      !!@addresses[65]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetRenderbufferParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_renderbuffer_parameter_iv : ::Proc
      get_proc(66, Translations.get_renderbuffer_parameter_iv, Procs.get_renderbuffer_parameter_iv)
    end

    # Checks if the OpenGL function *glGetRenderbufferParameteriv* is loaded.
    def get_renderbuffer_parameter_iv?
      !!@addresses[66]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_iv : ::Proc
      get_proc(67, Translations.get_shader_iv, Procs.get_shader_iv)
    end

    # Checks if the OpenGL function *glGetShaderiv* is loaded.
    def get_shader_iv?
      !!@addresses[67]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderInfoLog*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_info_log : ::Proc
      get_proc(68, Translations.get_shader_info_log, Procs.get_shader_info_log)
    end

    # Checks if the OpenGL function *glGetShaderInfoLog* is loaded.
    def get_shader_info_log?
      !!@addresses[68]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderPrecisionFormat*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_precision_format : ::Proc
      get_proc(69, Translations.get_shader_precision_format, Procs.get_shader_precision_format)
    end

    # Checks if the OpenGL function *glGetShaderPrecisionFormat* is loaded.
    def get_shader_precision_format?
      !!@addresses[69]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetShaderSource*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_shader_source : ::Proc
      get_proc(70, Translations.get_shader_source, Procs.get_shader_source)
    end

    # Checks if the OpenGL function *glGetShaderSource* is loaded.
    def get_shader_source?
      !!@addresses[70]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetString*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_string : ::Proc
      get_proc(71, Translations.get_string, Procs.get_string)
    end

    # Checks if the OpenGL function *glGetString* is loaded.
    def get_string?
      !!@addresses[71]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_fv : ::Proc
      get_proc(72, Translations.get_tex_parameter_fv, Procs.get_tex_parameter_fv)
    end

    # Checks if the OpenGL function *glGetTexParameterfv* is loaded.
    def get_tex_parameter_fv?
      !!@addresses[72]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_tex_parameter_iv : ::Proc
      get_proc(73, Translations.get_tex_parameter_iv, Procs.get_tex_parameter_iv)
    end

    # Checks if the OpenGL function *glGetTexParameteriv* is loaded.
    def get_tex_parameter_iv?
      !!@addresses[73]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_fv : ::Proc
      get_proc(74, Translations.get_uniform_fv, Procs.get_uniform_fv)
    end

    # Checks if the OpenGL function *glGetUniformfv* is loaded.
    def get_uniform_fv?
      !!@addresses[74]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_iv : ::Proc
      get_proc(75, Translations.get_uniform_iv, Procs.get_uniform_iv)
    end

    # Checks if the OpenGL function *glGetUniformiv* is loaded.
    def get_uniform_iv?
      !!@addresses[75]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetUniformLocation*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_uniform_location : ::Proc
      get_proc(76, Translations.get_uniform_location, Procs.get_uniform_location)
    end

    # Checks if the OpenGL function *glGetUniformLocation* is loaded.
    def get_uniform_location?
      !!@addresses[76]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_fv : ::Proc
      get_proc(77, Translations.get_vertex_attrib_fv, Procs.get_vertex_attrib_fv)
    end

    # Checks if the OpenGL function *glGetVertexAttribfv* is loaded.
    def get_vertex_attrib_fv?
      !!@addresses[77]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribiv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_iv : ::Proc
      get_proc(78, Translations.get_vertex_attrib_iv, Procs.get_vertex_attrib_iv)
    end

    # Checks if the OpenGL function *glGetVertexAttribiv* is loaded.
    def get_vertex_attrib_iv?
      !!@addresses[78]
    end

    # Retrieves a `Proc` for the OpenGL function *glGetVertexAttribPointerv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def get_vertex_attrib_pointer_v : ::Proc
      get_proc(79, Translations.get_vertex_attrib_pointer_v, Procs.get_vertex_attrib_pointer_v)
    end

    # Checks if the OpenGL function *glGetVertexAttribPointerv* is loaded.
    def get_vertex_attrib_pointer_v?
      !!@addresses[79]
    end

    # Retrieves a `Proc` for the OpenGL function *glHint*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def hint : ::Proc
      get_proc(80, Translations.hint, Procs.hint)
    end

    # Checks if the OpenGL function *glHint* is loaded.
    def hint?
      !!@addresses[80]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsBuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_buffer : ::Proc
      get_proc(81, Translations.is_buffer, Procs.is_buffer)
    end

    # Checks if the OpenGL function *glIsBuffer* is loaded.
    def is_buffer?
      !!@addresses[81]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsEnabled*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_enabled : ::Proc
      get_proc(82, Translations.is_enabled, Procs.is_enabled)
    end

    # Checks if the OpenGL function *glIsEnabled* is loaded.
    def is_enabled?
      !!@addresses[82]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsFramebuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_framebuffer : ::Proc
      get_proc(83, Translations.is_framebuffer, Procs.is_framebuffer)
    end

    # Checks if the OpenGL function *glIsFramebuffer* is loaded.
    def is_framebuffer?
      !!@addresses[83]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_program : ::Proc
      get_proc(84, Translations.is_program, Procs.is_program)
    end

    # Checks if the OpenGL function *glIsProgram* is loaded.
    def is_program?
      !!@addresses[84]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsRenderbuffer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_renderbuffer : ::Proc
      get_proc(85, Translations.is_renderbuffer, Procs.is_renderbuffer)
    end

    # Checks if the OpenGL function *glIsRenderbuffer* is loaded.
    def is_renderbuffer?
      !!@addresses[85]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsShader*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_shader : ::Proc
      get_proc(86, Translations.is_shader, Procs.is_shader)
    end

    # Checks if the OpenGL function *glIsShader* is loaded.
    def is_shader?
      !!@addresses[86]
    end

    # Retrieves a `Proc` for the OpenGL function *glIsTexture*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def is_texture : ::Proc
      get_proc(87, Translations.is_texture, Procs.is_texture)
    end

    # Checks if the OpenGL function *glIsTexture* is loaded.
    def is_texture?
      !!@addresses[87]
    end

    # Retrieves a `Proc` for the OpenGL function *glLineWidth*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def line_width : ::Proc
      get_proc(88, Translations.line_width, Procs.line_width)
    end

    # Checks if the OpenGL function *glLineWidth* is loaded.
    def line_width?
      !!@addresses[88]
    end

    # Retrieves a `Proc` for the OpenGL function *glLinkProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def link_program : ::Proc
      get_proc(89, Translations.link_program, Procs.link_program)
    end

    # Checks if the OpenGL function *glLinkProgram* is loaded.
    def link_program?
      !!@addresses[89]
    end

    # Retrieves a `Proc` for the OpenGL function *glPixelStorei*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def pixel_store_i : ::Proc
      get_proc(90, Translations.pixel_store_i, Procs.pixel_store_i)
    end

    # Checks if the OpenGL function *glPixelStorei* is loaded.
    def pixel_store_i?
      !!@addresses[90]
    end

    # Retrieves a `Proc` for the OpenGL function *glPolygonOffset*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def polygon_offset : ::Proc
      get_proc(91, Translations.polygon_offset, Procs.polygon_offset)
    end

    # Checks if the OpenGL function *glPolygonOffset* is loaded.
    def polygon_offset?
      !!@addresses[91]
    end

    # Retrieves a `Proc` for the OpenGL function *glReadPixels*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def read_pixels : ::Proc
      get_proc(92, Translations.read_pixels, Procs.read_pixels)
    end

    # Checks if the OpenGL function *glReadPixels* is loaded.
    def read_pixels?
      !!@addresses[92]
    end

    # Retrieves a `Proc` for the OpenGL function *glReleaseShaderCompiler*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def release_shader_compiler : ::Proc
      get_proc(93, Translations.release_shader_compiler, Procs.release_shader_compiler)
    end

    # Checks if the OpenGL function *glReleaseShaderCompiler* is loaded.
    def release_shader_compiler?
      !!@addresses[93]
    end

    # Retrieves a `Proc` for the OpenGL function *glRenderbufferStorage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def renderbuffer_storage : ::Proc
      get_proc(94, Translations.renderbuffer_storage, Procs.renderbuffer_storage)
    end

    # Checks if the OpenGL function *glRenderbufferStorage* is loaded.
    def renderbuffer_storage?
      !!@addresses[94]
    end

    # Retrieves a `Proc` for the OpenGL function *glSampleCoverage*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def sample_coverage : ::Proc
      get_proc(95, Translations.sample_coverage, Procs.sample_coverage)
    end

    # Checks if the OpenGL function *glSampleCoverage* is loaded.
    def sample_coverage?
      !!@addresses[95]
    end

    # Retrieves a `Proc` for the OpenGL function *glScissor*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def scissor : ::Proc
      get_proc(96, Translations.scissor, Procs.scissor)
    end

    # Checks if the OpenGL function *glScissor* is loaded.
    def scissor?
      !!@addresses[96]
    end

    # Retrieves a `Proc` for the OpenGL function *glShaderBinary*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shader_binary : ::Proc
      get_proc(97, Translations.shader_binary, Procs.shader_binary)
    end

    # Checks if the OpenGL function *glShaderBinary* is loaded.
    def shader_binary?
      !!@addresses[97]
    end

    # Retrieves a `Proc` for the OpenGL function *glShaderSource*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def shader_source : ::Proc
      get_proc(98, Translations.shader_source, Procs.shader_source)
    end

    # Checks if the OpenGL function *glShaderSource* is loaded.
    def shader_source?
      !!@addresses[98]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFunc*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func : ::Proc
      get_proc(99, Translations.stencil_func, Procs.stencil_func)
    end

    # Checks if the OpenGL function *glStencilFunc* is loaded.
    def stencil_func?
      !!@addresses[99]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilFuncSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_func_separate : ::Proc
      get_proc(100, Translations.stencil_func_separate, Procs.stencil_func_separate)
    end

    # Checks if the OpenGL function *glStencilFuncSeparate* is loaded.
    def stencil_func_separate?
      !!@addresses[100]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMask*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask : ::Proc
      get_proc(101, Translations.stencil_mask, Procs.stencil_mask)
    end

    # Checks if the OpenGL function *glStencilMask* is loaded.
    def stencil_mask?
      !!@addresses[101]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilMaskSeparate*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_mask_separate : ::Proc
      get_proc(102, Translations.stencil_mask_separate, Procs.stencil_mask_separate)
    end

    # Checks if the OpenGL function *glStencilMaskSeparate* is loaded.
    def stencil_mask_separate?
      !!@addresses[102]
    end

    # Retrieves a `Proc` for the OpenGL function *glStencilOp*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def stencil_op : ::Proc
      get_proc(103, Translations.stencil_op, Procs.stencil_op)
    end

    # Checks if the OpenGL function *glStencilOp* is loaded.
    def stencil_op?
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

    # Retrieves a `Proc` for the OpenGL function *glTexImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_image_2d : ::Proc
      get_proc(105, Translations.tex_image_2d, Procs.tex_image_2d)
    end

    # Checks if the OpenGL function *glTexImage2D* is loaded.
    def tex_image_2d?
      !!@addresses[105]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterf*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_f : ::Proc
      get_proc(106, Translations.tex_parameter_f, Procs.tex_parameter_f)
    end

    # Checks if the OpenGL function *glTexParameterf* is loaded.
    def tex_parameter_f?
      !!@addresses[106]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameterfv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_fv : ::Proc
      get_proc(107, Translations.tex_parameter_fv, Procs.tex_parameter_fv)
    end

    # Checks if the OpenGL function *glTexParameterfv* is loaded.
    def tex_parameter_fv?
      !!@addresses[107]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteri*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_i : ::Proc
      get_proc(108, Translations.tex_parameter_i, Procs.tex_parameter_i)
    end

    # Checks if the OpenGL function *glTexParameteri* is loaded.
    def tex_parameter_i?
      !!@addresses[108]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexParameteriv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_parameter_iv : ::Proc
      get_proc(109, Translations.tex_parameter_iv, Procs.tex_parameter_iv)
    end

    # Checks if the OpenGL function *glTexParameteriv* is loaded.
    def tex_parameter_iv?
      !!@addresses[109]
    end

    # Retrieves a `Proc` for the OpenGL function *glTexSubImage2D*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def tex_sub_image_2d : ::Proc
      get_proc(110, Translations.tex_sub_image_2d, Procs.tex_sub_image_2d)
    end

    # Checks if the OpenGL function *glTexSubImage2D* is loaded.
    def tex_sub_image_2d?
      !!@addresses[110]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1f : ::Proc
      get_proc(111, Translations.uniform_1f, Procs.uniform_1f)
    end

    # Checks if the OpenGL function *glUniform1f* is loaded.
    def uniform_1f?
      !!@addresses[111]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1fv : ::Proc
      get_proc(112, Translations.uniform_1fv, Procs.uniform_1fv)
    end

    # Checks if the OpenGL function *glUniform1fv* is loaded.
    def uniform_1fv?
      !!@addresses[112]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1i : ::Proc
      get_proc(113, Translations.uniform_1i, Procs.uniform_1i)
    end

    # Checks if the OpenGL function *glUniform1i* is loaded.
    def uniform_1i?
      !!@addresses[113]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform1iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_1iv : ::Proc
      get_proc(114, Translations.uniform_1iv, Procs.uniform_1iv)
    end

    # Checks if the OpenGL function *glUniform1iv* is loaded.
    def uniform_1iv?
      !!@addresses[114]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2f : ::Proc
      get_proc(115, Translations.uniform_2f, Procs.uniform_2f)
    end

    # Checks if the OpenGL function *glUniform2f* is loaded.
    def uniform_2f?
      !!@addresses[115]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2fv : ::Proc
      get_proc(116, Translations.uniform_2fv, Procs.uniform_2fv)
    end

    # Checks if the OpenGL function *glUniform2fv* is loaded.
    def uniform_2fv?
      !!@addresses[116]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2i : ::Proc
      get_proc(117, Translations.uniform_2i, Procs.uniform_2i)
    end

    # Checks if the OpenGL function *glUniform2i* is loaded.
    def uniform_2i?
      !!@addresses[117]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform2iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_2iv : ::Proc
      get_proc(118, Translations.uniform_2iv, Procs.uniform_2iv)
    end

    # Checks if the OpenGL function *glUniform2iv* is loaded.
    def uniform_2iv?
      !!@addresses[118]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3f : ::Proc
      get_proc(119, Translations.uniform_3f, Procs.uniform_3f)
    end

    # Checks if the OpenGL function *glUniform3f* is loaded.
    def uniform_3f?
      !!@addresses[119]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3fv : ::Proc
      get_proc(120, Translations.uniform_3fv, Procs.uniform_3fv)
    end

    # Checks if the OpenGL function *glUniform3fv* is loaded.
    def uniform_3fv?
      !!@addresses[120]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3i : ::Proc
      get_proc(121, Translations.uniform_3i, Procs.uniform_3i)
    end

    # Checks if the OpenGL function *glUniform3i* is loaded.
    def uniform_3i?
      !!@addresses[121]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform3iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_3iv : ::Proc
      get_proc(122, Translations.uniform_3iv, Procs.uniform_3iv)
    end

    # Checks if the OpenGL function *glUniform3iv* is loaded.
    def uniform_3iv?
      !!@addresses[122]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4f : ::Proc
      get_proc(123, Translations.uniform_4f, Procs.uniform_4f)
    end

    # Checks if the OpenGL function *glUniform4f* is loaded.
    def uniform_4f?
      !!@addresses[123]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4fv : ::Proc
      get_proc(124, Translations.uniform_4fv, Procs.uniform_4fv)
    end

    # Checks if the OpenGL function *glUniform4fv* is loaded.
    def uniform_4fv?
      !!@addresses[124]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4i*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4i : ::Proc
      get_proc(125, Translations.uniform_4i, Procs.uniform_4i)
    end

    # Checks if the OpenGL function *glUniform4i* is loaded.
    def uniform_4i?
      !!@addresses[125]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniform4iv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_4iv : ::Proc
      get_proc(126, Translations.uniform_4iv, Procs.uniform_4iv)
    end

    # Checks if the OpenGL function *glUniform4iv* is loaded.
    def uniform_4iv?
      !!@addresses[126]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix2_fv : ::Proc
      get_proc(127, Translations.uniform_matrix2_fv, Procs.uniform_matrix2_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix2fv* is loaded.
    def uniform_matrix2_fv?
      !!@addresses[127]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix3_fv : ::Proc
      get_proc(128, Translations.uniform_matrix3_fv, Procs.uniform_matrix3_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix3fv* is loaded.
    def uniform_matrix3_fv?
      !!@addresses[128]
    end

    # Retrieves a `Proc` for the OpenGL function *glUniformMatrix4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def uniform_matrix4_fv : ::Proc
      get_proc(129, Translations.uniform_matrix4_fv, Procs.uniform_matrix4_fv)
    end

    # Checks if the OpenGL function *glUniformMatrix4fv* is loaded.
    def uniform_matrix4_fv?
      !!@addresses[129]
    end

    # Retrieves a `Proc` for the OpenGL function *glUseProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def use_program : ::Proc
      get_proc(130, Translations.use_program, Procs.use_program)
    end

    # Checks if the OpenGL function *glUseProgram* is loaded.
    def use_program?
      !!@addresses[130]
    end

    # Retrieves a `Proc` for the OpenGL function *glValidateProgram*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def validate_program : ::Proc
      get_proc(131, Translations.validate_program, Procs.validate_program)
    end

    # Checks if the OpenGL function *glValidateProgram* is loaded.
    def validate_program?
      !!@addresses[131]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1f : ::Proc
      get_proc(132, Translations.vertex_attrib_1f, Procs.vertex_attrib_1f)
    end

    # Checks if the OpenGL function *glVertexAttrib1f* is loaded.
    def vertex_attrib_1f?
      !!@addresses[132]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib1fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_1fv : ::Proc
      get_proc(133, Translations.vertex_attrib_1fv, Procs.vertex_attrib_1fv)
    end

    # Checks if the OpenGL function *glVertexAttrib1fv* is loaded.
    def vertex_attrib_1fv?
      !!@addresses[133]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2f : ::Proc
      get_proc(134, Translations.vertex_attrib_2f, Procs.vertex_attrib_2f)
    end

    # Checks if the OpenGL function *glVertexAttrib2f* is loaded.
    def vertex_attrib_2f?
      !!@addresses[134]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib2fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_2fv : ::Proc
      get_proc(135, Translations.vertex_attrib_2fv, Procs.vertex_attrib_2fv)
    end

    # Checks if the OpenGL function *glVertexAttrib2fv* is loaded.
    def vertex_attrib_2fv?
      !!@addresses[135]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3f : ::Proc
      get_proc(136, Translations.vertex_attrib_3f, Procs.vertex_attrib_3f)
    end

    # Checks if the OpenGL function *glVertexAttrib3f* is loaded.
    def vertex_attrib_3f?
      !!@addresses[136]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib3fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_3fv : ::Proc
      get_proc(137, Translations.vertex_attrib_3fv, Procs.vertex_attrib_3fv)
    end

    # Checks if the OpenGL function *glVertexAttrib3fv* is loaded.
    def vertex_attrib_3fv?
      !!@addresses[137]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4f*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4f : ::Proc
      get_proc(138, Translations.vertex_attrib_4f, Procs.vertex_attrib_4f)
    end

    # Checks if the OpenGL function *glVertexAttrib4f* is loaded.
    def vertex_attrib_4f?
      !!@addresses[138]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttrib4fv*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_4fv : ::Proc
      get_proc(139, Translations.vertex_attrib_4fv, Procs.vertex_attrib_4fv)
    end

    # Checks if the OpenGL function *glVertexAttrib4fv* is loaded.
    def vertex_attrib_4fv?
      !!@addresses[139]
    end

    # Retrieves a `Proc` for the OpenGL function *glVertexAttribPointer*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def vertex_attrib_pointer : ::Proc
      get_proc(140, Translations.vertex_attrib_pointer, Procs.vertex_attrib_pointer)
    end

    # Checks if the OpenGL function *glVertexAttribPointer* is loaded.
    def vertex_attrib_pointer?
      !!@addresses[140]
    end

    # Retrieves a `Proc` for the OpenGL function *glViewport*.
    # Attempts to retrieve (load) the address of the function if it hasn't already been retrieved.
    # Raises `FunctionUnavailableError` if the function isn't found.
    def viewport : ::Proc
      get_proc(141, Translations.viewport, Procs.viewport)
    end

    # Checks if the OpenGL function *glViewport* is loaded.
    def viewport?
      !!@addresses[141]
    end
  end
end
