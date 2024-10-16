function trapezio_composto(y, h, n)
    soma = 0
    soma += y[1]
    soma += y[n+1]
    i = 1
    for i in 2:n
        soma += 2 * y[i]
    end
    return soma * (h/2)
end

function main()
    f(x) = 5*x^2 + 3*x + 2
    
    n = 5
    y = zeros(Float64, (1, n+1))

    a = 0
    b = 10
    h = (b - a)/n
    x_i = a
    println("i, xi, yi")
    for i in 1:n+1
        y[i] = f(x_i)
        println(i, ",", x_i,",",  y[i])
        x_i += h
    end
    
    
    println(trapezio_composto(y, h, n))
    

end

main()


