{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Not an actual GL type, though used in headers in the past
  alias Void = ::Void

  alias Enum = ::UInt32

  alias Float = KhronosFloat

  alias Int = ::Int32

  alias SizeI = ::Int32

  alias Bitfield = ::UInt32

  alias Double = ::Float64

  alias UInt = ::UInt32

  alias UByte = KhronosUInt8

  alias Byte = KhronosInt8

  alias Short = KhronosInt16

  alias UShort = KhronosUInt16

  alias ClampF = KhronosFloat

  alias ClampD = ::Float64

  alias SizeIPtr = KhronosSSize

  alias IntPtr = KhronosIntPtr

  alias Char = ::UInt8

  alias Half = KhronosUInt16
end
