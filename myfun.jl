"""
...
    mygenfun(str,n,[param...])
Генерирует массив из n членов указанной последовательности.
'aprog' - арифметическая прогрессия
'fib' - числа Фибоначчи
'rnd' - случайные числа
...
"""
struct Fibonacci
    state::Int # номер 
    FNum::Int  # число Фибонначи
end
struct Rnd 
    an::Int  # член прогрессии
    d::Int # шаг
end

struct ArifmProgrVector <: AbstractArray{Int, 1}
    count::Int # количество элементов
    a1::Int # первый член
    d::Int # разность
    ArifmProgrVector(count=1,a1=1,d=1) = new(count,a1,d)
end
Base.size(S::ArifmProgrVector) = (S.count,)
Base.IndexStyle(::Type{<:ArifmProgrVector}) = IndexLinear()
Base.getindex(S::ArifmProgrVector, i::Int) = S.a1 + S.d*(i-1)

struct IntRndVector <: AbstractArray{Int, 1}
    count::Int # количество элементов
    a::Int # границы диапазона
    b::Int # разность
    IntRndVector(count=1,a=0,b=10) = new(count,a,b)
end
Base.size(S::IntRndVector) = (S.count,)
Base.IndexStyle(::Type{<:IntRndVector}) = IndexLinear()
Base.getindex(S::IntRndVector, i::Int) = Int(round( S.a + (S.b-S.a)*rand() ))


function gen(fib::Fibonacci)
return 0
end

function mygenfun(str::String, n::Int,param...) # основной метод
    if str=="aprog"
        obj=ArifmProgrVector(n,param);
    elseif str=="fib"
        obj=Fib(n);
    elseif str=="rnd"
        obj=RnIntRndVectord(n,param);
    else
        return error("Ошибочка вышла! Укажите правильный тип")
    end
    return collect(obj)
end