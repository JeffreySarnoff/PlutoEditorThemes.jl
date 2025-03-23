using Test

using Aqua
using JET

using PlutoEditorThemes

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(PlutoEditorThemes; deps_compat = false)
end

v = VERSION
isreleased = v.prerelease == ()
if isreleased && v >= v"1.10"
    @testset "Code linting (JET.jl)" begin
        JET.test_package(PlutoEditorThemes; target_defined_modules = true)
    end
end
