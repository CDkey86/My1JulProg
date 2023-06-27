"""
...
    myaprogvecs([a1[, d]])
Возвращает массив из 4-х членов арифметической прогрессии
a1 - первый член прогрессии
d - разность
...
"""
function myaprogvecs(a1=0, d=1)
    a1,d = promote(a1,d)  # приводим к одному типу 
    v = a1 .+ d .* collect(typeof(a1), 0:3) # 
    return v
end