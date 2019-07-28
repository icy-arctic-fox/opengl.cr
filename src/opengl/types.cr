{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  alias Byte = KhronosInt8

  alias Short = KhronosInt16

  alias UShort = KhronosUInt16

  alias Enum = ::UInt32

  alias UInt = ::UInt32

  alias Float = KhronosFloat

  alias SizeIPtr = KhronosSSize

  alias IntPtr = KhronosIntPtr

  alias Bitfield = ::UInt32

  alias Int = ::Int32

  alias SizeI = ::Int32

  alias Char = ::UInt8

  alias UByte = KhronosUInt8
end
