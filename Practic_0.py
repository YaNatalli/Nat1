# Создать переменную типа String
a="Leto"
print(a)
 # Создать переменную типа Integer
b=19
print(b)
# 3) Создать переменную типа Float
c=3.5
print(type(c),c)
# 4) Создать переменную типа Bytes
d=b'tipe'
print(type(d),d)
# 5) Создать переменную типа List
i=[1,200,85,13]
print(type(i),i)
# 6) Создать переменную типа Tuple
f=('one', 1, 'two', 2)
print(type(f),f)
# 7) Создать переменную типа Set
g_set={5,8,52,45}
print(type(g_set),g_set)
# 8. Создать переменную типа Frozen set
h_set={'one':1,'two':2}
key=frozenset(h_set)
print(type(key),key)

# 9) Создать переменную типа Dict
dict={}
dict['name']='Natalli'
print(type(dict),dict)
# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(type(a),a,type(b),b,type(c),c,type(d),d,
      type(i),i,type(f),f,type(g_set),g_set,
      type(key),key,type(dict),dict)

# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные.
# Вывести в консоль.
s='summer'
r='2022'
t= s + r
print('Вывод строки:', t)
# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
h='Summer'
j=2022
print('вывод типf String и Integer:', h,j)
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
v='Summer'
m= 2022
print(v+str(m))
