

def my_gen():
    a = 1
    yield a 

    a = 2
    yield a 

    a = 3
    yield 1


my_first_gen = my_gen()

#print(my_func())

print(next(my_first_gen))