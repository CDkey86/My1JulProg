"""
...
    myaprogvecs([a0[, q]])

...
"""
function myaprogvecs(a0=0, q=1)
    a0,q = promote(a0,q)
    v = a0 .+ q .* collect(0:2)
    return v
end