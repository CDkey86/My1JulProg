using Test
include("./MyM1.jl")
using .MyM1
@doc MyM1

# тестирование
@testset "Тестированте функций модуля" begin
   #= 
   @testset "Случайные" begin
       @test "" skip=true
    end
    @testset "Фибоначи" begin
        
    end
    =#
    @testset "Артфм. прогрессия" begin
        @test "Без аргументов" myaprogvecs()==[0,1,2]
    end
end