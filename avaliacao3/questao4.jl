include("gauss-seidel.jl")

function swap_cols(A, i, j)
    aux = A[:,i]
    A[:,i] = A[:,j]
    A[:,j] = aux 
end

function swap_rows(A, i, j)
    aux = A[i,:]
    A[i,:] = A[j,:]
    A[j,:] = aux 
end

function main()
    A = 1.0*[3 4 7 20; 20 25 40 50; 10 15 20 22; 10 8 10 15]
    b = 1.0*[504; 1970; 970; 601]

    swap_cols(A, 1, 4)
    swap_cols(A, 2, 3)
    
    x = gauss_seidel(A, b, 4, 1000)
    
    swap_rows(x, 1, 4)
    swap_rows(x, 2, 3)

    println(round.(x, digits=0))
end

main()
                  

         

