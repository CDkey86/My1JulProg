"""
...
    myaprogvecs([a1[, d]])
Возвращает массив из 4-х членов арифметической прогрессии.
a1 - первый член прогрессии (по умолчанию a1=0)
d - разность (по умолчанию d=1)
...
"""
function myaprogvecs(a1=0, d=1)
    if length(a1)==1 && length(d)==1 # если аргументы - числа
        a1, d = promote(a1, d),  # приводим к одному типу
        return a1 .+ d .* collect(typeof(a1), 0:3)
    else # если массивы - возвращаем массив массивов
        return [a1i .+ di .* collect(typeof(a1i), 0:3)  for a1i in a1, di in d]
    end
end