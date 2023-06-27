"""
...
    myrndvecs([a[,b]])
Возвращает массив из 2-х случайных чисел в диапазоне от a до b.
(по умолчанию a=0, b=1)
...
"""
function myrndvecs(a=0.0, b=1.0)
    if length(a)==1 && length(b)==1 # если аргументы - числа
        return a .+ (b-a) .*rand(2)
    else # если массивы - возвращаем массив массивов
        return [ai .+ (bi-ai) .*rand(2)  for ai in a, bi in b]
    end 
end
