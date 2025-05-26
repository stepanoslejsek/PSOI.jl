# PSOI

Julia implementation of high-performace QP (quadratic program) solver for MPC (model predictive control) applications. The algorithm is based on MPRGP (Modified Proportioning with Reduced Gradient Projections) and on CGNP (Combined Gradient/Newton Projection) algorithms.

The algorithm is particularly useful for solving the follwing problem:

$$
\begin{aligned} 
\underset{\bf{z} \in \mathbb{R}^n}{\text{minimize}} \quad & \frac{1}{2} \bf{z}^\mathsf{T}\bf{H}\bf{z} + \bf{h}^\mathsf{T}\bf{z}\\
\text{subject to} \quad & \underline{\bf{z}} \le \bf{z} \le \overline{\bf{z}},
\end{aligned}
$$ 

where $\bf{H}$ is symmetric positive definite matrix.

The description of the algotihm is proposed in the following paper:
 - ŠANTIN, Ondřej, et al. Proportioning with second-order information for model predictive control. Optimization Methods and Software, 2017, 32.3: 436-454, DOI: 10.1080/10556788.2016.1213840.

[![Build Status](https://github.com/stepanoslejsek/PSOI.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/stepanoslejsek/PSOI.jl/actions/workflows/CI.yml?query=branch%3Amaster)
