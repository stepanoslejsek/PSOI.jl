using LinearAlgebra, StaticArrays

struct QPProblem{D, T <: AbstractFloat}
    H::SMatrix{D, D, T}
    H⁻¹::SMatrix{D, D, T}
    h::SVector{D, T}
    z̄::SVector{D, T}
    z̲::SVector{D, T}
end

function QPProblem(H::AbstractMatrix{T}, h::AbstractVector{T}, z̄::AbstractVector{T}, z̲::AbstractVector{T}) where T <: AbstractFloat
    if size(H, 1) != size(H, 2)
        throw(ArgumentError("H must be a square matrix"))
    end
    if size(H, 1) != length(h)
        throw(ArgumentError("h must have the same number of rows as H"))
    end
    if size(H, 1) != length(z̄)
        throw(ArgumentError("z̄ must have the same number of rows as H"))
    end
    if size(H, 1) != length(z̲)
        throw(ArgumentError("z̲ must have the same number of rows as H"))
    end
    if !isposdef(H)
        throw(ArgumentError("H must be positive definite"))
    end

    D = size(H, 1)
    H_matrix = Matrix{T}(H)

    H⁻¹= SMatrix{D, D, T}(LinearAlgebra.inv!(cholesky!(H_matrix)))
    H = SMatrix{D, D, T}(H)
    h = SVector{D, T}(h)
    z̄ = SVector{D, T}(z̄)
    z̲ = SVector{D, T}(z̲)
    return QPProblem(H, H⁻¹, h, z̄, z̲)
end

mutable struct Solver{T <: AbstractFloat}
end

export QPProblem
