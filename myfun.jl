"""
...
    mygenfun(str,n,[param...])
Генерирует массив из n членов указанной последовательности.
'aprog' - арифметическая прогрессия
'fib' - числа Фибоначчи
'rnd' - случайные числа
...
"""

mutable struct ArifmProgr <: MyGen # объект арифметических прогрессий
    an::Int
    # параметры по умолчанию:
    ArifmProgr(an=0) = new(an)
end
gen(a::ArifmProgr) = 

mutable struct IntRnd <: MyGen # объект случайных чисел
end
gen(a::IntRnd)=Int(round(100*rand()))

# числ Фибоначчи
mutable struct Fibo <: MyGen
    curr::BigInt # 
    pred::BigInt 
    Fibo(curr=1,pred=0)=new(curr,pred)
end
gen(a::Fibo)= (a.pred,a.curr = a.curr, a.curr+a.pred)

# вектор чисел
genVec(obi::MyGen, n::Int)=[gen(obj)[1] for i in 1:n]


# основная функция
function mygenfun(str::String, n::Int, param...) 
    if str=="aprog"
        obj=ArifmProgrVector(n,param);
    elseif str=="rnd"
        obj=RnIntRndVectord(n,param);
    elseif str=="fib"
        obj=FibVector(n);
    else
        println("Ошибочка вышла! Укажите правильный тип (aprog,rnd,fib)")
        return nothing
    end
    return collect(obj)
end