#! /usr/bin/env ruby

def fib(n)
    first_num, second_num = [0, 1]
    (n - 1).times do
        first_num, second_num = second_num, first_num + second_num
    end
    puts first_num
end
  

def main()
    puts("Hello, World!")
    puts(fib2(12))
    print("Fibonnaci(12): ")
    puts(fib(12))
    print("Fibonnaci(12): ")
    puts(fib2(12))
    print("Fibonnaci(12): ")
    puts(fib(12))
    print("Fibonnaci(12): ")
    puts(fib2(12))
end



def fib2(n)
    first_num, second_num = [0, 1]
    (n - 1).times do
        first_num, second_num = second_num, first_num + second_num
    end
    puts first_num
end

main()