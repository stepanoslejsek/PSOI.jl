mutable struct QPProblemData{T <: AbstractFloat} 
    H::AbstractMatrix{T}
    h::AbstractVector{T}
    z̄::AbstractVector{T}
    z̲::AbstractVector{T}
end

mutable struct Solver{T <: AbstractFloat}
end