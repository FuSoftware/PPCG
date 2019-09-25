import functions as f
import interpreter as inter
from ysabel_parser import Tokenizer

def split():
    print(f.split('abc,defg', 2))
    print(f.split('abc,defg', ','))
    print(f.split(['abc','def','ghij'], 2))

def sum_digits():
    print(f.sum_digits(123))
    print(f.sum_digits("123"))
    print(f.sum_digits([123,456,789]))

def radix():
    print(f.binary('Hello, World!'))
    print(f.hexadecimal(42))
    print(f.radix(35,26))

def sum_val():
    print(f.sum_val(123))
    print(f.sum_val([1,2,3]))
    print(f.sum_val('ABC'))

def mult():
    #inter.debug_stack = True
    inter.push(2)
    inter.push(60)
    inter.push(5)
    inter.execute_list(['*','-','Ṕ'])

def interpreter():
    inter.debug_stack = True
    #inter.execute(['10', '5', '10', '$', 'S', '1', '+', 'b', 'R', 'ï', '2', '+', 'p̈'])
    inter.push('Hello, World!')
    inter.execute_list(['b', 'S', 'S', 'S', 'R', 'Ṕ'])

def tokenizer():
    code = '10R125R18.30.35bR"abdfge"iÀaredrd}'
    #code = '''10RR
    #R5RRR
    #xxxRRr'''

    for c in code.split('\n'):
        tokenizer = Tokenizer()
        tokenizer.reader.load_text(c.strip())
        tokens = tokenizer.read_all()
        print(tokens)

tokenizer()