"""
...
    myfibvecs([n])
Возвращает массив из 3-х последовательных чисел Фибоначчи
n - номер начала последовательности (по умолчанию n=1)
...
"""
#= я пытался сделать через итераторы, но не сложилось...
struct Fib # структура для членов последовательности
    fn::Int # последнее значение последовательности
end     
function Base.iterate(fib::Fib)
    return 1, (1, 1, 2) # начальное состояние
end
function Base.iterate(fib::Fib, state)
    i, a, b = state
    if i ≤ fib.fn
        return a, (i + 1, b, a + b) # выход и последующее значение
    end
end 
=#
function fib(i::Int) # расчет значений чисел Фибоначчи
    if i==1 || i==2
        return 1
    else
        return fib(i-1)+fib(i-2) # рекурсия спасет мир (или уничтожит)
    end
end

function myfibvecs(n::Int=1) # если аргумент - число 
    return [fib(i) for i in n:n+2 ] # формирование вектора
end
function myfibvecs(n::Array{Int}) # если аргумент - число
    return [[fib(i) for i in ni:ni+2 ] for ni in n]
end