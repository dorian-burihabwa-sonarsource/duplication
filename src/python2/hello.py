#! /usr/bin/env python
def fib(n: int) -> int:
    first_num, second_num = [0, 1]
    for _ in range(n):
        first_num, second_num = second_num, first_num + second_num
    return first_num

def fib2(n: int) -> int:
    first_num, second_num = [0, 1]
    for _ in range(n):
        first_num, second_num = second_num, first_num + second_num
    return first_num

def main():
    print("Hello, World!")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")
    print(f"Fibonnaci(12): {fib(12)}")
    print(f"Fibonnaci(12): {fib2(12)}")

if __name__ == "__main__":
    main()