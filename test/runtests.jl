using ExtensionsTestDemo
using StatsBase
using Test

@testset "ExtensionsTestDemo.jl" begin
    @testset "Extension depending on StatsBase and Random is loaded when only StatsBase is loaded" begin
        @test Base.get_extension(ExtensionsTestDemo, :ExtensionsTestDemoStatsBaseExt) isa Module
    end

    @testset "Extension depending on StatsBase and Random is loaded when both are loaded" begin
        using Random
        @test Base.get_extension(ExtensionsTestDemo, :ExtensionsTestDemoStatsBaseExt) isa Module
    end
end
