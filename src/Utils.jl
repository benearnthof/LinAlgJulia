__precompile__()

function to_matrix(vectors)
    # take in list of column vectors and return matrix with r rows and c columns
    out = transpose(mapreduce(permutedims, vcat, vectors))
    convert.(Float64, out)
end

function matrix_vector_product(mat, v)
    @assert size(mat)[2] == size(v)[1] "Ncols of Matrix must equal length of vector."
    out = fill(0.0, (size(mat)[1], 1))
    for (i, val) in enumerate(v)
        out .+= mat[:, i] .* val
    end
    out
end