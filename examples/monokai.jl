### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# ╔═╡ e7370eb6-7f24-11ef-2dba-d5962ab6c63e
begin
	using Pkg
	Pkg.activate(temp=true)
	Pkg.add("PlutoLinks")
	Pkg.develop(path=joinpath(@__DIR__, ".."))
	
	using PlutoLinks
	using PlutoEditorThemes
end

# ╔═╡ 999f0239-f729-4aad-b512-b636a0568bef
md"""
# How to change the style of Pluto Notebook to your preferred one

This notebook provides an instruction how to change the style of Pluto Notebook to your preffered one.
"""

# ╔═╡ 8dd9f659-6bcd-49d2-a873-c729d30e1804
md"""
`PlutoLinks.@use_file` watches your style file. If you update the content of your style file, this Pluto Notebook re-run the cell.
"""

# ╔═╡ 3f31fde9-16bb-4239-bcf0-c8abc081b841
begin
	yourstylefile = "monokai_dark.css"
	cssfile = joinpath(
		pkgdir(PlutoEditorThemes), 
		"frontend/styles",
		yourstylefile
	)
	@use_file(cssfile)
	PlutoEditorThemes.setcolortheme!()
end

# ╔═╡ Cell order:
# ╟─999f0239-f729-4aad-b512-b636a0568bef
# ╠═e7370eb6-7f24-11ef-2dba-d5962ab6c63e
# ╟─8dd9f659-6bcd-49d2-a873-c729d30e1804
# ╠═3f31fde9-16bb-4239-bcf0-c8abc081b841
