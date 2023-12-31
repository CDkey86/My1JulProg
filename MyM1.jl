"""
... 
    MyM1
Модуль содержит функции, которые позволяют генерировать: 
1) массив из 2 случайных чисел: mygenfun("rnd")
2) массив из 3 очередных чисел из последовательности Фибоначчи: mygenfun("fib")
3) массив из 4 очередных чисел из заданной арифметической прогрессии: mygenfun("aprog")
...
"""
module MyM1
include("./myfun.jl")
export  mygenfun

end
