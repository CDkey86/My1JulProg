"""
...
    mygenfun(str[,n])
Генерирует массив из n членов указанной последовательности.
'aprog' - арифметическая прогрессия
'fib' - числа Фибоначчи
'rnd' - случайные числа
...
"""

abstract type MyGen 
end

mutable struct ArifmProgr <: MyGen # объект арифметических прогрессий
    an::Int
    # параметры по умолчанию:
    ArifmProgr(an=0) = new(an)
end
gen(a::ArifmProgr) = a.an +=1


# объект случайных чисел
mutable struct IntRnd <: MyGen 
end
gen(a::IntRnd)=Int(round(100*rand()))

# числа Фибоначчи
mutable struct Fibo <: MyGen
    curr::BigInt # 
    pred::BigInt 
    Fibo(curr=1,pred=0)=new(curr,pred)
end
gen(a::Fibo)= (a.pred,a.curr = a.curr, a.curr+a.pred)

# генерируем вектор чисел
genVec(obj::MyGen, n::Int)=[gen(obj)[1] for i in 1:n]


# основная функция
function mygenfun(str::String, n::Int, param...) 
    if str=="aprog"
        obj=ArifmProgr()
        n=4
    elseif str=="rnd"
        obj=IntRnd()
        n=2
    elseif str=="fib"
        obj=Fib()
        n=3
    else
        println("Ошибочка вышла! Укажите правильный тип (aprog,rnd,fib)")
        return nothing
    end
    return genVec(obj,n)
end