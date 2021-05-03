# Some properties of integer partitions.
# Let n = 14.

using LinearAlgebra

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
