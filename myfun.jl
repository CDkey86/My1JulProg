"""
...
    mygenfun(str,n,[param...])
Генерирует массив из n членов указанной последовательности.
'aprog' - арифметическая прогрессия
'fib' - числа Фибоначчи
'rnd' - случайные числа
...
"""
struct ArifmProgrVector <: AbstractArray{Int, 1} # вектор арифметических прогрессий
    count::Int # количество элементов
    a1::Int # первый член
    d::Int # разность
    # параметры по умолчанию:
    ArifmProgrVector(count=1,a1=1,d=1) = new(count,a1,d)
end
Base.size(S::ArifmProgrVector) = (S.count,)
Base.IndexStyle(::Type{<:ArifmProgrVector}) = IndexLinear()
Base.getindex(S::ArifmProgrVector, i::Int) = S.a1 + S.d*(i-1)

struct IntRndVector <: AbstractArray{Int, 1} # вектор случайных чисел
    count::Int # количество элементов
    a::Int # границы диапазона
    b::Int # разность
    IntRndVector(count=1,a=0,b=10) = new(count,a,b)
end
Base.size(S::IntRndVector) = (S.count,)
Base.IndexStyle(::Type{<:IntRndVector}) = IndexLinear()
Base.getindex(S::IntRndVector, i::Int) = Int(round( S.a + (S.b-S.a)*rand() ))

# числ Фибоначчи
struct Fibonacci 
    N::Int # номер 
end
# # # # # # #
Base.iterate(fib::Fibonacci) = (0,(1,1))
Base.iterate(fib::Fibonacci, state) = (0,(1,1))
# # # # # # # 

# вектор чисел Фибоначчи
struct FibVector <: AbstractArray{Fibonacci, 1} 
    count::Int # количество элементов
end
Base.size(S::FibVector) = (S.count,)
Base.IndexStyle(::Type{<:FibVector}) = IndexLinear()
Base.getindex(S::FibVector, i::Int) = Fibonacci(i)

# основная функция
function mygenfun(str::String, n::Int, param...) 
    if str=="aprog"
        obj=ArifmProgrVector(n,param);
    elseif str=="rnd"
        obj=RnIntRndVectord(n,param);
    elseif str=="fib"
        obj=FibVector(n);
    else
        return error("Ошибочка вышла! Укажите правильный тип")
    end
    return collect(obj)
end