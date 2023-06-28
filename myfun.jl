"""
...
    myfun(str,n,[param...])
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
struct Aprog 
    an::Int  # член прогрессии
    d::Int # шаг
end
struct Rnd 
    an::Int  # член прогрессии
    d::Int # шаг
end

function gen(fib::Fibonacci)
return 0
end

function myfun(str::String, n::Int) # основной метод
    if str=="aprog"
        obj=Aprog(n);
    elseif str=="fib"
        obj=Fib(n);
    elseif str=="rnd"
        obj=Rnd(n);
    else
        return error("Ошибочка вышла! Укажите правильный тип")
    end
    return collect(obj)
end