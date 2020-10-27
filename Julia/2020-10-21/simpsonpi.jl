using Printf
using Statistics

function f(x)
    sqrt(Complex(1 - x * x))
end

function simps(a, b, n)
    h = (b - a) / n
    y0 = abs(f(a + 0 * h))
    yn = abs(f(a + n * h))
    sum1 = 0
    sum2 = 0

    for i = 1:n
        if i % 2 == 0
            sum1 = abs(sum1 + f(a + i * h))
        else
            sum2 = abs(sum2 + f(a + i * h))
        end
    end
    sum = (h / 3) * (y0 + yn + 2 * sum1 + 4 * sum2)
end

Pi = 4 * simps(0, 1, 10)
println("Valor: $Pi")
println("Precisao: ",(Pi - pi))