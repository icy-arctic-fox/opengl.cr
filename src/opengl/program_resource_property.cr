@[Link("gl")]
lib LibGL
  enum ProgramResourceProperty : ::UInt32
    NumCompatibleSubroutines = 0x8e4a

    CompatibleSubroutines = 0x8e4b

    Uniform = 0x92e1

    NameLength = 0x92f9

    Type = 0x92fa

    ArraySize = 0x92fb

    Offset = 0x92fc

    BlockIndex = 0x92fd

    ArrayStride = 0x92fe

    MatrixStride = 0x92ff

    IsRowMajor = 0x9300

    AtomicCounterBufferIndex = 0x9301

    BufferBinding = 0x9302

    BufferDataSize = 0x9303

    NumActiveVariables = 0x9304

    ActiveVariables = 0x9305

    ReferencedByVertexShader = 0x9306

    ReferencedByTessControlShader = 0x9307

    ReferencedByTessEvaluationShader = 0x9308

    ReferencedByGeometryShader = 0x9309

    ReferencedByFragmentShader = 0x930a

    ReferencedByComputeShader = 0x930b

    TopLevelArraySize = 0x930c

    TopLevelArrayStride = 0x930d

    Location = 0x930e

    LocationIndex = 0x930f

    IsPerPatch = 0x92e7
  end
end
