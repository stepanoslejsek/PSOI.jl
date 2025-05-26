using PSOI
using Test

@testset "PSOI.jl" begin
    # Write your tests here.
end

@testset "MOI" begin
    include("test/MOI_wrapper/MOI_wrapper.jl")
end
