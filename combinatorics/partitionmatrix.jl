
using LinearAlgebra

#=
n = 14
A = partition P(n) = 6 + 4 + 3 + 1 (compositions allowed only when the
first summand is the largest)
B (A transpose) -> conjugate of P(n) = 4 + 3 + 3 + 2 + 1 + 1
Ferrers diagram of P(n) as matrix with 1 and 0 (Partition Matrix).
AB -> symmetric matrix based on original partition [6 4 3 1].
BA -> symmetric matrix based on the conjugate of the original partition matrix.
=#

function main()
    partition = [6, 4, 3, 1]
    A = createpm(partition)
    B = transpose(A)
    y = A * B
    z = B * A
    println()
    Base.print_matrix(stdout, A)
    println("\n")
    Base.print_matrix(stdout, B)
    println("\n")
    Base.print_matrix(stdout, y)
    println("\n")
    Base.print_matrix(stdout, z)
    println("\n")
end

function createpm(part)
    Acols, Arows = part[1], length(part)
    Amatrix = zeros(Int, Arows, Acols)
    i = 1
    for e in part
        Amatrix[i, 1 : e ] .= 1
        i += 1
    end
    return Amatrix
end

main()