function euler(f, x0, y0, n, ponto)
    h = (ponto - x0)/n

    yi = y0
    xi = x0

    for i in 0:n-1
        yi = yi + h*f(xi, yi)
        xi += h
    end

    return yi
end

function runge_kutta_3(f, x0, y0, n, h, ponto)
    yi = y0
    xi = x0

    for i in 0:n-1
        k1 = h*f(xi, yi)
        k2 = h*f(xi + h/2, yi + k1/2)
        k3 = h*f(xi + h, yi - k1 - 2k2)

        yi += (k1+4k2+k3)/6
        xi += h
    end
    
    return yi
end

function runge_kutta_4(f, x0, y0, n, h, ponto)
    yi = y0
    xi = x0

    for i in 0:n-1
        k1 = h*f(xi, yi)
        k2 = h*f(xi + h/2, yi + k1/2)
        k3 = h*f(xi + h/2, yi + k2/2)
        k4 = h*f(xi + h, yi + k3)

        yi += (k1+2k2+2k3 + k4)/6
        xi += h
    end
    
    return yi
end

function main()
    f(x, y) = (y^2 - x)/5
    g(x, y) = (x^3 - y)
    t(x, y) = y - (2x)/y
    a(v, t) = -9.8 - 0.002/0.11*v*abs(v)  

    x0 = 0
    y0 = 1
    n = 10

    ponto = 3
    # questao 1
    #function euler(f, x0, y0, n, ponto)
    # y = euler(t, 0, 1, 5, 1)
    # println(y)
    # #function runge_kutta_3(f, x0, y0, n, h, ponto)
    # y = runge_kutta_3(t, 0, 1, 5, 0.2, 1)
    # println(y)

    #questao 2
    for i in 0:0.001:1
        vel = euler(a, 0, 8, 1000, i)
        println(vel, " ", i)
    end 

    #y = runge_kutta_4(t, 1/2, sqrt(2), 5, 0.1, 1)
    #println(y)
end

main()