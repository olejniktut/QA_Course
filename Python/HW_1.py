# Python HW_1
name = 'Hello, my name is Jackson'
age = 23
PI = 3.14
# Байт - минимальная единица хранения и обработки цифровой информации.
By = b'\xd0\x91\xd0\xb0\xd0\xb9\xd1\x82\xd1\x8b'
spisok = list('привет')
# тот же список То есть кортеж защищен от изменений, как намеренных (что плохо), так и случайных (что хорошо).
kortezh = tuple('hello, world!')
# контейнер содержит уникальное не повторяющиеся элементы в случайном порядке (неупорядоченная коллекция).
setCat = set('cat')
# frozenset - это неизменяемое множество.
frozenCat = frozenset('cat')
# Словари в Python - неупорядоченные коллекции произвольных объектов с доступом по ключу.
# Их иногда ещё называют ассоциативными массивами или хеш-таблицами.
d = dict(short='dict', long='dictionary')
print(name, '- переменная типа', type(name))
print(age, '- переменная типа', type(age))
print(PI, '- переменная типа', type(PI))
print(By, '- переменная типа', type(By))
# print(By.decode('utf-8'), 'decode type Bytes')
print(spisok, '- переменная типа', type(spisok))
print(kortezh, '- переменная типа', type(kortezh))
print(setCat, '- переменная типа', type(setCat))
print(frozenCat, '- переменная типа', type(frozenCat))
print(d, '- переменная типа', type(d))
word_1 = 'Hello'
word_2 = ' world!'
all_words = word_1 + word_2
print(all_words)
print(name + '. I am ' + str(age))
