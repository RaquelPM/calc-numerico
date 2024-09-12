using Plots

include("bisseccao.jl")

function main()
    f(x) = -32 + 20*x*sinh(1.5/x)

    x_values = 1:0.1:5.0
    y_values = f.(x_values)

    plt = plot(x_values, y_values)

    display(plt)

    savefig(plt, "questao2.png")

    println("Digite o intervalo que deseja aplicar os métodos")
    entrada = readline() 
    a, b = parse.(Float64, split(entrada))

    println("Intervalo: [$a, $b]")

    raiz = bisseccao(a, b, f, 0.001)

    println("MÉTODO DA BISSECÇÃO:")
    println("Raiz encontrada: $raiz, f(x)= $(f(raiz))")

end

main()
