using Test
include("./MyM1.jl");
using .MyM1
@show @doc MyM1

# тестирование
@testset "Тестирование" begin
   @testset "Случайные" begin
        @test length(mygenfun("rnd"))==2 
        @test isa(mygenfun("rnd"),Vector{Int}) 
    end
    @testset "Фибоначчи" begin
        @test length(mygenfun("fib"))==3 
        @test isa(mygenfun("fib"),Vector{BigInt}) 
        @test mygenfun("fib")==[13,21,34] 
    end
    @testset "Арифметическая прогрессия" begin
        @test length(mygenfun("aprog"))==4
        @test isa(mygenfun("aprog"),Vector{Int})
        @test mygenfun("aprog")==[9,10,11,12] 
    end
    @test_throws ErrorException mygenfun("1") 
    @test_throws ErrorException mygenfun()
end;