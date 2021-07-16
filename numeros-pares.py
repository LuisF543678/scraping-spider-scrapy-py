def numbers():
  i = 0

  while True:
    yield i
    i += 2

iterator = numbers()

for i in range(51):
  print(iterator.__next__())