using Test
include("./MyM1.jl");
using .MyM1
@show @doc MyM1

# тестирование
@testset "Тестирование" begin
   @testset "Случайные" begin
       @test length(myrndvecs())==2 
       @test length(myrndvecs(0,[1,10,100,1000]))==4 
       @test length(myrndvecs(0,[1,10,100,1000])[1])==2
    end
    @testset "Фибоначчи" begin
        @test length(myfibvecs())==3
        @test myfibvecs()==[1,1,2]
        @test myfibvecs(15)==[610, 987, 1597]
        @test myfibvecs([5,10])==[[5,8,13], [55,89,144]]
    end
    @testset "Арифметическая прогрессия" begin
        @test length(myaprogvecs())==4
        @test myaprogvecs()==[0,1,2,3]
        @test myaprogvecs(5)==[5,6,7,8]
        @test myaprogvecs(3,-0.5) ≈ [3, 2.5, 2, 1.5]
        @test myaprogvecs([5.5, -1], 3) ≈ [[5.5, 8.5, 11.5, 14.5], [-1.0, 2.0, 5.0, 8.0]]
    end
end;