using LinearAlgebra
using UnicodePlots

function main()
	local A::Array{Float64}
	A = []
	for i in 1:10000
		L =  eigvals(Symmetric(rand(5,5)))
		A = vcat(A, L...)
	end
	plt = histogram(A, nbins=50)
	println(plt)
end


main()
