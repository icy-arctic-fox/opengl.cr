OpenGL Bindings for Crystal
===========================

This repository contains dynamically generated OpenGL bindings for the Crystal language.
In addition, this repository also contains bindings for OpenGL ES and OpenGL ES-SC.
This repository is updated with the contents of the [OpenGL Registry](https://github.com/KhronosGroup/OpenGL-Registry).

Usage
-----

Each branch in this repository references one version of OpenGL (or GLES).
The master branch always references the latest version of OpenGL.
However, it is recommended that a versioned branch is used over master.
Add the following to your `shard.yml` dependencies:

```yaml
dependencies:
  opengl:
    gitlab: arctic-fox/opengl.cr
    branch: gl-4.2-compatibility
```

The branch names are formatted like so:

```text
API-VERSION[-PROFILE]
```

Where `API` is one of:

- gl
- gles1
- gles2
- glsc2

`VERSION` is the version of the API.
`PROFILE` is the OpenGL profile, which only applies to the `gl` API.
It can be `core` or `compatibility`.
Only OpenGL versions 3.2+ need to specify a profile.
See [OpenGL 3.2 and Profiles](https://www.khronos.org/opengl/wiki/OpenGL_Context#OpenGL_3.2_and_Profiles) for details on profiles.

### Branches

- gl-1.0
- gl-1.1
- gl-1.2
- gl-1.3
- gl-1.4
- gl-1.5
- gl-2.0
- gl-2.1
- gl-3.0
- gl-3.1
- gl-3.2-core
- gl-3.2-compatibility
- gl-3.3-core
- gl-3.3-compatibility
- gl-4.0-core
- gl-4.0-compatibility
- gl-4.1-core
- gl-4.1-compatibility
- gl-4.2-core
- gl-4.2-compatibility
- gl-4.3-core
- gl-4.3-compatibility
- gl-4.4-core
- gl-4.4-compatibility
- gl-4.5-core
- gl-4.5-compatibility
- gl-4.6-core
- gl-4.6-compatibility
- gles1-1.0
- gles2-2.0
- gles2-3.0
- gles2-3.1
- gles2-3.2
- glsc2-2.0

### LibGL

Everything in the shard is contained in a `LibGL` C lib.
There are no wrappers or objects, just the C bindings and values.
Names have been "crystalized."
This means the function and enum names have been modified to fit Crystal's naming scheme.
All function names have the `gl` prefix stripped.
Enum groups are fully-fledged Crystal enums.
This helps ensure type safety.

```crystal
require "opengl"

LibGL.clear(LibGL::ClearBufferMask::ColorBuffer)
LibGL.begin(LibGL::PrimitiveType::Triangles)
LibGL.color_3f(1.0, 0.0, 0.0)
LibGL.vertex_2f(-0.75, -0.75)
LibGL.color_3f(0.0, 1.0, 0.0)
LibGL.vertex_2f(0.75, -0.75)
LibGL.color_3f(0.0, 0.0, 1.0)
LibGL.vertex_2f(0.0, 0.75)
LibGL.end
LibGL.flush
```

All binding files are in the `src/opengl/` directory.
Contents are grouped logically into files based on their group or type.
Some important files are `functions.cr`, `types.cr`, and `procs.cr`.
The `functions.cr` file contains all of the function bindings.
The `types.cr` file contains all of the non-enum types.
They are mostly aliases to existing types.
The `procs.cr` file contains methods that return `Proc` types for their corresponding method.
This can be used for OpenGL function loaders.

Contributing
------------

This shard and the entire repository are dynamically generated.
Issues and pull requests should not be submitted on this repository.
Instead, submit them to the [generator repository](https://gitlab.com/arctic-fox/opengl-bind-gen.cr).
