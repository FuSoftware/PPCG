import re
import functools
import math

def base10toN(num, base):
    """Change ''num'' to given base
    Upto base 36 is supported."""

    converted_string = ""
    currentnum = num
    if not 1 < base < 37:
        raise ValueError("base must be between 2 and 36")
    if not num:
        return '0'
    while currentnum:
        mod = currentnum % base
        currentnum = currentnum // base
        converted_string = chr(48 + mod + 7*(mod > 10)) + converted_string
    return converted_string

def read_list(val, index):
    if is_list(val):
        return val[index]
    elif is_func(val):
        return val(index)
    else:
        print('Tried to read a list but is actually {}'.format(type(val)))
        return None

def is_func(a):
    return callable(a)

def is_list(a):
    return isinstance(a,list)

def is_string(a):
    return isinstance(a,str)

def is_int(a):
    return isinstance(a,int)

def split_number(a,b):
    return re.findall('.'*b+'?', a)

def split_string(a,b):
    return str(a).split(b)

def split(a,b=None):
    if is_list(a):
        return list(map(functools.partial(split, b=b),a))
    else:
        if is_int(b):
            return split_number(a,b)
        elif is_string(b):
            return split_string(a,b)
        else:
            return str(a).split('')

def join(a, b=''):
    return b.join(a)

def sum_list(a):
    if is_string(a[0]):
        return join(a)
    else:
        return sum(a)
def sum_digits(a):
    if is_list(a):
        return list(map(sum_digits, a))
    else:
        return sum(map(int, list(str(a))))

def sum_val(a):
    if is_int(a):
        return sum_digits(a)
    elif is_string(a):
        return sum(ascii_value(a))
    elif is_list(a):
        return sum_list(a)
    else:
        return None

def radix(a,b):
    if is_string(a):
        a = ascii_value(a)
    if is_list(a):
        return list(map(functools.partial(radix, b=b),a))
    else:
        return base10toN(a,b)

def binary(a):
    return radix(a,2)

def hexadecimal(a):
    return radix(a,16)

def reverse(a):
    if is_list(a):
        return a.reverse()
    else:
        return join(reversed(list(str(a))))

def ascii_value(a):
    if is_int(a):
        a = str(a)

    if is_string(a) and len(a) > 1:
        a = list(a)

    if is_list(a):
        return list(map(ascii_value, a))

    else:
        return ord(str(a))

def char_value(a):
    if is_list(a):
        return map(char_value, a)
    else:
        return chr(a)

def add_num(a,b):
    if is_string(b):
        return a + ascii_value(b)
    else:
        return a + b

def add_string(a,b):
    if is_int(b):
        return a + str(b)
    else:
        return a + b

def add_list(a,b):
    return list(map(functools.partial(add, b=b),a))

def add(a,b):
    if type(a) == type(b):
        return a + b
    else:
        if is_list(a):
            return add_list(a,b)
        elif is_list(b):
            return add_list(b,a)
        elif is_int(a):
            return add_num(a,b)
        elif is_string(a):
            return add_string(a,b)

def mod(a,b):
    return None

def mult(a: list):
    r = 1
    
    for val in a:
        r *= mult(val) if is_list(val) else val

    return r  

def div(a,b):
    return None

def sub(a: list):
    r = a[0]*2
    for val in a:
        r -= val
    return r

def idiv(a,b):
    return None

def int_convert(a):
    if is_list(a):
        return list(map(int_convert, a))
    elif is_string(a):
        if a.isdigit():
            return int(a)
        else:
            return list(map(int_convert, list(a)))
    else:
        return int(a)

def nth_prime_number(n):
    prime_list = [2]
    num = 3
    while len(prime_list) < n:
        for p in prime_list:
            if num % p == 0:
                break
        else:
            prime_list.append(num)
        num += 2
    return prime_list[-1]

def uppercase_ceiling(a):
    if is_int(a):
        return math.ceil(a)
    elif is_list(a):
        return list(map(uppercase_ceiling, a))
    elif is_string(a):
        return a.upper()
    else:
        return None

def lowercase_floor(a):
    if is_int(a):
        return math.floor(a)
    elif is_list(a):
        return list(map(lowercase_floor, a))
    elif is_string(a):
        return a.lower()
    else:
        return None

def dict_generate(type):
    dictionaries = {
        'a-z': 'abcdefghijklmnopqrstuvwxyz',
        'A-Z': 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
        'Z-A': 'ZYXWVUTSRQPONMLKJIHGFEDCBA',
        'a-zA-Z': 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
        '0-9': "0123456789",
        'azerty': "azertyuiop",
        'qwerty': "qwertyuiop",
        'primes': nth_prime_number
    }
    return dictionaries.get(type, "")

def remove_duplicates(x):
  return list(dict.fromkeys(x))

def uniquify(a):
    if is_list(a):
        return remove_duplicates(a)
    elif is_int(a):
        return int(join(remove_duplicates(list(str(a)))))
    elif is_string(a):
        return join(remove_duplicates(list(str(a))))
