### A Pluto.jl notebook ###
# v0.19.46

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ e7370eb6-7f24-11ef-2dba-d5962ab6c63e
begin
    using Pkg
	Pkg.activate(temp=true)

	Pkg.add("PlutoUI")
	Pkg.add(url="https://github.com/AtelierArith/PlutoEditorThemes.jl.git")
	using PlutoUI: CheckBox
	using PlutoEditorThemes
end

# ╔═╡ fe42d231-ae45-474c-984f-c796c445ce59
md"""
# Customize Your Pluto Notebook with the Monokai Theme
"""

# ╔═╡ 3f6aa999-08ab-4540-9b8a-2dfc3384ba2c
md"""
To activate the Monokai theme, simply check the 'Use Monokai theme' checkbox.

Use Monokai theme $(@bind usemonokai CheckBox(default=true))
"""

# ╔═╡ a4c991eb-7d4b-41f5-bd24-636699805b70
usemonokai && PlutoEditorThemes.setcolortheme!()

# ╔═╡ bbb6dd99-f4cf-4258-ada9-30f6800d905d
function greet()
	println("Hello World")
end

# ╔═╡ Cell order:
# ╟─fe42d231-ae45-474c-984f-c796c445ce59
# ╠═e7370eb6-7f24-11ef-2dba-d5962ab6c63e
# ╟─3f6aa999-08ab-4540-9b8a-2dfc3384ba2c
# ╠═a4c991eb-7d4b-41f5-bd24-636699805b70
# ╠═bbb6dd99-f4cf-4258-ada9-30f6800d905d
