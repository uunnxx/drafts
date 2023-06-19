def close_compare(a, b, margin):
    if a == b:
        return 0

    if a < b:
        for i in range(margin+1):
            if (a + i) == b:
                return 0
        return -1

    if a > b:
        for i in range(margin+1):
            if (b + i) == a:
                return 0
        return 1


print("-1 A is less than B")
print(" 1 B is less than A")
print(" 0 close compare")
print()

print(close_compare(-3, 6, -9))
# print(close_compare(2, 4, 0))
# print(close_compare(2, 1, 3))


def close_compare2(a, b, margin=0):
    # If the absolute value of their difference is no greater than the margin,
    # then they're equal enough.
    if abs(a - b) <= margin:
        return 0

    # They removed the cmp() function in Python 3, so we use this weird-looking expression
    # instead.  This works because arithmetic operations like '-' coerce their operands into
    # numbers.  A boolean operand is coerced into a 1 if it's True or a 0 if it's False.
    # So if a > b, then this expression is equivalent to True - False, which after coercion
    # becomes 1 - 0, which is 1.  Likewise, if a < b, then it's 0 - 1, which is -1.  And if
    # a == b, then it's False - False, which coerces to 0 - 0, which is 0.
    return (a > b) - (a < b)


def close_compare3(a, b, margin=0):
    return abs(a - b) > margin and (a > b) - (a < b)
