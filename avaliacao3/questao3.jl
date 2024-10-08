function gauss_seidel(A, b, n, iter_max)
    x_k = zeros(Float64, (1, n))

    for k in 1:iter_max

        ## x_k_1
        x_k[1] = b[1]
        aux = 0
        for i in 2:n
            aux += A[1][i] * x_k[i]
        end
        x_k[1] -= aux
        
        for i in 2:n
            x_k[i] = b[i]
            aux = 0
            for j in 1:n
                aux += x_k[j]*A[i][j]
            end
            x_k[i] -= aux
        end
    end
    return x_k
end

function main()
    A = [[3, -1, 1], [3, 3, 7], [3, 6 , 2]]
    for i in 1:3
        A[i] = A[i]/A[i][i]
        b[i] = b[i]/A[i][i]
        A[i][i] = 0
    end
    b = [1, 4, 0]
    println(gauss_seidel(A, b, 3, 100))

end

main()
                  

         

