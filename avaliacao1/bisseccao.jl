function bisseccao(a, b, f, tol)
    if f(a) * f(b) > 0
        println("f(a) e f(b) devem ter sinais opostos")
    end

    x = (a + b) / 2

    println("x: $x")

    erro = abs(f(x))

    while erro > tol
        x = (a + b) / 2

        println("x: $x, erro: $erro")

        erro = abs(f(x))

        if f(a) * f(x) < 0
            b = x
        else
            a = x
        end
    end

    return x
end