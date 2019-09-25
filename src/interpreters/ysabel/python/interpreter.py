import functions as f
import math

stack = []
functions = []
debug_stack = False

def print_stack():
    print(str(stack))

def get():
    return stack[-1]

def popn(n):
    l = []
    for x in range(0,n):
        val = pop()
        if val != None:
            l.append(val)
    return l

def pop():
    if len(stack) > 0:
        return stack.pop()
    else:
        return None

def push(a):
    stack.append(a)

def pop_truthy():
    a = pop()
    return (a == 1)

def fd(push, pop, desc):
    final_desc = 'push({}) pop({}) : {} '.format(push, pop, desc)
    return final_desc

def b():
    a = pop()
    push(f.binary(a))

def c():
    a = pop()
    b = pop()
    push(f.join([a,b], ''))

def ex():
    a = pop()
    push(execute(a))

def ï():
    a = pop()
    push(f.int_convert(a))

def r():
    a = pop()
    b = pop()
    push(f.radix(a,b))

def s():
    a = pop()
    push(f.sum_digits(a))

def u():
    a = pop()
    push(f.uniquify(a))

def x():
    a = pop()
    push(f.hexadecimal(a))

def R():
    a = pop()
    push(f.reverse(a))

def S():
    a = pop()
    push(f.sum_val(a))

def dollar():
    global stack
    stack = [f.sum_val(stack)]

def π():
    push(math.pi)

def plus():
    a = pop()
    b = pop()
    push(f.add(a,b))

def Ṗ():
    a = pop()
    print(a, end='')

def Ṕ():
    a = pop()
    print(a)

def L():
    a = pop()
    push(f.lowercase_floor(a))

def U():
    a = pop()
    push(f.uppercase_ceiling(a))

def add():
    a = pop()
    b = pop()
    push(f.add(a,b))

def sub():
    a = popn(2)
    push(f.sub(a))

def mult():
    a = popn(2)
    push(f.mult(a))

def div():
    a = pop()
    b = pop()
    push(f.div(a,b))

def mod():
    a = pop()
    b = pop()
    push(f.mod(a,b))

def eq():
    a = pop()
    b = pop()
    push(1 if (a==b) else 0)

def idiv():
    a = pop()
    b = pop()
    push(f.idiv(a,b))

def up_arrow():
    a = pop()
    push(f.add(a, 1))

def down_arrow():
    a = pop()
    push(f.add(a, -1))

def currency():
    a = pop()
    push(a + '')


commands = {
    '0' : ['', fd(0, 0, "Litteral 0")],
    '1' : ['', fd(0, 0, "Litteral 1")],
    '2' : ['', fd(0, 0, "Litteral 2")],
    '3' : ['', fd(0, 0, "Litteral 3")],
    '4' : ['', fd(0, 0, "Litteral 4")],
    '5' : ['', fd(0, 0, "Litteral 5")],
    '6' : ['', fd(0, 0, "Litteral 6")],
    '7' : ['', fd(0, 0, "Litteral 7")],
    '8' : ['', fd(0, 0, "Litteral 8")],
    '9' : ['', fd(0, 0, "Litteral 9")],
    '.' : ['', fd(0, 0, "Litteral .")],
    ' ' : ['', fd(0, 0, "Litteral space")],
    '§' : [ex, fd(1, 0, "Interprets x as Ysabel code")],
    '$' : [dollar, fd(0, 0, "Sums all the stack's values")],
    'ï' : [ï, fd(1, 1, "Pushes int(x)")],
    'Ṗ' : [Ṗ, fd(0, 1, "Prints x with no newline")],
    'Ṕ' : [Ṕ, fd(0, 1, "Prints x with newline")],
    'a' : [None, fd(1, 1, "")],
    'b' : [b, fd(1, 1, "Pushes binary(x)")],
    'c' : [None, fd(1, 2, "Concats x to y")],
    'd' : [None, fd(1, 1, "")],
    'e' : [None, fd(1, 1, "")],
    'f' : [None, fd(1, 1, "")],
    'g' : [None, fd(1, 1, "")],
    'h' : [None, fd(1, 1, "")],
    'i' : [None, fd(1, 1, "")],
    'j' : [None, fd(1, 1, "")],
    'k' : [None, fd(1, 1, "")],
    'l' : [None, fd(1, 1, "")],
    'm' : [None, fd(1, 1, "")],
    'n' : [None, fd(1, 1, "")],
    'o' : [None, fd(1, 1, "")],
    'p' : [None, fd(1, 1, "")],
    'q' : [None, fd(1, 1, "")],
    'r' : [r, fd(1, 2, "Pushes x converted to base y")],
    's' : [s, fd(1, 1, "Sums x digits")],
    't' : [None, fd(1, 1, "")],
    'u' : [u, fd(1, 1, "Pushes uniquified a")],
    'v' : [None, fd(1, 1, "")],
    'w' : [None, fd(1, 1, "")],
    'x' : [x, fd(1, 1, "Pushes hexadecimal(x)")],
    'y' : [None, fd(1, 1, "")],
    'z' : [None, fd(1, 1, "")],
    'A' : [None, fd(1, 1, "")],
    'B' : [None, fd(1, 1, "")],
    'C' : [None, fd(1, 1, "")],
    'D' : [None, fd(1, 1, "")],
    'E' : [None, fd(1, 1, "")],
    'F' : [None, fd(1, 1, "Filters x using the provided function, using a sub-stack (needs a closing braket)")],
    'G' : [None, fd(1, 1, "")],
    'H' : [None, fd(1, 1, "")],
    'I' : [None, fd(1, 1, "")],
    'J' : [None, fd(1, 1, "")],
    'K' : [None, fd(1, 1, "")],
    'L' : [L, fd(1, 1, "Pushes lowercase(a) is string, or floor(a) if number")],
    'M' : [None, fd(1, 1, "Maps the provided function onto x, using a sub-stack (needs a closing braket)")],
    'N' : [None, fd(1, 1, "")],
    'O' : [None, fd(1, 1, "")],
    'P' : [None, fd(1, 1, "")],
    'Q' : [None, fd(1, 1, "")],
    'R' : [R, fd(1, 1, "Reverses x")],
    'S' : [S, fd(1, 1, "Sums x if list, sums x's digits if number, sums x's ASCII values if string")],
    'U' : [U, fd(1, 1, "Pushes uppercase(a) is string, or ceil(a) if number")],
    'V' : [None, fd(1, 1, "")],
    'W' : [None, fd(1, 1, "")],
    'Y' : [None, fd(1, 1, "")],
    'Z' : [None, fd(1, 1, "")],
    'π' : [π, fd(1, 0, "Pushes π")],
    '+' : [add, fd(1, 2, "Adds x and y")],
    '-' : [sub, fd(1, 2, "Substracts y from x")],
    '/' : [div, fd(1, 2, "Divides x by y")],
    '*' : [mult, fd(1, 2, "Multiplies x by y")],
    '÷' : [idiv, fd(1, 2, "Integer division of x by y")],
    '%' : [mod, fd(1, 2, "Modulo of x / y")],
    '=' : [eq, fd(1, 2, "x equals y")],
    '↑' : [up_arrow, fd(1, 1, "Increments x by 1")],
    '↓' : [down_arrow, fd(1, 1, "Decrements x by 1")],
    '¤' : [currency, fd(1, 1, "Appends a space to x")],
    'Àa' : [f.dict_generate('a-z'), fd(1, 0, "Pushes a-z")],
    'Àb' : [f.dict_generate('A-Z'), fd(1, 0, "Pushes A-Z")],
    'Àc' : [f.dict_generate('a-zA-Z'), fd(1, 0, "Pushes a-zA-Z")],
    'Àd' : [f.dict_generate('Z-A'), fd(1, 0, "Pushes Z-A")],
    'Àn' : [f.dict_generate('0-9'), fd(1, 0, "Pushes 0-9")],
    'Àp' : [f.dict_generate('primes'), fd(1, 0, "Pushes the prime numbers")]
}

def execute_list(instructions):
    for instruction in instructions:
        execute(instruction)

def execute(instruction):
    instruction = str(instruction)
    if isinstance(instruction,list):
        for i in instruction:
            execute(i)
    else:
        if instruction.isdigit():
            push(int(instruction))
        else:
            command = commands.get(instruction)
            command[0]()
    
        if debug_stack:
            print('{:>3} => {}'.format(instruction, stack))


def print_commands():
    comm = sorted(commands.keys())
    for c in comm:
        print('{} : {}'.format(c,commands[c][1]))

def charset():
    total = ""
    for c in commands.keys():
        total += c
    return sorted(set(total))

def print_charset():
    total = charset()

    assigned = ""
    for c in commands.keys():
        if commands[c][0] != None:
            assigned += c
    assigned = sorted(set(assigned))

    unassigned = ""
    for c in commands.keys():
        if commands[c][0] == None:
            unassigned += c
    unassigned = sorted(set(unassigned))

    print('{:>10} ({})[{}%] : {}'.format('Total',str(len(total)),round(len(total)*100/256,2),''.join(total)))
    print('{:>10} ({})[{}%] : {}'.format('Assigned', str(len(assigned)),round(len(assigned)*100/256,2),''.join(assigned)))
    print('{:>10} ({})[{}%] : {}'.format('Unassigned', str(len(unassigned)),round(len(unassigned)*100/256,2),''.join(unassigned)))

#print_charset()