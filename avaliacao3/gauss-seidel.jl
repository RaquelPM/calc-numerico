using LinearAlgebra
using Printf

function gauss_seidel(A, b, n, iter_max)
    x_k = zeros(Float64, (n, 1))

    A_0 = copy(A)
    b_0 = copy(b)

    for i in 1:n
        b[i] = b[i]/A[i, i]
        A[i,:] = A[i, :]/A[i, i]
        A[i, i] = 0
    end

    i = 0
    e = norm(A_0*x_k - b_0, 2)
    println("      i      |           x           |     e     |")
    while(e >= 0.001)
        printf("      %d      |   (%.3f, %.3f, %,3f)      |     %.3f     \n", i, x_k[1], x_k[2], x_[3])
        x_k[1] = b[1]
        aux = 0
        for i in 2:n
            aux += A[1, i] * x_k[i]
        end
        x_k[1] -= aux
        
        for i in 2:n
            x_k[i] = b[i]
            aux = 0
            for j in 1:n
                aux += x_k[j]*A[i, j]
            end
            x_k[i] -= aux
        end
        e = norm(A_0*x_k - b_0, 2)
        i += 1
    end
    println("Vetor resultado: ")
    return x_k
end