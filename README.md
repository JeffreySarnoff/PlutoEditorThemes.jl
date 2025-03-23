### PlutoEditorThemes.jl is forked from [PlutoEditorColorThemes.jl](https://github.com/AtelierArith/PlutoEditorColorThemes.jl)

Customize your Pluto Notebook with your preferred theme. 

<img width="759" alt="image" src="https://github.com/user-attachments/assets/4231c673-f4f2-4c49-9510-af5b36b2cec2">

## Description

This Julia package [PlutoEditorThemes.jl](https://github.com/AtelierArith/PlutoEditorThemes.jl) provides methods for overriding the default color theme of Pluto Notebook.

## Requirements

- Julia v1.10
- Pluto.jl

```julia
julia> import Pluto
julia> pkgversion(Pluto)
v"0.19.46"
```

## Getting started

Start Julia REPL and run the following command:

```julia
julia> using Pluto; Pluto.run(notebook="examples/demo.jl")
```

Our API `PlutoEditorThemes.setcolortheme!()` overriding the default color theme of Pluto Notebook using `frontend/styles/monokai_dark.css`.

If you want to change the color theme, follow the instructions below:

1. Create your own custom styles file (`cunstom.css` for instance)
1. Store it under the `frontend/styles` directory.
1. Run the following function on your Pluto Notebook:
	```julia
	PlutoEditorThemes.setcolortheme!("custom.css")
	```

