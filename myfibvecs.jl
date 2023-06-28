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

function myfibvecs(n::Int=1) # если аргумент - число 
    v=[1,1,2] # начальное значение
    for i=2:n 
        (v[1],v[2],v[3]) = (v[2],v[3],v[2]+v[3])
    end
    return v 
end
function myfibvecs(n::Array{Int}) # если аргумент - число
    return [myfibvecs(ni) for ni in n]
end