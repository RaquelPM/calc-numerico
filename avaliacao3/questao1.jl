function simpson_composto(y, h, n)
    soma = 0
    soma += y[1]
    soma += y[n+1]
    coef_impar = 4
    coef_par = 2
    for i in 2:2:n
        #println("I: ", i)
        soma += coef_impar * y[i]
        println(coef_impar, " ", y[i])
    end
    println("A")
    for i in 3:2:n
        soma += coef_par * y[i]
        println(coef_par, " ", y[i])
    end
    return soma * (h/3)
end

function main()
    f(x) = 4/(1+x^2)
    n = 10
    a = 0
    b = 5
    h = (b - a)/n
    #y = zeros(Float64, (1, n+1))
    x_i = a
    # for i in 1:n+1
    #     y[i] = f(x_i)
    #     x_i += h
    # end

    y = [0, 4.67, 7.34, 8.86, 9.73, 10.22, 10.51, 10.67, 10.76, 10.81, 10.81]
    
    println(simpson_composto(y, h, n))
    

end

main()


