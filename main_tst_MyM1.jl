using Test
include("./MyM1.jl");
using .MyM1
@show @doc MyM1

# тестирование
@testset "Тестирование" begin
   @testset "Случайные" begin
       @test length(myrndvecs())==2 
    end
    @testset "Фибоначчи" begin
        @test length(myfibvecs())==3
    end
    @testset "Арифметическая прогрессия" begin
        @test length(myaprogvecs())==4
        @test myaprogvecs()==[0,1,2,3]
        @test myaprogvecs(5)==[5,6,7,8]
        @test myaprogvecs(3,-0.5) ≈ [3, 2.5, 2, 1.5]
    end
end;