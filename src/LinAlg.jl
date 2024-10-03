module LinAlg
# this is the wrapper file (like a python __init__)
    module Test
        greet() = print("xdd")
    end 

    module Utils
        include("Utils.jl")
        export to_matrix, matrix_vector_product
    end

    include("RowReduce.jl")
    export rref, rref!


end # module LinAlg
