"""
...
    myrndvecs([a[,b]])

...
"""
function myrndvecs(a=0.0, b=1.0)
    a,b = promote(a,b)  # приводим к одному типу 
    v = a .+ b .*rand(typeof(a), 2)
   return v
end