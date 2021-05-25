{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  alias KhronosInt8 = ::Int8

  alias KhronosUInt8 = ::UInt8

  alias KhronosInt16 = ::Int16

  alias KhronosUInt16 = ::UInt16

  alias KhronosInt32 = ::Int32

  alias KhronosUInt32 = ::UInt32

  alias KhronosInt64 = ::Int64

  alias KhronosUInt64 = ::UInt64

  {% if flag?(:x86_64) %}
    alias KhronosIntPtr = ::Int64
  {% else %}
    alias KhronosIntPtr = ::Int32
  {% end %}

  {% if flag?(:x86_64) %}
    alias KhronosUIntPtr = ::UInt64
  {% else %}
    alias KhronosUIntPtr = ::UInt32
  {% end %}

  {% if flag?(:x86_64) %}
    alias KhronosSSize = ::Int64
  {% else %}
    alias KhronosSSize = ::Int32
  {% end %}

  {% if flag?(:x86_64) %}
    alias KhronosUSize = ::UInt64
  {% else %}
    alias KhronosUSize = ::UInt32
  {% end %}

  alias KhronosFloat = ::Float32

  alias KhronosUTimeNanoseconds = KhronosUInt64

  alias KhronosSTimeNanoseconds = KhronosInt64
end
