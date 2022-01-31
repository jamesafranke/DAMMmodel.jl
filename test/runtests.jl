using DAMMmodel
using Test

@testset "DAMMmodel Tests" begin    
    # Testing DAMM.jl
	x = [18.0 0.35; 22.0 0.22] # Ind variables test
	p = (1e9, 64.0, 3.46e-8, 2.0e-3, 0.4, 0.0125, 1.0) # Parameters test
	@test typeof(DAMM(x, p)) == Vector{Float64} # DAMM test

	Ind_var = hcat([19.0, 22.0], [0.35, 0.22])
	@test lenght( DAMMfit(Ind_var, [2.2, 2.8], 0.4) ) == 7  # new DAMM test JF
end