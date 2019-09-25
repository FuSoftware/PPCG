from interpreter import commands

#----------READER----------

class Reader:
    pos = 0
    data = ''

    def eof(self):
        return self.pos >= len(self.data)

    def move_cursor(self, offset):
        self.pos = self.pos + offset

    def load_text(self, text):
        self.data = text
        self.pos = 0

    def can_peek(self, n):
        return (self.pos + n) < len(self.data)

    def peek_next(self, offset=0):
        if self.eof():
            return None
        else:
            return self.data[self.pos+offset]
    
    def read_next(self):
        if self.eof():
            return None
        else:
            c = self.data[self.pos]
            self.pos += 1
            return c

#----------TOKENIZER----------

class SpecialDelimiter:
    IF='i'
    ELSE='e'
    STRING='"'
    SEPARATOR=' '
    CLOSE_BRACKET='}'

class TokenType:     
    LOOP = 'LOOP'
    IF = 'IF'
    ELSE = 'ELSE'
    CODE = 'CODE'
    FUNCTION = 'FUNC'
    STRING = 'STR'
    COMPRESSED_STRING = 'CSTR'
    CLOSE_BRACKET = 'CLOSE'
    NUMBER = 'NUM'
    UNKNOWN = 'UNKN'
    SINGLE_INSTRUCTION = 'INST1'
    DOUBLE_INSTRUCTION = 'INST2'
    WHISTESPACE = 'WSPACE'

class Token:
    type = None
    data = ''

    def __init__(self, type, data):
        self.type = type
        self.data = data

    def __str__(self):
        return '({} : {})'.format(self.type, self.data)

    def __repr__(self):
        return '({} : {})'.format(self.type, self.data)

class Tokenizer:
    def __init__(self):
        self.reader = Reader()

    def tokenize_string(self):
        self.reader.read_next()
        s = ''
        c = ''

        while c != SpecialDelimiter.STRING:
            s += c
            c = self.reader.read_next()
        return Token(TokenType.STRING, s)

    def tokenize_command(self):
        c1 = self.reader.peek_next(0)
        c2 = ''

        if self.reader.can_peek(1):
            c2 = self.reader.peek_next(0) + self.reader.peek_next(1)

        if c2 in commands.keys():
            self.reader.read_next()
            self.reader.read_next()
            return Token(TokenType.DOUBLE_INSTRUCTION, c2)
        elif c1 in commands.keys():
            self.reader.read_next()
            return Token(TokenType.SINGLE_INSTRUCTION, c1)
        else:
            Token(TokenType.UNKNOWN, self.next_char())

    def tokenize_number(self):
        s = ''
        c = ''
        has_dot = False

        while True:
            if not self.reader.can_peek(0):
                break

            c = self.reader.read_next()
            if c not in '0123456789.' or (c=='.' and has_dot):
                self.reader.move_cursor(-1)
                break

            if c == '.':
                has_dot = True

            s += c

        return Token(TokenType.NUMBER, s)

    def load_text(self, text):
        self.reader.load_text(text)

    def next_char(self):
        return self.reader.read_next()

    def read_all(self):
        tokens = []
        while not self.reader.eof():
            tokens.append(self.read_next())
        return tokens

    def read_next(self):
        c = self.reader.peek_next()

        if c == SpecialDelimiter.IF:
            return Token(TokenType.IF, self.next_char())
        elif c == SpecialDelimiter.STRING:
            return self.tokenize_string()
        elif c == SpecialDelimiter.CLOSE_BRACKET:
            return Token(TokenType.CLOSE_BRACKET, self.next_char())
        elif c == SpecialDelimiter.ELSE:
            return Token(TokenType.ELSE, self.next_char())
        elif c in '0123456789':
            return self.tokenize_number()
        elif c == SpecialDelimiter.SEPARATOR:
            while self.reader.peek_next() == ' ':
                self.next_char()
            return Token(TokenType.WHISTESPACE, '')
        else:
            return self.tokenize_command()

#----------AST----------
class Node:
    children = []
    def execute(self):
        for c in self.children:
            c.execute()

class ConditionalNode(Node):
    nif = Node()
    nelse = Node()

class CommandNode(Node):
    value = ''

class NumberNode(Node):
    value = 0

class TextNode(Node):
    value = ''

#----------AST Interpreter----------

class ASTInterpreter:
    interpreter = None
    root = None

    def run_node(self,node,inter):
        if node is TextNode or node is NumberNode:
            inter.push(node.value)
        elif node is CommandNode:
            inter.execute(node.value)
        elif node is ConditionalNode:
            if inter.pop_truthy():
                self.run_node(node.nif, inter)
            else:
                self.run_node(node.nelse, inter)
        else:
            for n in node.children:
                self.run_node(n, inter)
