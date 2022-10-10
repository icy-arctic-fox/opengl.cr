{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Mostly OpenGL 1.0/1.1 enum assignments. Unused ranges should generally remain unused.

  enum PixelType : ::UInt32
    Byte = 0x1400

    UnsignedByte = 0x1401

    Short = 0x1402

    UnsignedShort = 0x1403

    Int = 0x1404

    UnsignedInt = 0x1405

    Float = 0x1406

    Bitmap = 0x1a00

    UnsignedByte332 = 0x8032

    UnsignedShort4444 = 0x8033

    UnsignedShort5551 = 0x8034

    UnsignedInt8888 = 0x8035

    UnsignedInt1010102 = 0x8036

    UnsignedByte233Rev = 0x8362

    UnsignedShort565 = 0x8363

    UnsignedShort565Rev = 0x8364

    UnsignedShort4444Rev = 0x8365

    UnsignedShort1555Rev = 0x8366

    UnsignedInt8888Rev = 0x8367

    UnsignedInt2101010Rev = 0x8368
  end
end
