module PlutoEditorThemes

using Base64

using HypertextLiteral: @htl
using MIMEs
using URIs

include("PlutoUIResource.jl")

"""
	setcolortheme!([stylefile="monokai_dark.css"])


Override Pluto.jl's default color theme using "path/to/frontend/styles/<stylefile>"
"""
function setcolortheme!(stylefile::AbstractString)
    x = LocalResource(stylefile)
    return @htl """
    	<link rel="stylesheet" href="$(x.src)">
    """
end

function setcolortheme!()
    styles_dir = joinpath(pkgdir(@__MODULE__)::String, "frontend", "styles")
    stylefile = joinpath(styles_dir, "monokai_dark.css")
    setcolortheme!(stylefile) 
end

end # module PlutoEditorThemes
