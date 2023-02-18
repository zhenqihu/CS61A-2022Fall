def prime(n):
    k = n - 1
    while k > 1:
        if n % k == 0:
            return False
        k -= 1
    return True


def fizzbuzz(n):
    i = 1
    while i <= n:
        if i % 3 == 0 and i % 5 == 0:
            print("fizzbuzz")
        elif i % 3 == 0:
            print("fizz")
        elif i % 5 == 0:
            print("buzz")
        else:
            print(i)
        i += 1


def has_digit(n, k):
    while n > 0:
        if n % 10 == k:
            return True
        n = n // 10
    return False


def unique_digits(n):
    digits = 0
    for k in range(10) + 1:
        if has_digit(n, k):
            digits += 1
    return digits


