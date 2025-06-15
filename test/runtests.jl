using PSOI
using Test, LinearAlgebra

@testset "PSOI.jl" begin
    # Write your tests here.

    # Test QPProblem
    D = 3
    H = rand(D, D)
    h = rand(D)
    z̄ = rand(D)
    z̲ = rand(D)
    prob = QPProblem(H' * H, h, z̄, z̲)

    @test prob.H * prob.H⁻¹ ≈ I

    h = rand(D + 1)
    @test_throws ArgumentError QPProblem(H' * H, h, z̄, z̲)

    H = rand(D, D + 1)
    @test_throws ArgumentError QPProblem(H' * H, h, z̄, z̲)
end

@testset "MOI" begin
    include("test/MOI_wrapper/MOI_wrapper.jl")
end
