"""
...
    mygenfun(str)
Генерирует массив из нескольких членов указанной последовательности.
`aprog`` - арифметическая прогрессия, 4 числа
`fib` - числа Фибоначчи, 3 числа
`rnd` - случайные числа, 2 числа
...
"""

abstract type MyGen # абстрактный супертип
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
gen(a::Fibo)= begin a.pred,a.curr = a.curr, a.curr+a.pred end

# генерируем вектор чисел
genVec(obj::MyGen, n::Int)=[gen(obj)[1] for i in 1:n]

# создаеи объекты
objarifm=ArifmProgr()
objrnd=IntRnd()
objfib=Fibo()

# основная функция
function mygenfun(str::String) 
    if str=="aprog"
        obj=objarifm
        n=4
    elseif str=="rnd"
        obj=objrnd
        n=2
    elseif str=="fib"
        obj=objfib
        n=3
    else
        error("Ошибочка вышла! Укажите правильный тип (aprog,rnd,fib)")
        return nothing
    end
    return genVec(obj,n)
end