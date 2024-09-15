function euler(f, x0, y0, n, ponto)
    h = (ponto - x0)/n

    yi = y0
    xi = x0

    for i in 0:n-1
        println("y(", round(xi, digits=3), ") = ", round(yi, digits=3))
        yi = yi + h*f(xi, yi)
        xi += h
    end
    println("y(", round(xi, digits=3), ") = ", round(yi, digits=3))
    return yi
end

function runge_kutta_3(f, x0, y0, n, h, ponto)
    yi = y0
    xi = x0

    for i in 0:n-1
        println("y(", round(xi, digits=3), ") = ", round(yi, digits=3))
        k1 = h*f(xi, yi)
        k2 = h*f(xi + h/2, yi + k1/2)
        k3 = h*f(xi + h, yi - k1 + 2k2)

        yi += (k1+4k2+k3)/6
        xi += h
    end
    println("y(", round(xi, digits=3), ") = ", round(yi, digits=3))
    return yi
end

function runge_kutta_4(f, x0, y0, n, h, ponto)
    yi = y0
    xi = x0

    for i in 0:n-1
        println("y(", round(xi, digits=3), ") = ", round(yi, digits=3))
        k1 = h*f(xi, yi)
        k2 = h*f(xi + h/2, yi + k1/2)
        k3 = h*f(xi + h/2, yi + k2/2)
        k4 = h*f(xi + h, yi + k3)

        yi += (k1+2k2+2k3 + k4)/6
        xi += h
    end
    println("y(", round(xi, digits=3), ") = ", round(yi, digits=3))
    return yi
end

function main()
    f(x, y) = (y^2 - x)/5
    g(x, y) = (x^3 - y)

    # questao 1
    t(x, y) = y - (2x)/y

    y = euler(t, 0, 1, 5, 1)
    
    y = runge_kutta_3(t, 0, 1, 5, 0.2, 1)
    println(sqrt(3) - y)
    println(y)

    #questao 2
    a(v, t) = -9.8 - 0.002/0.11*v*abs(v)  
    vel = euler(a, 0, 8, 10, 1) 

    #questao 3
    p(x, y) = 0.029y - 1.4e-7y^2
    y = runge_kutta_4(p, 0, 50976, 20, 0.25, 5)

end

main()