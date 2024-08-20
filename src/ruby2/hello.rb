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
    print("Fibonnaci(12): ")
    puts(fib(12))
end

main()