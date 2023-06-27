"""
... 
    MyM1
Модуль содержит функции, которые позволяют генерировать: 
1) массив из 2 случайных чисел: myrndvecs() 
2) массив из 3 очередных чисел из последовательности Фибоначчи: myfibvecs() 
3) массив из 4 очередных чисел из заданной арифметической прогрессии: myaprogvecs()
...
"""
module MyM1
include("./myrndvecs.jl")
include("./myfibvecs.jl")
include("./myaprogvecs.jl")
export  myrndvecs, myfibvecs, myaprogvecs

end
