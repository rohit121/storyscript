x = 1

a = "\x26"
b = "\u0026"
c = '\U0001F600'
d = "\t"
d2 = '\t'
e = '\n'
e2 = "\n"
f = '\r'
g = "\N{AMPERSAND}"

a = "\x26{x}"
b = "\u0026{x}"
c = '\U0001F600{x}'
d = "\t{x}"
d2 = '\t{x}'
e = '\n{x}'
e2 = "\n{x}"
f = '\r{x}'
g = "\N{AMPERSAND}{x}"

t1 = '\a'
t2 = '\b'
t3 = '\f'
t4 = '\v'
t5 = '\046'
t6 = '\123'

t1 = '\a{x}'
t2 = '\b{x}'
t3 = '\f{x}'
t4 = '\v{x}'
t5 = '\046{x}'
t6 = '\123{x}'
