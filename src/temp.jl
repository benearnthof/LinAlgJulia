# need to activate current folder in pkg 
# ] activate .

using Revise
using LinAlg

LinAlg.Test.greet
LinAlg.rref
LinAlg.Utils.to_matrix

# How can we row reduce a Matrix
vectors = [[1, 0, 5], [-2, 2, 0], [1, -8, -5], [0, 8, 10]]



mat = LinAlg.Utils.to_matrix(vectors)


rr = LinAlg.rref(mat)

smat = mat[:, 1:3]
v = mat[:, 4]

p = LinAlg.Utils.matrix_vector_product(smat, v)


vectors = [[4, 2], [-3, 0], [1, 5], [3, 1], [0, 0]]
m = LinAlg.Utils.to_matrix(vectors)

rr = LinAlg.rref(m)

