#encoding: cp866

arr1 = ["walt", "fred", "jr", "mike", "lidia"]      #определяем массив arr1 с пятью элементами

arr2 = arr1[1..3]                                   #определяем массив arr2, из элементов массива arr1 с индексами 1, 2, 3

print arr2
puts
puts
arr1 = ["walt", "fred", "jr", "mike", "lidia"] 

arr2 = arr1[1..3]
arr2[1] = arr2[1].capitalize

print arr2