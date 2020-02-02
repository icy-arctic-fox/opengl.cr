{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("gl")]
{% end %}
lib LibGL
  # Deprecated, use the group attributes instead.

  enum InternalFormatPName : ::UInt32
    Samples = 0x80a9

    TextureCompressed = 0x86a1

    GenerateMipmap = 0x8191

    NumSampleCounts = 0x9380

    ImageFormatCompatibilityType = 0x90c7

    InternalformatSupported = 0x826f

    InternalformatPreferred = 0x8270

    InternalformatRedSize = 0x8271

    InternalformatGreenSize = 0x8272

    InternalformatBlueSize = 0x8273

    InternalformatAlphaSize = 0x8274

    InternalformatDepthSize = 0x8275

    InternalformatStencilSize = 0x8276

    InternalformatSharedSize = 0x8277

    InternalformatRedType = 0x8278

    InternalformatGreenType = 0x8279

    InternalformatBlueType = 0x827a

    InternalformatAlphaType = 0x827b

    InternalformatDepthType = 0x827c

    InternalformatStencilType = 0x827d

    MaxWidth = 0x827e

    MaxHeight = 0x827f

    MaxDepth = 0x8280

    MaxLayers = 0x8281

    ColorComponents = 0x8283

    ColorRenderable = 0x8286

    DepthRenderable = 0x8287

    StencilRenderable = 0x8288

    FramebufferRenderable = 0x8289

    FramebufferRenderableLayered = 0x828a

    FramebufferBlend = 0x828b

    ReadPixels = 0x828c

    ReadPixelsFormat = 0x828d

    ReadPixelsType = 0x828e

    TextureImageFormat = 0x828f

    TextureImageType = 0x8290

    GetTextureImageFormat = 0x8291

    GetTextureImageType = 0x8292

    Mipmap = 0x8293
    # Should be deprecated
    AutoGenerateMipmap = 0x8295

    ColorEncoding = 0x8296

    SrGBRead = 0x8297

    SrGBWrite = 0x8298

    Filter = 0x829a

    VertexTexture = 0x829b

    TessControlTexture = 0x829c

    TessEvaluationTexture = 0x829d

    GeometryTexture = 0x829e

    FragmentTexture = 0x829f

    ComputeTexture = 0x82a0

    TextureShadow = 0x82a1

    TextureGather = 0x82a2

    TextureGatherShadow = 0x82a3

    ShaderImageLoad = 0x82a4

    ShaderImageStore = 0x82a5

    ShaderImageAtomic = 0x82a6

    ImageTexelSize = 0x82a7

    ImageCompatibilityClass = 0x82a8

    ImagePixelFormat = 0x82a9

    ImagePixelType = 0x82aa

    SimultaneousTextureAndDepthTest = 0x82ac

    SimultaneousTextureAndStencilTest = 0x82ad

    SimultaneousTextureAndDepthWrite = 0x82ae

    SimultaneousTextureAndStencilWrite = 0x82af

    TextureCompressedBlockWidth = 0x82b1

    TextureCompressedBlockHeight = 0x82b2

    TextureCompressedBlockSize = 0x82b3

    ClearBuffer = 0x82b4

    TextureView = 0x82b5

    ViewCompatibilityClass = 0x82b6
  end
end
