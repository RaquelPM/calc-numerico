using Plots

include("bisseccao.jl")

function main()
    c(x) = 6 - 15(exp(-0.1x) - exp(-0.5x)) 
   
    x_values = 1:0.1:5.0

    y_values = c.(x_values)

    plt = plot(x_values, y_values)

    display(plt)

    savefig(plt, "qustao6.png")

    println("Digite o intervalo que deseja aplicar os métodos")
    entrada = readline() 
    a, b = parse.(Float64, split(entrada))

    println("Intervalo: [$a, $b]")

    raiz = bisseccao(a, b, c, 0.001)

    println("MÉTODO DA BISSECÇÃO:")
    println("Raiz encontrada: $raiz, f(x)= $(c(raiz))")

end

main()
