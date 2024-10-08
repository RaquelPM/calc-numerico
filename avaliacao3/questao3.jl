include("gauss-seidel.jl")

function main()
    A = 1.0*[3 -1 1; 3 6 2; 3 3  7]
    b = 1.0*[1;0;4]
    
    println(gauss_seidel(A, b, 3, 100))
end

main()
                  

         

