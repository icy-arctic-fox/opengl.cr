{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  alias Byte = KhronosInt8

  alias ClampF = KhronosFloat

  alias Short = KhronosInt16

  alias UShort = KhronosUInt16

  # Not an actual GL type, though used in headers in the past
  alias Void = ::Void

  alias Enum = ::UInt32

  alias Fixed = KhronosInt32

  alias UInt = ::UInt32

  alias SizeIPtr = KhronosSSize

  alias IntPtr = KhronosIntPtr

  alias Bitfield = ::UInt32

  alias Int = ::Int32

  alias UByte = KhronosUInt8

  alias SizeI = ::Int32

  alias Float = KhronosFloat

  alias Clampx = KhronosInt32
end
