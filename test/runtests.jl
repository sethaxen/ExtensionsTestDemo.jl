using ExtensionsTestDemo
using StatsBase
using Test

@testset "ExtensionsTestDemo.jl" begin

    Base.get_extension(Main, :ExtensionsTestDemoStatsBaseExt)
end
