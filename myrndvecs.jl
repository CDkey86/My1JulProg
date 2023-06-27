"""
...
    myrndvecs([a[,b]])

...
"""
function myrndvecs(a=0.0, b=1.0)
    v = a .+ b .*rand(2)
   return v
end